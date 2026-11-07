.class public Lcom/apmplus/sdk/cloudmessage/SDKCloud;
.super Ljava/lang/Object;
.source "SDKCloud.java"


# instance fields
.field private fK:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

.field private fL:Lgbsdk/common/host/abwj;


# direct methods
.method public constructor <init>(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/apmplus/sdk/cloudmessage/SDKCloud;->fK:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 1026
    new-instance v0, Lgbsdk/common/host/abwj;

    invoke-direct {v0, p1}, Lgbsdk/common/host/abwj;-><init>(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;)V

    iput-object v0, p0, Lcom/apmplus/sdk/cloudmessage/SDKCloud;->fL:Lgbsdk/common/host/abwj;

    .line 1027
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/apmplus/sdk/cloudmessage/SDKCloud$1;

    invoke-direct {v0, p0}, Lcom/apmplus/sdk/cloudmessage/SDKCloud$1;-><init>(Lcom/apmplus/sdk/cloudmessage/SDKCloud;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public fetchCloud()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/apmplus/sdk/cloudmessage/SDKCloud;->fL:Lgbsdk/common/host/abwj;

    .line 1328
    iget-object v1, v0, Lgbsdk/common/host/abwj;->aKC:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lgbsdk/common/host/abwj$3;

    invoke-direct {v2, v0}, Lgbsdk/common/host/abwj$3;-><init>(Lgbsdk/common/host/abwj;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCloudMessageManager()Lgbsdk/common/host/abwj;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/apmplus/sdk/cloudmessage/SDKCloud;->fL:Lgbsdk/common/host/abwj;

    return-object v0
.end method

.method public uploadVlog(JJ)V
    .locals 7

    .line 54
    iget-object v0, p0, Lcom/apmplus/sdk/cloudmessage/SDKCloud;->fK:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    invoke-virtual {v0}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v1 .. v6}, Lgbsdk/common/host/abgr;->a(JJLgbsdk/common/host/abgn;Ljava/lang/String;)V

    return-void
.end method

.method public uploadVlog(JJLgbsdk/common/host/abgn;)V
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/apmplus/sdk/cloudmessage/SDKCloud;->fK:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    invoke-virtual {v0}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->getAid()Ljava/lang/String;

    move-result-object v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v1 .. v6}, Lgbsdk/common/host/abgr;->a(JJLgbsdk/common/host/abgn;Ljava/lang/String;)V

    return-void
.end method
