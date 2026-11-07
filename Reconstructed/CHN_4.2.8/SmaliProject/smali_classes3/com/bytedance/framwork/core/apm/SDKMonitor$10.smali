.class public Lcom/bytedance/framwork/core/apm/SDKMonitor$10;
.super Ljava/lang/Object;
.source "SDKMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/framwork/core/apm/SDKMonitor;


# direct methods
.method constructor <init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->c(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 476
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->d(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 477
    iget-object v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v2, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Lcom/bytedance/framwork/core/apm/SDKMonitor;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&encrypt=close"

    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 481
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->e(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Lgbsdk/common/host/abnr;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->e(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Lgbsdk/common/host/abnr;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lgbsdk/common/host/abnr;->b(Ljava/lang/String;Ljava/util/Map;)Lgbsdk/common/host/abnw;

    move-result-object v1

    iget-object v1, v1, Lgbsdk/common/host/abnw;->fT:[B

    goto :goto_1

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->f(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgbsdk/common/host/abmo;->q(Ljava/lang/String;)[B

    move-result-object v4

    sget-object v5, Lgbsdk/common/host/abnc$ab;->vo:Lgbsdk/common/host/abnc$ab;

    const-string v6, "application/json; charset=utf-8"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lgbsdk/common/host/abnc;->a(Ljava/lang/String;[BLgbsdk/common/host/abnc$ab;Ljava/lang/String;ZLjava/util/Map;)Lgbsdk/common/host/abnw;

    move-result-object v1

    .line 487
    iget-object v1, v1, Lgbsdk/common/host/abnw;->fT:[B

    :goto_1
    if-eqz v1, :cond_3

    .line 490
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->g(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ApmInsight"

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK origin settings:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lgbsdk/common/host/abmv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_1
    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->h(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lgbsdk/common/host/abnn;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v2}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->h(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lgbsdk/common/host/abnn;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 495
    iget-object v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v2, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Lcom/bytedance/framwork/core/apm/SDKMonitor;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 500
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 505
    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 506
    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Lcom/bytedance/framwork/core/apm/SDKMonitor;Z)Z

    .line 507
    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Lgbsdk/common/host/abnk;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-virtual {v1, v2}, Lgbsdk/common/host/abnk;->k(Lcom/bytedance/framwork/core/apm/SDKMonitor;)V

    .line 509
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
