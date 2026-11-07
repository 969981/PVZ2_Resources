.class public abstract Lgbsdk/optional/applog/aq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public c:I

.field public volatile d:Z

.field public e:J

.field public volatile f:Z

.field public final g:Lgbsdk/optional/applog/abbj;

.field public final h:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abbj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object p1, p1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iput-object p1, p0, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    return-void
.end method

.method public constructor <init>(Lgbsdk/optional/applog/abbj;J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 4
    iget-object p1, p1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 5
    iput-object p1, p0, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 6
    iput-wide p2, p0, Lgbsdk/optional/applog/aq;->e:J

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()J
.end method

.method public abstract c()[J
.end method

.method public abstract d()Z
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public final f()J
    .locals 9

    const-string v0, "failed"

    const-string v1, "The worker:{} worked:{}."

    invoke-virtual {p0}, Lgbsdk/optional/applog/aq;->g()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    .line 1
    iget-object v2, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 2
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lgbsdk/optional/applog/aq;->e()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "The worker:{} start to work..."

    invoke-interface {v2, v5, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0}, Lgbsdk/optional/applog/aq;->d()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lgbsdk/optional/applog/aq;->e:J

    if-eqz v4, :cond_0

    iput v6, p0, Lgbsdk/optional/applog/aq;->c:I

    goto :goto_0

    :cond_0
    iget v5, p0, Lgbsdk/optional/applog/aq;->c:I

    add-int/2addr v5, v3

    iput v5, p0, Lgbsdk/optional/applog/aq;->c:I

    :goto_0
    iget-object v5, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 5
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lgbsdk/optional/applog/aq;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    if-eqz v4, :cond_1

    const-string v0, "success"

    :cond_1
    aput-object v0, v2, v3

    invoke-interface {v5, v1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_1
    iget-object v5, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 8
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 9
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v7, "Work do failed."

    :try_start_2
    new-array v8, v6, [Ljava/lang/Object;

    .line 10
    invoke-interface {v5, v7, v4, v8}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lgbsdk/optional/applog/aq;->e:J

    iget v4, p0, Lgbsdk/optional/applog/aq;->c:I

    add-int/2addr v4, v3

    iput v4, p0, Lgbsdk/optional/applog/aq;->c:I

    iget-object v4, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 11
    iget-object v4, v4, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 12
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lgbsdk/optional/applog/aq;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    aput-object v0, v2, v3

    invoke-interface {v4, v1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0}, Lgbsdk/optional/applog/aq;->g()J

    move-result-wide v2

    goto :goto_2

    :catchall_1
    move-exception v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lgbsdk/optional/applog/aq;->e:J

    iget v5, p0, Lgbsdk/optional/applog/aq;->c:I

    add-int/2addr v5, v3

    iput v5, p0, Lgbsdk/optional/applog/aq;->c:I

    iget-object v5, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 14
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lgbsdk/optional/applog/aq;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    aput-object v0, v2, v3

    invoke-interface {v5, v1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_2
    :goto_2
    return-wide v2
.end method

.method public final g()J
    .locals 4

    invoke-virtual {p0}, Lgbsdk/optional/applog/aq;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abbj;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->n:Lgbsdk/optional/applog/abaa;

    invoke-virtual {v2}, Lgbsdk/optional/applog/abaa;->a()Z

    move-result v2

    .line 2
    invoke-static {v0, v2}, Lgbsdk/optional/applog/abek;->b(Landroid/content/Context;Z)Lgbsdk/optional/applog/abek$ab;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/optional/applog/abek$ab;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lgbsdk/optional/applog/aq;->g:Lgbsdk/optional/applog/abbj;

    .line 4
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Check work time is not net available."

    .line 6
    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    :goto_0
    add-long/2addr v0, v2

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lgbsdk/optional/applog/aq;->d:Z

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    iput-wide v2, p0, Lgbsdk/optional/applog/aq;->e:J

    iput-boolean v1, p0, Lgbsdk/optional/applog/aq;->d:Z

    goto :goto_1

    :cond_1
    iget v0, p0, Lgbsdk/optional/applog/aq;->c:I

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 7
    invoke-virtual {p0}, Lgbsdk/optional/applog/aq;->c()[J

    move-result-object v1

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-wide v2, v1, v0

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lgbsdk/optional/applog/aq;->b()J

    move-result-wide v2

    :goto_1
    iget-wide v0, p0, Lgbsdk/optional/applog/aq;->e:J

    goto :goto_0

    :goto_2
    return-wide v0
.end method
