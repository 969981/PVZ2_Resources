.class public Lcom/volcengine/zeus/Zeus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile onPrivacyAgreed:Z

.field private static sApplication:Landroid/app/Application;

.field private static final serverManagerHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final wait:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/volcengine/zeus/Zeus;->serverManagerHashMap:Ljava/util/HashMap;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/volcengine/zeus/Zeus;->wait:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 120
    sput-boolean v0, Lcom/volcengine/zeus/Zeus;->onPrivacyAgreed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExternalAssetsForPlugin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 343
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    invoke-static {p0}, Lcom/volcengine/zeus/Zeus;->getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    .line 348
    iget-object p0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 349
    new-instance v0, Lgbsdk/common/host/abzo;

    invoke-direct {v0}, Lgbsdk/common/host/abzo;-><init>()V

    const/4 v1, 0x0

    .line 350
    invoke-virtual {v0, p0, p1, v1}, Lgbsdk/common/host/abzo;->a(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Landroid/content/res/AssetManager;

    :cond_1
    :goto_0
    return-void
.end method

.method public static addPluginEventCallback(Lcom/volcengine/zeus/ZeusPluginEventCallback;)V
    .locals 2

    .line 199
    invoke-static {}, Lgbsdk/common/host/abzv;->hQ()Lgbsdk/common/host/abzv;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 4188
    iget-object v1, v0, Lgbsdk/common/host/abzv;->c:Ljava/util/List;

    monitor-enter v1

    .line 4189
    :try_start_0
    iget-object v0, v0, Lgbsdk/common/host/abzv;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4190
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public static fetchPlugin(Ljava/lang/String;)V
    .locals 2

    .line 166
    invoke-static {}, Lgbsdk/common/host/abyl;->hM()Lgbsdk/common/host/abyl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lgbsdk/common/host/abyl;->i(Ljava/lang/String;Z)V

    return-void
.end method

.method public static fetchPlugin(Ljava/lang/String;Z)V
    .locals 1

    .line 170
    invoke-static {}, Lgbsdk/common/host/abyl;->hM()Lgbsdk/common/host/abyl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lgbsdk/common/host/abyl;->i(Ljava/lang/String;Z)V

    return-void
.end method

.method public static getAppApplication()Landroid/app/Application;
    .locals 3

    .line 42
    sget-object v0, Lcom/volcengine/zeus/Zeus;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lgbsdk/common/host/abyg;->a()V

    .line 44
    invoke-static {}, Lgbsdk/common/host/abyb;->L()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    const-string v1, "getApplication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 46
    invoke-static {v0, v1, v2}, Lcom/volcengine/zeus/util/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/volcengine/zeus/Zeus;->sApplication:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :catchall_0
    :cond_0
    sget-object v0, Lcom/volcengine/zeus/Zeus;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getHostAbi()Ljava/lang/String;
    .locals 1

    .line 301
    invoke-static {}, Lgbsdk/common/host/abxx;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHostAbiBit()I
    .locals 1

    .line 318
    invoke-static {}, Lgbsdk/common/host/abxx;->b()I

    move-result v0

    return v0
.end method

.method public static getInstalledPluginVersion(Ljava/lang/String;)I
    .locals 3

    .line 323
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/volcengine/zeus/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 327
    :cond_0
    invoke-virtual {v0}, Lcom/volcengine/zeus/plugin/Plugin;->getVersion()I

    move-result v0

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " getInstalledPluginVersion, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Zeus/download_zeus"

    invoke-static {v1, p0}, Lcom/volcengine/zeus/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getMaxInstallVer(Ljava/lang/String;)I
    .locals 1

    .line 305
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abxz;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-static {p0}, Lcom/volcengine/zeus/Zeus;->getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object p0

    invoke-virtual {p0}, Lcom/volcengine/zeus/plugin/Plugin;->getInstalledMaxVer()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;
    .locals 1

    const/4 v0, 0x1

    .line 221
    invoke-static {p0, v0}, Lcom/volcengine/zeus/Zeus;->getPlugin(Ljava/lang/String;Z)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object p0

    return-object p0
.end method

.method public static getPlugin(Ljava/lang/String;Z)Lcom/volcengine/zeus/plugin/Plugin;
    .locals 1

    .line 228
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/volcengine/zeus/plugin/PluginManager;->getPlugin(Ljava/lang/String;Z)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object p0

    return-object p0
.end method

.method public static getServerManagerHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/volcengine/zeus/Zeus;->serverManagerHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getZeusDid()Ljava/lang/String;
    .locals 1

    .line 339
    invoke-static {}, Lgbsdk/common/host/acbw;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasInit()Z
    .locals 1

    .line 156
    invoke-static {}, Lgbsdk/common/host/abzv;->hQ()Lgbsdk/common/host/abzv;

    move-result-object v0

    .line 4167
    iget-boolean v0, v0, Lgbsdk/common/host/abzv;->a:Z

    return v0
.end method

.method public static init(Landroid/app/Application;Z)V
    .locals 1

    .line 85
    invoke-static {}, Lgbsdk/common/host/abzv;->hQ()Lgbsdk/common/host/abzv;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lgbsdk/common/host/abzv;->a(Landroid/app/Application;Z)V

    .line 86
    sget-object p0, Lcom/volcengine/zeus/Zeus;->wait:Ljava/lang/Object;

    monitor-enter p0

    .line 87
    :try_start_0
    sget-object p1, Lcom/volcengine/zeus/Zeus;->wait:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static installFromDownloadDir()V
    .locals 2

    .line 146
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abxz;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/volcengine/zeus/plugin/PluginManager;->installFromDownloadDir(Z)V

    :cond_0
    return-void
.end method

.method public static installFromPushDir()V
    .locals 2

    .line 137
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abxz;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/volcengine/zeus/plugin/PluginManager;->installFromDownloadDir(Z)V

    :cond_0
    return-void
.end method

.method public static installInternalPlugin(Ljava/lang/String;)V
    .locals 1

    .line 366
    invoke-static {p0}, Lcom/volcengine/zeus/Zeus;->getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0, v0}, Lcom/volcengine/zeus/plugin/Plugin;->installInternalPlugin(Z)V

    :cond_0
    return-void
