.class public final Lgbsdk/common/host/abzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lgbsdk/common/host/abzw;->a:Ljava/io/File;

    .line 25
    iput-object p1, p0, Lgbsdk/common/host/abzw;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    .line 36
    iget-object v0, p0, Lgbsdk/common/host/abzw;->b:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v0, v3, v2}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lgbsdk/common/host/abzw;->a:Ljava/io/File;

    invoke-static {v0}, Lgbsdk/common/host/abwy;->N(Ljava/io/File;)Lgbsdk/common/host/abwx;

    move-result-object v0

    const-string v2, "Zeus/install_zeus"

    const/4 v3, 0x1

    const/4 v4, 0x7

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lgbsdk/common/host/abzw;->b:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " read local file package info failed !!! pluginPkg = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lgbsdk/common/host/abzw;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mApkFile.exists = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lgbsdk/common/host/abzw;->a:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v0, v4, v3}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "PluginInstallRunnable read local file package info failed !!! pluginPkg = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lgbsdk/common/host/abzw;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 44
    :cond_0
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object v5

    iget-object v6, v0, Lgbsdk/common/host/abwx;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/volcengine/zeus/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object v5

    if-nez v5, :cond_1

    .line 46
    iget-object v5, p0, Lgbsdk/common/host/abzw;->b:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " plugin == null !!! pluginPkg = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lgbsdk/common/host/abzw;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-static {v5, v4, v3}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PluginInstallRunnable cannot query valid plugin !!! packageName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lgbsdk/common/host/abwx;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 50
    :cond_1
    iget-object v2, p0, Lgbsdk/common/host/abzw;->a:Ljava/io/File;

    invoke-virtual {v5, v2, v0}, Lcom/volcengine/zeus/plugin/Plugin;->install(Ljava/io/File;Lgbsdk/common/host/abwx;)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 53
    iget-object v0, v0, Lgbsdk/common/host/abwx;->a:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, v0, Lgbsdk/common/host/abwx;->a:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-static {v0, v4, v3}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 57
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final run()V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lgbsdk/common/host/abzw;->a()Z

    return-void
.end method
