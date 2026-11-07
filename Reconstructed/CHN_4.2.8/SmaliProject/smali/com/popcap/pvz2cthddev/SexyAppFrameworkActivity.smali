.class public Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;
.super Landroid/app/Activity;
.source "SexyAppFrameworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;,
        Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$OnActivityResultListener;,
        Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$SplashImageComparator;
    }
.end annotation


# static fields
.field public static final Cache_Lib_Dir:Ljava/lang/String; = "/libSrc.so"

.field static DEBUG:Z = true

.field private static final FOLDABLE_DEVICE_FIXED_RATE:F = 1.33f

.field private static final FOLDABLE_DEVICE_RATE:F = 1.2f

.field private static final HANDLER_CLOSE_IME_KEYBOARD:I = 0x3

.field private static final HANDLER_OPEN_IME_KEYBOARD:I = 0x2

.field private static final HOT_UPDATE_SO_HOST_VERSION_KEY:Ljava/lang/String; = "HotUpdateSOHostVersionCode"

.field public static mAutoSmoking:Z = false

.field private static mChinaMobileMMChannelID:Ljava/lang/String; = ""

.field private static mCurrentRate:F = 0.0f

.field private static mEnablePNS:Z = false

.field private static mFirstSplashScreenImage:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;",
            ">;"
        }
    .end annotation
.end field

.field private static mInitHeight:I = 0x0

.field private static mInitWidth:I = 0x0

.field private static mProgressBarBgImage:Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage; = null

.field private static mProgressBarImage:Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage; = null

.field private static mSplashScreenBackgroudColor:I = -0x1000000

.field private static mSplashScreenImages:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;",
            ">;"
        }
    .end annotation
.end field

.field private static mTelecomChannelID:I = 0x2719c42

.field private static sTheActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;


# instance fields
.field private mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

.field private mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

.field private mIMEKeyboardHandler:Landroid/os/Handler;

.field private mSexyEditText:Lcom/popcap/pvz2cthddev/SexyEditText;

.field private mSexyTextWatcher:Lcom/popcap/pvz2cthddev/SexyTextWatcher;

.field private mSplashScreen:Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

.field private mSplashToast:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;

.field private mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 166
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSexyTextWatcher:Lcom/popcap/pvz2cthddev/SexyTextWatcher;

    .line 95
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mActivityResultListeners:Ljava/util/List;

    .line 96
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashScreen:Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    .line 118
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashToast:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;

    .line 167
    sput-object p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->sTheActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mActivityResultListeners:Ljava/util/List;

    return-void
.end method

.method protected static AddFirstSplashScreenImage(III)V
    .locals 2

    .line 1303
    sget-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mFirstSplashScreenImage:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mFirstSplashScreenImage:Ljava/util/ArrayList;

    .line 1307
    :cond_0
    sget-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mFirstSplashScreenImage:Ljava/util/ArrayList;

    new-instance v1, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    invoke-direct {v1, p0, p1, p2}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected static AddProgressBarBgImage(III)V
    .locals 1

    .line 1321
    sget-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mProgressBarBgImage:Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    if-eqz v0, :cond_0

    return-void

    .line 1324
    :cond_0
    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    invoke-direct {v0, p0, p1, p2}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;-><init>(III)V

    sput-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mProgressBarBgImage:Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    return-void
.end method

.method protected static AddProgressBarImage(III)V
    .locals 1

    .line 1313
    sget-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mProgressBarImage:Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    if-eqz v0, :cond_0

    return-void

    .line 1316
    :cond_0
    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    invoke-direct {v0, p0, p1, p2}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;-><init>(III)V

    sput-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mProgressBarImage:Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    return-void
.end method

