.class public abstract Lcom/heepay/plugin/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "c"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/heepay/plugin/c/c;->a:Ljava/util/Set;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/heepay/plugin/c/c;->b:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method protected final declared-synchronized a(Ljava/lang/String;I)Z
    .locals 0

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    sget-object p2, Lcom/heepay/plugin/c/b;->a:Lcom/heepay/plugin/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/heepay/plugin/c/c;->a(Ljava/lang/String;Lcom/heepay/plugin/c/b;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    sget-object p2, Lcom/heepay/plugin/c/b;->b:Lcom/heepay/plugin/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/heepay/plugin/c/c;->a(Ljava/lang/String;Lcom/heepay/plugin/c/b;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized a(Ljava/lang/String;Lcom/heepay/plugin/c/b;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/heepay/plugin/c/c;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/heepay/plugin/c/b;->a:Lcom/heepay/plugin/c/b;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lcom/heepay/plugin/c/c;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/heepay/plugin/c/c;->b:Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/heepay/plugin/c/c$a;

    invoke-direct {p2, p0}, Lcom/heepay/plugin/c/c$a;-><init>(Lcom/heepay/plugin/c/c;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    sget-object v0, Lcom/heepay/plugin/c/b;->b:Lcom/heepay/plugin/c/b;

    if-ne p2, v0, :cond_1

    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/heepay/plugin/c/c;->b:Landroid/os/Looper;

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/heepay/plugin/c/c$b;

    invoke-direct {v0, p0, p1}, Lcom/heepay/plugin/c/c$b;-><init>(Lcom/heepay/plugin/c/c;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    sget-object v0, Lcom/heepay/plugin/c/b;->c:Lcom/heepay/plugin/c/b;

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/heepay/plugin/c/c;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/heepay/plugin/c/c;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/heepay/plugin/c/c;->b:Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/heepay/plugin/c/c$c;

    invoke-direct {p2, p0}, Lcom/heepay/plugin/c/c$c;-><init>(Lcom/heepay/plugin/c/c;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    :try_start_3
    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/heepay/plugin/c/c;->b:Landroid/os/Looper;

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/heepay/plugin/c/c$d;

    invoke-direct {v0, p0, p1}, Lcom/heepay/plugin/c/c$d;-><init>(Lcom/heepay/plugin/c/c;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :cond_3
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/heepay/plugin/c/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heepay/plugin/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
