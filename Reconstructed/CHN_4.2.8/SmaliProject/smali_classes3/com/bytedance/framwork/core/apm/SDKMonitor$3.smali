.class public Lcom/bytedance/framwork/core/apm/SDKMonitor$3;
.super Ljava/lang/Object;
.source "SDKMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/framwork/core/apm/SDKMonitor;->flushBuffer(Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;

.field final synthetic b:Lcom/bytedance/framwork/core/apm/SDKMonitor;


# direct methods
.method constructor <init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;)V
    .locals 0

    .line 1320
    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$3;->b:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    iput-object p2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$3;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 1325
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$3;->b:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->i(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Lgbsdk/common/host/abnp;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1326
    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$3;->b:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->i(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Lgbsdk/common/host/abnp;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lgbsdk/common/host/abnp;->b(JZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1329
    :cond_0
    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$3;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;

    invoke-interface {v1, v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;->callback(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$3;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;

    invoke-interface {v2, v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;->callback(Z)V

    throw v1
.end method
