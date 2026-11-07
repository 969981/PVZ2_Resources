.class public final Lgbsdk/optional/applog/ak;
.super Lgbsdk/optional/applog/abee;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/bytedance/applog/exposure/task/ThrottleCheckExposureStrategy;",
        "Lcom/bytedance/applog/exposure/task/BaseCheckExposureStrategy;",
        "checkTask",
        "Ljava/lang/Runnable;",
        "(Ljava/lang/Runnable;)V",
        "isCheckFinish",
        "",
        "check",
        "",
        "agent_liteChinaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public volatile a:Z

.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "checkTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lgbsdk/optional/applog/abee;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/ak;->b:Ljava/lang/Runnable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgbsdk/optional/applog/ak;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-boolean v0, p0, Lgbsdk/optional/applog/ak;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgbsdk/optional/applog/ak;->a:Z

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abee;->c:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lgbsdk/optional/applog/ak;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lgbsdk/optional/applog/abee;->c:Landroid/os/Handler;

    .line 4
    new-instance v1, Lgbsdk/optional/applog/ak$ab;

    invoke-direct {v1, p0}, Lgbsdk/optional/applog/ak$ab;-><init>(Lgbsdk/optional/applog/ak;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
