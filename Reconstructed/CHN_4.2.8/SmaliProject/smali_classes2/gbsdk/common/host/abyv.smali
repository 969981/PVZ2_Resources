.class public abstract Lgbsdk/common/host/abyv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lcom/volcengine/zeus/download/PluginDownloadBean;)Z
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/volcengine/zeus/Zeus;->getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 31
    iget v3, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    invoke-virtual {v0, v3}, Lcom/volcengine/zeus/plugin/Plugin;->isVersionInstalled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    invoke-static {v0, v3}, Lgbsdk/common/host/abxw;->t(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "interceptPluginDownload, packageName:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " downloadVersionCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Zeus/download_zeus"

    invoke-static {v0, p0}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    return v2
.end method

.method protected static b(Lcom/volcengine/zeus/download/PluginDownloadBean;)Z
    .locals 4

    .line 49
    invoke-virtual {p0}, Lcom/volcengine/zeus/download/PluginDownloadBean;->isUnInstall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/volcengine/zeus/download/PluginDownloadBean;->isRevert()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/volcengine/zeus/download/PluginDownloadBean;->isUnInstall()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "unInstall"

    goto :goto_1

    :cond_2
    const-string v0, "revert"

    .line 51
    :goto_1
    invoke-virtual {p0}, Lcom/volcengine/zeus/download/PluginDownloadBean;->isUnInstall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    invoke-virtual {v1, v2, v3}, Lcom/volcengine/zeus/plugin/PluginManager;->tryOfflineInternalPlugin(Ljava/lang/String;I)V

    :cond_3
    const-string v1, "pluginDownloadBean."

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/volcengine/zeus/log/ZeusLogger;->d(Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/volcengine/zeus/Zeus;->unInstallPlugin(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
