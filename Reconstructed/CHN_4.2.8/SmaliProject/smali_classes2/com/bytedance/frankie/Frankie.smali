.class public Lcom/bytedance/frankie/Frankie;
.super Ljava/lang/Object;
.source "Frankie.java"

# interfaces
.implements Lgbsdk/common/host/abox$ab;


# static fields
.field private static final DEAFAULT_REQUEST_INTERVAL:J = 0x6ddd00L

.field private static final MESSAGE_DELAY_EXECUTE_LOADPATCH:I = 0x64

.field private static volatile sInstance:Lcom/bytedance/frankie/Frankie; = null

.field private static sRequestInterval:J = 0x6ddd00L


# instance fields
.field private mConfig:Lcom/bytedance/frankie/IFrankieConfig;

.field public mContext:Landroid/app/Application;

.field private mEmulatorChecker:Lcom/bytedance/frankie/emulator/EmulatorChecker;

.field public mHandler:Lgbsdk/common/host/abox;

.field private volatile mInited:Z

.field private volatile mLastRequestTime:J

.field private final mListenerCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/frankie/FrankieListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPatchManager:Lgbsdk/common/host/abpt;

.field private mSdkVersionMapProviderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/frankie/SdkVersionMapProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mSubProcessSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/bytedance/frankie/Frankie;->mInited:Z

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/frankie/Frankie;->mSdkVersionMapProviderSet:Ljava/util/Set;

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/bytedance/frankie/Frankie;->mSubProcessSwitch:Z

    .line 69
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/frankie/Frankie;->mListenerCache:Ljava/util/List;

    .line 74
    new-instance v0, Lgbsdk/common/host/abox;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lgbsdk/common/host/abox;-><init>(Landroid/os/Looper;Lgbsdk/common/host/abox$ab;)V

    iput-object v0, p0, Lcom/bytedance/frankie/Frankie;->mHandler:Lgbsdk/common/host/abox;

    return-void
.end method

