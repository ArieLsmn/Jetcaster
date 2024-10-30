# auto-generated file by appsuit plugin.
# modifying this file has no effect.

# proguard rule start: D:\stealien\Jetcaster\app\build\intermediates\default_proguard_files\global\proguard-android.txt-7.1.2
# This is a configuration file for ProGuard.
# http://proguard.sourceforge.net/index.html#manual/usage.html
#
# Starting with version 2.2 of the Android plugin for Gradle, this file is distributed together with
# the plugin and unpacked at build-time. The files in $ANDROID_HOME are no longer maintained and
# will be ignored by new version of the Android plugin for Gradle.

# Optimization is turned off by default. Dex does not like code run
# through the ProGuard optimize steps (and performs some
# of these optimizations on its own).
# Note that if you want to enable optimization, you cannot just
# include optimization flags in your own project configuration file;
# instead you will need to point to the
# "proguard-android-optimize.txt" file instead of this one from your
# project.properties file.
-dontoptimize

-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-verbose

# Preserve some attributes that may be required for reflection.
-keepattributes AnnotationDefault,
                EnclosingMethod,
                InnerClasses,
                RuntimeVisibleAnnotations,
                RuntimeVisibleParameterAnnotations,
                RuntimeVisibleTypeAnnotations,
                Signature

-keep public class com.google.vending.licensing.ILicensingService
-keep public class com.android.vending.licensing.ILicensingService
-keep public class com.google.android.vending.licensing.ILicensingService
-dontnote com.android.vending.licensing.ILicensingService
-dontnote com.google.vending.licensing.ILicensingService
-dontnote com.google.android.vending.licensing.ILicensingService

# For native methods, see http://proguard.sourceforge.net/manual/examples.html#native
-keepclasseswithmembernames,includedescriptorclasses class * {
    native <methods>;
}

# Keep setters in Views so that animations can still work.
-keepclassmembers public class * extends android.view.View {
    void set*(***);
    *** get*();
}

# We want to keep methods in Activity that could be used in the XML attribute onClick.
-keepclassmembers class * extends android.app.Activity {
    public void *(android.view.View);
}

# For enumeration classes, see http://proguard.sourceforge.net/manual/examples.html#enumerations
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keepclassmembers class * implements android.os.Parcelable {
    public static final ** CREATOR;
}

# Preserve annotated Javascript interface methods.
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

# The support libraries contains references to newer platform versions.
# Don't warn about those in case this app is linking against an older
# platform version. We know about them, and they are safe.
-dontnote android.support.**
-dontnote androidx.**
-dontwarn android.support.**
-dontwarn androidx.**

# This class is deprecated, but remains for backward compatibility.
-dontwarn android.util.FloatMath

# Understand the @Keep support annotation.
-keep class android.support.annotation.Keep
-keep class androidx.annotation.Keep

-keep @android.support.annotation.Keep class * {*;}
-keep @androidx.annotation.Keep class * {*;}

-keepclasseswithmembers class * {
    @android.support.annotation.Keep <methods>;
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <methods>;
}

-keepclasseswithmembers class * {
    @android.support.annotation.Keep <fields>;
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <fields>;
}

-keepclasseswithmembers class * {
    @android.support.annotation.Keep <init>(...);
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <init>(...);
}

# These classes are duplicated between android.jar and org.apache.http.legacy.jar.
-dontnote org.apache.http.**
-dontnote android.net.http.**

# These classes are duplicated between android.jar and core-lambda-stubs.jar.
-dontnote java.lang.invoke.**

# proguard rule end: D:\stealien\Jetcaster\app\build\intermediates\default_proguard_files\global\proguard-android.txt-7.1.2

# proguard rule start: E:\Android\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-core-jvm\1.6.0\f3b8fd26c2e76d2f18cbc36aacb6e349fcb9fd5f\kotlinx-coroutines-core-jvm-1.6.0.jar\META-INF/com.android.tools/r8/coroutines.pro
# When editing this file, update the following files as well:
# - META-INF/proguard/coroutines.pro
# - META-INF/com.android.tools/proguard/coroutines.pro

# Most of volatile fields are updated with AFU and should not be mangled
-keepclassmembers class kotlinx.coroutines.** {
    volatile <fields>;
}

# Same story for the standard library's SafeContinuation that also uses AtomicReferenceFieldUpdater
-keepclassmembers class kotlin.coroutines.SafeContinuation {
    volatile <fields>;
}

