.class public final Lgbsdk/common/host/abmn;
.super Ljava/lang/Object;
.source "LogQueue.java"


# static fields
.field private static va:Lgbsdk/common/host/abmn;


# instance fields
.field private final b:Landroid/content/Context;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abmm;",
            ">;"
        }
    .end annotation
.end field

.field private final vb:Lgbsdk/common/host/abni;

.field private final vc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final vd:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lgbsdk/common/host/abml;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgbsdk/common/host/abmn;->vc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abmn;->vd:Ljava/util/LinkedList;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abmn;->b:Landroid/content/Context;

    .line 63
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/abmn;->c:Ljava/util/Map;

    .line 64
    new-instance p1, Lgbsdk/common/host/abni;

    iget-object v0, p0, Lgbsdk/common/host/abmn;->b:Landroid/content/Context;

    iget-object v1, p0, Lgbsdk/common/host/abmn;->vd:Ljava/util/LinkedList;

    iget-object v2, p0, Lgbsdk/common/host/abmn;->vc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0, p0, v1, v2}, Lgbsdk/common/host/abni;-><init>(Landroid/content/Context;Lgbsdk/common/host/abmn;Ljava/util/LinkedList;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iput-object p1, p0, Lgbsdk/common/host/abmn;->vb:Lgbsdk/common/host/abni;

    .line 65
    invoke-virtual {p1}, Lgbsdk/common/host/abni;->start()V

    return-void
.end method

.method public static S(Landroid/content/Context;)Lgbsdk/common/host/abmn;
    .locals 2

    .line 21
    sget-object v0, Lgbsdk/common/host/abmn;->va:Lgbsdk/common/host/abmn;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lgbsdk/common/host/abmn;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abmn;->va:Lgbsdk/common/host/abmn;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lgbsdk/common/host/abmn;

    invoke-direct {v1, p0}, Lgbsdk/common/host/abmn;-><init>(Landroid/content/Context;)V

    sput-object v1, Lgbsdk/common/host/abmn;->va:Lgbsdk/common/host/abmn;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 28
    :cond_1
    :goto_0
    sget-object p0, Lgbsdk/common/host/abmn;->va:Lgbsdk/common/host/abmn;

    return-object p0
.end method

.method static a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lgbsdk/common/host/abmm;)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lgbsdk/common/host/abmn;->b()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abmn;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method b()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lgbsdk/common/host/abmn;->vc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;[B)Z
    .locals 3

    .line 91
    invoke-virtual {p0}, Lgbsdk/common/host/abmn;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abmn;->bc(Ljava/lang/String;)Lgbsdk/common/host/abmm;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 99
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/abmn;->vd:Ljava/util/LinkedList;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v2, p0, Lgbsdk/common/host/abmn;->vc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    monitor-exit v0

    return v1

    .line 103
    :cond_2
    iget-object v1, p0, Lgbsdk/common/host/abmn;->vd:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_3

    .line 104
    iget-object v1, p0, Lgbsdk/common/host/abmn;->vd:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 106
    :cond_3
    iget-object v1, p0, Lgbsdk/common/host/abmn;->vd:Ljava/util/LinkedList;

    new-instance v2, Lgbsdk/common/host/abml;

    invoke-direct {v2, p1, p2}, Lgbsdk/common/host/abml;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 107
    iget-object p2, p0, Lgbsdk/common/host/abmn;->vb:Lgbsdk/common/host/abni;

    invoke-virtual {p2}, Lgbsdk/common/host/abni;->a()V

    .line 108
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return v1
.end method

.method bc(Ljava/lang/String;)Lgbsdk/common/host/abmm;
    .locals 1

    .line 83
    iget-object v0, p0, Lgbsdk/common/host/abmn;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbsdk/common/host/abmm;

    return-object p1
.end method
