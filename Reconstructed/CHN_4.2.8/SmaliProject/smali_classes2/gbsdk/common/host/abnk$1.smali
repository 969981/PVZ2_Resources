.class public Lgbsdk/common/host/abnk$1;
.super Ljava/lang/Object;
.source "CacheData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abnk;->k(Lcom/bytedance/framwork/core/apm/SDKMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

.field final synthetic vl:Lgbsdk/common/host/abnk;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abnk;Lcom/bytedance/framwork/core/apm/SDKMonitor;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lgbsdk/common/host/abnk$1;->vl:Lgbsdk/common/host/abnk;

    iput-object p2, p0, Lgbsdk/common/host/abnk$1;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 73
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abnk$1;->vl:Lgbsdk/common/host/abnk;

    invoke-static {v0}, Lgbsdk/common/host/abnk;->a(Lgbsdk/common/host/abnk;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 74
    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lgbsdk/common/host/abnk$1;->vl:Lgbsdk/common/host/abnk;

    invoke-static {v2}, Lgbsdk/common/host/abnk;->a(Lgbsdk/common/host/abnk;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 75
    iget-object v2, p0, Lgbsdk/common/host/abnk$1;->vl:Lgbsdk/common/host/abnk;

    invoke-static {v2}, Lgbsdk/common/host/abnk;->a(Lgbsdk/common/host/abnk;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 76
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 77
    :try_start_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abpx;

    .line 78
    iget-object v2, p0, Lgbsdk/common/host/abnk$1;->vl:Lgbsdk/common/host/abnk;

    iget-object v3, p0, Lgbsdk/common/host/abnk$1;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v2, v3, v1}, Lgbsdk/common/host/abnk;->a(Lgbsdk/common/host/abnk;Lcom/bytedance/framwork/core/apm/SDKMonitor;Lgbsdk/common/host/abpx;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abnk$1;->vl:Lgbsdk/common/host/abnk;

    invoke-static {v0}, Lgbsdk/common/host/abnk;->b(Lgbsdk/common/host/abnk;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 83
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lgbsdk/common/host/abnk$1;->vl:Lgbsdk/common/host/abnk;

    invoke-static {v2}, Lgbsdk/common/host/abnk;->b(Lgbsdk/common/host/abnk;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 84
    iget-object v2, p0, Lgbsdk/common/host/abnk$1;->vl:Lgbsdk/common/host/abnk;

    invoke-static {v2}, Lgbsdk/common/host/abnk;->b(Lgbsdk/common/host/abnk;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 85
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    :try_start_4
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abnf;

    .line 87
    iget-object v2, p0, Lgbsdk/common/host/abnk$1;->vl:Lgbsdk/common/host/abnk;

    iget-object v3, p0, Lgbsdk/common/host/abnk$1;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v2, v3, v1}, Lgbsdk/common/host/abnk;->a(Lgbsdk/common/host/abnk;Lcom/bytedance/framwork/core/apm/SDKMonitor;Lgbsdk/common/host/abnf;)V

    goto :goto_1

    .line 91
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/abnk$1;->vl:Lgbsdk/common/host/abnk;

    invoke-static {v0}, Lgbsdk/common/host/abnk;->c(Lgbsdk/common/host/abnk;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 92
    :try_start_5
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lgbsdk/common/host/abnk$1;->vl:Lgbsdk/common/host/abnk;

    invoke-static {v2}, Lgbsdk/common/host/abnk;->c(Lgbsdk/common/host/abnk;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 93
    iget-object v2, p0, Lgbsdk/common/host/abnk$1;->vl:Lgbsdk/common/host/abnk;

    invoke-static {v2}, Lgbsdk/common/host/abnk;->c(Lgbsdk/common/host/abnk;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 94
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 95
    :try_start_6
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abnl;

    .line 96
    iget-object v2, p0, Lgbsdk/common/host/abnk$1;->vl:Lgbsdk/common/host/abnk;

    iget-object v3, p0, Lgbsdk/common/host/abnk$1;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-static {v2, v3, v1}, Lgbsdk/common/host/abnk;->a(Lgbsdk/common/host/abnk;Lcom/bytedance/framwork/core/apm/SDKMonitor;Lgbsdk/common/host/abnl;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 94
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_1
    move-exception v1

    .line 85
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_2
    move-exception v1

    .line 76
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    :cond_2
    return-void
.end method
