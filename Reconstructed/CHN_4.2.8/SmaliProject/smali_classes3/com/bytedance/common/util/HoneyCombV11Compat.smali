.class public Lcom/bytedance/common/util/HoneyCombV11Compat;
.super Ljava/lang/Object;
.source "HoneyCombV11Compat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/common/util/HoneyCombV11Compat$HoneyCombImpl;
    }
.end annotation


# static fields
.field static sMethodWebViewOnPause:Ljava/lang/reflect/Method;

.field static sMethodWebViewOnResume:Ljava/lang/reflect/Method;

.field static sWebViewPauseResumeGot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Landroid/content/Context;
    .locals 2

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 45
    invoke-static {p1}, Lcom/bytedance/common/util/HoneyCombV11Compat$HoneyCombImpl;->getContext(Landroid/app/AlertDialog$Builder;)Landroid/content/Context;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getLargeMemoryClass(Landroid/app/ActivityManager;)I
    .locals 3

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 114
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/common/util/HoneyCombV11Compat$HoneyCombImpl;->getLargeMemoryClass(Landroid/app/ActivityManager;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_0
    return v1
.end method

.method public static pauseWebView(Landroid/webkit/WebView;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 62
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 63
    invoke-static {p0}, Lcom/bytedance/common/util/HoneyCombV11Compat$HoneyCombImpl;->pauseWebView(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Lcom/bytedance/common/util/HoneyCombV11Compat;->tryGetWebViewPauseResumeMethod()V

    .line 66
    sget-object v0, Lcom/bytedance/common/util/HoneyCombV11Compat;->sMethodWebViewOnPause:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 68
    :try_start_0
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static resumeWebView(Landroid/webkit/WebView;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 82
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 83
    invoke-static {p0}, Lcom/bytedance/common/util/HoneyCombV11Compat$HoneyCombImpl;->resumeWebView(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {}, Lcom/bytedance/common/util/HoneyCombV11Compat;->tryGetWebViewPauseResumeMethod()V

    .line 86
    sget-object v0, Lcom/bytedance/common/util/HoneyCombV11Compat;->sMethodWebViewOnResume:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 88
    :try_start_0
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static setDisplayZoomControl(Landroid/webkit/WebSettings;Z)V
    .locals 2

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 53
    invoke-static {p0, p1}, Lcom/bytedance/common/util/HoneyCombV11Compat$HoneyCombImpl;->setDisplayZoomControl(Landroid/webkit/WebSettings;Z)V

    :cond_0
    return-void
.end method

.method private static tryGetWebViewPauseResumeMethod()V
    .locals 4

    .line 98
    sget-boolean v0, Lcom/bytedance/common/util/HoneyCombV11Compat;->sWebViewPauseResumeGot:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 102
    sput-boolean v0, Lcom/bytedance/common/util/HoneyCombV11Compat;->sWebViewPauseResumeGot:Z

    .line 104
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "onPause"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bytedance/common/util/HoneyCombV11Compat;->sMethodWebViewOnPause:Ljava/lang/reflect/Method;

    .line 105
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "onResume"

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bytedance/common/util/HoneyCombV11Compat;->sMethodWebViewOnResume:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
