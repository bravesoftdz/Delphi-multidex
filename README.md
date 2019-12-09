# Delphi-multidex
Add Android multidex support to Delphi project

Take copy of YOUR-DELPHI-INSTALL-DIRECTORY\bin\CodeGear.Common.Targets for safe keeping.

Open above file in your favorite editor, search for GenClassesDex.

Replace this section(down to ResourceBuild) with code in supplied CodeGear.Common.Targets.Update file.

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