# These classes are only required by kotlinx.coroutines.debug.AgentPremain, which is only loaded when
# kotlinx-coroutines-core is used as a Java agent, so these are not needed in contexts where ProGuard is used.
-dontwarn java.lang.instrument.ClassFileTransformer
-dontwarn sun.misc.SignalHandler
-dontwarn java.lang.instrument.Instrumentation
-dontwarn sun.misc.Signal

# Only used in `kotlinx.coroutines.internal.ExceptionsConstructor`.
# The case when it is not available is hidden in a `try`-`catch`, as well as a check for Android.
-dontwarn java.lang.ClassValue

# An annotation used for build tooling, won't be directly accessed.
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
# proguard rule end: E:\Android\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-core-jvm\1.6.0\f3b8fd26c2e76d2f18cbc36aacb6e349fcb9fd5f\kotlinx-coroutines-core-jvm-1.6.0.jar\META-INF/com.android.tools/r8/coroutines.pro

# proguard rule start: E:\Android\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-core-jvm\1.6.0\f3b8fd26c2e76d2f18cbc36aacb6e349fcb9fd5f\kotlinx-coroutines-core-jvm-1.6.0.jar\META-INF/com.android.tools/proguard/coroutines.pro
# When editing this file, update the following files as well:
# - META-INF/proguard/coroutines.pro
# - META-INF/com.android.tools/r8/coroutines.pro

# ServiceLoader support
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}

# Most of volatile fields are updated with AFU and should not be mangled
-keepclassmembers class kotlinx.coroutines.** {
    volatile <fields>;
}

# Same story for the standard library's SafeContinuation that also uses AtomicReferenceFieldUpdater
-keepclassmembers class kotlin.coroutines.SafeContinuation {
    volatile <fields>;
}

# These classes are only required by kotlinx.coroutines.debug.AgentPremain, which is only loaded when
# kotlinx-coroutines-core is used as a Java agent, so these are not needed in contexts where ProGuard is used.
-dontwarn java.lang.instrument.ClassFileTransformer
-dontwarn sun.misc.SignalHandler
-dontwarn java.lang.instrument.Instrumentation
-dontwarn sun.misc.Signal

# Only used in `kotlinx.coroutines.internal.ExceptionsConstructor`.
# The case when it is not available is hidden in a `try`-`catch`, as well as a check for Android.
-dontwarn java.lang.ClassValue

# An annotation used for build tooling, won't be directly accessed.
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement

# proguard rule end: E:\Android\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-core-jvm\1.6.0\f3b8fd26c2e76d2f18cbc36aacb6e349fcb9fd5f\kotlinx-coroutines-core-jvm-1.6.0.jar\META-INF/com.android.tools/proguard/coroutines.pro

# proguard rule start: E:\Android\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-core-jvm\1.6.0\f3b8fd26c2e76d2f18cbc36aacb6e349fcb9fd5f\kotlinx-coroutines-core-jvm-1.6.0.jar\META-INF/proguard/coroutines.pro
# When editing this file, update the following files as well:
# - META-INF/com.android.tools/proguard/coroutines.pro
# - META-INF/com.android.tools/r8/coroutines.pro

# ServiceLoader support
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}

# Most of volatile fields are updated with AFU and should not be mangled
-keepclassmembers class kotlinx.coroutines.** {
    volatile <fields>;
}

# Same story for the standard library's SafeContinuation that also uses AtomicReferenceFieldUpdater
-keepclassmembers class kotlin.coroutines.SafeContinuation {
    volatile <fields>;
}

# These classes are only required by kotlinx.coroutines.debug.AgentPremain, which is only loaded when
# kotlinx-coroutines-core is used as a Java agent, so these are not needed in contexts where ProGuard is used.
-dontwarn java.lang.instrument.ClassFileTransformer
-dontwarn sun.misc.SignalHandler
-dontwarn java.lang.instrument.Instrumentation
-dontwarn sun.misc.Signal

# Only used in `kotlinx.coroutines.internal.ExceptionsConstructor`.
# The case when it is not available is hidden in a `try`-`catch`, as well as a check for Android.
-dontwarn java.lang.ClassValue

# An annotation used for build tooling, won't be directly accessed.
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement

# proguard rule end: E:\Android\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-core-jvm\1.6.0\f3b8fd26c2e76d2f18cbc36aacb6e349fcb9fd5f\kotlinx-coroutines-core-jvm-1.6.0.jar\META-INF/proguard/coroutines.pro

# proguard rule start: E:\Android\.gradle\caches\modules-2\files-2.1\com.squareup.okhttp3\okhttp\4.9.1\51215279c3fe472c59b6b7dd7491e6ac2e28a81b\okhttp-4.9.1.jar\META-INF/proguard/okhttp3.pro
# JSR 305 annotations are for embedding nullability information.
-dontwarn javax.annotation.**

