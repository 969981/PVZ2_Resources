.class public final Lgbsdk/common/host/abym$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abym;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

.field final synthetic aLH:Lgbsdk/common/host/abyp;

.field final synthetic aLI:Lgbsdk/common/host/abym;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abym;Lcom/volcengine/zeus/download/PluginDownloadBean;Lgbsdk/common/host/abyp;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lgbsdk/common/host/abym$2;->aLI:Lgbsdk/common/host/abym;

    iput-object p2, p0, Lgbsdk/common/host/abym$2;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iput-object p3, p0, Lgbsdk/common/host/abym$2;->aLH:Lgbsdk/common/host/abyp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept()Z
    .locals 7

    .line 98
    iget-object v0, p0, Lgbsdk/common/host/abym$2;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v0, v0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/common/host/abym;->a(Ljava/lang/String;)I

    move-result v0

    .line 99
    iget-object v1, p0, Lgbsdk/common/host/abym$2;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget v1, v1, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    const/4 v2, 0x0

    if-le v1, v0, :cond_1

    iget-object v1, p0, Lgbsdk/common/host/abym$2;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v1, v1, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lgbsdk/common/host/abym$2;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget v3, v3, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    invoke-static {v1, v3}, Lgbsdk/common/host/abym;->w(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 100
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "download intercept : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lgbsdk/common/host/abym$2;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v3, v3, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lgbsdk/common/host/abym$2;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget v3, v3, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Zeus/download_zeus"

    invoke-static {v3, v1}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lgbsdk/common/host/abym$2;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v1, v1, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x4

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lgbsdk/common/host/abym$2;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget v6, v6, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    if-gt v6, v0, :cond_2

    const-string v0, "EVENT_INTERCEPT_ALREADY_INSTALL"

    goto :goto_1

    :cond_2
    const-string v0, "EVENT_INTERCEPT_DOWNLOAD_FILE_EXISTS"

    :goto_1
    aput-object v0, v5, v2

    invoke-static {v1, v3, v5}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lgbsdk/common/host/abym$2;->aLH:Lgbsdk/common/host/abyp;

    invoke-virtual {v0}, Lgbsdk/common/host/abyp;->a()V

    return v4
.end method
