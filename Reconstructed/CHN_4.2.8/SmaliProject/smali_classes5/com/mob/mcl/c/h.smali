.class public Lcom/mob/mcl/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/mcl/c/d;


# static fields
.field private static volatile m:Lcom/mob/mcl/c/h;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/util/concurrent/atomic/AtomicLong;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:J

.field public l:Z

.field private n:Lcom/mob/tools/network/NetworkHelper;

.field private o:Lcom/mob/tools/utils/Hashon;

.field private p:Lcom/mob/mcl/c/f;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Landroid/content/Context;

.field private t:Lcom/mob/mcl/MobMCL$ELPMessageListener;

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Lcom/mob/mcl/BusinessMessageListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:Lcom/mob/mcl/d/c;

.field private x:Lcom/mob/mgs/OnIdChangeListener;

.field private y:I

.field private z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v0, 0x10e

    .line 78
    iput v0, p0, Lcom/mob/mcl/c/h;->e:I

    const/4 v0, 0x1

    .line 101
    iput v0, p0, Lcom/mob/mcl/c/h;->y:I

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "tpHelper init"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/mob/mcl/c/f;

    invoke-direct {v0, p0}, Lcom/mob/mcl/c/f;-><init>(Lcom/mob/mcl/c/d;)V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    .line 126
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->n:Lcom/mob/tools/network/NetworkHelper;

    .line 127
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->u:Ljava/util/HashMap;

    .line 129
    new-instance v0, Lcom/mob/mcl/d/c;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/mcl/d/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->w:Lcom/mob/mcl/d/c;

    .line 136
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mcl/c/h;->s:Landroid/content/Context;

    return-void
.end method