# A resource is loaded with a relative path so the package of this class must be preserved.
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase

# Animal Sniffer compileOnly dependency to ensure APIs are compatible with older versions of Java.
-dontwarn org.codehaus.mojo.animal_sniffer.*

# OkHttp platform used only on JVM and when Conscrypt dependency is available.
-dontwarn okhttp3.internal.platform.ConscryptPlatform

# proguard rule end: E:\Android\.gradle\caches\modules-2\files-2.1\com.squareup.okhttp3\okhttp\4.9.1\51215279c3fe472c59b6b7dd7491e6ac2e28a81b\okhttp-4.9.1.jar\META-INF/proguard/okhttp3.pro

# proguard rule start: E:\Android\.gradle\caches\modules-2\files-2.1\androidx.annotation\annotation\1.2.0\57136ff68ee784c6e19db34ed4a175338fadfde1\annotation-1.2.0.jar\META-INF/proguard/androidx-annotations.pro
-keep,allowobfuscation @interface androidx.annotation.Keep
-keep @androidx.annotation.Keep class * {*;}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <methods>;
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <fields>;
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <init>(...);
}

-keepclassmembers,allowobfuscation class * {
  @androidx.annotation.DoNotInline <methods>;
}

# proguard rule end: E:\Android\.gradle\caches\modules-2\files-2.1\androidx.annotation\annotation\1.2.0\57136ff68ee784c6e19db34ed4a175338fadfde1\annotation-1.2.0.jar\META-INF/proguard/androidx-annotations.pro

# proguard rule start: E:\Android\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-android\1.6.0\453fa53456bbaea50e51bd92d7f16f7bf6fcc58e\kotlinx-coroutines-android-1.6.0.jar\META-INF/com.android.tools/r8-from-1.6.0/coroutines.pro
# Allow R8 to optimize away the FastServiceLoader.
# Together with ServiceLoader optimization in R8
# this results in direct instantiation when loading Dispatchers.Main
-assumenosideeffects class kotlinx.coroutines.internal.MainDispatcherLoader {
    boolean FAST_SERVICE_LOADER_ENABLED return false;
}

-assumenosideeffects class kotlinx.coroutines.internal.FastServiceLoaderKt {
    boolean ANDROID_DETECTED return true;
}

-keep class kotlinx.coroutines.android.AndroidDispatcherFactory {*;}

# Disable support for "Missing Main Dispatcher", since we always have Android main dispatcher
-assumenosideeffects class kotlinx.coroutines.internal.MainDispatchersKt {
    boolean SUPPORT_MISSING return false;
}

# Statically turn off all debugging facilities and assertions
-assumenosideeffects class kotlinx.coroutines.DebugKt {
    boolean getASSERTIONS_ENABLED() return false;
    boolean getDEBUG() return false;
    boolean getRECOVER_STACK_TRACES() return false;
}
# proguard rule end: E:\Android\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-android\1.6.0\453fa53456bbaea50e51bd92d7f16f7bf6fcc58e\kotlinx-coroutines-android-1.6.0.jar\META-INF/com.android.tools/r8-from-1.6.0/coroutines.pro

# proguard rule start: E:\Android\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-android\1.6.0\453fa53456bbaea50e51bd92d7f16f7bf6fcc58e\kotlinx-coroutines-android-1.6.0.jar\META-INF/com.android.tools/r8-upto-1.6.0/coroutines.pro
# When editing this file, update the following files as well:
# - META-INF/com.android.tools/proguard/coroutines.pro
# - META-INF/proguard/coroutines.pro

-keep class kotlinx.coroutines.android.AndroidDispatcherFactory {*;}

-assumenosideeffects class kotlinx.coroutines.internal.FastServiceLoader {
    boolean ANDROID_DETECTED return true;
}
# proguard rule end: E:\Android\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-android\1.6.0\453fa53456bbaea50e51bd92d7f16f7bf6fcc58e\kotlinx-coroutines-android-1.6.0.jar\META-INF/com.android.tools/r8-upto-1.6.0/coroutines.pro

# proguard rule start: E:\Android\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-android\1.6.0\453fa53456bbaea50e51bd92d7f16f7bf6fcc58e\kotlinx-coroutines-android-1.6.0.jar\META-INF/com.android.tools/proguard/coroutines.pro
# When editing this file, update the following files as well:
# - META-INF/com.android.tools/r8-upto-1.6.0/coroutines.pro
# - META-INF/proguard/coroutines.pro

