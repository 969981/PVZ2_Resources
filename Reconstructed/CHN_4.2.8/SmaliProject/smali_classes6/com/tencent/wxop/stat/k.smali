.class final Lcom/tencent/wxop/stat/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic bM:Lcom/tencent/wxop/stat/f;

.field final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/k;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/wxop/stat/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/wxop/stat/k;->bM:Lcom/tencent/wxop/stat/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/k;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/e;->p(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/wxop/stat/e;->M()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/tencent/wxop/stat/e;->M()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wxop/stat/k;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    move-object v6, v0

    invoke-static {}, Lcom/tencent/wxop/stat/e;->O()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/wxop/stat/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "-"

    :cond_1
    move-object v3, v0

    new-instance v0, Lcom/tencent/wxop/stat/a/h;

    iget-object v2, p0, Lcom/tencent/wxop/stat/k;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/wxop/stat/k;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/wxop/stat/k;->bM:Lcom/tencent/wxop/stat/f;

    const/4 v5, 0x0

    invoke-static {v2, v5, v1}, Lcom/tencent/wxop/stat/e;->a(Landroid/content/Context;ZLcom/tencent/wxop/stat/f;)I

    move-result v5

    iget-object v7, p0, Lcom/tencent/wxop/stat/k;->bM:Lcom/tencent/wxop/stat/f;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/tencent/wxop/stat/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Lcom/tencent/wxop/stat/f;)V

    iget-object v1, p0, Lcom/tencent/wxop/stat/k;->b:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wxop/stat/e;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/tencent/wxop/stat/e;->K()Lcom/tencent/wxop/stat/b/b;

    move-result-object v1

    const-string v2, "Invalid invocation since previous onResume on diff page."

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/b/b;->warn(Ljava/lang/Object;)V

    :cond_2
    new-instance v1, Lcom/tencent/wxop/stat/p;

    invoke-direct {v1, v0}, Lcom/tencent/wxop/stat/p;-><init>(Lcom/tencent/wxop/stat/a/d;)V

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/p;->ah()V

    iget-object v0, p0, Lcom/tencent/wxop/stat/k;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wxop/stat/e;->r(Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_3
    invoke-static {}, Lcom/tencent/wxop/stat/e;->K()Lcom/tencent/wxop/stat/b/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starttime for PageID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wxop/stat/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found, lost onResume()?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/b;->d(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/tencent/wxop/stat/e;->K()Lcom/tencent/wxop/stat/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/tencent/wxop/stat/k;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/wxop/stat/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method
