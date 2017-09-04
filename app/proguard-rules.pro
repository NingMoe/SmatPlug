# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in E:\Android\sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

#ָ��ѹ������
-optimizationpasses 5

# ���ʱ��ʹ�ô�Сд��ϣ���Ϻ������ΪСд
-dontusemixedcaseclassnames

# ָ����ȥ���Էǹ��������
-dontskipnonpubliclibraryclasses

#�������ǹ����Ŀ�����Ա
-dontskipnonpubliclibraryclassmembers

# ����������->������������ӳ���ϵ
-verbose

#����ԤУ�飬�ӿ�����ٶ�
-dontpreverify

#����ʱ���õ��㷨
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*

#�ѻ������еķ�����Ҳ������
-useuniqueclassmembernames

#�Ż�ʱ������ʲ��޸������η��������ĳ�Ա
-allowaccessmodification

#���ļ���Դ������Ϊ��SourceFile���ַ���
#-renamesourcefileattribute SourceFile

#����������
-keepattributes Signature

#����ע��
-keepattributes *Annotation*

#�����к�
-keepattributes SourceFile,LineNumberTable

#��������ʵ�� Serializable �ӿڵ����Ա
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}


# ���ֲ�����صĴ���
-dontnote junit.framework.**
-dontnote junit.runner.**
-dontwarn android.test.**
-dontwarn android.support.test.**
-dontwarn org.junit.**

# ͨ�������ȵ���
-keep public class * extends android.app.Fragment
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.preference.Preference
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.support.v4.**
-keep public class * extends android.support.annotation.**
-keep public class * extends android.support.v7.**
-keep public class * extends android.view.View
-keep public class com.android.vending.licensing.ILicensingService


#����R��
-keep class **.R$* {
   *;
}

#����native����������
-keepclasseswithmembernames class * {
    native <methods>;
}

#�����Զ���ؼ��಻����
-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}
-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

#����ö��enum�಻������
-keepclasseswithmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

#����parcelable������
-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

#����serializable������
-keep class * implements java.io.Serializable{
*;
}

#�����Զ�����಻����
-keep class com.phicomm.smartplug.view.** { *; }
-keep class com.phicomm.smartplug.beans.** { *; }
-keep class com.phicomm.smartplug.modules.data.remote.beans.** { *; }
-dontwarn com.phicomm.**
-dontwarn org.joda.time**

-keep public class com.phicomm.smartplug.R$*{
public static final int *;
}

####################################�������� Start####################################
# Retrofit
-dontwarn retrofit2.**
-keep class retrofit2.** { *; }
-keepattributes Signature
-keepattributes Exceptions

# butterknife
-keep class butterknife.** { *; }
-dontwarn butterknife.internal.**
-keep class **$$ViewBinder { *; }
-keepclasseswithmembernames class * {
    @butterknife.* <fields>;
}
-keepclasseswithmembernames class * {
    @butterknife.* <methods>;
}

# rxjava
-dontwarn sun.misc.**
-keepclassmembers class rx.internal.util.unsafe.*ArrayQueue*Field* {
   long producerIndex;
   long consumerIndex;
}
-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueProducerNodeRef {
    rx.internal.util.atomic.LinkedQueueNode producerNode;
}
-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueConsumerNodeRef {
    rx.internal.util.atomic.LinkedQueueNode consumerNode;
}
-dontnote rx.internal.util.PlatformDependent

# gson
-keep class sun.misc.Unsafe { *; }
-keep class com.google.gson.stream.** { *; }

# okhttp3
-dontwarn com.squareup.okhttp3.**
-keep class com.squareup.okhttp3.** { *;}
-dontwarn okio.**
-dontwarn javax.annotation.Nullable
-dontwarn javax.annotation.ParametersAreNonnullByDefault

# Okio
-dontwarn com.squareup.**
-dontwarn okio.**
-keep public class org.codehaus.* { *; }
-keep public class java.nio.* { *; }

# glide
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}
# for DexGuard only
#-keepresourcexmlelements manifest/application/meta-data@value=GlideModule

#������cordova���
#-repackageclasses ''
#-allowaccessmodification
#-optimizations !code/simplification/arithmetic
#-keepattributes *Annotation*
-keep public class * extends org.apache.cordova.CordovaPlugin
-keep public class org.apache.cordova.**{*;}

#greendao
-keep class org.greenrobot.greendao.**{*;}
-keep public interface org.greenrobot.greendao.**
-keepclassmembers class * extends org.greenrobot.greendao.AbstractDao {
public static java.lang.String TABLENAME;
}
-keep class **$Properties
-keep class net.sqlcipher.database.**{*;}
-keep public interface net.sqlcipher.database.**
-dontwarn net.sqlcipher.database.**
-dontwarn org.greenrobot.greendao.**
# If you do not use SQLCipher:
-dontwarn org.greenrobot.greendao.database.**
# If you do not use RxJava:
-dontwarn rx.**

#EventBus
-keepclassmembers class ** {
    @org.greenrobot.eventbus.Subscribe <methods>;
}
-keep enum org.greenrobot.eventbus.ThreadMode { *; }
# Only required if you use AsyncExecutor
-keepclassmembers class * extends org.greenrobot.eventbus.util.ThrowableFailureEvent {
    <init>(Java.lang.Throwable);
}

#Umeng App analytics
-keepclassmembers class * {
   public <init> (org.json.JSONObject);
}
-keep public class com.phicomm.smartplug.R$*{
public static final int *;
}
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
####################################�������� End####################################

