.class public Lcom/bytedance/framwork/core/apm/SDKMonitor$4;
.super Ljava/lang/Object;
.source "SDKMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/framwork/core/apm/SDKMonitor;->flushReport()V
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

    .line 1349
    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$4;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1352
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$4;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->i(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Lgbsdk/common/host/abnp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$4;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->j(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Lgbsdk/common/host/abnt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$4;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->j(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Lgbsdk/common/host/abnt;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abnt;->a(Z)Z

    :cond_0
    return-void
.end method
