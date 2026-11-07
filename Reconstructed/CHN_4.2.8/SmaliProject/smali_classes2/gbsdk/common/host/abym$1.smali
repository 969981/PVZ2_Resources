.class public final Lgbsdk/common/host/abym$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/volcengine/zeus/download/IZeusDownloadListener;


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

    .line 60
    iput-object p1, p0, Lgbsdk/common/host/abym$1;->aLI:Lgbsdk/common/host/abym;

    iput-object p2, p0, Lgbsdk/common/host/abym$1;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iput-object p3, p0, Lgbsdk/common/host/abym$1;->aLH:Lgbsdk/common/host/abyp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download onFailed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lgbsdk/common/host/abym$1;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v1, v1, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abym$1;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget v1, v1, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Zeus/download_zeus"

    invoke-static {v1, v0, p1}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    sget-object p1, Lgbsdk/common/host/abya;->d:Ljava/lang/String;

    invoke-static {p2}, Lgbsdk/common/host/abym;->a(I)I

    move-result p2

    iget-object v0, p0, Lgbsdk/common/host/abym$1;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v0, v0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lgbsdk/common/host/abym$1;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget v1, v1, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    invoke-static {p1, p2, v0, v1}, Lgbsdk/common/host/abym;->a(Ljava/lang/String;ILjava/lang/String;I)V

    .line 87
    iget-object p1, p0, Lgbsdk/common/host/abym$1;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object p1, p1, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const/4 p3, 0x4

    invoke-static {p1, p3, p2}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 88
    iget-object p1, p0, Lgbsdk/common/host/abym$1;->aLH:Lgbsdk/common/host/abyp;

    invoke-virtual {p1}, Lgbsdk/common/host/abyp;->a()V

    return-void
.end method

.method public final onProgress(JJ)V
    .locals 2

    .line 63
    iget-object v0, p0, Lgbsdk/common/host/abym$1;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v0, v0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    long-to-float p2, p3

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const/4 p1, 0x2

    invoke-static {v0, p1, v1}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public final onStart()V
    .locals 4

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download start : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lgbsdk/common/host/abym$1;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v1, v1, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abym$1;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget v1, v1, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Zeus/download_zeus"

    invoke-static {v1, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lgbsdk/common/host/abya;->c:Ljava/lang/String;

    sget v1, Lgbsdk/common/host/abya$ab;->f:I

    iget-object v2, p0, Lgbsdk/common/host/abym$1;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v2, v2, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lgbsdk/common/host/abym$1;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget v3, v3, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    invoke-static {v0, v1, v2, v3}, Lgbsdk/common/host/abym;->a(Ljava/lang/String;ILjava/lang/String;I)V

    .line 70
    iget-object v0, p0, Lgbsdk/common/host/abym$1;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v0, v0, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download onSuccessed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lgbsdk/common/host/abym$1;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget-object v1, v1, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abym$1;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    iget v1, v1, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Zeus/download_zeus"

    invoke-static {v1, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lgbsdk/common/host/abym$1;->aLG:Lcom/volcengine/zeus/download/PluginDownloadBean;

    invoke-static {p1, p2, p3, p4, v0}, Lgbsdk/common/host/abym;->a(Ljava/lang/String;Ljava/lang/String;JLcom/volcengine/zeus/download/PluginDownloadBean;)V

    .line 80
    iget-object p1, p0, Lgbsdk/common/host/abym$1;->aLH:Lgbsdk/common/host/abyp;

    invoke-virtual {p1}, Lgbsdk/common/host/abyp;->a()V

    return-void
.end method
