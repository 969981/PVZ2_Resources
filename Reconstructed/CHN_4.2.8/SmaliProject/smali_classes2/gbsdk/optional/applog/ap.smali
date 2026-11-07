.class public final Lgbsdk/optional/applog/ap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/ai$ae;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/d;)V
    .locals 2

    .line 1
    sget-object v0, Lgbsdk/optional/applog/abfw;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    new-instance v1, Lgbsdk/optional/applog/ap$ab;

    invoke-direct {v1, p0, p1}, Lgbsdk/optional/applog/ap$ab;-><init>(Lgbsdk/optional/applog/ap;Lcom/bytedance/bdtracker/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
