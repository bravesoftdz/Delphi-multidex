
unit AndroidApi.JNI.MultiDex;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.App,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Util;

type
// ===== Forward declarations =====

  JAnimator = interface;//android.animation.Animator
  JAnimator_AnimatorListener = interface;//android.animation.Animator$AnimatorListener
  JAnimator_AnimatorPauseListener = interface;//android.animation.Animator$AnimatorPauseListener
  JKeyframe = interface;//android.animation.Keyframe
  JLayoutTransition = interface;//android.animation.LayoutTransition
  JLayoutTransition_TransitionListener = interface;//android.animation.LayoutTransition$TransitionListener
  JPropertyValuesHolder = interface;//android.animation.PropertyValuesHolder
  JStateListAnimator = interface;//android.animation.StateListAnimator
  JTimeInterpolator = interface;//android.animation.TimeInterpolator
  JTypeConverter = interface;//android.animation.TypeConverter
  JTypeEvaluator = interface;//android.animation.TypeEvaluator
  JValueAnimator = interface;//android.animation.ValueAnimator
  JValueAnimator_AnimatorUpdateListener = interface;//android.animation.ValueAnimator$AnimatorUpdateListener
  Jmultidex_BuildConfig = interface;//android.support.multidex.BuildConfig
  JMultiDex = interface;//android.support.multidex.MultiDex
  JMultiDex_V14 = interface;//android.support.multidex.MultiDex$V14
  JV14_ElementConstructor = interface;//android.support.multidex.MultiDex$V14$ElementConstructor
  JV14_ICSElementConstructor = interface;//android.support.multidex.MultiDex$V14$ICSElementConstructor
  JV14_JBMR11ElementConstructor = interface;//android.support.multidex.MultiDex$V14$JBMR11ElementConstructor
  JV14_JBMR2ElementConstructor = interface;//android.support.multidex.MultiDex$V14$JBMR2ElementConstructor
  JMultiDex_V19 = interface;//android.support.multidex.MultiDex$V19
  JMultiDex_V4 = interface;//android.support.multidex.MultiDex$V4
  JMultiDexApplication = interface;//android.support.multidex.MultiDexApplication
  JMultiDexExtractor = interface;//android.support.multidex.MultiDexExtractor
  JMultiDexExtractor_1 = interface;//android.support.multidex.MultiDexExtractor$1
  JMultiDexExtractor_ExtractedDex = interface;//android.support.multidex.MultiDexExtractor$ExtractedDex
  JZipUtil = interface;//android.support.multidex.ZipUtil
  JZipUtil_CentralDirectory = interface;//android.support.multidex.ZipUtil$CentralDirectory
  JPathMotion = interface;//android.transition.PathMotion
  JScene = interface;//android.transition.Scene
  JTransition = interface;//android.transition.Transition
  JTransition_EpicenterCallback = interface;//android.transition.Transition$EpicenterCallback
  JTransition_TransitionListener = interface;//android.transition.Transition$TransitionListener
  JTransitionManager = interface;//android.transition.TransitionManager
  JTransitionPropagation = interface;//android.transition.TransitionPropagation
  JTransitionValues = interface;//android.transition.TransitionValues
  JInterpolator = interface;//android.view.animation.Interpolator
  JToolbar_LayoutParams = interface;//android.widget.Toolbar$LayoutParams
  JDexFile = interface;//dalvik.system.DexFile

