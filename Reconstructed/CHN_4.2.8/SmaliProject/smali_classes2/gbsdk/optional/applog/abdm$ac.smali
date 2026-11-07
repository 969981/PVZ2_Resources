.class public Lgbsdk/optional/applog/abdm$ac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/ai$ae;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abdm;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Throwable;

.field public final synthetic b:Lgbsdk/optional/applog/ai$af;

.field public final synthetic c:Lgbsdk/optional/applog/abbm;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abdm;Ljava/lang/Throwable;Lgbsdk/optional/applog/ai$af;Lgbsdk/optional/applog/abbm;)V
    .locals 0

    iput-object p2, p0, Lgbsdk/optional/applog/abdm$ac;->a:Ljava/lang/Throwable;

    iput-object p3, p0, Lgbsdk/optional/applog/abdm$ac;->b:Lgbsdk/optional/applog/ai$af;

    iput-object p4, p0, Lgbsdk/optional/applog/abdm$ac;->c:Lgbsdk/optional/applog/abbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/d;)V
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isMonitorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getMonitor()Lgbsdk/optional/applog/abdr;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/optional/applog/abdm$ac;->a:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lgbsdk/optional/applog/abdt;->b(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abdm$ac;->b:Lgbsdk/optional/applog/ai$af;

    invoke-interface {v0, p1}, Lgbsdk/optional/applog/ai$af;->a(Lcom/bytedance/bdtracker/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbsdk/optional/applog/abdm$ac;->c:Lgbsdk/optional/applog/abbm;

    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/d;->receive(Lgbsdk/optional/applog/abfu;)V

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->flush()V

    :cond_1
    return-void
.end method
