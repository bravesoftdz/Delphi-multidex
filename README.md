# Delphi-multidex
Add Android multidex support to Delphi project

Take copy of YOUR-DELPHI-INSTALL-DIRECTORY\bin\CodeGear.Common.Targets for safe keeping.

Open above file in your favorite editor, search for --dex.

Change

    <DxClassesDexCmd>$(DxCmd)"$(OutputClassesDexPath)"</DxClassesDexCmd>

To

    <DxClassesDexCmd>PATH $(JDKPath)\bin;$(PATH) %26 "$(JavaDxPath)" --dex --multi-dex --output="</DxClassesDexCmd>

Find 

    <Target Name="GetPredexedSysJars" Condition="('$(EnabledSysJars)'!='')">

Change

    <Split Text="$(EnabledSysJars)" Separator=";">
      <Output ItemName="SysJars" TaskParameter="Output" />
    </Split>  

To

    <StringReplace Input="$(EnabledSysJars)" Replace=".dex" With="">
      <Output ItemName="SysJarstmp" TaskParameter="Output" />
    </StringReplace>
    <Split Text="@(SysJarstmp)" Separator=";">
      <Output ItemName="SysJars" TaskParameter="Output" />
    </Split>

Find 

    <Target Name="GetProjectJars">
  
Change

    <PredexedJar>$(OutputClassesDexDir)%(JavaReference.Filename)$(PredexedJarSuffix)%(JavaReference.Extension)</PredexedJar>

To

    <PredexedJar>%(JavaReference.FullPath)</PredexedJar>
  
Find 

    <Target Name="BuildClassesDex" DependsOnTargets="CreateClassesDexOutputDir;GetPredexedSysJars;BuildPredexedJar"

Change to

    <Target Name="BuildClassesDex" DependsOnTargets="CreateClassesDexOutputDir;GetPredexedSysJars;GetProjectJars"

Insert

      <TrimEnd
        Text="$(OutputClassesDexDir)"
        Character="\">
       <Output TaskParameter="Output" ItemName="OutputClassesDexDirWOTrailing" />
    </TrimEnd>

before 

    <Exec Condition="('@(_SysJarsLocations)'!='') Or ('@(_JarsLocations)'!='')"

Change

    Command="$(DxClassesDexCmd) @(_SysJarsLocations->'%22%(FullPath)%22', ' ') @(_JarsLocations->'%22%(PredexedJar)%22', ' ')"/>
    
To

    Command="$(DxClassesDexCmd)@(OutputClassesDexDirWOTrailing)%22 @(_SysJarsLocations->'%22%(FullPath)%22', ' ') @(_JarsLocations-    >'%22%(PredexedJar)%22', ' ')"/>

Insert 

    <UsingTask TaskName="TrimEnd" AssemblyFile="$(BDS)\bin\Borland.Build.Tasks.Shared.dll"/> 

after the Project header in the top of the file.

Save file.

Add 

    android:name="android.support.multidex.MultiDexApplication" 
    
to the <application tag in your AndroidManifest.template.xml

Add AndroidApi.JNI.Multidex to your project.

Add MultiDex.jar to your project libs.

Add 

    TJMultiDex.javaclass.install(TAndroidHelper.Context);
    
as the first statement in your FormCreate.

Build your project.

Add the generated dex files (ProjectDir\Configuration\classes.dex classes2.dex ...) on your project deployment page. Set Remote Path to Classes\

Rebuild.

