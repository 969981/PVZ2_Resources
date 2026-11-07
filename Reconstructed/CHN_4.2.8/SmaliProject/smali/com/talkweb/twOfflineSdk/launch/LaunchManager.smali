.class public Lcom/talkweb/twOfflineSdk/launch/LaunchManager;
.super Ljava/lang/Object;
.source "LaunchManager.java"


# static fields
.field private static isLaunched:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginLaunch(Landroid/app/Application;)V
    .locals 3

    .line 72
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginLaunch isLaunched\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/talkweb/twOfflineSdk/launch/LaunchManager;->isLaunched:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    sget-boolean v0, Lcom/talkweb/twOfflineSdk/launch/LaunchManager;->isLaunched:Z

    if-nez v0, :cond_0

    .line 74
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/launch/LaunchManager;->doLaunch(Landroid/app/Application;)V

    const/4 p0, 0x1

    .line 75
    sput-boolean p0, Lcom/talkweb/twOfflineSdk/launch/LaunchManager;->isLaunched:Z

    goto :goto_0

    .line 77
    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u5df2\u6267\u884c\u8fc7launch\u64cd\u4f5c\u4e86"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static closeAndroidPDialog()V
    .locals 5

    .line 43
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "closeAndroidPDialog"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "android.content.pm.PackageParser$Package"

    .line 46
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 47
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "closeAndroidPDialog failed1"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    :try_start_1
    const-string v2, "android.app.ActivityThread"

    .line 55
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentActivityThread"

    new-array v4, v0, [Ljava/lang/Class;

    .line 57
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "mHiddenApiWarningShown"

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 63
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 64
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "closeAndroidPDialog successful"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "closeAndroidPDialog failed2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static doLaunch(Landroid/app/Application;)V
    .locals 1

    .line 88
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->setGameContext(Landroid/content/Context;)V

    .line 93
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->parseAssetsPayConfig(Landroid/content/Context;)V

    const-string v0, "step1--\u89e3\u6790twpay"

    .line 94
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const-string v0, "step2--\u521d\u59cb\u5316\u6e20\u9053class"

    .line 96
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 100
    :try_start_0
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/SDKConfig;->getTwOfflineSDKInstance(Landroid/content/Context;)Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "iTwOfflineSDK is null"

    .line 102
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->launch(Landroid/app/Application;)V

    :cond_0
    const/4 p0, 0x1

    .line 108
    sput-boolean p0, Lcom/talkweb/twOfflineSdk/launch/LaunchManager;->isLaunched:Z

    const-string p0, "latch.countDown"

    .line 109
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static isLaunched()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/talkweb/twOfflineSdk/launch/LaunchManager;->isLaunched:Z

    return v0
.end method

.method public static setLaunched(Z)V
    .locals 0

    .line 39
    sput-boolean p0, Lcom/talkweb/twOfflineSdk/launch/LaunchManager;->isLaunched:Z

    return-void
.end method
