.class public final Lgbsdk/common/host/abyw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abyw;->requestPluginInfo(Ljava/util/List;Lgbsdk/common/host/abyt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic aLv:Ljava/util/concurrent/ExecutorCompletionService;

.field final synthetic aLw:Lgbsdk/common/host/abyt;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/concurrent/ExecutorCompletionService;Lgbsdk/common/host/abyt;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lgbsdk/common/host/abyw$1;->a:Ljava/util/List;

    iput-object p2, p0, Lgbsdk/common/host/abyw$1;->aLv:Ljava/util/concurrent/ExecutorCompletionService;

    iput-object p3, p0, Lgbsdk/common/host/abyw$1;->aLw:Lgbsdk/common/host/abyt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v1, p0, Lgbsdk/common/host/abyw$1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 25
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abyw$1;->aLv:Ljava/util/concurrent/ExecutorCompletionService;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    move v1, v2

    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abyw$1;->aLw:Lgbsdk/common/host/abyt;

    invoke-interface {v1, v0}, Lgbsdk/common/host/abyt;->y(Ljava/util/List;)V

    return-void
.end method