.end method

.method public static isPluginInstalled(Ljava/lang/String;)Z
    .locals 1

    .line 239
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/volcengine/zeus/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/volcengine/zeus/plugin/Plugin;->isInstalled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPluginLoaded(Ljava/lang/String;)Z
    .locals 1

    .line 250
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/volcengine/zeus/plugin/PluginManager;->isLoaded(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadPlugin(Ljava/lang/String;)Z
    .locals 1

    .line 262
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/volcengine/zeus/plugin/PluginManager;->loadPlugin(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized onPrivacyAgreed()V
    .locals 2

    const-class v0, Lcom/volcengine/zeus/Zeus;

    monitor-enter v0

    .line 126
    :try_start_0
    sget-boolean v1, Lcom/volcengine/zeus/Zeus;->onPrivacyAgreed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 127
    monitor-exit v0

    return-void

    .line 129
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/volcengine/zeus/apm/ApmUtils;->getApmInstance()Lcom/volcengine/zeus/apm/AbsApm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/volcengine/zeus/apm/AbsApm;->init()V

    const/4 v1, 0x1

    .line 130
    sput-boolean v1, Lcom/volcengine/zeus/Zeus;->onPrivacyAgreed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static registerPluginStateListener(Lcom/volcengine/zeus/ZeusPluginStateListener;)V
    .locals 1

    .line 181
    invoke-static {}, Lgbsdk/common/host/abzv;->hQ()Lgbsdk/common/host/abzv;

    move-result-object v0

    .line 4175
    iget-object v0, v0, Lgbsdk/common/host/abzv;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removePluginEventCallback(Lcom/volcengine/zeus/ZeusPluginEventCallback;)V
    .locals 2

    .line 208
    invoke-static {}, Lgbsdk/common/host/abzv;->hQ()Lgbsdk/common/host/abzv;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 4197
    iget-object v1, v0, Lgbsdk/common/host/abzv;->c:Ljava/util/List;

    monitor-enter v1

    .line 4198
    :try_start_0
    iget-object v0, v0, Lgbsdk/common/host/abzv;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4199
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public static requestPluginInfo(Ljava/util/List;Lgbsdk/common/host/abyt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lgbsdk/common/host/abyt;",
            ")V"
        }
    .end annotation

    .line 355
    invoke-static {p0, p1}, Lgbsdk/common/host/abyw;->requestPluginInfo(Ljava/util/List;Lgbsdk/common/host/abyt;)V

    return-void
.end method

.method public static setAllowDownloadPlugin(Ljava/lang/String;IZ)V
    .locals 1

    .line 292
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/volcengine/zeus/plugin/PluginManager;->setAllowDownloadPlugin(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static setAllowInstallVersion(Ljava/lang/String;I)V
    .locals 0

    .line 359
    invoke-static {p0}, Lcom/volcengine/zeus/Zeus;->getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 361
    invoke-virtual {p0, p1}, Lcom/volcengine/zeus/plugin/Plugin;->setAllowInstallVersion(I)V

    :cond_0
    return-void
.end method

.method public static setAppContext(Landroid/app/Application;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginApplicationWrapper"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "mOriginApplication"

    .line 57
    invoke-static {p0, v0}, Lcom/volcengine/zeus/util/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/volcengine/zeus/Zeus;->sApplication:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 62
    :catchall_0
    :cond_0
    sput-object p0, Lcom/volcengine/zeus/Zeus;->sApplication:Landroid/app/Application;

    return-void
.end method

.method public static syncInstallPlugin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 266
    invoke-static {}, Lgbsdk/common/host/acbg;->hV()Lgbsdk/common/host/abyc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    :try_start_0
    invoke-interface {v0, p0, p1}, Lgbsdk/common/host/abyc;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Zeus/install_zeus"

    const-string v0, "syncInstallPlugin error."

    .line 271
    invoke-static {p1, v0, p0}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static triggerBgDexOpt()V
    .locals 0

    .line 152
    invoke-static {}, Lgbsdk/common/host/abxc;->a()V

    return-void
.end method

.method public static unInstallPlugin(Ljava/lang/String;)V
    .locals 1

    .line 285
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/volcengine/zeus/plugin/PluginManager;->unInstallPackage(Ljava/lang/String;)V

    return-void
.end method

.method public static unregisterPluginStateListener(Lcom/volcengine/zeus/ZeusPluginStateListener;)V
    .locals 2

    .line 190
    invoke-static {}, Lgbsdk/common/host/abzv;->hQ()Lgbsdk/common/host/abzv;

    move-result-object v0

    .line 4179
    iget-object v1, v0, Lgbsdk/common/host/abzv;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4180
    iget-object v0, v0, Lgbsdk/common/host/abzv;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static waitInit(I)Z
    .locals 4

    .line 100
    invoke-static {}, Lgbsdk/common/host/abzv;->hQ()Lgbsdk/common/host/abzv;

    move-result-object v0

    .line 1167
    iget-boolean v0, v0, Lgbsdk/common/host/abzv;->a:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 103
    :cond_0
    sget-object v0, Lcom/volcengine/zeus/Zeus;->wait:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    invoke-static {}, Lgbsdk/common/host/abzv;->hQ()Lgbsdk/common/host/abzv;

    move-result-object v1

    .line 2167
    iget-boolean v1, v1, Lgbsdk/common/host/abzv;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    .line 107
    :try_start_1
    sget-object p0, Lcom/volcengine/zeus/Zeus;->wait:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 109
    :cond_1
    sget-object v1, Lcom/volcengine/zeus/Zeus;->wait:Ljava/lang/Object;

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :catch_0
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    invoke-static {}, Lgbsdk/common/host/abzv;->hQ()Lgbsdk/common/host/abzv;

    move-result-object p0

    .line 3167
    iget-boolean p0, p0, Lgbsdk/common/host/abzv;->a:Z

    return p0

    :catchall_0
    move-exception p0

    .line 114
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
