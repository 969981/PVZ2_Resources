.class public Lgbsdk/common/host/abxa;
.super Lgbsdk/common/host/abyc$ab;
.source "SourceFile"


# static fields
.field private static volatile aMd:Lgbsdk/common/host/abxa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lgbsdk/common/host/abyc$ab;-><init>()V

    return-void
.end method

.method public static hP()Lgbsdk/common/host/abxa;
    .locals 2

    .line 19
    sget-object v0, Lgbsdk/common/host/abxa;->aMd:Lgbsdk/common/host/abxa;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lgbsdk/common/host/abxa;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abxa;->aMd:Lgbsdk/common/host/abxa;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lgbsdk/common/host/abxa;

    invoke-direct {v1}, Lgbsdk/common/host/abxa;-><init>()V

    sput-object v1, Lgbsdk/common/host/abxa;->aMd:Lgbsdk/common/host/abxa;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abxa;->aMd:Lgbsdk/common/host/abxa;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 31
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/volcengine/zeus/plugin/PluginManager;->checkPluginInstalled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;)I
    .locals 1

    .line 36
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/volcengine/zeus/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object p1

    invoke-virtual {p1}, Lcom/volcengine/zeus/plugin/Plugin;->getVersion()I

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 41
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/volcengine/zeus/plugin/PluginManager;->syncInstall(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
