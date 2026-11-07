.class public abstract Lgbsdk/common/host/ao;
.super Ljava/lang/Object;
.source "BaseWorker.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final an:Lgbsdk/common/host/ap;

.field public b:I

.field public volatile c:Z

.field public d:J

.field public e:Z


# direct methods
.method public constructor <init>(Lgbsdk/common/host/ap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    return-void
.end method

.method public constructor <init>(Lgbsdk/common/host/ap;J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 5
    iput-wide p2, p0, Lgbsdk/common/host/ao;->d:J

    return-void
.end method


# virtual methods
.method public abstract B()[J
.end method

.method public C()Lgbsdk/common/host/ao;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lgbsdk/common/host/ao;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/ao;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "fd9f209d50c6041e84dfe3594e73fd33"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/ao;

    return-object v0

    :cond_0
    const-string v0, "setImmediately, "

    .line 1
    invoke-static {v0}, Lgbsdk/common/host/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgbsdk/common/host/ao;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lgbsdk/common/host/ao;->c:Z

    return-object p0
.end method

.method public final a()J
    .locals 7

    const-string v0, " worked:"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lgbsdk/common/host/ao;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "d6a93bb10663334c7865b4249836b059"

    invoke-static {v2, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lgbsdk/common/host/ao;->b()J

    move-result-wide v2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lgbsdk/common/host/ao;->c()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lgbsdk/common/host/ao;->d:J

    if-eqz v3, :cond_1

    .line 9
    iput v1, p0, Lgbsdk/common/host/ao;->b:I

    goto :goto_0

    .line 11
    :cond_1
    iget v1, p0, Lgbsdk/common/host/ao;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgbsdk/common/host/ao;->b:I

    .line 13
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgbsdk/common/host/ao;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    .line 14
    :try_start_1
    invoke-static {v3}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lgbsdk/common/host/ao;->d:J

    .line 20
    iget v3, p0, Lgbsdk/common/host/ao;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgbsdk/common/host/ao;->b:I

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgbsdk/common/host/ao;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_1
    invoke-static {v0, v2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    invoke-virtual {p0}, Lgbsdk/common/host/ao;->b()J

    move-result-wide v2

    goto :goto_3

    .line 25
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lgbsdk/common/host/ao;->d:J

    .line 29
    iget v4, p0, Lgbsdk/common/host/ao;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lgbsdk/common/host/ao;->b:I

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgbsdk/common/host/ao;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0, v2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    throw v3

    :cond_2
    :goto_3
    return-wide v2
.end method

.method public final b()J
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/ao;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "50a6ecd1227ccefed6f92f17ca7fb23d"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 1
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 2
    iget-object v1, v1, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lgbsdk/common/host/av;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lgbsdk/common/host/ao;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-wide v0, p0, Lgbsdk/common/host/ao;->d:J

    invoke-virtual {p0}, Lgbsdk/common/host/ao;->h()J

    move-result-wide v2

    add-long/2addr v2, v0

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lgbsdk/common/host/ao;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 6
    iget-object v1, v1, Lgbsdk/common/host/ap;->ap:Landroid/app/Application;

    .line 7
    invoke-static {v1}, Lcom/bytedance/apm/common/utility/NetworkUtils;->isNetworkAvailableFast(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    :goto_0
    add-long/2addr v2, v0

    goto :goto_2

    .line 11
    :cond_2
    iget-boolean v1, p0, Lgbsdk/common/host/ao;->c:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    .line 12
    iput-wide v2, p0, Lgbsdk/common/host/ao;->d:J

    .line 13
    iput-boolean v0, p0, Lgbsdk/common/host/ao;->c:Z

    goto :goto_1

    .line 14
    :cond_3
    iget v0, p0, Lgbsdk/common/host/ao;->b:I

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    .line 15
    invoke-virtual {p0}, Lgbsdk/common/host/ao;->B()[J

    move-result-object v1

    .line 16
    array-length v2, v1

    rem-int/2addr v0, v2

    aget-wide v2, v1, v0

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p0}, Lgbsdk/common/host/ao;->h()J

    move-result-wide v2

    .line 19
    :goto_1
    iget-wide v0, p0, Lgbsdk/common/host/ao;->d:J

    goto :goto_0

    :goto_2
    return-wide v2
.end method

.method public abstract c()Z
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract g()Z
.end method

.method public abstract h()J
.end method