.method protected static AddSplashScreenImage(III)V
    .locals 2

    .line 1292
    sget-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashScreenImages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashScreenImages:Ljava/util/ArrayList;

    .line 1296
    :cond_0
    sget-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashScreenImages:Ljava/util/ArrayList;

    new-instance v1, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    invoke-direct {v1, p0, p1, p2}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private DeleteFileIfPresent(Ljava/io/File;)V
    .locals 2

    .line 1256
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to delete stale hot-update file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activity"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static GetBestFitFirstSplashImage(II)I
    .locals 4

    .line 1370
    sget-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mFirstSplashScreenImage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_3

    .line 1372
    sget-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mFirstSplashScreenImage:Ljava/util/ArrayList;

    new-instance v2, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$SplashImageComparator;

    invoke-direct {v2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$SplashImageComparator;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1373
    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1375
    sget-object p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mFirstSplashScreenImage:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    .line 1377
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->GetIntendedDisplayRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1378
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1380
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->GetResourceID()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-ne p0, v1, :cond_2

    .line 1387
    sget-object p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mFirstSplashScreenImage:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->GetResourceID()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, p0

    :cond_3
    :goto_1
    return v1
.end method

.method public static GetBestFitSplashImage(II)I
    .locals 4

    .line 1341
    sget-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashScreenImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_3

    .line 1343
    sget-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashScreenImages:Ljava/util/ArrayList;

    new-instance v2, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$SplashImageComparator;

    invoke-direct {v2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$SplashImageComparator;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1344
    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1346
    sget-object p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashScreenImages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    .line 1348
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->GetIntendedDisplayRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1349
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1351
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->GetResourceID()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-ne p0, v1, :cond_2

    .line 1358
    sget-object p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashScreenImages:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->GetResourceID()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, p0

    :cond_3
    :goto_1
    return v1
.end method

.method public static GetChinaMobileMMChannelID()Ljava/lang/String;
    .locals 1

    .line 1432
    sget-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mChinaMobileMMChannelID:Ljava/lang/String;

    return-object v0
.end method

.method private GetCurrentVersionCode()Ljava/lang/String;
    .locals 3

    .line 1218
    :try_start_0
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1219
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 1221
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1223
    :cond_0
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1227
    const-string v1, "Activity"

    const-string v2, "Unable to read APK versionCode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1228
    const-string v0, ""

    return-object v0
.end method

.method public static GetProgressBarBgSplashImage()Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;
    .locals 1

    .line 1402
    sget-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mProgressBarBgImage:Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    return-object v0
.end method

.method public static GetProgressBarSplashImage()Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;
    .locals 1

    .line 1397
    sget-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mProgressBarImage:Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    return-object v0
.end method

.method public static GetSplashScreenBackgroudColor()I
    .locals 1

    .line 1412
    sget v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashScreenBackgroudColor:I

    return v0
.end method

.method public static GetTelecomChannelID()I
    .locals 1

    .line 1422
    sget v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mTelecomChannelID:I

    return v0
.end method

.method private GetUserDataFolder()Ljava/lang/String;
    .locals 2

    .line 1264
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 1269
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 1276
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private InvalidateHotUpdateSO(Ljava/io/File;Landroid/content/SharedPreferences;)V
    .locals 2

    .line 1234
    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DeleteFileIfPresent(Ljava/io/File;)V

    .line 1236
    new-instance p1, Ljava/io/File;

    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->GetUserDataFolder()Ljava/lang/String;

    move-result-object v0

    const-string v1, "libsrc.so"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DeleteFileIfPresent(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 1238
    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1241
    new-instance v0, Ljava/io/File;

    const-string v1, "update"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1242
    new-instance p1, Ljava/io/File;

    const-string v1, "download/libSrc.so.zip"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DeleteFileIfPresent(Ljava/io/File;)V

    .line 1243
    new-instance p1, Ljava/io/File;

    const-string v1, "project.manifest"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DeleteFileIfPresent(Ljava/io/File;)V

    .line 1244
    new-instance p1, Ljava/io/File;

    const-string v1, "project.manifest.temp"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DeleteFileIfPresent(Ljava/io/File;)V

    .line 1245
    new-instance p1, Ljava/io/File;

    const-string v1, "version.manifest"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DeleteFileIfPresent(Ljava/io/File;)V

    .line 1248
    :cond_0
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "HotUpdateSOHostVersionCode"

    .line 1249
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "InstalledSOVersion"

    .line 1250
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1251
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static IsEnablePNS()Z
    .locals 1

    .line 1437
    sget-boolean v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mEnablePNS:Z

    return v0
.end method

.method private NeedLoadCacheLib()Z
    .locals 7

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->GetUserDataFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/libSrc.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1193
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    .line 1199
    :cond_0
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->GetCurrentVersionCode()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 1200
    invoke-virtual {p0, v3}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1201
    const-string v5, "HotUpdateSOHostVersionCode"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1202
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 1209
    :cond_1
    invoke-direct {p0, v1, v4}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->InvalidateHotUpdateSO(Ljava/io/File;Landroid/content/SharedPreferences;)V

    return v2
.end method

.method protected static SetChinaMobileMMChannelID(Ljava/lang/String;)V
    .locals 0

    .line 1427
    sput-object p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mChinaMobileMMChannelID:Ljava/lang/String;

    return-void
.end method

.method public static SetEnablePNS(Z)V
    .locals 0

    .line 1442
    sput-boolean p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mEnablePNS:Z

    return-void
.end method

.method protected static SetSplashScreenBackgroudColor(I)V
    .locals 0

    .line 1407
    sput p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashScreenBackgroudColor:I

    return-void
.end method

.method protected static SetTelecomChannelID(I)V
    .locals 0

    .line 1417
    sput p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mTelecomChannelID:I

    return-void
.end method

.method static synthetic access$100(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/AndroidSplashScreen;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashScreen:Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    return-object p0
.end method

.method static synthetic access$102(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;Lcom/popcap/pvz2cthddev/AndroidSplashScreen;)Lcom/popcap/pvz2cthddev/AndroidSplashScreen;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashScreen:Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    return-object p1
.end method

.method static synthetic access$200(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashToast:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;

    return-object p0
.end method

.method static synthetic access$202(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;)Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashToast:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;

    return-object p1
.end method

.method static synthetic access$300(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyEditText;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSexyEditText:Lcom/popcap/pvz2cthddev/SexyEditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyTextWatcher;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSexyTextWatcher:Lcom/popcap/pvz2cthddev/SexyTextWatcher;

    return-object p0
.end method

.method static synthetic access$402(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;Lcom/popcap/pvz2cthddev/SexyTextWatcher;)Lcom/popcap/pvz2cthddev/SexyTextWatcher;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSexyTextWatcher:Lcom/popcap/pvz2cthddev/SexyTextWatcher;

    return-object p1
.end method

.method static synthetic access$500(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/AndroidGameApp;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    return-object p0
.end method

.method static synthetic access$600(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/AndroidSurfaceView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    return-object p0
.end method

.method private dip2px(Landroid/content/Context;I)I
    .locals 0

    .line 1128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p2, p2

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private static getProcessName(I)Ljava/lang/String;
    .locals 5

    const-string v0, "/proc/"

    const/4 v1, 0x0

    .line 1448
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/cmdline"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1449
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 1450
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1451
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1459
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1462
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v1

    .line 1455
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_1

    .line 1459
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 1462
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return-object v1

    :catchall_2
    move-exception p0

    if-eqz v2, :cond_2

    .line 1459
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 1462
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1464
    :cond_2
    :goto_3
    throw p0
.end method

.method public static instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;
    .locals 1

    .line 157
    sget-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->sTheActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    return-object v0
.end method

.method private isHonorFoldable()Z
    .locals 1

    .line 1596
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->isHonorFoldableDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->isHonorSpecifiedDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isHonorFoldableDevice()Z
    .locals 2

    .line 1601
    const-string v0, "HONOR"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.hihonor.hardware.sensor.posture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isHonorSpecifiedDevice()Z
    .locals 2

    .line 1611
    const-string v0, "HONOR"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HNMGI"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DIA-AN00"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MGI-AN00"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isHwFoldableDevice()Z
    .locals 2

    .line 1525
    const-string v0, "HUAWEI"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.huawei.hardware.sensor.posture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isMateX()Z
    .locals 2

    .line 1493
    const-string v0, "HUAWEI"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HWTAH"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1494
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HWTAH-C"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1495
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unknownRLI"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1496
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unknownRHA"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1497
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isMateXS()Z
    .locals 2

    .line 1507
    const-string v0, "HUAWEI"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TAH-AN00"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1508
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TAH-N29"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1509
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TAH-AN00m"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1510
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TAH-N29m"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1511
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RLI-AN00"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1512
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RLI-N29"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1513
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RHA-AN00m"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1514
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RHA-N29m"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1515
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isOppoFoldableDevice()Z
    .locals 6

    const/4 v0, 0x0

    .line 1538
    :try_start_0
    const-string v1, "com.oplus.content.OplusFeatureConfigManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1540
    const-string v2, "getInstance"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1541
    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1543
    const-string v3, "hasFeature"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1544
    const-string v3, "oplus.hardware.type.fold"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1545
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 1547
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1552
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private isVivoFoldableDevice()Z
    .locals 6

    .line 1560
    const-string v0, "Activity"

    .line 0
    const-string v1, "CheckDeviceResult: "

    const/4 v2, 0x0

    .line 1563
    :try_start_0
    sget-boolean v3, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1565
    const-string v3, "CheckDeviceStart."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :cond_0
    const-string v3, "android.util.FtDeviceInfo"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1570
    const-string v4, "getDeviceType"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1571
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1573
    sget-boolean v4, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 1575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :cond_1
    const-string v1, "foldable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1583
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1586
    :goto_0
    sget-boolean v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1588
    const-string v1, "CheckDeviceEnd."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method private px2dip(Landroid/content/Context;I)I
    .locals 0

    .line 1122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p2, p2

    div-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method


# virtual methods
.method public AddSplashScreen()V
    .locals 2

    .line 276
    sget-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashScreenImages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$2;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$2;-><init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)V

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 297
    :cond_0
    const-string v0, "SexyAppFramework"

    const-string v1, "No splash screen specified for app. Add a call AddSplashScreenImage in your source wrapper to enable a splash screen."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public AddSplashScreenStart()V
    .locals 2

    .line 243
    sget-object v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashScreenImages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$1;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$1;-><init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)V

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 269
    :cond_0
    const-string v0, "SexyAppFramework"

    const-string v1, "No splash screen specified for app. Add a call AddSplashScreenImage in your source wrapper to enable a splash screen."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected HideBottomUIMenu()V
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public InitIMEKeyboardHandler()V
    .locals 1

    .line 339
    new-instance v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;-><init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mIMEKeyboardHandler:Landroid/os/Handler;

    return-void
.end method

.method public InitUncaughtExceptionHandler()V
    .locals 1

    .line 381
    new-instance v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$5;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$5;-><init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public IsFoldableDevice()Z
    .locals 2

    .line 1483
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->isHwFoldableDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->isOppoFoldableDevice()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->isVivoFoldableDevice()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->isHonorFoldable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1488
    :cond_0
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->isMateX()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->isMateXS()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public LazyCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 413
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->HideBottomUIMenu()V

    .line 416
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->NeedLoadCacheLib()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->GetUserDataFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/libSrc.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_0
    const-string v0, "Src"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 426
    :goto_0
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 427
    const-string v2, "autosmoking"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    sput-boolean v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mAutoSmoking:Z

    .line 430
    const-string v0, "Activity"

    const-string v2, "AutoSmoking start."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_1
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 440
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    .line 443
    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v2, 0x20000

    if-ge v0, v2, :cond_2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "generic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x2

    .line 446
    :cond_3
    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-direct {v0}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;-><init>()V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    .line 447
    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/popcap/pvz2cthddev/AndroidUIEventManager;I)V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    .line 448
    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidGameApp;

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/popcap/pvz2cthddev/AndroidGameApp;-><init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;Lcom/popcap/pvz2cthddev/AndroidSurfaceView;Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    .line 450
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 452
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 453
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 454
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 455
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 457
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->ShouldApplyFoldableDevice()Z

    move-result v3

    .line 459
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    if-eqz v3, :cond_4

    goto :goto_1

    .line 477
    :cond_4
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 478
    iget v2, v4, Landroid/graphics/Point;->x:I

    .line 479
    iget v1, v4, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 481
    :catch_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 482
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    :goto_1
    if-eqz v3, :cond_5

    int-to-float v0, v2

    const v1, 0x3faa3d71    # 1.33f

    div-float/2addr v0, v1

    float-to-int v1, v0

    .line 497
    :cond_5
    new-instance v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$6;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$6;-><init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)V

    .line 527
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    const/4 v5, 0x0

    .line 528
    invoke-virtual {v4, v0, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 530
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v0, v2, v1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->SetScreenSizeInPixels(II)V

    .line 531
    iget-object v6, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v7, 0x8

    const/16 v8, 0x8

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-virtual/range {v6 .. v12}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->init(IIIIII)V

    if-eqz v3, :cond_6

    .line 534
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v0, v2, v1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->SetLayout(II)V

    .line 537
    :cond_6
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 538
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 540
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->dip2px(Landroid/content/Context;I)I

    move-result v0

    .line 541
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->dip2px(Landroid/content/Context;I)I

    move-result v1

    .line 543
    sput v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mInitWidth:I

    .line 544
    sput v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mInitHeight:I

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InitialWidthHeight: width: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", height: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Game"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 550
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 551
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x14

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, -0x32

    .line 554
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v2, 0x64

    .line 555
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 556
    new-instance v2, Lcom/popcap/pvz2cthddev/SexyEditText;

    invoke-direct {v2, p0}, Lcom/popcap/pvz2cthddev/SexyEditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSexyEditText:Lcom/popcap/pvz2cthddev/SexyEditText;

    .line 557
    invoke-virtual {v2, p0}, Lcom/popcap/pvz2cthddev/SexyEditText;->setSexyAppFrameworkActivity(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)V

    .line 558
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSexyEditText:Lcom/popcap/pvz2cthddev/SexyEditText;

    invoke-virtual {v2}, Lcom/popcap/pvz2cthddev/SexyEditText;->setSingleLine()V

    .line 559
    iget-object v2, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSexyEditText:Lcom/popcap/pvz2cthddev/SexyEditText;

    invoke-virtual {v2, v1}, Lcom/popcap/pvz2cthddev/SexyEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 562
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSexyEditText:Lcom/popcap/pvz2cthddev/SexyEditText;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 564
    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->setContentView(Landroid/view/View;)V

    .line 566
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->InitIMEKeyboardHandler()V

    .line 574
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->AddSplashScreenStart()V

    .line 576
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->onActivityCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 582
    :try_start_1
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-eqz v5, :cond_7

    .line 589
    iget-object p1, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_7

    .line 591
    iget-object p1, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "EnableBugly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 594
    :cond_7
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 596
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public RemoveSplashScreen()V
    .locals 1

    .line 304
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->SplashScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$3;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$3;-><init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)V

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public ShouldApplyFoldableDevice()Z
    .locals 3

    .line 1470
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1471
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1473
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->dip2px(Landroid/content/Context;I)I

    move-result v0

    .line 1474
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->dip2px(Landroid/content/Context;I)I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f99999a    # 1.2f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1478
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->IsFoldableDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ShowExitGame()V
    .locals 0

    return-void
.end method

.method public SplashScreenShowing()Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashScreen:Lcom/popcap/pvz2cthddev/AndroidSplashScreen;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addOnActivityResultListener(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$OnActivityResultListener;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public closeIMEKeyboard()V
    .locals 2

    .line 403
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 404
    iput v1, v0, Landroid/os/Message;->what:I

    .line 405
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mIMEKeyboardHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getGameApp()Lcom/popcap/pvz2cthddev/AndroidGameApp;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    return-object v0
.end method

.method public getSurfaceView()Lcom/popcap/pvz2cthddev/AndroidSurfaceView;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    return-object v0
.end method

.method public getUIEventMgr()Lcom/popcap/pvz2cthddev/AndroidUIEventManager;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    return-object v0
.end method

.method public handleNativeCrash(Ljava/lang/String;)V
    .locals 1

    .line 637
    const-string v0, "handller"

    invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    new-instance v0, Lcom/popcap/pvz2cthddev/ErrorLogSender;

    invoke-direct {v0}, Lcom/popcap/pvz2cthddev/ErrorLogSender;-><init>()V

    .line 639
    invoke-virtual {v0, p1}, Lcom/popcap/pvz2cthddev/ErrorLogSender;->SendErroLog(Ljava/lang/String;)V

    .line 640
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "crashed here (native trace should follow after the Java trace)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1164
    sget-boolean v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1166
    const-string v0, "Activity"

    const-string v1, "onActivityResult."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1173
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$OnActivityResultListener;

    .line 1175
    invoke-interface {v1, p1, p2, p3}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    if-eqz v0, :cond_2

    const v1, 0x8ca166

    if-eq p1, v1, :cond_2

    .line 1185
    invoke-virtual {v0, p1, p2, p3}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    .line 1053
    sget-boolean v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1055
    const-string v0, "Activity"

    const-string v1, "onConfigurationChanged."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1068
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1069
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1071
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->dip2px(Landroid/content/Context;I)I

    move-result v0

    .line 1072
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->dip2px(Landroid/content/Context;I)I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 1075
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Game"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "ChangedWidthHeight: width: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", height: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "BeforeWidthHeight: width: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mInitWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mInitHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->IsFoldableDevice()Z

    move-result v3

    const v4, 0x3f99999a    # 1.2f

    cmpg-float v5, v2, v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gez v5, :cond_1

    .line 1083
    sget v5, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mCurrentRate:F

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_0
    cmpl-float v4, v2, v4

    if-ltz v4, :cond_2

    .line 1084
    sget v4, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mCurrentRate:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v6, v7

    .line 1086
    :goto_1
    sget v4, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mInitWidth:I

    if-ne v0, v4, :cond_3

    sget v4, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mInitHeight:I

    if-eq v1, v4, :cond_5

    :cond_3
    if-eqz v3, :cond_5

    if-nez v5, :cond_4

    if-eqz v6, :cond_5

    .line 1088
    :cond_4
    iget-object v3, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    invoke-virtual {v3, p1, v0, v1}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->HandleOnConfigurationChanged(Landroid/content/res/Configuration;II)V

    .line 1089
    sput v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mInitWidth:I

    .line 1090
    sput v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mInitHeight:I

    .line 1091
    sput v2, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mCurrentRate:F

    goto :goto_2

    .line 1095
    :cond_5
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    invoke-virtual {v0, p1, v7, v7}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->HandleOnConfigurationChanged(Landroid/content/res/Configuration;II)V

    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    .line 651
    sget-boolean v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DEBUG:Z

    const-string v2, "Activity"

    if-eqz v0, :cond_0

    .line 653
    const-string v0, "onCreate."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->onCreate(Landroid/app/Activity;)V

    .line 671
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->HideBottomUIMenu()V

    .line 676
    invoke-direct/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->NeedLoadCacheLib()Z

    move-result v0

    if-nez v0, :cond_1

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->GetUserDataFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/libSrc.so"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_1
    const-string v0, "Src"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 686
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 687
    const-string v4, "autosmoking"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 689
    sput-boolean v3, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mAutoSmoking:Z

    .line 690
    const-string v0, "AutoSmoking start."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_2
    const-string v0, "activity"

    invoke-virtual {v1, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 700
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    .line 703
    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v2, 0x20000

    const/4 v4, 0x2

    if-ge v0, v2, :cond_4

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "generic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v4

    .line 706
    :goto_2
    new-instance v2, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-direct {v2}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;-><init>()V

    iput-object v2, v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    .line 707
    new-instance v2, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    iget-object v7, v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-direct {v2, v5, v6, v7, v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/popcap/pvz2cthddev/AndroidUIEventManager;I)V

    iput-object v2, v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    .line 708
    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidGameApp;

    iget-object v2, v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    iget-object v5, v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-direct {v0, v1, v2, v5}, Lcom/popcap/pvz2cthddev/AndroidGameApp;-><init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;Lcom/popcap/pvz2cthddev/AndroidSurfaceView;Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)V

    iput-object v0, v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    .line 710
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_5

    .line 714
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 715
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 720
    const-string v2, "Exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_5
    :goto_3
    const-string v0, "window"

    invoke-virtual {v1, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 726
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 728
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 729
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->ShouldApplyFoldableDevice()Z

    move-result v6

    .line 732
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    if-eqz v6, :cond_6

    move v0, v2

    move v8, v5

    goto :goto_4

    .line 750
    :cond_6
    :try_start_1
    invoke-virtual {v0, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 751
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 752
    iget v0, v7, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 754
    :catch_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 755
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    :goto_4
    if-eqz v6, :cond_7

    int-to-float v0, v8

    const v6, 0x3faa3d71    # 1.33f

    div-float/2addr v0, v6

    float-to-int v0, v0

    .line 768
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ScreenW: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ScreenH: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Game"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "FixedW: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "FixedH: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 772
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6, v2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->dip2px(Landroid/content/Context;I)I

    move-result v2

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6, v5}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->dip2px(Landroid/content/Context;I)I

    move-result v5

    int-to-float v2, v2

    int-to-float v5, v5

    div-float/2addr v2, v5

    .line 778
    sput v2, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mCurrentRate:F

    .line 781
    :cond_7
    new-instance v2, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$7;

    invoke-direct {v2, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$7;-><init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)V

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    const/4 v6, 0x0

    .line 814
    invoke-virtual {v5, v2, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 816
    iget-object v2, v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v2, v8, v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->SetScreenSizeInPixels(II)V

    .line 817
    iget-object v9, v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x8

    const/16 v12, 0x8

    const/16 v13, 0x8

    invoke-virtual/range {v9 .. v15}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->init(IIIIII)V

    .line 818
    iget-object v2, v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v2, v8, v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->SetLayout(II)V

    .line 821
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 822
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 823
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x14

    const/16 v7, 0x1e

    invoke-direct {v2, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, -0x32

    .line 826
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v5, 0x64

    .line 827
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 828
    new-instance v5, Lcom/popcap/pvz2cthddev/SexyEditText;

    invoke-direct {v5, v1}, Lcom/popcap/pvz2cthddev/SexyEditText;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSexyEditText:Lcom/popcap/pvz2cthddev/SexyEditText;

    .line 829
    invoke-virtual {v5, v1}, Lcom/popcap/pvz2cthddev/SexyEditText;->setSexyAppFrameworkActivity(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)V

    .line 830
    iget-object v5, v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSexyEditText:Lcom/popcap/pvz2cthddev/SexyEditText;

    invoke-virtual {v5}, Lcom/popcap/pvz2cthddev/SexyEditText;->setSingleLine()V

    .line 831
    iget-object v5, v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSexyEditText:Lcom/popcap/pvz2cthddev/SexyEditText;

    invoke-virtual {v5, v2}, Lcom/popcap/pvz2cthddev/SexyEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    iget-object v2, v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 834
    iget-object v2, v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSexyEditText:Lcom/popcap/pvz2cthddev/SexyEditText;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 836
    invoke-virtual {v1, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->setContentView(Landroid/view/View;)V

    .line 838
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->InitIMEKeyboardHandler()V

    .line 846
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->AddSplashScreenStart()V

    .line 848
    iget-object v0, v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v5, p1

    invoke-virtual {v0, v5, v2}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->onActivityCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 854
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x80

    invoke-virtual {v0, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    if-eqz v6, :cond_8

    .line 861
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    .line 863
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "EnableBugly"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 866
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 868
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_9

    .line 875
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "899516f0ee"

    invoke-static {v0, v2, v3}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_5

    .line 880
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "2b10349dd4"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_5
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1004
    sget-boolean v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1006
    const-string v0, "Activity"

    const-string v1, "onDestroy."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1011
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashToast:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1013
    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->hide()V

    .line 1014
    iput-object v1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashToast:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;

    .line 1017
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    if-eqz v0, :cond_2

    .line 1019
    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->onActivityDestroy()V

    .line 1021
    iput-object v1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    .line 1024
    :cond_2
    iput-object v1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    .line 1025
    iput-object v1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mUIEventManager:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    .line 1026
    sput-object v1, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->sTheActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    .line 1102
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 1104
    const-string v0, "onMultiWindowModeChanged."

    const-string v1, "Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 1108
    const-string p1, "onMultiWindowModeChanged2."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1111
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1113
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->dip2px(Landroid/content/Context;I)I

    move-result p1

    .line 1114
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->dip2px(Landroid/content/Context;I)I

    move-result v0

    .line 1116
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->HandleOnConfigurationChanged(Landroid/content/res/Configuration;II)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1153
    sget-boolean v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1155
    const-string v0, "Activity"

    const-string v1, "onNewIntent."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_0
    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 966
    sget-boolean v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 968
    const-string v0, "Activity"

    const-string v1, "onPause."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 973
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mSplashToast:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;

    if-eqz v0, :cond_1

    .line 975
    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$CustomToast;->hide()V

    .line 978
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->onPause()V

    .line 979
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->onActivityPause()V

    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 932
    sget-boolean v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 934
    const-string v0, "Activity"

    const-string v1, "onRestart."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 939
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    if-eqz v0, :cond_1

    .line 940
    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->onActivityRestart()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 948
    sget-boolean v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 950
    const-string v0, "Activity"

    const-string v1, "onResume."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 956
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->onActivityResume()V

    .line 957
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGLView:Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1037
    sget-boolean v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1039
    const-string v0, "Activity"

    const-string v1, "onSaveInstanceState."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1044
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    if-eqz v0, :cond_1

    .line 1046
    invoke-virtual {v0, p1}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 910
    sget-boolean v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 912
    const-string v0, "Activity"

    const-string v1, "onStart."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 917
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 920
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->setStartUrl(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->onActivityStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 990
    sget-boolean v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 992
    const-string v0, "Activity"

    const-string v1, "onStop."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 997
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->onActivityStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1135
    sget-boolean v0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1137
    const-string v0, "Activity"

    const-string v1, "onWindowFocusChanged."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 1143
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->HideBottomUIMenu()V

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mGameApp:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    invoke-virtual {v0, p1}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public openIMEKeyboard()V
    .locals 2

    .line 396
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 397
    iput v1, v0, Landroid/os/Message;->what:I

    .line 398
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mIMEKeyboardHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeOnActivityResultListener(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$OnActivityResultListener;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