-keep class kotlinx.coroutines.android.AndroidDispatcherFactory {*;}

# proguard rule end: E:\Android\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-android\1.6.0\453fa53456bbaea50e51bd92d7f16f7bf6fcc58e\kotlinx-coroutines-android-1.6.0.jar\META-INF/com.android.tools/proguard/coroutines.pro

# proguard rule start: E:\Android\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-android\1.6.0\453fa53456bbaea50e51bd92d7f16f7bf6fcc58e\kotlinx-coroutines-android-1.6.0.jar\META-INF/proguard/coroutines.pro
# Files in this directory will be ignored starting with Android Gradle Plugin 3.6.0+

# When editing this file, update the following files as well for AGP 3.6.0+:
# - META-INF/com.android.tools/proguard/coroutines.pro
# - META-INF/com.android.tools/r8-upto-1.6.0/coroutines.pro

-keep class kotlinx.coroutines.android.AndroidDispatcherFactory {*;}

# proguard rule end: E:\Android\.gradle\caches\modules-2\files-2.1\org.jetbrains.kotlinx\kotlinx-coroutines-android\1.6.0\453fa53456bbaea50e51bd92d7f16f7bf6fcc58e\kotlinx-coroutines-android-1.6.0.jar\META-INF/proguard/coroutines.pro

# proguard rule start: E:\Android\.gradle\caches\modules-2\files-2.1\com.squareup.okio\okio\2.10.0\accaddddbb597fb70290fd40358b1ce66b8c2b3d\okio-jvm-2.10.0.jar\META-INF/proguard/okio.pro
# Animal Sniffer compileOnly dependency to ensure APIs are compatible with older versions of Java.
-dontwarn org.codehaus.mojo.animal_sniffer.*

# proguard rule end: E:\Android\.gradle\caches\modules-2\files-2.1\com.squareup.okio\okio\2.10.0\accaddddbb597fb70290fd40358b1ce66b8c2b3d\okio-jvm-2.10.0.jar\META-INF/proguard/okio.pro


# appsuit rule start: D:\stealien\Jetcaster\appsuit\rule.pro
-logout_std
-no_remove_logging #배포 시 제외

# android standard
-keep class android.** { *; }
-keep class androidx.** { *; }

-keepbare class android.** { *; }
-keepbare class androidx.** { *; }

-keep class org.apache.** { *; }
-keepstrings class org.apache.** { *; }

# kotlin library
-keep class kotlin.** { *; }
-keep class kotlinx.** { *; }

# firebase rule 
-keep class com.google.** { *; }
-keepreflect class com.google.** { *; }
-keepstrings class com.google.** { *; }
-keepflow class com.google.** { *; }

# third-party
-keep class javax.** { *; }
-keep class okhttp3.** { *; }
-keepreflect class okhttp3.** { *; }

-keep class okio.** { *; }
-keep class retrofit2.** { *; }
-keep class io.reactivex.** { *; }
-keep class dagger.** { *; }
-keep class org.xmlpull.** { *; }
-keep class butterknife.** { *; }

-keep class com.facebook.** { *; }
-keepreflect class com.facebook.** { *; }
-keep class android.support.v4.app.** { *; }
-keepbare class android.support.v4.app.** { *; }

# except layout, component
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class * extends android.widget.TextView

-keepclassmembers class * { @android.webkit.JavascriptInterface <methods>; }

-keepclasseswithmembernames class * {
native <methods>;
}

-keepclassmembers class * extends android.support.v7.app.AppCompatActivity {
public void *(android.view.View);
}

-keepclassmembers class * extends android.app.Activity {
public void *(android.view.View);
}

-keepclassmembers enum * {
    values(...);
    valueOf(...);
}

-keepreflect class a.AppSuitDexLoader { *; }
-keepreflect class a.AppSuitDexLoader$* { *; }
-keepstrings class a.AppSuitDexLoader { *; }
-keepstrings class a.AppSuitDexLoader$* { *; }

-reflect_flow_target_all

-keepreflect class **.Dagger* { *; }

-keepreflect class **$** { public final invoke(...); }
-keepreflect class **$** { @androidx.compose.runtime.Composable <methods>; }
-keepreflect class **.** { @androidx.compose.runtime.Composable <methods>; }

-use_api_desugar
-use_d8
-sync_lib_proguard_rules

### ### ### 

-dumpprofile proguard

#-secure_handler_timeout 7777
#-secure_handler com.rn72.MainActivity.showAppSuitDialog

# appsuit rule end: D:\stealien\Jetcaster\appsuit\rule.pro
# Wed Oct 30 13:52:09 ICT 2024
