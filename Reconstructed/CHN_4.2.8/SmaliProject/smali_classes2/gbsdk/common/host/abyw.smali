.class public Lgbsdk/common/host/abyw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestPluginInfo(Ljava/util/List;Lgbsdk/common/host/abyt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lgbsdk/common/host/abyt;",
            ")V"
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/util/concurrent/ExecutorCompletionService;

    sget-object v1, Lgbsdk/common/host/abxy;->aLr:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 17
    new-instance v1, Lgbsdk/common/host/abyw$1;

    invoke-direct {v1, p0, v0, p1}, Lgbsdk/common/host/abyw$1;-><init>(Ljava/util/List;Ljava/util/concurrent/ExecutorCompletionService;Lgbsdk/common/host/abyt;)V

    invoke-static {v1}, Lgbsdk/common/host/abxy;->d(Ljava/lang/Runnable;)V

    .line 34
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 35
    new-instance v1, Lgbsdk/common/host/abyw$2;

    invoke-direct {v1, p1}, Lgbsdk/common/host/abyw$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    return-void
.end method
