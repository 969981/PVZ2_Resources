.class public Lcom/bytedance/framwork/core/apm/SDKMonitor$2;
.super Ljava/lang/Object;
.source "SDKMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/framwork/core/apm/SDKMonitor;->flushBuffer()V
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

    .line 1304
    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$2;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1307
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$2;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->i(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Lgbsdk/common/host/abnp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$2;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->i(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Lgbsdk/common/host/abnp;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lgbsdk/common/host/abnp;->b(JZ)Z

    :cond_0
    return-void
.end method