// ===== Interface declarations =====

  JAnimatorClass = interface(JObjectClass)
    ['{3F76A5DF-389E-4BD3-9861-04C5B00CEADE}']
    {class} function init: JAnimator; cdecl;
    {class} procedure addListener(listener: JAnimator_AnimatorListener); cdecl;
    {class} procedure addPauseListener(listener: JAnimator_AnimatorPauseListener); cdecl;
    {class} function getDuration: Int64; cdecl;
    {class} function getInterpolator: JTimeInterpolator; cdecl;
    {class} function getListeners: JArrayList; cdecl;
    {class} function isStarted: Boolean; cdecl;
    {class} procedure pause; cdecl;
    {class} procedure resume; cdecl;
    {class} function setDuration(duration: Int64): JAnimator; cdecl;
    {class} procedure setInterpolator(value: JTimeInterpolator); cdecl;
    {class} procedure setupStartValues; cdecl;
    {class} procedure start; cdecl;
  end;

  [JavaSignature('android/animation/Animator')]
  JAnimator = interface(JObject)
    ['{FA13E56D-1B6D-4A3D-8327-9E5BA785CF21}']
    procedure cancel; cdecl;
    function clone: JAnimator; cdecl;
    procedure &end; cdecl;
    function getStartDelay: Int64; cdecl;
    function isPaused: Boolean; cdecl;
    function isRunning: Boolean; cdecl;
    procedure removeAllListeners; cdecl;
    procedure removeListener(listener: JAnimator_AnimatorListener); cdecl;
    procedure removePauseListener(listener: JAnimator_AnimatorPauseListener); cdecl;
    procedure setStartDelay(startDelay: Int64); cdecl;
    procedure setTarget(target: JObject); cdecl;
    procedure setupEndValues; cdecl;
  end;
  TJAnimator = class(TJavaGenericImport<JAnimatorClass, JAnimator>) end;

  JAnimator_AnimatorListenerClass = interface(IJavaClass)
    ['{5ED6075A-B997-469C-B8D9-0AA8FB7E4798}']
    {class} procedure onAnimationCancel(animation: JAnimator); cdecl;
    {class} procedure onAnimationEnd(animation: JAnimator); cdecl;
    {class} procedure onAnimationRepeat(animation: JAnimator); cdecl;
  end;

  [JavaSignature('android/animation/Animator$AnimatorListener')]
  JAnimator_AnimatorListener = interface(IJavaInstance)
    ['{E2DE8DD6-628B-4D84-AA46-8A1E3F00FF13}']
    procedure onAnimationStart(animation: JAnimator); cdecl;
  end;
  TJAnimator_AnimatorListener = class(TJavaGenericImport<JAnimator_AnimatorListenerClass, JAnimator_AnimatorListener>) end;

  JAnimator_AnimatorPauseListenerClass = interface(IJavaClass)
    ['{CB0DC3F0-63BC-4284-ADD0-2ED367AE11E5}']
    {class} procedure onAnimationPause(animation: JAnimator); cdecl;
  end;

  [JavaSignature('android/animation/Animator$AnimatorPauseListener')]
  JAnimator_AnimatorPauseListener = interface(IJavaInstance)
    ['{43C9C106-65EA-4A7D-A958-FAB9E43FA4A6}']
    procedure onAnimationResume(animation: JAnimator); cdecl;
  end;
  TJAnimator_AnimatorPauseListener = class(TJavaGenericImport<JAnimator_AnimatorPauseListenerClass, JAnimator_AnimatorPauseListener>) end;

  JKeyframeClass = interface(JObjectClass)
    ['{D383116E-5CCF-48D8-9EA1-B26FBF24BA39}']
    {class} function init: JKeyframe; cdecl;
    {class} function clone: JKeyframe; cdecl;
    {class} function getFraction: Single; cdecl;
    {class} function hasValue: Boolean; cdecl;
    {class} function ofFloat(fraction: Single; value: Single): JKeyframe; cdecl; overload;
    {class} function ofFloat(fraction: Single): JKeyframe; cdecl; overload;
    {class} function ofInt(fraction: Single; value: Integer): JKeyframe; cdecl; overload;
    {class} function ofInt(fraction: Single): JKeyframe; cdecl; overload;
    {class} function ofObject(fraction: Single; value: JObject): JKeyframe; cdecl; overload;
    {class} function ofObject(fraction: Single): JKeyframe; cdecl; overload;
    {class} procedure setFraction(fraction: Single); cdecl;
    {class} procedure setInterpolator(interpolator: JTimeInterpolator); cdecl;
  end;

  [JavaSignature('android/animation/Keyframe')]
  JKeyframe = interface(JObject)
    ['{9D0687A4-669E-440F-8290-154739405019}']
    function getInterpolator: JTimeInterpolator; cdecl;
    function getType: Jlang_Class; cdecl;
    function getValue: JObject; cdecl;
    procedure setValue(value: JObject); cdecl;
  end;
  TJKeyframe = class(TJavaGenericImport<JKeyframeClass, JKeyframe>) end;

  JLayoutTransitionClass = interface(JObjectClass)
    ['{433C5359-0A96-4796-AD7B-8084EF7EF7C4}']
    {class} function _GetAPPEARING: Integer; cdecl;
    {class} function _GetCHANGE_APPEARING: Integer; cdecl;
    {class} function _GetCHANGE_DISAPPEARING: Integer; cdecl;
    {class} function _GetCHANGING: Integer; cdecl;
    {class} function _GetDISAPPEARING: Integer; cdecl;
    {class} function init: JLayoutTransition; cdecl;
    {class} procedure addChild(parent: JViewGroup; child: JView); cdecl;
    {class} procedure addTransitionListener(listener: JLayoutTransition_TransitionListener); cdecl;
    {class} procedure disableTransitionType(transitionType: Integer); cdecl;
    {class} function getInterpolator(transitionType: Integer): JTimeInterpolator; cdecl;
    {class} function getStagger(transitionType: Integer): Int64; cdecl;
    {class} function getStartDelay(transitionType: Integer): Int64; cdecl;
    {class} function isChangingLayout: Boolean; cdecl;
    {class} function isRunning: Boolean; cdecl;
    {class} function isTransitionTypeEnabled(transitionType: Integer): Boolean; cdecl;
    {class} procedure setAnimator(transitionType: Integer; animator: JAnimator); cdecl;
    {class} procedure setDuration(duration: Int64); cdecl; overload;
    {class} procedure setDuration(transitionType: Integer; duration: Int64); cdecl; overload;
    {class} procedure showChild(parent: JViewGroup; child: JView); cdecl; overload;
    {class} procedure showChild(parent: JViewGroup; child: JView; oldVisibility: Integer); cdecl; overload;
    {class} property APPEARING: Integer read _GetAPPEARING;
    {class} property CHANGE_APPEARING: Integer read _GetCHANGE_APPEARING;
    {class} property CHANGE_DISAPPEARING: Integer read _GetCHANGE_DISAPPEARING;
    {class} property CHANGING: Integer read _GetCHANGING;
    {class} property DISAPPEARING: Integer read _GetDISAPPEARING;
  end;

  [JavaSignature('android/animation/LayoutTransition')]
  JLayoutTransition = interface(JObject)
    ['{42450BEE-EBF2-4954-B9B7-F8DAE7DF0EC1}']
    procedure enableTransitionType(transitionType: Integer); cdecl;
    function getAnimator(transitionType: Integer): JAnimator; cdecl;
    function getDuration(transitionType: Integer): Int64; cdecl;
    function getTransitionListeners: JList; cdecl;
    procedure hideChild(parent: JViewGroup; child: JView); cdecl; overload;
    procedure hideChild(parent: JViewGroup; child: JView; newVisibility: Integer); cdecl; overload;
    procedure removeChild(parent: JViewGroup; child: JView); cdecl;
    procedure removeTransitionListener(listener: JLayoutTransition_TransitionListener); cdecl;
    procedure setAnimateParentHierarchy(animateParentHierarchy: Boolean); cdecl;
    procedure setInterpolator(transitionType: Integer; interpolator: JTimeInterpolator); cdecl;
    procedure setStagger(transitionType: Integer; duration: Int64); cdecl;
    procedure setStartDelay(transitionType: Integer; delay: Int64); cdecl;
  end;
  TJLayoutTransition = class(TJavaGenericImport<JLayoutTransitionClass, JLayoutTransition>) end;

  JLayoutTransition_TransitionListenerClass = interface(IJavaClass)
    ['{9FA6F1EC-8EDB-4A05-AF58-B55A525AE114}']
    {class} procedure endTransition(transition: JLayoutTransition; container: JViewGroup; view: JView; transitionType: Integer); cdecl;
    {class} procedure startTransition(transition: JLayoutTransition; container: JViewGroup; view: JView; transitionType: Integer); cdecl;
  end;

  [JavaSignature('android/animation/LayoutTransition$TransitionListener')]
  JLayoutTransition_TransitionListener = interface(IJavaInstance)
    ['{0FBE048F-FCDA-4692-B6F1-DE0F07FAE885}']
  end;
  TJLayoutTransition_TransitionListener = class(TJavaGenericImport<JLayoutTransition_TransitionListenerClass, JLayoutTransition_TransitionListener>) end;

  JPropertyValuesHolderClass = interface(JObjectClass)
    ['{36C77AFF-9C3F-42B6-88F3-320FE8CF9B25}']
    {class} function clone: JPropertyValuesHolder; cdecl;
    {class} function getPropertyName: JString; cdecl;
    {class} function ofMultiFloat(propertyName: JString; values: TJavaBiArray<Single>): JPropertyValuesHolder; cdecl; overload;
    {class} function ofMultiFloat(propertyName: JString; path: JPath): JPropertyValuesHolder; cdecl; overload;
    {class} function ofMultiInt(propertyName: JString; values: TJavaBiArray<Integer>): JPropertyValuesHolder; cdecl; overload;
    {class} function ofMultiInt(propertyName: JString; path: JPath): JPropertyValuesHolder; cdecl; overload;
    {class} function ofObject(propertyName: JString; converter: JTypeConverter; path: JPath): JPropertyValuesHolder; cdecl; overload;
    {class} function ofObject(property_: JProperty; converter: JTypeConverter; path: JPath): JPropertyValuesHolder; cdecl; overload;
    {class} function toString: JString; cdecl;
  end;

  [JavaSignature('android/animation/PropertyValuesHolder')]
  JPropertyValuesHolder = interface(JObject)
    ['{12B4ABFD-CBCA-4636-AF2D-C386EF895DC3}']
    procedure setConverter(converter: JTypeConverter); cdecl;
    procedure setEvaluator(evaluator: JTypeEvaluator); cdecl;
    procedure setProperty(property_: JProperty); cdecl;
    procedure setPropertyName(propertyName: JString); cdecl;
  end;
  TJPropertyValuesHolder = class(TJavaGenericImport<JPropertyValuesHolderClass, JPropertyValuesHolder>) end;

  JStateListAnimatorClass = interface(JObjectClass)
    ['{109E4067-E218-47B1-93EB-65B8916A98D8}']
    {class} function init: JStateListAnimator; cdecl;
    {class} procedure jumpToCurrentState; cdecl;
  end;

  [JavaSignature('android/animation/StateListAnimator')]
  JStateListAnimator = interface(JObject)
    ['{CA2A9587-26AA-4DC2-8DFF-A1305A37608F}']
    procedure addState(specs: TJavaArray<Integer>; animator: JAnimator); cdecl;
    function clone: JStateListAnimator; cdecl;
  end;
  TJStateListAnimator = class(TJavaGenericImport<JStateListAnimatorClass, JStateListAnimator>) end;

  JTimeInterpolatorClass = interface(IJavaClass)
    ['{1E682A1C-9102-461D-A3CA-5596683F1D66}']
    {class} function getInterpolation(input: Single): Single; cdecl;
  end;

  [JavaSignature('android/animation/TimeInterpolator')]
  JTimeInterpolator = interface(IJavaInstance)
    ['{639F8A83-7D9B-49AF-A19E-96B27E46D2AB}']
  end;
  TJTimeInterpolator = class(TJavaGenericImport<JTimeInterpolatorClass, JTimeInterpolator>) end;

  JTypeConverterClass = interface(JObjectClass)
    ['{BE2DD177-6D79-4B0C-B4F5-4E4CD9D7436D}']
    {class} function init(fromClass: Jlang_Class; toClass: Jlang_Class): JTypeConverter; cdecl;
  end;

  [JavaSignature('android/animation/TypeConverter')]
  JTypeConverter = interface(JObject)
    ['{BFEA4116-0766-4AD9-AA8F-4C15A583EB2E}']
    function convert(value: JObject): JObject; cdecl;
  end;
  TJTypeConverter = class(TJavaGenericImport<JTypeConverterClass, JTypeConverter>) end;

  JTypeEvaluatorClass = interface(IJavaClass)
    ['{15B67CAF-6F50-4AA3-A88F-C5AF78D62FD4}']
    {class} function evaluate(fraction: Single; startValue: JObject; endValue: JObject): JObject; cdecl;
  end;

  [JavaSignature('android/animation/TypeEvaluator')]
  JTypeEvaluator = interface(IJavaInstance)
    ['{F436383D-6F44-40D8-ACDD-9057777691FC}']
  end;
  TJTypeEvaluator = class(TJavaGenericImport<JTypeEvaluatorClass, JTypeEvaluator>) end;

  JValueAnimatorClass = interface(JAnimatorClass)
    ['{FF3B71ED-5A33-45B0-8500-7672B0B98E2C}']
    {class} function _GetINFINITE: Integer; cdecl;
    {class} function _GetRESTART: Integer; cdecl;
    {class} function _GetREVERSE: Integer; cdecl;
    {class} function init: JValueAnimator; cdecl;
    {class} procedure &end; cdecl;
    {class} function getAnimatedFraction: Single; cdecl;
    {class} function getAnimatedValue: JObject; cdecl; overload;
    {class} function getFrameDelay: Int64; cdecl;
    {class} function getInterpolator: JTimeInterpolator; cdecl;
    {class} function getRepeatCount: Integer; cdecl;
    {class} function isRunning: Boolean; cdecl;
    {class} function isStarted: Boolean; cdecl;
    {class} procedure pause; cdecl;
    {class} procedure removeAllUpdateListeners; cdecl;
    {class} procedure setCurrentFraction(fraction: Single); cdecl;
    {class} procedure setCurrentPlayTime(playTime: Int64); cdecl;
    {class} procedure setFrameDelay(frameDelay: Int64); cdecl;
    {class} procedure setInterpolator(value: JTimeInterpolator); cdecl;
    {class} procedure setStartDelay(startDelay: Int64); cdecl;
    {class} procedure start; cdecl;
    {class} property INFINITE: Integer read _GetINFINITE;
    {class} property RESTART: Integer read _GetRESTART;
    {class} property REVERSE: Integer read _GetREVERSE;
  end;

  [JavaSignature('android/animation/ValueAnimator')]
  JValueAnimator = interface(JAnimator)
    ['{70F92B14-EFD4-4DC7-91DE-6617417AE194}']
    procedure addUpdateListener(listener: JValueAnimator_AnimatorUpdateListener); cdecl;
    procedure cancel; cdecl;
    function clone: JValueAnimator; cdecl;
    function getAnimatedValue(propertyName: JString): JObject; cdecl; overload;
    function getCurrentPlayTime: Int64; cdecl;
    function getDuration: Int64; cdecl;
    function getRepeatMode: Integer; cdecl;
    function getStartDelay: Int64; cdecl;
    function getValues: TJavaObjectArray<JPropertyValuesHolder>; cdecl;
    procedure removeUpdateListener(listener: JValueAnimator_AnimatorUpdateListener); cdecl;
    procedure resume; cdecl;
    procedure reverse; cdecl;
    function setDuration(duration: Int64): JValueAnimator; cdecl;
    procedure setEvaluator(value: JTypeEvaluator); cdecl;
    procedure setRepeatCount(value: Integer); cdecl;
    procedure setRepeatMode(value: Integer); cdecl;
    function toString: JString; cdecl;
  end;
  TJValueAnimator = class(TJavaGenericImport<JValueAnimatorClass, JValueAnimator>) end;

  JValueAnimator_AnimatorUpdateListenerClass = interface(IJavaClass)
    ['{9CA50CBF-4462-4445-82CD-13CE985E2DE4}']
    {class} procedure onAnimationUpdate(animation: JValueAnimator); cdecl;
  end;

  [JavaSignature('android/animation/ValueAnimator$AnimatorUpdateListener')]
  JValueAnimator_AnimatorUpdateListener = interface(IJavaInstance)
    ['{0F883491-52EF-4A40-B7D2-FC23E11E46FE}']
  end;
  TJValueAnimator_AnimatorUpdateListener = class(TJavaGenericImport<JValueAnimator_AnimatorUpdateListenerClass, JValueAnimator_AnimatorUpdateListener>) end;

  Jmultidex_BuildConfigClass = interface(JObjectClass)
    ['{4B172652-BA03-4A8C-8D9B-7B41374FB876}']
    {class} function _GetAPPLICATION_ID: JString; cdecl;
    {class} function _GetBUILD_TYPE: JString; cdecl;
    {class} function _GetDEBUG: Boolean; cdecl;
    {class} function _GetFLAVOR: JString; cdecl;
    {class} function _GetVERSION_CODE: Integer; cdecl;
    {class} function _GetVERSION_NAME: JString; cdecl;
    {class} function init: Jmultidex_BuildConfig; cdecl;
    {class} property APPLICATION_ID: JString read _GetAPPLICATION_ID;
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property DEBUG: Boolean read _GetDEBUG;
    {class} property FLAVOR: JString read _GetFLAVOR;
    {class} property VERSION_CODE: Integer read _GetVERSION_CODE;
    {class} property VERSION_NAME: JString read _GetVERSION_NAME;
  end;

  [JavaSignature('android/support/multidex/BuildConfig')]
  Jmultidex_BuildConfig = interface(JObject)
    ['{5B85A1F6-75C2-4E51-A1F2-1FD58BEC7870}']
  end;
  TJmultidex_BuildConfig = class(TJavaGenericImport<Jmultidex_BuildConfigClass, Jmultidex_BuildConfig>) end;

  JMultiDexClass = interface(JObjectClass)
    ['{23833633-456A-4900-9F48-DD282169CA2B}']
    {class} procedure install(P1: JContext); cdecl;
    {class} procedure installInstrumentation(P1: JContext; P2: JContext); cdecl;
    {class} function isVMMultidexCapable(P1: JString): Boolean; cdecl;
  end;

  [JavaSignature('android/support/multidex/MultiDex')]
  JMultiDex = interface(JObject)
    ['{01EBEEC1-65F9-45A4-B27D-89A144B6A0E0}']
  end;
  TJMultiDex = class(TJavaGenericImport<JMultiDexClass, JMultiDex>) end;

  JMultiDex_V14Class = interface(JObjectClass)
    ['{78A41A95-9F08-428B-B932-0342374A329A}']
  end;

  [JavaSignature('android/support/multidex/MultiDex$V14')]
  JMultiDex_V14 = interface(JObject)
    ['{099A76F4-2DF9-477B-A548-9FD7DE14ABBD}']
  end;
  TJMultiDex_V14 = class(TJavaGenericImport<JMultiDex_V14Class, JMultiDex_V14>) end;

  JV14_ElementConstructorClass = interface(IJavaClass)
    ['{B6ABCC1C-EA06-4B4E-8349-F7C95364E924}']
  end;

  [JavaSignature('android/support/multidex/MultiDex$V14$ElementConstructor')]
  JV14_ElementConstructor = interface(IJavaInstance)
    ['{E9FD0187-1CDD-41E9-B2B3-E75F49C1B72F}']
    function newInstance(P1: JFile; P2: JDexFile): JObject; cdecl;
  end;
  TJV14_ElementConstructor = class(TJavaGenericImport<JV14_ElementConstructorClass, JV14_ElementConstructor>) end;

  JV14_ICSElementConstructorClass = interface(JV14_ElementConstructorClass)
    ['{4C3C9CA7-C95D-4508-BD84-BF1DFFDF0D21}']
  end;

  [JavaSignature('android/support/multidex/MultiDex$V14$ICSElementConstructor')]
  JV14_ICSElementConstructor = interface(JV14_ElementConstructor)
    ['{1BDD5A57-0C7E-4DE9-9C8C-F480D2508542}']
    function newInstance(P1: JFile; P2: JDexFile): JObject; cdecl;
  end;
  TJV14_ICSElementConstructor = class(TJavaGenericImport<JV14_ICSElementConstructorClass, JV14_ICSElementConstructor>) end;

  JV14_JBMR11ElementConstructorClass = interface(JV14_ElementConstructorClass)
    ['{3DA9B80A-D49E-4E8E-B4E0-4888CDAA1827}']
  end;

  [JavaSignature('android/support/multidex/MultiDex$V14$JBMR11ElementConstructor')]
  JV14_JBMR11ElementConstructor = interface(JV14_ElementConstructor)
    ['{DBB5B023-C317-406E-A4BC-8DC19110ACA6}']
    function newInstance(P1: JFile; P2: JDexFile): JObject; cdecl;
  end;
  TJV14_JBMR11ElementConstructor = class(TJavaGenericImport<JV14_JBMR11ElementConstructorClass, JV14_JBMR11ElementConstructor>) end;

  JV14_JBMR2ElementConstructorClass = interface(JV14_ElementConstructorClass)
    ['{970F256F-114A-4D89-97A8-0815E088D9DD}']
  end;

  [JavaSignature('android/support/multidex/MultiDex$V14$JBMR2ElementConstructor')]
  JV14_JBMR2ElementConstructor = interface(JV14_ElementConstructor)
    ['{58319AF6-3BE1-4B2B-A350-61B39F8A884C}']
    function newInstance(P1: JFile; P2: JDexFile): JObject; cdecl;
  end;
  TJV14_JBMR2ElementConstructor = class(TJavaGenericImport<JV14_JBMR2ElementConstructorClass, JV14_JBMR2ElementConstructor>) end;

  JMultiDex_V19Class = interface(JObjectClass)
    ['{647D68E0-5A63-4510-8170-631ECA91B28E}']
  end;

  [JavaSignature('android/support/multidex/MultiDex$V19')]
  JMultiDex_V19 = interface(JObject)
    ['{DDC75381-5F50-4F94-867C-0D60FC4607C5}']
  end;
  TJMultiDex_V19 = class(TJavaGenericImport<JMultiDex_V19Class, JMultiDex_V19>) end;

  JMultiDex_V4Class = interface(JObjectClass)
    ['{9DD453F2-DDF0-4C2C-A14D-B2D999C3BA4C}']
  end;

  [JavaSignature('android/support/multidex/MultiDex$V4')]
  JMultiDex_V4 = interface(JObject)
    ['{1BE3A140-7AA4-461B-AB8F-17E2A062C659}']
  end;
  TJMultiDex_V4 = class(TJavaGenericImport<JMultiDex_V4Class, JMultiDex_V4>) end;

  JMultiDexApplicationClass = interface(JApplicationClass)
    ['{8CA8128D-A2EF-4913-9B70-B05DD35B8912}']
    {class} function init: JMultiDexApplication; cdecl;
  end;

  [JavaSignature('android/support/multidex/MultiDexApplication')]
  JMultiDexApplication = interface(JApplication)
    ['{3385F4EA-E1B0-4A55-B03B-D44BB2BC522E}']
  end;
  TJMultiDexApplication = class(TJavaGenericImport<JMultiDexApplicationClass, JMultiDexApplication>) end;

  JMultiDexExtractorClass = interface(JCloseableClass)
    ['{68266670-7135-4A5A-85F0-ACF40AB59F5F}']
    {class} function _GetEXTRACTED_SUFFIX: JString; cdecl;
    {class} procedure close; cdecl;
    {class} function init(P1: JFile; P2: JFile): JMultiDexExtractor; cdecl;
    {class} function load(P1: JContext; P2: JString; P3: Boolean): JList; cdecl;
    {class} property EXTRACTED_SUFFIX: JString read _GetEXTRACTED_SUFFIX;
  end;

  [JavaSignature('android/support/multidex/MultiDexExtractor')]
  JMultiDexExtractor = interface(JCloseable)
    ['{59D4CF13-DD74-4864-9CC5-B8D78716E469}']
  end;
  TJMultiDexExtractor = class(TJavaGenericImport<JMultiDexExtractorClass, JMultiDexExtractor>) end;

  JMultiDexExtractor_1Class = interface(JFileFilterClass)
    ['{D34A88A6-EA58-4206-B727-26DBD39D547C}']
    {class} function accept(P1: JFile): Boolean; cdecl;
    {class} function init(P1: JMultiDexExtractor): JMultiDexExtractor_1; cdecl;
  end;

  [JavaSignature('android/support/multidex/MultiDexExtractor$1')]
  JMultiDexExtractor_1 = interface(JFileFilter)
    ['{F408EBAB-FF16-4B55-9ED7-CB5A1349883D}']
  end;
  TJMultiDexExtractor_1 = class(TJavaGenericImport<JMultiDexExtractor_1Class, JMultiDexExtractor_1>) end;

  JMultiDexExtractor_ExtractedDexClass = interface(JFileClass)
    ['{ABAE7CBD-1DD2-4544-850D-9243FC5E4CF1}']
    {class} function init(P1: JFile; P2: JString): JMultiDexExtractor_ExtractedDex; cdecl;
  end;

  [JavaSignature('android/support/multidex/MultiDexExtractor$ExtractedDex')]
  JMultiDexExtractor_ExtractedDex = interface(JFile)
    ['{D64398F5-CD6E-45BF-A574-F958A790BE48}']
    function _Getcrc: Int64; cdecl;
    property crc: Int64 read _Getcrc;
  end;
  TJMultiDexExtractor_ExtractedDex = class(TJavaGenericImport<JMultiDexExtractor_ExtractedDexClass, JMultiDexExtractor_ExtractedDex>) end;

  JZipUtilClass = interface(JObjectClass)
    ['{84FB560D-7EE3-401B-82E7-73C1783ABBF2}']
  end;

  [JavaSignature('android/support/multidex/ZipUtil')]
  JZipUtil = interface(JObject)
    ['{D24D232B-305B-47A4-A767-4E22B54E9824}']
  end;
  TJZipUtil = class(TJavaGenericImport<JZipUtilClass, JZipUtil>) end;

  JZipUtil_CentralDirectoryClass = interface(JObjectClass)
    ['{6353B653-6DF4-407B-AFE1-F99B450D3DAB}']
    {class} function _Getsize: Int64; cdecl;
    {class} procedure _Setsize(Value: Int64); cdecl;
    {class} function init: JZipUtil_CentralDirectory; cdecl;
    {class} property size: Int64 read _Getsize write _Setsize;
  end;

  [JavaSignature('android/support/multidex/ZipUtil$CentralDirectory')]
  JZipUtil_CentralDirectory = interface(JObject)
    ['{65940E8E-7E4C-4050-82B6-B7D553C21492}']
  end;
  TJZipUtil_CentralDirectory = class(TJavaGenericImport<JZipUtil_CentralDirectoryClass, JZipUtil_CentralDirectory>) end;

  JPathMotionClass = interface(JObjectClass)
    ['{E1CD1A94-115C-492C-A490-37F0E72956EB}']
    {class} function init: JPathMotion; cdecl; overload;
    {class} function init(context: JContext; attrs: JAttributeSet): JPathMotion; cdecl; overload;
  end;

  [JavaSignature('android/transition/PathMotion')]
  JPathMotion = interface(JObject)
    ['{BDC08353-C9FB-42D7-97CC-C35837D2F536}']
    function getPath(startX: Single; startY: Single; endX: Single; endY: Single): JPath; cdecl;
  end;
  TJPathMotion = class(TJavaGenericImport<JPathMotionClass, JPathMotion>) end;

  JSceneClass = interface(JObjectClass)
    ['{8B9120CA-AEEA-4DE3-BDC9-15CFD23A7B07}']
    {class} function init(sceneRoot: JViewGroup): JScene; cdecl; overload;
    {class} function init(sceneRoot: JViewGroup; layout: JView): JScene; cdecl; overload;
    {class} function init(sceneRoot: JViewGroup; layout: JViewGroup): JScene; cdecl; overload;
    {class} function getSceneForLayout(sceneRoot: JViewGroup; layoutId: Integer; context: JContext): JScene; cdecl;
    {class} function getSceneRoot: JViewGroup; cdecl;
    {class} procedure setEnterAction(action: JRunnable); cdecl;
  end;

  [JavaSignature('android/transition/Scene')]
  JScene = interface(JObject)
    ['{85A60B99-5837-4F1F-A344-C627DD586B82}']
    procedure enter; cdecl;
    procedure exit; cdecl;
    procedure setExitAction(action: JRunnable); cdecl;
  end;
  TJScene = class(TJavaGenericImport<JSceneClass, JScene>) end;

  JTransitionClass = interface(JObjectClass)
    ['{60EC06BC-8F7A-4416-A04B-5B57987EB18E}']
    {class} function _GetMATCH_ID: Integer; cdecl;
    {class} function _GetMATCH_INSTANCE: Integer; cdecl;
    {class} function _GetMATCH_ITEM_ID: Integer; cdecl;
    {class} function _GetMATCH_NAME: Integer; cdecl;
    {class} function init: JTransition; cdecl; overload;
    {class} function init(context: JContext; attrs: JAttributeSet): JTransition; cdecl; overload;
    {class} function addTarget(targetName: JString): JTransition; cdecl; overload;
    {class} function addTarget(targetType: Jlang_Class): JTransition; cdecl; overload;
    {class} function addTarget(target: JView): JTransition; cdecl; overload;
    {class} function clone: JTransition; cdecl;
    {class} function createAnimator(sceneRoot: JViewGroup; startValues: JTransitionValues; endValues: JTransitionValues): JAnimator; cdecl;
    {class} function excludeChildren(targetId: Integer; exclude: Boolean): JTransition; cdecl; overload;
    {class} function excludeTarget(targetName: JString; exclude: Boolean): JTransition; cdecl; overload;
    {class} function excludeTarget(target: JView; exclude: Boolean): JTransition; cdecl; overload;
    {class} function excludeTarget(type_: Jlang_Class; exclude: Boolean): JTransition; cdecl; overload;
    {class} function getEpicenterCallback: JTransition_EpicenterCallback; cdecl;
    {class} function getInterpolator: JTimeInterpolator; cdecl;
    {class} function getName: JString; cdecl;
    {class} function getTargetIds: JList; cdecl;
    {class} function getTargetNames: JList; cdecl;
    {class} function getTargetTypes: JList; cdecl;
    {class} function isTransitionRequired(startValues: JTransitionValues; endValues: JTransitionValues): Boolean; cdecl;
    {class} function removeListener(listener: JTransition_TransitionListener): JTransition; cdecl;
    {class} function removeTarget(targetId: Integer): JTransition; cdecl; overload;
    {class} function setDuration(duration: Int64): JTransition; cdecl;
    {class} procedure setEpicenterCallback(epicenterCallback: JTransition_EpicenterCallback); cdecl;
    {class} function setInterpolator(interpolator: JTimeInterpolator): JTransition; cdecl;
    {class} function setStartDelay(startDelay: Int64): JTransition; cdecl;
    {class} function toString: JString; cdecl;
    {class} property MATCH_ID: Integer read _GetMATCH_ID;
    {class} property MATCH_INSTANCE: Integer read _GetMATCH_INSTANCE;
    {class} property MATCH_ITEM_ID: Integer read _GetMATCH_ITEM_ID;
    {class} property MATCH_NAME: Integer read _GetMATCH_NAME;
  end;

  [JavaSignature('android/transition/Transition')]
  JTransition = interface(JObject)
    ['{C2F8200F-1C83-40AE-8C5B-C0C8BFF17F88}']
    function addListener(listener: JTransition_TransitionListener): JTransition; cdecl;
    function addTarget(targetId: Integer): JTransition; cdecl; overload;
    function canRemoveViews: Boolean; cdecl;
    procedure captureEndValues(transitionValues: JTransitionValues); cdecl;
    procedure captureStartValues(transitionValues: JTransitionValues); cdecl;
    function excludeChildren(target: JView; exclude: Boolean): JTransition; cdecl; overload;
    function excludeChildren(type_: Jlang_Class; exclude: Boolean): JTransition; cdecl; overload;
    function excludeTarget(targetId: Integer; exclude: Boolean): JTransition; cdecl; overload;
    function getDuration: Int64; cdecl;
    function getEpicenter: JRect; cdecl;
    function getPathMotion: JPathMotion; cdecl;
    function getPropagation: JTransitionPropagation; cdecl;
    function getStartDelay: Int64; cdecl;
    function getTargets: JList; cdecl;
    function getTransitionProperties: TJavaObjectArray<JString>; cdecl;
    function getTransitionValues(view: JView; start: Boolean): JTransitionValues; cdecl;
    function removeTarget(targetName: JString): JTransition; cdecl; overload;
    function removeTarget(target: JView): JTransition; cdecl; overload;
    function removeTarget(target: Jlang_Class): JTransition; cdecl; overload;
    procedure setPathMotion(pathMotion: JPathMotion); cdecl;
    procedure setPropagation(transitionPropagation: JTransitionPropagation); cdecl;
  end;
  TJTransition = class(TJavaGenericImport<JTransitionClass, JTransition>) end;

  JTransition_EpicenterCallbackClass = interface(JObjectClass)
    ['{8141257A-130B-466C-A08D-AA3A00946F4C}']
    {class} function init: JTransition_EpicenterCallback; cdecl;
    {class} function onGetEpicenter(transition: JTransition): JRect; cdecl;
  end;

  [JavaSignature('android/transition/Transition$EpicenterCallback')]
  JTransition_EpicenterCallback = interface(JObject)
    ['{CE004917-266F-4076-8913-F23184824FBA}']
  end;
  TJTransition_EpicenterCallback = class(TJavaGenericImport<JTransition_EpicenterCallbackClass, JTransition_EpicenterCallback>) end;

  JTransition_TransitionListenerClass = interface(IJavaClass)
    ['{D5083752-E8A6-46DF-BE40-AE11073C387E}']
    {class} procedure onTransitionCancel(transition: JTransition); cdecl;
    {class} procedure onTransitionStart(transition: JTransition); cdecl;
  end;

  [JavaSignature('android/transition/Transition$TransitionListener')]
  JTransition_TransitionListener = interface(IJavaInstance)
    ['{C32BE107-6E05-4898-AF0A-FAD970D66E29}']
    procedure onTransitionEnd(transition: JTransition); cdecl;
    procedure onTransitionPause(transition: JTransition); cdecl;
    procedure onTransitionResume(transition: JTransition); cdecl;
  end;
  TJTransition_TransitionListener = class(TJavaGenericImport<JTransition_TransitionListenerClass, JTransition_TransitionListener>) end;

  JTransitionManagerClass = interface(JObjectClass)
    ['{4160EFA0-3499-4964-817E-46497BB5B957}']
    {class} function init: JTransitionManager; cdecl;
    {class} procedure beginDelayedTransition(sceneRoot: JViewGroup); cdecl; overload;
    {class} procedure beginDelayedTransition(sceneRoot: JViewGroup; transition: JTransition); cdecl; overload;
    {class} procedure endTransitions(sceneRoot: JViewGroup); cdecl;
    {class} procedure go(scene: JScene); cdecl; overload;
    {class} procedure go(scene: JScene; transition: JTransition); cdecl; overload;
    {class} procedure setTransition(scene: JScene; transition: JTransition); cdecl; overload;
  end;

  [JavaSignature('android/transition/TransitionManager')]
  JTransitionManager = interface(JObject)
    ['{FF5E1210-1F04-4F81-9CAC-3D7A5C4E972B}']
    procedure setTransition(fromScene: JScene; toScene: JScene; transition: JTransition); cdecl; overload;
    procedure transitionTo(scene: JScene); cdecl;
  end;
  TJTransitionManager = class(TJavaGenericImport<JTransitionManagerClass, JTransitionManager>) end;

  JTransitionPropagationClass = interface(JObjectClass)
    ['{A881388A-C877-4DD9-9BAD-1BA4F56133EE}']
    {class} function init: JTransitionPropagation; cdecl;
    {class} procedure captureValues(transitionValues: JTransitionValues); cdecl;
    {class} function getPropagationProperties: TJavaObjectArray<JString>; cdecl;
  end;

  [JavaSignature('android/transition/TransitionPropagation')]
  JTransitionPropagation = interface(JObject)
    ['{7595B7EF-6BCE-4281-BC67-335E2FB6C091}']
    function getStartDelay(sceneRoot: JViewGroup; transition: JTransition; startValues: JTransitionValues; endValues: JTransitionValues): Int64; cdecl;
  end;
  TJTransitionPropagation = class(TJavaGenericImport<JTransitionPropagationClass, JTransitionPropagation>) end;

  JTransitionValuesClass = interface(JObjectClass)
    ['{3BF98CFA-6A4D-4815-8D42-15E97C916D91}']
    {class} function init: JTransitionValues; cdecl;
    {class} function hashCode: Integer; cdecl;
    {class} function toString: JString; cdecl;
  end;

  [JavaSignature('android/transition/TransitionValues')]
  JTransitionValues = interface(JObject)
    ['{178E09E6-D32C-48A9-ADCF-8CCEA804052A}']
    function _Getvalues: JMap; cdecl;
    function _Getview: JView; cdecl;
    procedure _Setview(Value: JView); cdecl;
    function equals(other: JObject): Boolean; cdecl;
    property values: JMap read _Getvalues;
    property view: JView read _Getview write _Setview;
  end;
  TJTransitionValues = class(TJavaGenericImport<JTransitionValuesClass, JTransitionValues>) end;

  JInterpolatorClass = interface(JTimeInterpolatorClass)
    ['{A575B46A-E489-409C-807A-1B8F2BE092E8}']
  end;

  [JavaSignature('android/view/animation/Interpolator')]
  JInterpolator = interface(JTimeInterpolator)
    ['{F1082403-52DA-4AF0-B017-DAB334325FC7}']
  end;
  TJInterpolator = class(TJavaGenericImport<JInterpolatorClass, JInterpolator>) end;

  JToolbar_LayoutParamsClass = interface(JActionBar_LayoutParamsClass)
    ['{6D43796C-C163-4084-BB30-6FE68AFD7ABB}']
    {class} function init(c: JContext; attrs: JAttributeSet): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(width: Integer; height: Integer): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(width: Integer; height: Integer; gravity: Integer): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(gravity: Integer): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(source: JToolbar_LayoutParams): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(source: JActionBar_LayoutParams): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(source: JViewGroup_MarginLayoutParams): JToolbar_LayoutParams; cdecl; overload;
    {class} function init(source: JViewGroup_LayoutParams): JToolbar_LayoutParams; cdecl; overload;
  end;

  [JavaSignature('android/widget/Toolbar$LayoutParams')]
  JToolbar_LayoutParams = interface(JActionBar_LayoutParams)
    ['{BCD101F9-B7B7-4B2F-9460-056B3EA7B9F0}']
  end;
  TJToolbar_LayoutParams = class(TJavaGenericImport<JToolbar_LayoutParamsClass, JToolbar_LayoutParams>) end;

  JDexFileClass = interface(JObjectClass)
    ['{2081CDBC-3373-4E19-AA49-820C0AC0A2F2}']
    {class} function init(file_: JFile): JDexFile; cdecl; overload;
    {class} function init(fileName: JString): JDexFile; cdecl; overload;
    {class} procedure close; cdecl;
    {class} function entries: JEnumeration; cdecl;
    {class} function getName: JString; cdecl;
    {class} function isDexOptNeeded(fileName: JString): Boolean; cdecl;
    {class} function loadDex(sourcePathName: JString; outputPathName: JString; flags: Integer): JDexFile; cdecl;
    {class} function toString: JString; cdecl;
  end;

  [JavaSignature('dalvik/system/DexFile')]
  JDexFile = interface(JObject)
    ['{4EC1EBC7-4401-4F9B-9597-9DED949C0D6F}']
    function loadClass(name: JString; loader: JClassLoader): Jlang_Class; cdecl;
  end;
  TJDexFile = class(TJavaGenericImport<JDexFileClass, JDexFile>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JAnimator', TypeInfo(AndroidApi.JNI.MultiDex.JAnimator));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JAnimator_AnimatorListener', TypeInfo(AndroidApi.JNI.MultiDex.JAnimator_AnimatorListener));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JAnimator_AnimatorPauseListener', TypeInfo(AndroidApi.JNI.MultiDex.JAnimator_AnimatorPauseListener));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JKeyframe', TypeInfo(AndroidApi.JNI.MultiDex.JKeyframe));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JLayoutTransition', TypeInfo(AndroidApi.JNI.MultiDex.JLayoutTransition));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JLayoutTransition_TransitionListener', TypeInfo(AndroidApi.JNI.MultiDex.JLayoutTransition_TransitionListener));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JPropertyValuesHolder', TypeInfo(AndroidApi.JNI.MultiDex.JPropertyValuesHolder));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JStateListAnimator', TypeInfo(AndroidApi.JNI.MultiDex.JStateListAnimator));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JTimeInterpolator', TypeInfo(AndroidApi.JNI.MultiDex.JTimeInterpolator));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JTypeConverter', TypeInfo(AndroidApi.JNI.MultiDex.JTypeConverter));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JTypeEvaluator', TypeInfo(AndroidApi.JNI.MultiDex.JTypeEvaluator));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JValueAnimator', TypeInfo(AndroidApi.JNI.MultiDex.JValueAnimator));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JValueAnimator_AnimatorUpdateListener', TypeInfo(AndroidApi.JNI.MultiDex.JValueAnimator_AnimatorUpdateListener));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.Jmultidex_BuildConfig', TypeInfo(AndroidApi.JNI.MultiDex.Jmultidex_BuildConfig));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JMultiDex', TypeInfo(AndroidApi.JNI.MultiDex.JMultiDex));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JMultiDex_V14', TypeInfo(AndroidApi.JNI.MultiDex.JMultiDex_V14));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JV14_ElementConstructor', TypeInfo(AndroidApi.JNI.MultiDex.JV14_ElementConstructor));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JV14_ICSElementConstructor', TypeInfo(AndroidApi.JNI.MultiDex.JV14_ICSElementConstructor));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JV14_JBMR11ElementConstructor', TypeInfo(AndroidApi.JNI.MultiDex.JV14_JBMR11ElementConstructor));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JV14_JBMR2ElementConstructor', TypeInfo(AndroidApi.JNI.MultiDex.JV14_JBMR2ElementConstructor));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JMultiDex_V19', TypeInfo(AndroidApi.JNI.MultiDex.JMultiDex_V19));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JMultiDex_V4', TypeInfo(AndroidApi.JNI.MultiDex.JMultiDex_V4));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JMultiDexApplication', TypeInfo(AndroidApi.JNI.MultiDex.JMultiDexApplication));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JMultiDexExtractor', TypeInfo(AndroidApi.JNI.MultiDex.JMultiDexExtractor));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JMultiDexExtractor_1', TypeInfo(AndroidApi.JNI.MultiDex.JMultiDexExtractor_1));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JMultiDexExtractor_ExtractedDex', TypeInfo(AndroidApi.JNI.MultiDex.JMultiDexExtractor_ExtractedDex));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JZipUtil', TypeInfo(AndroidApi.JNI.MultiDex.JZipUtil));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JZipUtil_CentralDirectory', TypeInfo(AndroidApi.JNI.MultiDex.JZipUtil_CentralDirectory));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JPathMotion', TypeInfo(AndroidApi.JNI.MultiDex.JPathMotion));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JScene', TypeInfo(AndroidApi.JNI.MultiDex.JScene));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JTransition', TypeInfo(AndroidApi.JNI.MultiDex.JTransition));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JTransition_EpicenterCallback', TypeInfo(AndroidApi.JNI.MultiDex.JTransition_EpicenterCallback));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JTransition_TransitionListener', TypeInfo(AndroidApi.JNI.MultiDex.JTransition_TransitionListener));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JTransitionManager', TypeInfo(AndroidApi.JNI.MultiDex.JTransitionManager));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JTransitionPropagation', TypeInfo(AndroidApi.JNI.MultiDex.JTransitionPropagation));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JTransitionValues', TypeInfo(AndroidApi.JNI.MultiDex.JTransitionValues));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JInterpolator', TypeInfo(AndroidApi.JNI.MultiDex.JInterpolator));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JToolbar_LayoutParams', TypeInfo(AndroidApi.JNI.MultiDex.JToolbar_LayoutParams));
  TRegTypes.RegisterType('AndroidApi.JNI.MultiDex.JDexFile', TypeInfo(AndroidApi.JNI.MultiDex.JDexFile));
end;

initialization
  RegisterTypes;
end.


