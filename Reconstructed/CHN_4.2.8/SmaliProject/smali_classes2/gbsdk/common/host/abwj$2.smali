.class public final Lgbsdk/common/host/abwj$2;
.super Ljava/lang/Object;
.source "CloudMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abwj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic fL:Lgbsdk/common/host/abwj;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abwj;Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lgbsdk/common/host/abwj$2;->fL:Lgbsdk/common/host/abwj;

    iput-object p2, p0, Lgbsdk/common/host/abwj$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 199
    iget-object v0, p0, Lgbsdk/common/host/abwj$2;->fL:Lgbsdk/common/host/abwj;

    iget-object v1, p0, Lgbsdk/common/host/abwj$2;->a:Ljava/lang/String;

    invoke-static {v1}, Lgbsdk/common/host/abwh;->cJ(Ljava/lang/String;)Lgbsdk/common/host/abwh;

    move-result-object v1

    .line 1210
    iget-object v2, v0, Lgbsdk/common/host/abwj;->c:Ljava/lang/String;

    invoke-static {v2}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v2

    .line 2072
    iget-object v2, v2, Lgbsdk/common/host/abut;->aKP:Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    .line 1210
    invoke-virtual {v2}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 1211
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "handleCloudMessageInternal cloudMessage="

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "ApmInsight"

    invoke-static {v3, v2}, Lgbsdk/common/host/abvp;->c(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_3

    .line 1217
    iget-object v2, v0, Lgbsdk/common/host/abwj;->bo:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lgbsdk/common/host/abwj;->bo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1223
    :cond_1
    iget-object v0, v0, Lgbsdk/common/host/abwj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/abux;

    .line 1224
    invoke-interface {v2, v1}, Lgbsdk/common/host/abux;->a(Lgbsdk/common/host/abwh;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    return-void
.end method
