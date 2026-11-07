.class public Lcom/alipay/sdk/m/m/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/m/m/a$b;,
        Lcom/alipay/sdk/m/m/a$c;,
        Lcom/alipay/sdk/m/m/a$d;,
        Lcom/alipay/sdk/m/m/a$f;,
        Lcom/alipay/sdk/m/m/a$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/alipay/sdk/m/m/a;

    monitor-enter v0

    .line 21
    :try_start_0
    invoke-static {p0}, Lcom/alipay/sdk/m/m/a$c;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/alipay/sdk/m/m/a;

    monitor-enter v0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v1, "mspl"

    const-string v2, "StatisticManager stash start"

    .line 1
    invoke-static {v1, v2}, Lcom/alipay/sdk/m/y/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/m/o/b;->h(Lcom/alipay/sdk/m/w/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Lcom/alipay/sdk/m/m/a$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/sdk/m/m/a$a;-><init>(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/sdk/m/q/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 15
    :cond_1
    :try_start_1
    iget-object p1, p1, Lcom/alipay/sdk/m/w/a;->n:Lcom/alipay/sdk/m/m/b;

    invoke-virtual {p1, p2}, Lcom/alipay/sdk/m/m/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/alipay/sdk/m/m/a$b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 17
    :try_start_2
    invoke-static {p0}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    :goto_0
    const-string p0, "mspl"

    const-string p1, "StatisticManager stash finish"

    .line 20
    invoke-static {p0, p1}, Lcom/alipay/sdk/m/y/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    :goto_1
    monitor-exit v0

    return-void
.end method

.method public static a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/alipay/sdk/m/w/a;->n:Lcom/alipay/sdk/m/m/b;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/sdk/m/m/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/alipay/sdk/m/w/a;->n:Lcom/alipay/sdk/m/m/b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/sdk/m/m/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/alipay/sdk/m/w/a;->n:Lcom/alipay/sdk/m/m/b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/sdk/m/m/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/alipay/sdk/m/w/a;->n:Lcom/alipay/sdk/m/m/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/sdk/m/m/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 22
    iget-object p0, p0, Lcom/alipay/sdk/m/w/a;->n:Lcom/alipay/sdk/m/m/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alipay/sdk/m/m/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/alipay/sdk/m/m/a;

    monitor-enter v0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/alipay/sdk/m/w/a;->n:Lcom/alipay/sdk/m/m/b;

    invoke-static {p0, p1, p2, p3}, Lcom/alipay/sdk/m/m/a$c;->a(Landroid/content/Context;Lcom/alipay/sdk/m/m/b;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static b(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/alipay/sdk/m/w/a;->n:Lcom/alipay/sdk/m/m/b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/sdk/m/m/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
