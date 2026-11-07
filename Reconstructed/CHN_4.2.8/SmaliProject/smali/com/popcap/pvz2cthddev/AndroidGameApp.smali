.class public Lcom/popcap/pvz2cthddev/AndroidGameApp;
.super Ljava/lang/Object;
.source "AndroidGameApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popcap/pvz2cthddev/AndroidGameApp$GeminiMethodNotFoundException;
    }
.end annotation


# static fields
.field static DEBUG:Z = true

.field static final HuaWeiPlatform:I = 0x0

.field static final MobileCard_ChinaMobile:I = 0x1

.field static final MobileCard_Null:I = 0x0

.field static final MobileCard_Telecom:I = 0x4

.field static final MobileCard_Unicom:I = 0x2

.field private static SEPARATOR_OF_MAC:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "EmulatorDetector"

.field private static final UI_ORIENTATION_FACE_DOWN:I = 0x6

.field private static final UI_ORIENTATION_FACE_UP:I = 0x5

.field private static final UI_ORIENTATION_LANDSCAPE_LEFT:I = 0x4

.field private static final UI_ORIENTATION_LANDSCAPE_RIGHT:I = 0x3

.field private static final UI_ORIENTATION_PORTRAIT:I = 0x1

.field private static final UI_ORIENTATION_PORTRAIT_UPSIDE_DOWN:I = 0x2

.field private static final UI_ORIENTATION_UNKNOWN:I = 0x0

.field static final VivoPlatform:I = 0x2

.field static final XiaoMiPlatform:I = 0x1

.field private static activity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;


# instance fields
.field private final detailMemorySampler:Lcom/popcap/pvz2cthddev/DetailMemorySampler;

.field private mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

.field private mCommandLineFlag:Ljava/lang/String;

.field private mCurrentOrientation:I

.field private mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

.field private mHttpProxy:Lcom/popcap/pvz2cthddev/AndroidHttpProxy;

.field private mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

.field private mXiaoMiBigRCorner:Z

.field private mXiaoMiBigRCornerCheck:Z

.field private mXiaoMiNotch:Z

.field private mXiaoMiNotchCheck:Z

.field private mXiaoMiNotchHeight:I

.field private mXiaoMiNotchHeightCheck:Z

.field private mbAppIsFocusedState:Z

.field public mbAppIsSuspended:Z

.field private mbGotFocusEvent:Z

.field private mbGotResumedEvent:Z

.field private mbLostFocusOnly:Z

.field public mbNativeInitialized:Z