.method private checkParameters(Lcom/bytedance/frankie/IFrankieConfig;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 403
    invoke-interface {p1}, Lcom/bytedance/frankie/IFrankieConfig;->getApplication()Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 404
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "IFrankieConfig.getApplication() can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 401
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "IFrankieConfig can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 180
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 183
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 185
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Frankie"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getDefaultPatchDir(Landroid/app/Application;)Ljava/lang/String;
    .locals 0

    .line 317
    invoke-static {p0}, Lgbsdk/common/host/aboz;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultPatchDir(Landroid/app/Application;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 327
    invoke-static {p0, p1}, Lgbsdk/common/host/aboz;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/bytedance/frankie/Frankie;
    .locals 2

    .line 78
    sget-object v0, Lcom/bytedance/frankie/Frankie;->sInstance:Lcom/bytedance/frankie/Frankie;

    if-nez v0, :cond_1

    .line 79
    const-class v0, Lcom/bytedance/frankie/Frankie;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/bytedance/frankie/Frankie;->sInstance:Lcom/bytedance/frankie/Frankie;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/bytedance/frankie/Frankie;

    invoke-direct {v1}, Lcom/bytedance/frankie/Frankie;-><init>()V

    sput-object v1, Lcom/bytedance/frankie/Frankie;->sInstance:Lcom/bytedance/frankie/Frankie;

    .line 83
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 85
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/frankie/Frankie;->sInstance:Lcom/bytedance/frankie/Frankie;

    return-object v0
.end method

.method private registerObserverForSubProcess(Landroid/content/Context;)V
    .locals 5

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mConfig:Lcom/bytedance/frankie/IFrankieConfig;

    invoke-interface {v0}, Lcom/bytedance/frankie/IFrankieConfig;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".frankie"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lgbsdk/common/host/abqk;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lgbsdk/common/host/abqk;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 418
    :catchall_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerObserverForSubProcess failed, current process name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/bytedance/ttgame/tob/gradle/compliance/ProcessUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Frankie"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addFrankieListener(Lcom/bytedance/frankie/FrankieListener;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mPatchManager:Lgbsdk/common/host/abpt;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p1}, Lgbsdk/common/host/abpt;->addFrankieListener(Lcom/bytedance/frankie/FrankieListener;)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mListenerCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addSdkVersionMapProvider(Lcom/bytedance/frankie/SdkVersionMapProvider;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mSdkVersionMapProviderSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "Frankie"

    const-string v1, "addSdkVersionMapProvider"

    .line 435
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public disableSubProcess()V
    .locals 2

    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p0, Lcom/bytedance/frankie/Frankie;->mSubProcessSwitch:Z

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableSubProcess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/frankie/Frankie;->mSubProcessSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Frankie"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableSubProcess()V
    .locals 2

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lcom/bytedance/frankie/Frankie;->mSubProcessSwitch:Z

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSubProcess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/frankie/Frankie;->mSubProcessSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Frankie"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public forceLoadRemote(Lcom/bytedance/frankie/FrankieLoadListener;)V
    .locals 3

    .line 248
    iget-boolean v0, p0, Lcom/bytedance/frankie/Frankie;->mInited:Z

    const/4 v1, 0x0

    const-string v2, "Frankie"

    if-nez v0, :cond_1

    const-string v0, "forceLoadRemote abort, not inited"

    .line 249
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "not inited"

    .line 251
    invoke-interface {p1, v1, v0}, Lcom/bytedance/frankie/FrankieLoadListener;->onLoadResult(ZLjava/lang/String;)V

    :cond_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mConfig:Lcom/bytedance/frankie/IFrankieConfig;

    invoke-interface {v0}, Lcom/bytedance/frankie/IFrankieConfig;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "forceLoadRemote abort, not in main process"

    .line 256
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const-string v0, "not in main process"

    .line 258
    invoke-interface {p1, v1, v0}, Lcom/bytedance/frankie/FrankieLoadListener;->onLoadResult(ZLjava/lang/String;)V

    :cond_2
    return-void

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lgbsdk/common/host/abow;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "forceLoadRemote abort, network unavailable"

    .line 263
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    const-string v0, "network unavailable"

    .line 265
    invoke-interface {p1, v1, v0}, Lcom/bytedance/frankie/FrankieLoadListener;->onLoadResult(ZLjava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    const-string v0, "forceLoadRemote start"

    .line 269
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v0, Lgbsdk/common/host/abps;

    new-instance v1, Lcom/bytedance/frankie/Frankie$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/frankie/Frankie$1;-><init>(Lcom/bytedance/frankie/Frankie;Lcom/bytedance/frankie/FrankieLoadListener;)V

    invoke-direct {v0, v1}, Lgbsdk/common/host/abps;-><init>(Lgbsdk/common/host/abps$ab;)V

    .line 306
    invoke-virtual {v0}, Lgbsdk/common/host/abps;->start()V

    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mContext:Landroid/app/Application;

    return-object v0
.end method

.method public getEmulatorChecker()Lcom/bytedance/frankie/emulator/EmulatorChecker;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mEmulatorChecker:Lcom/bytedance/frankie/emulator/EmulatorChecker;

    return-object v0
.end method

.method public getFrankieConfig()Lcom/bytedance/frankie/IFrankieConfig;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mConfig:Lcom/bytedance/frankie/IFrankieConfig;

    return-object v0
.end method

.method public getPatchInfos()Lorg/json/JSONArray;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mPatchManager:Lgbsdk/common/host/abpt;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Lgbsdk/common/host/abpt;->db()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 392
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0
.end method

.method public getPatchManager()Lgbsdk/common/host/abpt;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mPatchManager:Lgbsdk/common/host/abpt;

    return-object v0
.end method

.method public getSdkVersionMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getSdkVersionMap"

    const-string v1, "Frankie"

    .line 451
    iget-object v2, p0, Lcom/bytedance/frankie/Frankie;->mSdkVersionMapProviderSet:Ljava/util/Set;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 454
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 456
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/frankie/Frankie;->mSdkVersionMapProviderSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/frankie/SdkVersionMapProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    .line 459
    :try_start_1
    invoke-interface {v4}, Lcom/bytedance/frankie/SdkVersionMapProvider;->getSdkVersionMap()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 461
    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 464
    :try_start_2
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    .line 469
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v2
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 1

    .line 90
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/frankie/Frankie;->loadRemotePatch()V

    :goto_0
    return-void
.end method

.method public declared-synchronized init(Lcom/bytedance/frankie/IFrankieConfig;Lcom/bytedance/frankie/FrankieListener;)Z
    .locals 3

    monitor-enter p0

    .line 110
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/frankie/Frankie;->mInited:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Frankie"

    const-string p2, "Frankie init abort, already inited"

    .line 111
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return v1

    .line 114
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/frankie/Frankie;->checkParameters(Lcom/bytedance/frankie/IFrankieConfig;)V

    .line 115
    iput-object p1, p0, Lcom/bytedance/frankie/Frankie;->mConfig:Lcom/bytedance/frankie/IFrankieConfig;

    .line 116
    invoke-interface {p1}, Lcom/bytedance/frankie/IFrankieConfig;->getApplication()Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/frankie/Frankie;->mContext:Landroid/app/Application;

    const-string p1, "Frankie"

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frankie init, processName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lgbsdk/common/host/abov;->dr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Lcom/bytedance/frankie/Frankie;->mContext:Landroid/app/Application;

    invoke-static {p1}, Lgbsdk/common/host/abpt;->W(Landroid/content/Context;)Lgbsdk/common/host/abpt;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/frankie/Frankie;->mPatchManager:Lgbsdk/common/host/abpt;

    if-eqz p2, :cond_1

    .line 120
    invoke-virtual {p1, p2}, Lgbsdk/common/host/abpt;->addFrankieListener(Lcom/bytedance/frankie/FrankieListener;)V

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/bytedance/frankie/Frankie;->mListenerCache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 123
    iget-object p1, p0, Lcom/bytedance/frankie/Frankie;->mListenerCache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/frankie/FrankieListener;

    .line 124
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mPatchManager:Lgbsdk/common/host/abpt;

    invoke-virtual {v0, p2}, Lgbsdk/common/host/abpt;->addFrankieListener(Lcom/bytedance/frankie/FrankieListener;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/bytedance/frankie/Frankie;->mListenerCache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 129
    :cond_3
    iget-object p1, p0, Lcom/bytedance/frankie/Frankie;->mContext:Landroid/app/Application;

    invoke-static {p1}, Lgbsdk/common/host/abqn;->aa(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Frankie"

    const-string p2, "Frankie init abort, tryToGetSp failed"

    .line 130
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    monitor-exit p0

    return v1

    .line 133
    :cond_4
    :try_start_2
    iget-object p1, p0, Lcom/bytedance/frankie/Frankie;->mContext:Landroid/app/Application;

    iget-object p2, p0, Lcom/bytedance/frankie/Frankie;->mConfig:Lcom/bytedance/frankie/IFrankieConfig;

    invoke-interface {p2}, Lcom/bytedance/frankie/IFrankieConfig;->getPatchDirName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/frankie/Frankie;->getDefaultPatchDir(Landroid/app/Application;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    iget-object p2, p0, Lcom/bytedance/frankie/Frankie;->mPatchManager:Lgbsdk/common/host/abpt;

    invoke-virtual {p2, p1}, Lgbsdk/common/host/abpt;->bf(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Frankie"

    const-string p2, "Frankie init abort, PatchManager init failed"

    .line 135
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    monitor-exit p0

    return v1

    :cond_5
    const/4 p1, 0x1

    .line 138
    :try_start_3
    iput-boolean p1, p0, Lcom/bytedance/frankie/Frankie;->mInited:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isHotFixReady()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mPatchManager:Lgbsdk/common/host/abpt;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Lgbsdk/common/host/abpt;->isHotFixReady()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isInited()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/bytedance/frankie/Frankie;->mInited:Z

    return v0
.end method

.method public declared-synchronized loadLocalPatch()V
    .locals 2

    monitor-enter p0

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/frankie/Frankie;->mInited:Z

    if-nez v0, :cond_0

    const-string v0, "Frankie"

    const-string v1, "loadLocalPatch, not inited"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mConfig:Lcom/bytedance/frankie/IFrankieConfig;

    if-nez v0, :cond_1

    const-string v0, "Frankie"

    const-string v1, "loadLocalPatch, mConfig is null"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 158
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mPatchManager:Lgbsdk/common/host/abpt;

    if-nez v0, :cond_2

    const-string v0, "Frankie"

    const-string v1, "loadLocalPatch, mPatchManager is null"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    const-string v0, "Frankie"

    const-string v1, "loadLocalPatch"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mConfig:Lcom/bytedance/frankie/IFrankieConfig;

    invoke-interface {v0}, Lcom/bytedance/frankie/IFrankieConfig;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mPatchManager:Lgbsdk/common/host/abpt;

    invoke-virtual {v0}, Lgbsdk/common/host/abpt;->cZ()V

    goto :goto_0

    .line 167
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/frankie/Frankie;->mSubProcessSwitch:Z

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mContext:Landroid/app/Application;

    invoke-direct {p0, v0}, Lcom/bytedance/frankie/Frankie;->registerObserverForSubProcess(Landroid/content/Context;)V

    .line 169
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mPatchManager:Lgbsdk/common/host/abpt;

    invoke-virtual {v0}, Lgbsdk/common/host/abpt;->cZ()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadRemotePatch()V
    .locals 8

    .line 224
    iget-boolean v0, p0, Lcom/bytedance/frankie/Frankie;->mInited:Z

    const-string v1, "Frankie"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mConfig:Lcom/bytedance/frankie/IFrankieConfig;

    invoke-interface {v0}, Lcom/bytedance/frankie/IFrankieConfig;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 228
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 229
    iget-wide v4, p0, Lcom/bytedance/frankie/Frankie;->mLastRequestTime:J

    sub-long v4, v2, v4

    sget-wide v6, Lcom/bytedance/frankie/Frankie;->sRequestInterval:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    const-string v0, "loadRemotePatch start"

    .line 230
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iput-wide v2, p0, Lcom/bytedance/frankie/Frankie;->mLastRequestTime:J

    .line 232
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lgbsdk/common/host/abow;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lgbsdk/common/host/abpt;->W(Landroid/content/Context;)Lgbsdk/common/host/abpt;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abpt;->dc()V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mHandler:Lgbsdk/common/host/abox;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abox;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/bytedance/frankie/Frankie;->mHandler:Lgbsdk/common/host/abox;

    sget-wide v2, Lcom/bytedance/frankie/Frankie;->sRequestInterval:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lgbsdk/common/host/abox;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    const-string v0, "loadRemotePatch abort, time interval less than DEAFAULT_REQUEST_INTERVAL"

    .line 239
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 225
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadRemotePatch abort, mInited:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/bytedance/frankie/Frankie;->mInited:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeFrankieListener(Lcom/bytedance/frankie/FrankieListener;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mPatchManager:Lgbsdk/common/host/abpt;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Lgbsdk/common/host/abpt;->removeFrankieListener(Lcom/bytedance/frankie/FrankieListener;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mListenerCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSdkVersionMapProvider(Lcom/bytedance/frankie/SdkVersionMapProvider;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mSdkVersionMapProviderSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "Frankie"

    const-string v1, "removeSdkVersionMapProvider"

    .line 445
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public rescueIfNeed()V
    .locals 3

    .line 367
    iget-boolean v0, p0, Lcom/bytedance/frankie/Frankie;->mInited:Z

    if-eqz v0, :cond_0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lgbsdk/common/host/abpy;->V(Landroid/content/Context;)Lgbsdk/common/host/abpy;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abpy;->cU()V

    .line 370
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lgbsdk/common/host/abpy;->V(Landroid/content/Context;)Lgbsdk/common/host/abpy;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abpy;->cY()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Frankie"

    const-string v2, "rescueIfNeed"

    .line 372
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setConfigUrl(Ljava/lang/String;)V
    .locals 0

    .line 382
    sput-object p1, Lgbsdk/common/host/abpz;->vA:Ljava/lang/String;

    return-void
.end method

.method public setEmulatorChecker(Lcom/bytedance/frankie/emulator/EmulatorChecker;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/bytedance/frankie/Frankie;->mEmulatorChecker:Lcom/bytedance/frankie/emulator/EmulatorChecker;

    return-void
.end method

.method public setPatchMonitor(JLgbsdk/common/host/abrq;)V
    .locals 0

    .line 143
    invoke-static {p1, p2, p3}, Lgbsdk/common/host/abrt;->a(JLgbsdk/common/host/abrq;)V

    return-void
.end method

.method public setRequestInterval(J)V
    .locals 0

    .line 196
    sput-wide p1, Lcom/bytedance/frankie/Frankie;->sRequestInterval:J

    return-void
.end method
