.class public final Lgbsdk/common/host/abve$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    const-string v2, "334386"

    if-ge v0, v1, :cond_0

    const-wide/16 v3, 0x7d0

    .line 167
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 168
    invoke-static {v2}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;

    move-result-object v1

    new-instance v2, Lgbsdk/common/host/abve$3$1;

    invoke-direct {v2, p0}, Lgbsdk/common/host/abve$3$1;-><init>(Lgbsdk/common/host/abve$3;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->flushBuffer(Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {v2}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;

    move-result-object v0

    new-instance v1, Lgbsdk/common/host/abve$3$2;

    invoke-direct {v1, p0}, Lgbsdk/common/host/abve$3$2;-><init>(Lgbsdk/common/host/abve$3;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->flushReport(Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;)V

    return-void
.end method
