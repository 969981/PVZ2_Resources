.class public final Lct/t;
.super Ljava/lang/Object;


# static fields
.field private static b:Lct/t;


# instance fields
.field public a:Lct/u;

.field private c:Lct/s;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lct/v;->a()Lct/v;

    move-result-object v0

    iput-object v0, p0, Lct/t;->a:Lct/u;

    invoke-direct {p0}, Lct/t;->b()V

    return-void
.end method

.method public static declared-synchronized a()Lct/t;
    .locals 2

    const-class v0, Lct/t;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lct/t;->b:Lct/t;

    if-nez v1, :cond_0

    new-instance v1, Lct/t;

    invoke-direct {v1}, Lct/t;-><init>()V

    sput-object v1, Lct/t;->b:Lct/t;

    :cond_0
    sget-object v1, Lct/t;->b:Lct/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lct/aw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lct/ax;->b()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lct/t;->c:Lct/s;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lct/t;->c:Lct/s;

    iget-object v1, v1, Lct/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lct/ax;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_1
    iget-object v1, p0, Lct/t;->a:Lct/u;

    invoke-interface {v1, v0}, Lct/u;->a(Ljava/lang/String;)Lct/s;

    move-result-object v0

    iput-object v0, p0, Lct/t;->c:Lct/s;

    if-eqz v0, :cond_3

    invoke-static {}, Lct/ax;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    invoke-static {}, Lct/ax;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    :try_start_3
    invoke-static {}, Lct/ax;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lct/s$a;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lct/t;->b()V

    iget-object v0, p0, Lct/t;->c:Lct/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/t;->c:Lct/s;

    iget-object v0, v0, Lct/s;->a:Ljava/lang/String;

    invoke-static {}, Lct/aw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/t;->c:Lct/s;

    iget-object v0, v0, Lct/s;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lct/s$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lct/s;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lct/ax;->c()V

    if-nez p1, :cond_0

    invoke-static {}, Lct/ax;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lct/t;->c:Lct/s;

    iget-object v0, p0, Lct/t;->a:Lct/u;

    invoke-interface {v0, p1}, Lct/u;->a(Lct/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/Set;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lct/ax;->c()V

    invoke-direct {p0}, Lct/t;->b()V

    iget-object v0, p0, Lct/t;->c:Lct/s;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lct/ax;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lct/t;->c:Lct/s;

    iget-object v0, v0, Lct/s;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-static {}, Lct/ax;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    invoke-static {}, Lct/ax;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    :try_start_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lct/s$a;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lct/s$a;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_4
    invoke-static {}, Lct/ax;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :cond_5
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