.method public static a(Ljava/util/HashMap;Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 835
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 837
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 838
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private a(J)V
    .locals 4

    const-string v0, "tp sd ty = "

    .line 311
    iget-object v1, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    if-eqz v1, :cond_0

    .line 313
    :try_start_0
    new-instance v1, Lcom/mob/mcl/c/e;

    const/16 v2, 0x3ed

    invoke-direct {v1, v2}, Lcom/mob/mcl/c/e;-><init>(I)V

    .line 314
    iput-wide p1, v1, Lcom/mob/mcl/c/e;->c:J

    .line 315
    iget-object v2, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    invoke-virtual {v2, v1}, Lcom/mob/mcl/c/f;->a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;

    .line 316
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Lcom/mob/mcl/c/e;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " , u = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " bo : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 318
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(JZ)V
    .locals 4

    const-string v0, "tp sd ty = "

    .line 294
    iget-object v1, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    if-eqz v1, :cond_0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/mob/mcl/c/h;->b(J)Ljava/lang/String;

    move-result-object v1

    .line 297
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 298
    const-string v3, "state"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object p3, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p3, v2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p3

    .line 300
    new-instance v2, Lcom/mob/mcl/c/e;

    invoke-direct {p0, v1, p3}, Lcom/mob/mcl/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3ee

    invoke-direct {v2, v3, v1}, Lcom/mob/mcl/c/e;-><init>(ILjava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v2, Lcom/mob/mcl/c/e;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " , u = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bo : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 302
    iput-wide p1, v2, Lcom/mob/mcl/c/e;->c:J

    .line 303
    iget-object p1, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    invoke-virtual {p1, v2}, Lcom/mob/mcl/c/f;->a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 305
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mob/mcl/c/h;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->m()V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;I)Z
    .locals 4

    monitor-enter p0

    if-eqz p2, :cond_1

    .line 717
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/mob/mcl/c/h;->w:Lcom/mob/mcl/d/c;

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 720
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 723
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 724
    iget-object p2, p0, Lcom/mob/mcl/c/h;->w:Lcom/mob/mcl/d/c;

    invoke-virtual {p2, p1, v0, v1}, Lcom/mob/mcl/d/c;->a(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 726
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 484
    const-string v0, "determineDomain"

    const-string v1, "uniqueKey"

    const-string v2, "uniqueId"

    const-string v3, "domains"

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/mob/mcl/c/h;->l:Z

    .line 485
    invoke-direct {p0, p1}, Lcom/mob/mcl/c/h;->b(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 486
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 487
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    .line 488
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mob/mcl/c/h;->a:J

    .line 489
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mob/mcl/c/h;->b:Ljava/lang/String;

    .line 490
    const-string v1, "tick"

    iget v2, p0, Lcom/mob/mcl/c/h;->e:I

    invoke-static {p1, v1, v2}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mob/mcl/c/h;->e:I

    .line 491
    const-string v1, "globalSwitch"

    invoke-static {p1, v1, v4}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/mob/mcl/c/h;->f:Z

    .line 492
    const-string v1, "connectSwitch"

    invoke-static {p1, v1, v4}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/mob/mcl/c/h;->g:Z

    .line 493
    const-string v1, "forwardSwitch"

    invoke-static {p1, v1, v4}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/mob/mcl/c/h;->h:Z

    .line 494
    const-string v1, "bindRequestSwitch"

    invoke-static {p1, v1, v4}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    iput-boolean v1, p0, Lcom/mob/mcl/c/h;->i:Z

    .line 495
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 496
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 497
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 500
    iget-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    .line 503
    :cond_4
    iget-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 504
    iget-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 507
    :cond_5
    iget-object p1, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/mob/mcl/c/h;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_6

    return v2

    :catchall_0
    move-exception p1

    .line 512
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_6
    return v4
.end method

.method private declared-synchronized a(ZLjava/lang/String;ILjava/lang/String;I)Z
    .locals 10

    const-string v0, "tcp register exp : "

    const-string v1, "tp rg domain : "

    monitor-enter p0

    const/4 v2, 0x0

    .line 530
    :try_start_0
    iget-object v3, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p3, v3, :cond_3

    const/4 v3, 0x3

    if-ge p3, v3, :cond_3

    .line 531
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " count : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    .line 533
    :try_start_1
    invoke-virtual {p0, p2, p4, p5}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 535
    const-string v4, "type"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 536
    const-string v4, "type"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 537
    const-string v5, "token"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 538
    iget-object v3, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v4, "token"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 539
    invoke-static {}, Lcom/mob/mcl/c/b;->a()Lcom/mob/mcl/c/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/mcl/c/b;->b()V

    .line 540
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    const-string v3, "tcp register success"

    invoke-virtual {p2, v3}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 541
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    monitor-exit p0

    return v1

    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 543
    :try_start_2
    const-string v5, "domain"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 544
    const-string v3, "domain"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    .line 545
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 v4, 0x1

    const/4 v6, 0x2

    move-object v3, p0

    move-object v7, p4

    move v8, p5

    .line 546
    invoke-direct/range {v3 .. v8}, Lcom/mob/mcl/c/h;->a(ZLjava/lang/String;ILjava/lang/String;I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    if-ne v4, v3, :cond_2

    .line 549
    :try_start_3
    iput-boolean v1, p0, Lcom/mob/mcl/c/h;->v:Z

    .line 550
    iget-object p2, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    invoke-virtual {p2}, Lcom/mob/mcl/c/f;->a()V

    .line 551
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 552
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p2

    .line 557
    :try_start_4
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v7, p3, 0x1

    .line 559
    iget-object p2, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v7, p2, :cond_3

    if-nez p1, :cond_3

    .line 560
    iget-object p1, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, p0

    move-object v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/mob/mcl/c/h;->a(ZLjava/lang/String;ILjava/lang/String;I)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return p1

    :cond_3
    const/4 p1, 0x0

    .line 564
    :try_start_5
    invoke-static {p1}, Lcom/mob/mcl/d/d;->a(Ljava/lang/String;)V

    .line 565
    iput-object p1, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 567
    :try_start_6
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 569
    :goto_0
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->o()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 570
    monitor-exit p0

    return v2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static b()Lcom/mob/mcl/c/h;
    .locals 2

    .line 109
    sget-object v0, Lcom/mob/mcl/c/h;->m:Lcom/mob/mcl/c/h;

    if-nez v0, :cond_1

    .line 110
    const-class v0, Lcom/mob/mcl/c/h;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/mob/mcl/c/h;->m:Lcom/mob/mcl/c/h;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/mob/mcl/c/h;

    invoke-direct {v1}, Lcom/mob/mcl/c/h;-><init>()V

    sput-object v1, Lcom/mob/mcl/c/h;->m:Lcom/mob/mcl/c/h;

    .line 114
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 116
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/mcl/c/h;->m:Lcom/mob/mcl/c/h;

    return-object v0
.end method

.method private b(J)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 800
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%16s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    const-string v0, "0"

    .line 801
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    .line 802
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 821
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 823
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 824
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 825
    iget-object v1, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/mcl/c/h;->b(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 828
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method private b(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 812
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 813
    const-string v1, "code"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 814
    const-string v1, "data"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 815
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1

    :cond_0
    return-object v0
.end method

.method private b(JZ)V
    .locals 4

    const-string v0, "tp sd ty = "

    .line 324
    iget-object v1, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    if-eqz v1, :cond_0

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/mob/mcl/c/h;->b(J)Ljava/lang/String;

    move-result-object v1

    .line 327
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 328
    const-string v3, "repeat"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object p3, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p3, v2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p3

    .line 330
    new-instance v2, Lcom/mob/mcl/c/e;

    invoke-direct {p0, v1, p3}, Lcom/mob/mcl/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3ef

    invoke-direct {v2, v3, v1}, Lcom/mob/mcl/c/e;-><init>(ILjava/lang/String;)V

    .line 331
    iput-wide p1, v2, Lcom/mob/mcl/c/e;->c:J

    .line 332
    iget-object v1, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    invoke-virtual {v1, v2}, Lcom/mob/mcl/c/f;->a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;

    .line 333
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v2, Lcom/mob/mcl/c/e;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , u = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " bo : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 335
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 795
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x2

    .line 796
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private k()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mob/mcl/c/h;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/mcl/c/h;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 4

    .line 574
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 575
    const-string v1, "appkey"

    iget-object v2, p0, Lcom/mob/mcl/c/h;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v1, p0, Lcom/mob/mcl/c/h;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apppkg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 577
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v1, "pushId"

    invoke-direct {p0}, Lcom/mob/mcl/c/h;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v1, "guardId"

    iget-object v2, p0, Lcom/mob/mcl/c/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/mob/mcl/c/h;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/mcl/c/h;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 582
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 583
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 584
    const-string v2, "mob_id_ver"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 586
    const-string v2, "version"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 590
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 592
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 1

    .line 846
    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 849
    :cond_0
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->n()V

    return-void
.end method

.method private n()V
    .locals 2

    .line 853
    sget-object v0, Lcom/mob/mcl/b/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mob/mcl/c/h$6;

    invoke-direct {v1, p0}, Lcom/mob/mcl/c/h$6;-><init>(Lcom/mob/mcl/c/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private o()V
    .locals 3

    .line 916
    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mgs/impl/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/h;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mgs/impl/f;->c()Ljava/lang/String;

    move-result-object v0

    .line 918
    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mgs/impl/f;->e()Ljava/lang/String;

    move-result-object v1

    .line 919
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/mob/mcl/c/h;->t:Lcom/mob/mcl/MobMCL$ELPMessageListener;

    if-eqz v0, :cond_1

    .line 706
    const-string v0, "expire"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 707
    const-string v1, "workId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 708
    invoke-direct {p0, v1, v0}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/mob/mcl/c/h;->t:Lcom/mob/mcl/MobMCL$ELPMessageListener;

    invoke-interface {v0, p1}, Lcom/mob/mcl/MobMCL$ELPMessageListener;->messageReceived(Landroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x2

    .line 790
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 791
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, " tp rp : "

    const-string v1, "tp sd ty = "

    .line 267
    iget-object v2, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    if-eqz v2, :cond_2

    .line 269
    :try_start_0
    iget-object v2, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/mob/mcl/c/h;->b(J)Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " , bo = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " , out = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 272
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    new-instance p3, Lcom/mob/mcl/c/e;

    invoke-direct {p3, p1}, Lcom/mob/mcl/c/e;-><init>(I)V

    goto :goto_0

    .line 275
    :cond_0
    new-instance v1, Lcom/mob/mcl/c/e;

    invoke-direct {p0, v2, p3}, Lcom/mob/mcl/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p1, p3}, Lcom/mob/mcl/c/e;-><init>(ILjava/lang/String;)V

    move-object p3, v1

    .line 277
    :goto_0
    iget-object p1, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    invoke-virtual {p1, p3}, Lcom/mob/mcl/c/f;->a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;

    move-result-object p1

    int-to-long p2, p2

    .line 279
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v1}, Lcom/mob/mcl/c/c;->a(JLjava/util/concurrent/TimeUnit;)Lcom/mob/mcl/c/e;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 280
    iget p2, p1, Lcom/mob/mcl/c/e;->b:I

    const/16 p3, 0x3e8

    if-ne p2, p3, :cond_1

    .line 281
    iget-object p2, p1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {p0, v2, p2}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    .line 282
    iget-object p1, p1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    .line 284
    :cond_1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 287
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILjava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2710

    .line 263
    invoke-virtual {p0, p1, v0, p2}, Lcom/mob/mcl/c/h;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    if-eqz v0, :cond_1

    .line 243
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tp rg main = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , bo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , out = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 244
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 245
    iget-object v0, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x1388

    invoke-virtual {v0, v1, v3, v3, p1}, Lcom/mob/mcl/c/f;->a(Ljava/net/SocketAddress;ZZI)V

    .line 246
    iget-object p1, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 247
    new-instance p1, Lcom/mob/mcl/c/e;

    iget-object v0, p0, Lcom/mob/mcl/c/h;->b:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/mob/mcl/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x3e9

    invoke-direct {p1, v0, p2}, Lcom/mob/mcl/c/e;-><init>(ILjava/lang/String;)V

    .line 248
    iget-wide v0, p0, Lcom/mob/mcl/c/h;->a:J

    iput-wide v0, p1, Lcom/mob/mcl/c/e;->c:J

    .line 249
    iget-object p2, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    invoke-virtual {p2, p1}, Lcom/mob/mcl/c/f;->a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;

    move-result-object p1

    int-to-long p2, p3

    .line 251
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Lcom/mob/mcl/c/c;->a(JLjava/util/concurrent/TimeUnit;)Lcom/mob/mcl/c/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 252
    iget p2, p1, Lcom/mob/mcl/c/e;->b:I

    const/16 p3, 0x3e8

    if-ne p2, p3, :cond_0

    .line 253
    iget-object p2, p0, Lcom/mob/mcl/c/h;->b:Ljava/lang/String;

    iget-object p3, p1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    .line 254
    iget-object p1, p1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    .line 256
    :cond_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "tp rp : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILcom/mob/mcl/BusinessMessageListener;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    const-string v1, "tpHelper addBMListener: remove key = "

    const-string v2, "tpHelper addBMListener: bisType = "

    .line 153
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v2, p1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 155
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 158
    iget-object v0, v7, Lcom/mob/mcl/c/h;->u:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 161
    :cond_0
    iget-object v1, v7, Lcom/mob/mcl/c/h;->u:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, v7, Lcom/mob/mcl/c/h;->u:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    :goto_0
    move-object v9, v1

    goto :goto_1

    .line 164
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 165
    iget-object v2, v7, Lcom/mob/mcl/c/h;->u:Ljava/util/HashMap;

    invoke-virtual {v2, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    :goto_1
    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-static {}, Lcom/mob/mcl/c/g;->a()Lcom/mob/mcl/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/g;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 171
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "tpHelper addBMListener: has cached msg"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/mob/mcl/c/g;->a()Lcom/mob/mcl/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/g;->c()Ljava/util/List;

    move-result-object v0

    .line 173
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/Map;

    .line 175
    const-string v1, "bisType"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v12, 0x0

    if-eqz v1, :cond_2

    .line 178
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v13, v1

    goto :goto_3

    :cond_2
    move v13, v12

    .line 180
    :goto_3
    const-string v1, "workId"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    .line 181
    const-string v1, "json"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    .line 182
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tpHelper addBMListener: cachedBisType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", target bisType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v13, v1, :cond_4

    .line 184
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 185
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/mob/mcl/BusinessMessageListener;

    .line 188
    new-instance v6, Lcom/mob/mcl/c/h$1;

    move-object v1, v6

    move-object/from16 v2, p0

    move v4, v13

    move-object v5, v14

    move-object/from16 p1, v0

    move-object v0, v6

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/mob/mcl/c/h$1;-><init>(Lcom/mob/mcl/c/h;Lcom/mob/mcl/BusinessMessageListener;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    move-object/from16 v0, p1

    goto :goto_4

    :cond_3
    move-object/from16 p1, v0

    .line 201
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tpHelper addBMListener: mark msg to rm. msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 202
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    move-object/from16 p1, v0

    :goto_5
    move-object/from16 v0, p1

    goto/16 :goto_2

    .line 206
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 207
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 208
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tpHelper addBMListener: rm msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/mob/mcl/c/g;->a()Lcom/mob/mcl/c/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/mcl/c/g;->b(Ljava/util/Map;)V

    goto :goto_6

    .line 213
    :cond_6
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "tpHelper addBMListener: no cached msg"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 216
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    const-string v2, "tpHelper addBMListener: error"

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_7
    :goto_7
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/mob/mcl/c/h;->s:Landroid/content/Context;

    .line 223
    iput-object p2, p0, Lcom/mob/mcl/c/h;->q:Ljava/lang/String;

    .line 224
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 225
    iput-object p3, p0, Lcom/mob/mcl/c/h;->r:Ljava/lang/String;

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->h()V

    .line 228
    invoke-static {p1}, Lcom/mob/tools/utils/ActivityTracker;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/ActivityTracker;

    move-result-object p1

    new-instance p2, Lcom/mob/mcl/c/h$2;

    invoke-direct {p2, p0}, Lcom/mob/mcl/c/h$2;-><init>(Lcom/mob/mcl/c/h;)V

    invoke-static {p2}, Lcom/mob/mcl/a;->a(Lcom/mob/mcl/a$a;)Lcom/mob/tools/utils/ActivityTracker$Tracker;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mob/tools/utils/ActivityTracker;->addTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V

    .line 238
    iget-object p1, p0, Lcom/mob/mcl/c/h;->w:Lcom/mob/mcl/d/c;

    invoke-virtual {p1}, Lcom/mob/mcl/d/c;->a()V

    return-void
.end method

.method public a(Lcom/mob/mcl/BusinessCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/mcl/BusinessCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 360
    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    if-eqz p1, :cond_0

    .line 362
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/mob/mcl/BusinessCallBack;->callback(Ljava/lang/Object;)V

    :cond_0
    if-nez v0, :cond_1

    .line 365
    sget-object p1, Lcom/mob/mcl/b/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/mob/mcl/c/h$3;

    invoke-direct {v0, p0}, Lcom/mob/mcl/c/h$3;-><init>(Lcom/mob/mcl/c/h;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/mob/mcl/MobMCL$ELPMessageListener;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/mob/mcl/c/h;->t:Lcom/mob/mcl/MobMCL$ELPMessageListener;

    return-void
.end method

.method public a(Lcom/mob/mcl/c/a;)V
    .locals 1

    .line 778
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    const-string v0, "sessionOpened"

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/mob/mcl/c/a;Lcom/mob/mcl/c/e;)V
    .locals 14

    move-object v8, p0

    move-object/from16 v0, p2

    .line 631
    const-string v1, "targetPackage"

    const-string v2, "workId"

    const-string v3, "expire"

    .line 0
    const-string v4, " tp mg ty: "

    const-string v5, " tcp msg push msgType: "

    .line 631
    :try_start_0
    iget-object v6, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    .line 634
    :cond_0
    iget-object v6, v8, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v9, 0x0

    cmp-long v6, v6, v9

    if-nez v6, :cond_1

    .line 635
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "tcp received push msg, but send token is 0"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void

    .line 638
    :cond_1
    iget-object v6, v8, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/mob/mcl/c/h;->b(J)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    .line 639
    iget v6, v0, Lcom/mob/mcl/c/e;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v7, 0x2329

    const-string v9, "uniqueId"

    const/4 v10, 0x0

    const-string v11, "data"

    const/4 v12, 0x1

    if-ne v6, v7, :cond_7

    .line 640
    :try_start_1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/mob/mcl/c/e;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " body = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 641
    iget-wide v4, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v4, v5}, Lcom/mob/mcl/c/h;->a(J)V

    .line 642
    iget-object v1, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 643
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 644
    invoke-static {v1, v3, v10}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v5

    .line 645
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 646
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 647
    const-string v6, "needRepeat"

    invoke-static {v1, v6, v10}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v12, :cond_2

    move v13, v12

    goto :goto_0

    :cond_2
    move v13, v10

    .line 648
    :goto_0
    const-string v6, "type"

    invoke-static {v1, v6, v10}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v12, :cond_4

    const/4 v1, 0x2

    if-ne v6, v1, :cond_3

    goto :goto_1

    .line 662
    :cond_3
    iget-wide v2, v0, Lcom/mob/mcl/c/e;->c:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/mob/mcl/c/h;->a(JLjava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v13, :cond_a

    .line 664
    iget-wide v2, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v2, v3, v1}, Lcom/mob/mcl/c/h;->b(JZ)V

    goto/16 :goto_2

    .line 650
    :cond_4
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 651
    invoke-virtual {v1, v11, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 653
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-wide v2, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-virtual {v1, v9, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 655
    const-string v2, "msgType"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 656
    invoke-virtual {p0, v1}, Lcom/mob/mcl/c/h;->a(Landroid/os/Bundle;)I

    move-result v1

    if-ne v1, v12, :cond_5

    move v10, v12

    :cond_5
    if-eqz v13, :cond_6

    .line 658
    iget-wide v0, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v0, v1, v10}, Lcom/mob/mcl/c/h;->b(JZ)V

    :cond_6
    return-void

    .line 669
    :cond_7
    iget v2, v0, Lcom/mob/mcl/c/e;->b:I

    const/16 v3, 0x232a

    if-ne v2, v3, :cond_8

    .line 670
    iget-object v0, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 671
    const-string v1, "domain"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 672
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 673
    iput-boolean v12, v8, Lcom/mob/mcl/c/h;->l:Z

    .line 674
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->l()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1388

    const/4 v2, 0x1

    const/4 v4, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mob/mcl/c/h;->a(ZLjava/lang/String;ILjava/lang/String;I)Z

    goto/16 :goto_2

    .line 676
    :cond_8
    iget v2, v0, Lcom/mob/mcl/c/e;->b:I

    const/16 v3, 0x232c

    if-ne v2, v3, :cond_a

    .line 677
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/mob/mcl/c/e;->b:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 678
    iget-wide v4, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v4, v5}, Lcom/mob/mcl/c/h;->a(J)V

    .line 679
    iget-object v2, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 680
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 681
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 682
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 683
    const-string v5, "logicTimeout"

    const/16 v6, 0x3e8

    invoke-static {v2, v5, v6}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v2

    .line 684
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 685
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 686
    invoke-virtual {v5, v11, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-wide v6, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 688
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v4

    invoke-virtual {v4, v3, v5, v1, v2}, Lcom/mob/mcl/a/a;->a(ILandroid/os/Bundle;Ljava/lang/String;I)Lcom/mob/apc/a;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 690
    iget-object v1, v1, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    .line 691
    iget-wide v0, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v0, v1, v12}, Lcom/mob/mcl/c/h;->a(JZ)V

    goto :goto_2

    .line 693
    :cond_9
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    const-string v2, "apc fw rp mg is null"

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 694
    iget-wide v0, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v0, v1, v10}, Lcom/mob/mcl/c/h;->a(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 700
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public a(Lcom/mob/mcl/c/a;Ljava/lang/Throwable;)V
    .locals 2

    .line 773
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exceptionCaught : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/mob/mcl/c/a;Z)V
    .locals 2

    .line 783
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sc "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 785
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->n()V

    :cond_0
    return-void
.end method

.method public a(Lcom/mob/mgs/OnIdChangeListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/mob/mcl/c/h;->x:Lcom/mob/mgs/OnIdChangeListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/mob/mcl/c/h;->w:Lcom/mob/mcl/d/c;

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;J)V
    .locals 2

    monitor-enter p0

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/c/h;->x:Lcom/mob/mgs/OnIdChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/h;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/mob/mcl/c/h;->x:Lcom/mob/mgs/OnIdChangeListener;

    iget-object v1, p0, Lcom/mob/mcl/c/h;->j:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/mob/mgs/OnIdChangeListener;->onChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_0
    iput-object p1, p0, Lcom/mob/mcl/c/h;->j:Ljava/lang/String;

    .line 615
    iput-wide p2, p0, Lcom/mob/mcl/c/h;->k:J

    .line 616
    invoke-static {p1}, Lcom/mob/mcl/d/d;->b(Ljava/lang/String;)V

    .line 617
    iget-wide p1, p0, Lcom/mob/mcl/c/h;->k:J

    invoke-static {p1, p2}, Lcom/mob/mcl/d/d;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public declared-synchronized a(I)Z
    .locals 8

    monitor-enter p0

    .line 522
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 523
    iget-boolean v3, p0, Lcom/mob/mcl/c/h;->l:Z

    iget-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0}, Lcom/mob/mcl/c/h;->l()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/mob/mcl/c/h;->a(ZLjava/lang/String;ILjava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 525
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(II)Z
    .locals 2

    const/4 v0, 0x4

    if-ge p2, v0, :cond_3

    const/16 v0, 0x3ea

    const/4 v1, 0x0

    .line 345
    invoke-virtual {p0, v0, p1, v1}, Lcom/mob/mcl/c/h;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xbb8

    add-int/2addr p2, v0

    .line 350
    invoke-virtual {p0, p1, p2}, Lcom/mob/mcl/c/h;->a(II)Z

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x3e8

    add-int/2addr p2, v0

    .line 348
    invoke-virtual {p0, p1, p2}, Lcom/mob/mcl/c/h;->a(II)Z

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(JLjava/lang/String;IILjava/lang/String;)Z
    .locals 9

    const-string v0, "[dealBusinessMsg]Biz msg listener detected, callback directly. bisType: "

    const-string v1, "[dealBusinessMsg]No biz msg listener detected, cache msg. bisType: "

    const/4 v2, 0x0

    .line 731
    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    return p1

    .line 734
    :cond_0
    iget-object p4, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p4, p6}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p4

    .line 735
    const-string p6, "uniqueId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    iget-object p1, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p1, p4}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 737
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 738
    iget-object p4, p0, Lcom/mob/mcl/c/h;->u:Ljava/util/HashMap;

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 739
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 740
    iget-object p4, p0, Lcom/mob/mcl/c/h;->u:Ljava/util/HashMap;

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/HashSet;

    .line 741
    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .line 742
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 743
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcom/mob/mcl/BusinessMessageListener;

    .line 744
    new-instance p5, Lcom/mob/mcl/c/h$5;

    move-object v3, p5

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/mob/mcl/c/h$5;-><init>(Lcom/mob/mcl/c/h;Lcom/mob/mcl/BusinessMessageListener;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, p5}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 757
    :cond_1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 759
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 760
    const-string p5, "bisType"

    invoke-interface {p4, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const-string p2, "workId"

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const-string p2, "json"

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-static {}, Lcom/mob/mcl/c/g;->a()Lcom/mob/mcl/c/g;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/mob/mcl/c/g;->a(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 766
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return v2
.end method

.method public b(Lcom/mob/mcl/BusinessCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/mcl/BusinessCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 380
    sget-object v0, Lcom/mob/mcl/b/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mob/mcl/c/h$4;

    invoke-direct {v1, p0, p1}, Lcom/mob/mcl/c/h$4;-><init>(Lcom/mob/mcl/c/h;Lcom/mob/mcl/BusinessCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "Req failed: "

    const-string v1, "[Response] url = "

    const-string v2, "\nheaders = null\nvalues = "

    const-string v3, "[Request] url = "

    const/4 v4, 0x1

    .line 871
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v5

    .line 872
    new-instance v6, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v6}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 873
    new-instance v7, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v7}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v8, 0x7d0

    .line 874
    iput v8, v7, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    const/16 v8, 0x1388

    .line 875
    iput v8, v7, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 876
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 877
    const-string v9, "appkey"

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const-string v9, "pkg"

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-string v9, "duidOld"

    invoke-virtual {v8, v9, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const-string v9, "duidNew"

    invoke-virtual {v8, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    const-string v9, "appVer"

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    const-string v9, "plat"

    invoke-virtual {v5}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const-string v5, "m.mpl.dutils.com/tcp/push/pbsd"

    invoke-static {v5}, Lcom/mob/tools/network/NetCommunicator;->dynamicModifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 884
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 885
    invoke-virtual {v6, v5, v8, v2, v7}, Lcom/mob/tools/network/NetworkHelper;->httpPostNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v2

    .line 886
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\nresp = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 887
    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 888
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 889
    const-string v3, "code"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 890
    const-string v3, "200"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 891
    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 895
    :cond_1
    :goto_0
    iput v4, p0, Lcom/mob/mcl/c/h;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 897
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 899
    iget v1, p0, Lcom/mob/mcl/c/h;->y:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 901
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 903
    :catch_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 905
    :goto_1
    iget v0, p0, Lcom/mob/mcl/c/h;->y:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/mob/mcl/c/h;->y:I

    .line 906
    invoke-virtual {p0, p1, p2}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 909
    :cond_2
    iput v4, p0, Lcom/mob/mcl/c/h;->y:I

    :goto_2
    return-void
.end method

.method public c()Z
    .locals 6

    .line 408
    iget-object v0, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0}, Lcom/mob/mcl/c/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public d()Z
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->v:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/h;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 10

    .line 428
    const-string v0, "requestTimes"

    .line 0
    const-string v1, "tp cf url : "

    const-string v2, " cf cc : "

    .line 428
    iget-object v3, p0, Lcom/mob/mcl/c/h;->s:Landroid/content/Context;

    invoke-static {v3}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mob/tools/utils/DeviceHelper;->isInMainProcess()Z

    move-result v3

    .line 429
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tp cf, main p: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-nez v3, :cond_0

    return-void

    .line 433
    :cond_0
    iget-object v3, p0, Lcom/mob/mcl/c/h;->r:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/mob/mcl/c/h;->s:Landroid/content/Context;

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 438
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/d;->a()Ljava/lang/String;

    move-result-object v3

    .line 439
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 440
    iget-object v4, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v4, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 441
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 443
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 444
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_2

    .line 445
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    .line 446
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    .line 447
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    goto :goto_0

    :cond_3
    const-wide/16 v5, 0x0

    :goto_0
    const-wide/32 v7, 0x5265c00

    add-long/2addr v5, v7

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    .line 450
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v5

    invoke-direct {v5, v4}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/mob/mcl/d/d;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 451
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    .line 458
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 460
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 461
    new-instance v9, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v9}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v2, 0x2710

    .line 462
    iput v2, v9, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const/16 v2, 0x1388

    .line 463
    iput v2, v9, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 465
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 466
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "appkey"

    iget-object v4, p0, Lcom/mob/mcl/c/h;->q:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "pushId"

    invoke-direct {p0}, Lcom/mob/mcl/c/h;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    const-string v2, "m.mpl.dutils.com/tcp/config/init"

    invoke-static {v2}, Lcom/mob/tools/network/NetCommunicator;->dynamicModifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 469
    iget-object v4, p0, Lcom/mob/mcl/c/h;->n:Lcom/mob/tools/network/NetworkHelper;

    const/4 v7, 0x0

    move-object v5, v2

    invoke-virtual/range {v4 .. v9}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v3

    .line 470
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> rp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-direct {v0, v1}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 474
    invoke-static {v0}, Lcom/mob/mcl/d/d;->a(Z)V

    .line 475
    iget-object v0, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/mcl/d/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 478
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void

    .line 434
    :cond_6
    :goto_2
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "mcl has not been initialized"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public g()Z
    .locals 1

    const/16 v0, 0x1388

    .line 518
    invoke-virtual {p0, v0}, Lcom/mob/mcl/c/h;->a(I)Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 6

    .line 597
    iget-object v0, p0, Lcom/mob/mcl/c/h;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iget-wide v3, p0, Lcom/mob/mcl/c/h;->k:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_3

    .line 598
    :cond_0
    invoke-static {}, Lcom/mob/mcl/d/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-static {}, Lcom/mob/mcl/d/d;->d()J

    move-result-wide v3

    .line 600
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 601
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    cmp-long v1, v3, v1

    if-gtz v1, :cond_2

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 606
    :cond_2
    invoke-virtual {p0, v0, v3, v4}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;J)V

    :cond_3
    return-void
.end method

.method public i()Z
    .locals 2

    const/16 v0, 0x3eb

    .line 621
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/mcl/c/h;->a(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/mob/mcl/c/h;->q:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mob/mcl/c/h;->k()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%16s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "0"

    .line 807
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 808
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