.field private mlWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;Lcom/popcap/pvz2cthddev/AndroidSurfaceView;Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mlWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 102
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mCommandLineFlag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbGotFocusEvent:Z

    .line 104
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbGotResumedEvent:Z

    .line 105
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbAppIsFocusedState:Z

    .line 106
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbLostFocusOnly:Z

    .line 108
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mXiaoMiBigRCornerCheck:Z

    .line 109
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mXiaoMiBigRCorner:Z

    .line 110
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mXiaoMiNotchCheck:Z

    .line 111
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mXiaoMiNotch:Z

    .line 112
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mXiaoMiNotchHeightCheck:Z

    .line 113
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mXiaoMiNotchHeight:I

    .line 1657
    new-instance v1, Lcom/popcap/pvz2cthddev/DetailMemorySampler;

    invoke-direct {v1}, Lcom/popcap/pvz2cthddev/DetailMemorySampler;-><init>()V

    iput-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->detailMemorySampler:Lcom/popcap/pvz2cthddev/DetailMemorySampler;

    .line 156
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    .line 157
    iput-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    .line 159
    sput-object p1, Lcom/popcap/pvz2cthddev/AndroidGameApp;->activity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    .line 161
    new-instance p1, Lcom/popcap/pvz2cthddev/AndroidHttpProxy;

    iget-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {p2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/popcap/pvz2cthddev/AndroidHttpProxy;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mHttpProxy:Lcom/popcap/pvz2cthddev/AndroidHttpProxy;

    .line 162
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/AndroidHttpProxy;->Startup()Z

    .line 164
    iput-object p3, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    .line 166
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbAppIsSuspended:Z

    .line 170
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 171
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    iget-object p3, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mHttpProxy:Lcom/popcap/pvz2cthddev/AndroidHttpProxy;

    invoke-direct {p0, p2, p3, p1}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Native_GameAppInitialize(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;Lcom/popcap/pvz2cthddev/AndroidHttpProxy;Landroid/content/pm/PackageManager;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbNativeInitialized:Z

    .line 175
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Device_GetCurrentUIOrientation()I

    move-result p1

    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mCurrentOrientation:I

    return-void
.end method

.method private Config_ConfigReadBoolean(Ljava/lang/String;)Z
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 711
    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1
.end method

.method private Config_ConfigReadInteger(Ljava/lang/String;)I
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 693
    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1
.end method

.method private Config_ConfigReadString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 658
    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private Config_ConfigReadStringEx(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 670
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const-string v1, "com.popcap.SexyApp.SexyAppActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 675
    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private Config_ConfigWriteBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 735
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 736
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method private Config_ConfigWriteInteger(Ljava/lang/String;I)Z
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 730
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method private Config_ConfigWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 724
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method private DEBUG_PauseInJava(Ljava/lang/String;I)V
    .locals 0

    .line 1626
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "File: \"%s\"(%d)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PauseInJava"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private Device_CancelVibrate()V
    .locals 2

    .line 993
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    return-void
.end method

.method private Device_CopyToClipBoard(Ljava/lang/String;)V
    .locals 2

    .line 1233
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    new-instance v1, Lcom/popcap/pvz2cthddev/AndroidGameApp$2;

    invoke-direct {v1, p0, p1}, Lcom/popcap/pvz2cthddev/AndroidGameApp$2;-><init>(Lcom/popcap/pvz2cthddev/AndroidGameApp;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private Device_ExitApp()V
    .locals 1

    .line 1225
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->finish()V

    .line 1226
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    .line 1227
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private Device_ExitToHome()V
    .locals 2

    .line 1216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1217
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1218
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1219
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v1, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private Device_GetCachesDir()Ljava/lang/String;
    .locals 1

    .line 1209
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1211
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Device_GetCurrentUIOrientation()I
    .locals 6

    const/4 v0, 0x0

    .line 901
    :try_start_0
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 910
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 917
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 918
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 919
    iget v2, v2, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 922
    :catch_0
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 923
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 935
    :goto_0
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lez v3, :cond_1

    if-lez v2, :cond_1

    if-lt v3, v2, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-ne v2, v4, :cond_4

    if-eqz v1, :cond_3

    if-ne v1, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x3

    return v0

    :cond_3
    :goto_2
    const/4 v0, 0x4

    return v0

    :cond_4
    if-ne v2, v5, :cond_7

    if-eqz v1, :cond_6

    if-ne v1, v5, :cond_5

    goto :goto_3

    :cond_5
    return v4

    :cond_6
    :goto_3
    return v5

    :cond_7
    return v0

    :catch_1
    move-exception v1

    .line 905
    const-string v2, "Exception"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private Device_HideKeyboard()Z
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->closeIMEKeyboard()V

    const/4 v0, 0x1

    return v0
.end method

.method private Device_IsKeyboardShowing(Z)Z
    .locals 1

    .line 1000
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 1002
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result p1

    return p1
.end method

.method private Device_IsSupportedUIOrientation(I)Z
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private Device_ShowKeyboard()Z
    .locals 1

    .line 1192
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->openIMEKeyboard()V

    const/4 v0, 0x1

    return v0
.end method

.method private Device_Vibrate(J)V
    .locals 2

    .line 979
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 981
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method

.method private Device_VibrateWithPattern([JI)V
    .locals 2

    .line 986
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_0
    return-void
.end method

.method private Diag_GetDeviceID()Ljava/lang/String;
    .locals 2

    .line 1596
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1597
    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 1599
    const-string v0, "UNKNOWN/EMULATOR"

    :cond_0
    return-object v0
.end method

.method private Diag_GetPrimaryMACAddress()Ljava/lang/String;
    .locals 3

    .line 1519
    const-string v0, "00:00:00:00:00:00"

    .line 1522
    :try_start_0
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1523
    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 1526
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1529
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    .line 1535
    :catch_0
    :try_start_1
    const-string v1, "test"

    const-string v2, "Ohter Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static GetExternalFilesDirectory()Ljava/lang/String;
    .locals 2

    .line 1372
    sget-object v0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->activity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 1374
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1380
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static GetUserDataFolder()Ljava/lang/String;
    .locals 2

    .line 1297
    sget-object v0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->activity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 1302
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 1309
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1316
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private Info_SysGetJenkinsBuildNumber()Ljava/lang/String;
    .locals 2

    .line 867
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    sget v1, Lcom/popcap/pvz2cthddev/R$string;->jenkins_build_number:I

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Info_SysGetPackageName()Ljava/lang/String;
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 873
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Info_SysGetProductVersion()Ljava/lang/String;
    .locals 3

    .line 820
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 825
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 834
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    .line 837
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Info_SysGetUserCurrencySymbol()Ljava/lang/String;
    .locals 2

    .line 880
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    .line 881
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native Native_GameAppInitialize(Lcom/popcap/pvz2cthddev/AndroidSurfaceView;Lcom/popcap/pvz2cthddev/AndroidHttpProxy;Landroid/content/pm/PackageManager;)Z
.end method

.method private native Native_GameAppTeardown()V
.end method

.method private native Native_applicationDidBecomeActive()V
.end method

.method private native Native_applicationDidEnterBackground()V
.end method

.method private native Native_applicationDidFinishLaunching()V
.end method

.method private native Native_applicationGainFocus()V
.end method

.method private native Native_applicationLoseFocus()V
.end method

.method private native Native_applicationWillBecomeForeground()V
.end method

.method private native Native_applicationWillFinishLaunching(Ljava/lang/String;)V
.end method

.method private native Native_applicationWillLoseFocus()V
.end method

.method private native Native_applicationWillResignActive()V
.end method

.method private native Native_applicationWillTerminate()V
.end method

.method private native Native_getEditText()Ljava/lang/String;
.end method

.method private native Native_onOrientationChanged(IIII)V
.end method

.method private native Native_setEditText(Ljava/lang/String;)V
.end method

.method private native Native_setStartUrl(Ljava/lang/String;)V
.end method

.method private Resources_GetAppSupportDataFolder()Ljava/lang/String;
    .locals 1

    .line 1332
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Resources_GetUserDataFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Resources_GetAssetFileInfo(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 6

    .line 1390
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1395
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1397
    invoke-static {p1}, Lcom/popcap/pvz2cthddev/AndroidAssetUtils;->GetAssetNameFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1399
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1402
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    aput-wide v0, p2, v3

    .line 1403
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    aput-wide v0, p2, v2

    .line 1405
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1407
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPackageResourcePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v4, 0x0

    .line 1413
    aput-wide v4, p2, v3

    .line 1414
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    aput-wide v0, p2, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1420
    const-string p2, "GetAssetFileInfo"

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private Resources_GetAssetFileSize(Ljava/lang/String;)J
    .locals 2

    .line 1444
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1446
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1448
    invoke-static {p1}, Lcom/popcap/pvz2cthddev/AndroidAssetUtils;->GetAssetNameFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1452
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 1454
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 1458
    const-string v0, "GetAssetFileSize"

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private Resources_GetCacheDataFolder()Ljava/lang/String;
    .locals 1

    .line 1326
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Resources_GetUserDataFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Resources_GetExternalFilesDirectory()Ljava/lang/String;
    .locals 2

    .line 1355
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 1357
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1363
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private Resources_GetExternalStorageDirectory()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1339
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1341
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private Resources_GetFileSystemBlockCount(Ljava/lang/String;)J
    .locals 2

    .line 1471
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1476
    const-string v0, "GetFileSystemBlockCount"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private Resources_GetFileSystemBlockSize(Ljava/lang/String;)J
    .locals 2

    .line 1505
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1510
    const-string v0, "GetFileSystemBlockSize"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private Resources_GetFileSystemBlocksFree(Ljava/lang/String;)J
    .locals 2

    .line 1488
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1489
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1493
    const-string v0, "GetFileSystemBlocksFree"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private Resources_GetResourceFolder()Ljava/lang/String;
    .locals 1

    .line 1261
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 1263
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Resources_GetUserDataFolder()Ljava/lang/String;
    .locals 2

    .line 1269
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 1274
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 1281
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1288
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private Resources_InstallApk(Ljava/lang/String;)Z
    .locals 3

    .line 1428
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1432
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 1434
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1436
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1438
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0, p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method private TryGainFocus()V
    .locals 2

    .line 579
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbAppIsFocusedState:Z

    if-nez v0, :cond_1

    .line 581
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbGotFocusEvent:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbGotResumedEvent:Z

    if-ne v0, v1, :cond_1

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->SetFocusState(Z)V

    .line 584
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->HandleGotFocus()V

    .line 585
    iput-boolean v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbAppIsFocusedState:Z

    :cond_1
    return-void
.end method

.method private TryLoseFocus()V
    .locals 2

    .line 592
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbAppIsFocusedState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 594
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbGotFocusEvent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbGotResumedEvent:Z

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 596
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbAppIsFocusedState:Z

    .line 597
    iget-boolean v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbLostFocusOnly:Z

    if-nez v1, :cond_1

    .line 599
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v1, v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->SetFocusState(Z)V

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->HandleLostFocus()V

    :cond_2
    return-void
.end method

.method private UI_DidRecieveFocus()V
    .locals 0

    return-void
.end method

.method private UI_Dip2Pixels(I)I
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private UI_FinishShowProgressBar()V
    .locals 2

    .line 805
    const-string v0, "ZXCpro"

    const-string v1, "AndroidGameApp.UI_FinishShowProgressBar()!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 806
    sput-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mFinishShowProgressBarFlag:Z

    return-void
.end method

.method private UI_ProcessEvents(Ljava/nio/ByteBuffer;)Z
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-virtual {v0, p1}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->ProcessEvents(Ljava/nio/ByteBuffer;)Z

    move-result p1

    return p1
.end method

.method private UI_ProcessGesturePinchEvents(Ljava/nio/ByteBuffer;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private UI_ProcessKeyEvents(Ljava/nio/ByteBuffer;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private UI_ProcessTouchEvents(Ljava/nio/ByteBuffer;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private UI_ShowAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 774
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    new-instance v7, Lcom/popcap/pvz2cthddev/AndroidGameApp$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/popcap/pvz2cthddev/AndroidGameApp$1;-><init>(Lcom/popcap/pvz2cthddev/AndroidGameApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private UI_ShowExitGame()V
    .locals 2

    .line 811
    const-string v0, "ZXCpro"

    const-string v1, "AndroidGameApp.UI_ShowExitGame()!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->ShowExitGame()V

    return-void
.end method

.method private UI_StartShowProgressbar()V
    .locals 2

    .line 798
    const-string v0, "ZXCpro"

    const-string v1, "AndroidGameApp.UI_StartShowProgressbar()!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 799
    sput-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mStartShowProgressBarFlag:Z

    .line 800
    sput-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mIsFirstInit:Z

    return-void
.end method

.method public static UploadTracking(Ljava/lang/String;)V
    .locals 1

    .line 1246
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->uploadTracking(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private Web_SysOpenURL(Ljava/lang/String;)Z
    .locals 6

    if-nez p1, :cond_0

    .line 1631
    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1632
    :goto_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "<empty>"

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    const-string v2, "Web_SysOpenURL"

    invoke-static {v0, v2, v1}, Lcom/tencent/bugly/crashreport/CrashReport;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1636
    const-string p1, "Unable to open an empty URL"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1642
    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    .line 1643
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1644
    iget-object v3, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v3, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 1649
    :goto_2
    iget-object v3, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v3}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Web_SysOpenURL_error"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/tencent/bugly/crashreport/CrashReport;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    invoke-static {v0}, Lcom/tencent/bugly/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;)V

    .line 1651
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to open URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method static synthetic access$000(Lcom/popcap/pvz2cthddev/AndroidGameApp;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Device_ExitApp()V

    return-void
.end method

.method static synthetic access$100(Lcom/popcap/pvz2cthddev/AndroidGameApp;)Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    return-object p0
.end method

.method private checkBuildInfo()Z
    .locals 15

    .line 1050
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1051
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1052
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1053
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1054
    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1055
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1056
    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 1057
    sget-object v7, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 1058
    sget-object v8, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xf

    .line 1060
    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "generic"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string v10, "emulator"

    const/4 v12, 0x1

    aput-object v10, v9, v12

    const/4 v10, 0x2

    const-string v13, "sdk"

    aput-object v13, v9, v10

    const/4 v10, 0x3

    const-string v14, "genymotion"

    aput-object v14, v9, v10

    const/4 v10, 0x4

    const-string v14, "test-keys"

    aput-object v14, v9, v10

    const/4 v10, 0x5

    const-string v14, "vbox"

    aput-object v14, v9, v10

    const/4 v10, 0x6

    const-string v14, "nox"

    aput-object v14, v9, v10

    const/4 v10, 0x7

    const-string v14, "bluestacks"

    aput-object v14, v9, v10

    const/16 v10, 0x8

    const-string v14, "ldplayer"

    aput-object v14, v9, v10

    const/16 v10, 0x9

    const-string v14, "mumu"

    aput-object v14, v9, v10

    const/16 v10, 0xa

    const-string v14, "andy"

    aput-object v14, v9, v10

    const/16 v10, 0xb

    const-string v14, "x86"

    aput-object v14, v9, v10

    const/16 v10, 0xc

    const-string v14, "goldfish"

    aput-object v14, v9, v10

    const/16 v10, 0xd

    const-string v14, "ranchu"

    aput-object v14, v9, v10

    const/16 v10, 0xe

    const-string v14, "qemu"

    aput-object v14, v9, v10

    .line 1066
    invoke-direct {p0, v0, v9}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1067
    invoke-direct {p0, v1, v9}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1068
    invoke-direct {p0, v2, v9}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1069
    invoke-direct {p0, v3, v9}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1070
    invoke-direct {p0, v4, v9}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1071
    invoke-direct {p0, v5, v9}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1072
    invoke-direct {p0, v6, v9}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1073
    invoke-direct {p0, v7, v9}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1074
    invoke-direct {p0, v8, v9}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1078
    :cond_0
    const-string v0, "google_sdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1079
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "sdk_x86"

    .line 1080
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "vbox86p"

    .line 1081
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "full_x86"

    .line 1082
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android_x86"

    .line 1083
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v11

    :cond_2
    :goto_0
    return v12
.end method

.method private checkFiles()Z
    .locals 6

    const/4 v0, 0x5

    .line 1130
    new-array v1, v0, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/lib/libc_malloc_debug_qemu.so"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/io/File;

    const-string v4, "/sys/qemu_trace"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Ljava/io/File;

    const-string v5, "/system/bin/qemu-props"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Ljava/io/File;

    const-string v5, "/system/bin/nox-prop"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Ljava/io/File;

    const-string v5, "/system/bin/bluestacks-prop"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v2, v1, v5

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1138
    aget-object v5, v1, v2

    .line 1140
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private checkHardwareFeatures(Landroid/content/Context;)Z
    .locals 3

    .line 1150
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1153
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1154
    const-string v2, "x86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "i386"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "amd64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 1160
    :cond_1
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    .line 1163
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    .line 1164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private checkSystemProperties()Z
    .locals 3

    .line 1093
    :try_start_0
    const-string v0, "ro.kernel.qemu"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1094
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1098
    :cond_0
    const-string v0, "ro.product.manufacturer"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1101
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1102
    const-string v2, "genymotion"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "bluestacks"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "nox"

    .line 1103
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mumu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 1109
    :cond_2
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1110
    const-string v2, "test-keys"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 1115
    :cond_3
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1116
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    :cond_4
    return v1

    :catch_0
    move-exception v0

    .line 1123
    const-string v1, "EmulatorDetector"

    const-string v2, "Error checking system properties"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private containsAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1176
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1177
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 1179
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private getIMSIBySlot(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/popcap/pvz2cthddev/AndroidGameApp$GeminiMethodNotFoundException;
        }
    .end annotation

    .line 1812
    const-string v0, "getSubscriberIdGemini"

    .line 1814
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 1818
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    .line 1820
    new-array v2, v2, [Ljava/lang/Class;

    .line 1821
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1822
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1825
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 1826
    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1829
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 1833
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1834
    new-instance p1, Lcom/popcap/pvz2cthddev/AndroidGameApp$GeminiMethodNotFoundException;

    invoke-direct {p1, p0, v0}, Lcom/popcap/pvz2cthddev/AndroidGameApp$GeminiMethodNotFoundException;-><init>(Lcom/popcap/pvz2cthddev/AndroidGameApp;Ljava/lang/String;)V

    throw p1
.end method

.method private getTypeByIMSI(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1794
    :cond_0
    const-string v1, "46000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46002"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46007"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1798
    :cond_1
    const-string v1, "46001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x2

    return p1

    .line 1802
    :cond_2
    const-string v1, "46003"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public Config_ConfigEraseKey(Ljava/lang/String;)V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 648
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public Config_ConfigKeyExists(Ljava/lang/String;)Z
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 642
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public Diag_GetAvailMemory()J
    .locals 2

    .line 1711
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1712
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1713
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1717
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public Diag_GetDetailMemoryInfo()[J
    .locals 2

    .line 1661
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->detailMemorySampler:Lcom/popcap/pvz2cthddev/DetailMemorySampler;

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/DetailMemorySampler;->read(Landroid/content/Context;)[J

    move-result-object v0

    return-object v0
.end method

.method public Diag_GetDeviceBRAND()Ljava/lang/String;
    .locals 1

    .line 1925
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public Diag_GetDeviceIMEI()Ljava/lang/String;
    .locals 3

    .line 1900
    const-string v0, ""

    .line 1903
    :try_start_0
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1904
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1909
    :catch_0
    :try_start_1
    const-string v1, "test"

    const-string v2, "Ohter Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public Diag_GetDeviceIMSI()Ljava/lang/String;
    .locals 2

    .line 1893
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1894
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Diag_GetDeviceMODEL()Ljava/lang/String;
    .locals 1

    .line 1919
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public Diag_GetHardwareModel()Ljava/lang/String;
    .locals 3

    .line 1612
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 1613
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1614
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 1620
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Diag_GetMobileCardType()I
    .locals 4

    const/4 v0, 0x0

    .line 1737
    :try_start_0
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-direct {p0, v1, v0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->getIMSIBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/popcap/pvz2cthddev/AndroidGameApp$GeminiMethodNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1739
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1740
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1744
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->getIMSIBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Lcom/popcap/pvz2cthddev/AndroidGameApp$GeminiMethodNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    const/4 v2, 0x0

    .line 1749
    :goto_1
    :try_start_3
    invoke-direct {p0, v1}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->getTypeByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1750
    invoke-direct {p0, v2}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->getTypeByIMSI(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    or-int/2addr v0, v1

    return v0

    .line 1756
    :catch_2
    :try_start_4
    const-string v1, "test"

    const-string v2, "Ohter Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    return v0
.end method

.method public Diag_GetNetworkType()Ljava/lang/String;
    .locals 3

    .line 1844
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1846
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1848
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1849
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_3

    .line 1871
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 1872
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 1873
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1877
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 1878
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 1879
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 1880
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 1881
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1883
    :cond_1
    const-string v0, "3G"

    goto :goto_1

    .line 1875
    :cond_2
    :goto_0
    const-string v0, "2G"

    goto :goto_1

    .line 1888
    :cond_3
    const-string v0, "UNKNOWN"

    :goto_1
    return-object v0
.end method

.method public Diag_GetNotchHeight(I)I
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2044
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Diag_GetNotchSize()[I

    move-result-object p1

    .line 2045
    aget p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 2083
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2084
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "dimen"

    const-string v3, "android"

    const-string v4, "notch_height"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 2087
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/16 p1, 0x51

    return p1

    :cond_2
    move p1, v1

    :goto_0
    return p1
.end method

.method public Diag_GetNotchSize()[I
    .locals 9

    .line 2007
    const-string v0, ", "

    const-string v1, "Diag_GetNotchSize result = "

    const-string v2, "display_notch_status"

    iget-object v3, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v3}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 2008
    filled-new-array {v4, v4}, [I

    move-result-object v5

    const/4 v6, 0x1

    .line 2010
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 2011
    const-string v7, "com.huawei.android.util.HwNotchSizeUtil"

    .line 2012
    invoke-virtual {v3, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2013
    const-string v7, "getNotchSize"

    new-array v8, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 2014
    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v7, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2022
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, v3, v4

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v3, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 2020
    :catch_0
    :try_start_1
    const-string v3, "getNotchSize Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2022
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, v5, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v5, v6

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 2018
    :catch_1
    :try_start_2
    const-string v3, "getNotchSize NoSuchMethodException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2022
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, v5, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v5, v6

    goto :goto_0

    .line 2016
    :catch_2
    :try_start_3
    const-string v3, "getNotchSize ClassNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2022
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, v5, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v5, v6

    goto :goto_0

    :catchall_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, v5, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v5, v6

    goto :goto_0
.end method

.method public Diag_GetNotchWidth()I
    .locals 2

    .line 2102
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Diag_GetNotchSize()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 2103
    aget v0, v0, v1

    return v0
.end method

.method public Diag_GetOSVersion()Ljava/lang/String;
    .locals 1

    .line 1607
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public Diag_GetSimProvince()I
    .locals 6

    .line 1766
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1767
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1769
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sim number: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SimInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    const/16 v4, 0xa

    const/16 v5, 0x8

    if-eq v2, v3, :cond_3

    const/16 v3, 0x10

    if-eq v2, v3, :cond_2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 1774
    :cond_1
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    .line 1777
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 1780
    :cond_3
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1784
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "provinceRst: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public Diag_GetSwitchOpen()I
    .locals 4

    .line 2000
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "display_notch_status"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2001
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "display_notch_status result = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public Diag_GetUniqueCharacterID()Ljava/lang/String;
    .locals 5

    .line 1545
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1546
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 1549
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1551
    aget-char v3, v0, v2

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    .line 1553
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1557
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Diag_GetUsedMemory()J
    .locals 2

    .line 1706
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public Diag_HasNotchInScreen(I)Z
    .locals 6

    .line 1934
    const-string v0, "test"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1936
    :try_start_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 1937
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 1938
    const-string v2, "com.huawei.android.util.HwNotchSizeUtil"

    .line 1939
    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 1940
    const-string v2, "hasNotchInScreen"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1941
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 1962
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 1963
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 1965
    const-string v4, "android.os.SystemProperties"

    invoke-virtual {p1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 1967
    new-array v2, v2, [Ljava/lang/Class;

    .line 1968
    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v1

    .line 1969
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 1970
    const-string v4, "getInt"

    invoke-virtual {p1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1973
    new-instance v4, Ljava/lang/String;

    const-string v5, "ro.miui.notch"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1974
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 1975
    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_2

    move v1, v3

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 1982
    const-string p1, "android.util.FtFeature"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 1983
    const-string v2, "isFeatureSupport"

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/16 v3, 0x20

    .line 1984
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1991
    :catch_0
    :try_start_1
    const-string p1, "hasNotchInScreen Exception"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1989
    :catch_1
    const-string p1, "hasNotchInScreen NoSuchMethodException"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1987
    :catch_2
    const-string p1, "hasNotchInScreen ClassNotFoundException"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return v1
.end method

.method public Diag_IsBigRCorner()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public GenerateRandomMacAddress()Ljava/lang/String;
    .locals 6

    .line 1562
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x6

    if-gt v2, v3, :cond_1

    .line 1564
    invoke-virtual {p0, v1}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->getStringRandom(I)Ljava/lang/String;

    move-result-object v4

    .line 1565
    invoke-virtual {p0, v1}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->getStringRandom(I)Ljava/lang/String;

    move-result-object v5

    .line 1566
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eq v2, v3, :cond_0

    .line 1567
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1569
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public HandleOnConfigurationChanged(Landroid/content/res/Configuration;II)V
    .locals 2

    .line 463
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "HandleOnConfigurationChanged: width: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", height: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Game"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Device_GetCurrentUIOrientation()I

    move-result p1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mCurrentOrientation:I

    if-eq v1, p1, :cond_2

    .line 476
    const-string v1, "HandleOnConfigurationChanged: native2!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mCurrentOrientation:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Native_onOrientationChanged(IIII)V

    .line 478
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mCurrentOrientation:I

    goto :goto_1

    .line 469
    :cond_1
    :goto_0
    const-string v1, "HandleOnConfigurationChanged: native1!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mCurrentOrientation:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Native_onOrientationChanged(IIII)V

    :cond_2
    :goto_1
    return-void
.end method

.method public Info_SysGetProductVersionString()Ljava/lang/String;
    .locals 4

    .line 844
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 849
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 859
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method public IsEmulator()Z
    .locals 3

    .line 1023
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->checkBuildInfo()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "EmulatorDetector"

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->checkSystemProperties()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->checkFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->checkHardwareFeatures(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    const-string v0, "Emulator detected by hardware features"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1025
    :cond_2
    :goto_0
    const-string v0, "Emulator detected by basic features"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public IsHighFPS()Z
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->IsHighFPS()Z

    move-result v0

    return v0
.end method

.method public LogBugly(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/tencent/bugly/crashreport/CrashReport;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public LogBuglyUserId(Ljava/lang/String;)V
    .locals 0

    .line 1045
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public SetFPS(Z)V
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v0, p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->SetFPS(Z)V

    return-void
.end method

.method public Util_CallNativeCrashed(Ljava/lang/String;)V
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0, p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->handleNativeCrash(Ljava/lang/String;)V

    return-void
.end method

.method public Util_GetElapsedRealtime()J
    .locals 4

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public Util_GetPackageName()Ljava/lang/String;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Util_GetUUIDString()Ljava/lang/String;
    .locals 1

    .line 485
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Util_IsAutosmoking()Z
    .locals 1

    .line 529
    sget-boolean v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mAutoSmoking:Z

    return v0
.end method

.method public Util_NotifyDecompressStage()V
    .locals 0

    .line 524
    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->AddCurrentDecompressStage()V

    return-void
.end method

.method public Util_OpenSystemSetting()V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public Util_StartPNS(I)V
    .locals 0

    return-void
.end method

.method public getEditText()Ljava/lang/String;
    .locals 2

    .line 629
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 631
    const-string v0, "Game"

    const-string v1, "getEditText - Native_getEditText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Native_getEditText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 2030
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2033
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2035
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status_bar_height result = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public getStringRandom(I)Ljava/lang/String;
    .locals 7

    .line 1575
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1577
    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_4

    const/4 v3, 0x2

    .line 1579
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    rem-int/2addr v4, v3

    const-string v5, "char"

    const-string v6, "num"

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_1

    :cond_0
    move-object v4, v6

    .line 1581
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1583
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    rem-int/2addr v4, v3

    if-nez v4, :cond_1

    const/16 v3, 0x41

    goto :goto_2

    :cond_1
    const/16 v3, 0x61

    .line 1584
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v3

    int-to-char v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1586
    :cond_2
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public onActivityCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 1

    .line 189
    const-string p1, "commandLine"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mCommandLineFlag:Ljava/lang/String;

    .line 190
    sget-boolean p2, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 192
    const-string p2, "onActivityCreate - Native_applicationWillFinishLaunching :: commandLine = %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Game"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mCommandLineFlag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Native_applicationWillFinishLaunching(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mlWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_1

    .line 203
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const p2, 0x1000000a

    .line 204
    const-string v0, "PopCapWakeLock"

    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mlWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 205
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    return-void
.end method

.method public onActivityDestroy()V
    .locals 2

    .line 382
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 384
    const-string v0, "Game"

    const-string v1, "onActivityDestroy - Native_applicationWillTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Native_applicationWillTerminate()V

    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mlWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 398
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mHttpProxy:Lcom/popcap/pvz2cthddev/AndroidHttpProxy;

    invoke-virtual {v1}, Lcom/popcap/pvz2cthddev/AndroidHttpProxy;->Shutdown()V

    .line 400
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    .line 401
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mHttpProxy:Lcom/popcap/pvz2cthddev/AndroidHttpProxy;

    .line 402
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    return-void
.end method

.method public onActivityPause()V
    .locals 4

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbGotResumedEvent:Z

    .line 292
    sget-boolean v1, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 294
    const-string v1, "Game"

    const-string v2, "onActivityPause - Native_applicationWillResignActive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Native_applicationWillResignActive()V

    .line 299
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mlWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 303
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mlWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 307
    :cond_1
    sget-boolean v1, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 309
    const-string v1, "Game"

    const-string v3, "onActivityPause - Native_applicationDidEnterBackground"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_2
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Native_applicationDidEnterBackground()V

    .line 314
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    iget-boolean v1, v1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbDrawingFrames:Z

    if-ne v1, v2, :cond_3

    .line 323
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 324
    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    iput-object v1, v2, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbNotifyOnDrawEventObject:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x3e8

    .line 329
    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 334
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 336
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 339
    :cond_3
    :goto_1
    sget-boolean v1, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 341
    const-string v1, "Game"

    const-string v2, "onActivityPause - synchron wait obj over!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_4
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    iget-object v1, v1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbNotifyOnDrawEventObject:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 346
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbNotifyOnDrawEventObject:Ljava/lang/Object;

    .line 349
    :cond_5
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->TryLoseFocus()V

    .line 350
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    iput-boolean v0, v1, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->mbDrawingFrames:Z

    return-void
.end method

.method public onActivityRestart()V
    .locals 2

    .line 222
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "Game"

    const-string v1, "onActivityRestart - Do nothing for Native"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 448
    sget-boolean p1, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 450
    const-string p1, "Game"

    const-string p2, "onActivityResult - Do nothing for Native"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 4

    .line 232
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbLostFocusOnly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbLostFocusOnly:Z

    :cond_0
    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbGotResumedEvent:Z

    .line 244
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->TryGainFocus()V

    .line 246
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    const-string v1, "Game"

    if-eqz v0, :cond_1

    .line 248
    const-string v0, "onActivityResume - Native_applicationWillBecomeForeground"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_1
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Native_applicationWillBecomeForeground()V

    .line 253
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mlWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v2, 0xa

    .line 256
    const-string v3, "PopCapWakeLock"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mlWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mlWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mlWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 272
    :cond_3
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 274
    const-string v0, "onActivityResume - Native_applicationDidBecomeActive"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_4
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Native_applicationDidBecomeActive()V

    return-void
.end method

.method public onActivityStart()V
    .locals 2

    .line 212
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "Game"

    const-string v1, "onActivityStart - Native_applicationDidFinishLaunching"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Native_applicationDidFinishLaunching()V

    return-void
.end method

.method public onActivityStop()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->HasDrawnFirstFrame()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 372
    const-string v0, "Game"

    const-string v1, "onActivityStop - TryLoseFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_1
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->TryLoseFocus()V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 423
    sget-boolean p1, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 425
    const-string p1, "Game"

    const-string v0, "onSaveInstanceState - Do nothing for Native"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 536
    const-string v0, "Game"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 538
    iput-boolean v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbGotFocusEvent:Z

    .line 540
    sget-boolean p1, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 542
    const-string p1, "onWindowFocusChanged - TryGainFocus"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->TryGainFocus()V

    .line 547
    iget-boolean p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbLostFocusOnly:Z

    if-eqz p1, :cond_4

    .line 549
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Native_applicationGainFocus()V

    .line 550
    iput-boolean v2, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbLostFocusOnly:Z

    goto :goto_0

    .line 555
    :cond_1
    iput-boolean v2, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbGotFocusEvent:Z

    .line 557
    sget-boolean p1, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 559
    const-string p1, "onWindowFocusChanged - TryLoseFocus"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_2
    iget-boolean p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbGotResumedEvent:Z

    if-eqz p1, :cond_3

    .line 564
    iput-boolean v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbLostFocusOnly:Z

    .line 565
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Native_applicationLoseFocus()V

    .line 568
    :cond_3
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->TryLoseFocus()V

    .line 570
    iget-boolean p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mbLostFocusOnly:Z

    if-eqz p1, :cond_4

    .line 572
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->NotifyWindowLostFocus()V

    :cond_4
    :goto_0
    return-void
.end method

.method public setEditText(Ljava/lang/String;)V
    .locals 2

    .line 619
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 621
    const-string v0, "Game"

    const-string v1, "setEditText - Native_setEditText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_0
    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Native_setEditText(Ljava/lang/String;)V

    return-void
.end method

.method public setStartUrl(Ljava/lang/String;)V
    .locals 2

    .line 608
    sget-boolean v0, Lcom/popcap/pvz2cthddev/AndroidGameApp;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 610
    const-string v0, "Game"

    const-string v1, "setStartUrl - Native_setStartUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->Native_setStartUrl(Ljava/lang/String;)V

    return-void
.end method
