.class public Lgbsdk/optional/applog/abdf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/ai$ae;


# instance fields
.field public final synthetic a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abdm;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p2, p0, Lgbsdk/optional/applog/abdf;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/d;)V
    .locals 1

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isMonitorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getMonitor()Lgbsdk/optional/applog/abdr;

    move-result-object p1

    iget-object v0, p0, Lgbsdk/optional/applog/abdf;->a:Ljava/lang/Throwable;

    invoke-static {p1, v0}, Lgbsdk/optional/applog/abdt;->b(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
