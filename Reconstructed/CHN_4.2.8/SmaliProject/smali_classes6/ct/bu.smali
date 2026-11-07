.class public final Lct/bu;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/bu$a;
    }
.end annotation


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:Lct/bu$a;

.field private final d:Lct/b;

.field private final e:Lct/bt;

.field private final f:Lct/cb;

.field private final g:Lct/br;

.field private final h:Lct/bw;

.field private final i:Lct/ca;

.field private final j:Lct/bq;

.field private final k:Lct/bg;

.field private l:Lct/cd;

.field private m:Lct/ch;

.field private n:Lct/ce;

.field private final o:Lct/be;

.field private p:Lcom/tencent/map/geolocation/TencentLocationListener;

.field private final q:Ljava/lang/Object;

.field private final r:Lcom/tencent/map/geolocation/TencentLocationRequest;

.field private s:Lct/cr;

.field private t:I

.field private final u:Z

.field private v:Ljava/lang/String;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 115
    sput-object v0, Lct/bu;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lct/bu;->a:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "ERROR_NETWORK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lct/bu;->a:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "BAD_JSON"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object v0, Lct/bu;->a:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "DEFLECT_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lct/be;)V
    .locals 5

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 122
    iput v0, p0, Lct/bu;->b:I

    .line 146
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lct/bu;->q:Ljava/lang/Object;

    .line 147
    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationRequest;->create()Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v1

    iput-object v1, p0, Lct/bu;->r:Lcom/tencent/map/geolocation/TencentLocationRequest;

    const/16 v1, 0x194

    .line 154
    iput v1, p0, Lct/bu;->t:I

    const/4 v1, 0x0

    .line 768
    iput-boolean v1, p0, Lct/bu;->w:Z

    .line 161
    iput-object p1, p0, Lct/bu;->o:Lct/be;

    .line 163
    invoke-virtual {p1}, Lct/be;->h()Lct/bf;

    move-result-object v2

    iget-boolean v2, v2, Lct/bf;->r:Z

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p1, Lct/be;->a:Landroid/content/Context;

    invoke-static {v2}, Lct/ct;->a(Landroid/content/Context;)V

    .line 167
    :cond_0
    invoke-static {}, Lct/bh;->b()Lct/bg;

    move-result-object v2

    iput-object v2, p0, Lct/bu;->k:Lct/bg;

    .line 169
    new-instance v2, Lct/bw;

    iget-object v3, p0, Lct/bu;->o:Lct/be;

    invoke-direct {v2, v3}, Lct/bw;-><init>(Lct/be;)V

    iput-object v2, p0, Lct/bu;->h:Lct/bw;

    .line 170
    new-instance v2, Lct/ca;

    iget-object v3, p0, Lct/bu;->o:Lct/be;

    invoke-direct {v2, v3}, Lct/ca;-><init>(Lct/be;)V

    iput-object v2, p0, Lct/bu;->i:Lct/ca;

    .line 171
    new-instance v2, Lct/bq;

    iget-object v3, p0, Lct/bu;->o:Lct/be;

    iget-object v4, p0, Lct/bu;->i:Lct/ca;

    invoke-direct {v2, v3, v4}, Lct/bq;-><init>(Lct/be;Lct/ca;)V

    iput-object v2, p0, Lct/bu;->j:Lct/bq;

    .line 173
    iget-object p1, p1, Lct/be;->a:Landroid/content/Context;

    invoke-static {p1}, Lct/br;->a(Landroid/content/Context;)Lct/br;

    move-result-object p1

    iput-object p1, p0, Lct/bu;->g:Lct/br;

    .line 174
    iget-object p1, p0, Lct/bu;->o:Lct/be;

    invoke-virtual {p1}, Lct/be;->e()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_0

    :cond_1
    new-instance p1, Lct/cb;

    iget-object v3, p0, Lct/bu;->o:Lct/be;

    invoke-direct {p1, v3}, Lct/cb;-><init>(Lct/be;)V

    :goto_0
    iput-object p1, p0, Lct/bu;->f:Lct/cb;

    iget-object p1, p0, Lct/bu;->o:Lct/be;

    invoke-virtual {p1}, Lct/be;->d()Z

    move-result p1

    if-nez p1, :cond_2

    move-object p1, v2

    goto :goto_1

    :cond_2
    new-instance p1, Lct/b;

    iget-object v3, p0, Lct/bu;->o:Lct/be;

    invoke-direct {p1, v3}, Lct/b;-><init>(Lct/be;)V

    :goto_1
    iput-object p1, p0, Lct/bu;->d:Lct/b;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lct/bu;->j:Lct/bq;

    iget-object v4, p0, Lct/bu;->o:Lct/be;

    invoke-virtual {v4}, Lct/be;->f()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Lct/bt;

    iget-object v4, p0, Lct/bu;->o:Lct/be;

    invoke-direct {v2, v4, v3}, Lct/bt;-><init>(Lct/be;Lct/bq;)V

    :goto_2
    iput-object v2, p0, Lct/bu;->e:Lct/bt;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lct/b$a;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lct/bu;->u:Z

    return-void
.end method

.method static synthetic a(Lct/bu;)Lct/be;
    .locals 0

    .line 48
    iget-object p0, p0, Lct/bu;->o:Lct/be;

    return-object p0
.end method

.method private a(IJ)V
    .locals 1

    .line 690
    iget-object v0, p0, Lct/bu;->c:Lct/bu$a;

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0, p1}, Lct/bu$a;->removeMessages(I)V

    .line 692
    iget-object v0, p0, Lct/bu;->c:Lct/bu$a;

    invoke-virtual {v0, p1, p2, p3}, Lct/bu$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private a(ILct/cr;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 514
    :cond_0
    invoke-direct {p0}, Lct/bu;->f()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 515
    iput p1, p0, Lct/bu;->t:I

    .line 516
    iput-object p2, p0, Lct/bu;->s:Lct/cr;

    .line 517
    iget-object p1, p0, Lct/bu;->r:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide p1

    cmp-long v0, p1, v1

    if-lez v0, :cond_2

    const/16 p1, 0x2edf

    invoke-direct {p0, p1, v1, v2}, Lct/bu;->a(IJ)V

    goto :goto_0

    .line 544
    :cond_1
    iput p1, p0, Lct/bu;->t:I

    .line 545
    iput-object p2, p0, Lct/bu;->s:Lct/cr;

    .line 548
    :cond_2
    :goto_0
    iget-object p1, p0, Lct/bu;->r:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide p1

    cmp-long v0, p1, v1

    if-nez v0, :cond_3

    iget-object p1, p0, Lct/bu;->p:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-static {p1}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x2ede

    .line 549
    invoke-direct {p0, p1}, Lct/bu;->b(I)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lct/bu;ILct/cr;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lct/bu;->a(ILct/cr;)V

    return-void
.end method

.method static synthetic a(Lct/bu;Lct/cr;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lct/bu;->a(Lct/cr;)V

    return-void
.end method

.method private final a(Lct/cr;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 448
    iget-object v0, p0, Lct/bu;->r:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowDirection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p1}, Lct/cr;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lct/bu;->g:Lct/br;

    invoke-virtual {v1}, Lct/br;->c()D

    move-result-wide v1

    const-string v3, "direction"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 453
    :cond_0
    invoke-virtual {p1}, Lct/cr;->getExtra()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lct/bu;->r:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lct/bu;)Ljava/lang/Object;
    .locals 0

    .line 48
    iget-object p0, p0, Lct/bu;->q:Ljava/lang/Object;

    return-object p0
.end method

.method private b(I)V
    .locals 1

    .line 684
    iget-object v0, p0, Lct/bu;->c:Lct/bu$a;

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0, p1}, Lct/bu$a;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lct/bu;)Lcom/tencent/map/geolocation/TencentLocationListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lct/bu;->p:Lcom/tencent/map/geolocation/TencentLocationListener;

    return-object p0
.end method

.method static synthetic d()Landroid/util/SparseArray;
    .locals 1

    .line 48
    sget-object v0, Lct/bu;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic d(Lct/bu;)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 0

    .line 48
    iget-object p0, p0, Lct/bu;->r:Lcom/tencent/map/geolocation/TencentLocationRequest;

    return-object p0
.end method

.method static synthetic e(Lct/bu;)Lct/cr;
    .locals 0

    .line 48
    iget-object p0, p0, Lct/bu;->s:Lct/cr;

    return-object p0
.end method

.method private e()V
    .locals 10

    const/4 v0, 0x0

    .line 466
    sput-boolean v0, Lct/cs;->a:Z

    .line 467
    iget-object v1, p0, Lct/bu;->o:Lct/be;

    invoke-virtual {v1, p0}, Lct/be;->b(Ljava/lang/Object;)V

    .line 468
    iget-object v1, p0, Lct/bu;->h:Lct/bw;

    invoke-virtual {v1}, Lct/bw;->b()V

    .line 469
    iget-object v1, p0, Lct/bu;->i:Lct/ca;

    iget-boolean v2, v1, Lct/ca;->g:Z

    if-eqz v2, :cond_1

    iput-boolean v0, v1, Lct/ca;->g:Z

    iget-object v2, v1, Lct/ca;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v2, v1, Lct/ca;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v3, Lct/ca$a;->b:Lct/ca$a;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-wide v2, v1, Lct/ca;->f:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v1, Lct/ca;->f:J

    sub-long/2addr v2, v6

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x1

    iget-wide v2, v1, Lct/ca;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x2

    iget-wide v2, v1, Lct/ca;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    iget-wide v2, v1, Lct/ca;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v0

    const-string v0, "shutdown: duration=%ds, sent=%dB, recv=%dB, reqCount=%d"

    invoke-static {v6, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    iput-wide v4, v1, Lct/ca;->c:J

    iput-wide v4, v1, Lct/ca;->d:J

    iput-wide v4, v1, Lct/ca;->e:J

    iput-wide v4, v1, Lct/ca;->f:J

    .line 470
    :cond_1
    invoke-static {}, Lct/bq;->a()V

    .line 472
    iget-object v0, p0, Lct/bu;->f:Lct/cb;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lct/bu;->f:Lct/cb;

    invoke-virtual {v0}, Lct/cb;->a()V

    .line 475
    :cond_2
    iget-object v0, p0, Lct/bu;->d:Lct/b;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    iget-object v0, p0, Lct/bu;->d:Lct/b;

    invoke-virtual {v0}, Lct/b;->b()V

    .line 478
    :cond_3
    iget-object v0, p0, Lct/bu;->e:Lct/bt;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 479
    iget-object v0, p0, Lct/bu;->e:Lct/bt;

    invoke-virtual {v0}, Lct/bt;->a()V

    .line 481
    :cond_4
    iget-object v0, p0, Lct/bu;->r:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowDirection()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 482
    iget-object v0, p0, Lct/bu;->g:Lct/br;

    invoke-virtual {v0}, Lct/br;->b()V

    .line 484
    :cond_5
    iget-object v0, p0, Lct/bu;->c:Lct/bu$a;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 485
    iget-object v0, p0, Lct/bu;->c:Lct/bu$a;

    invoke-virtual {v0}, Lct/bu$a;->a()V

    :cond_6
    return-void
.end method

.method static synthetic f(Lct/bu;)I
    .locals 0

    .line 48
    iget p0, p0, Lct/bu;->t:I

    return p0
.end method

.method private f()Z
    .locals 2

    .line 579
    iget v0, p0, Lct/bu;->t:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic g(Lct/bu;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lct/bu;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lct/bu;)I
    .locals 0

    .line 48
    iget p0, p0, Lct/bu;->b:I

    return p0
.end method

.method static synthetic i(Lct/bu;)Lct/cf;
    .locals 9

    .line 48
    iget-object v0, p0, Lct/bu;->m:Lct/ch;

    iget-object v1, p0, Lct/bu;->l:Lct/cd;

    iget-object v2, p0, Lct/bu;->n:Lct/ce;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, p0, Lct/bu;->e:Lct/bt;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lct/bt;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lct/bu;->e:Lct/bt;

    invoke-virtual {v4}, Lct/bt;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x1

    :cond_0
    if-nez v5, :cond_1

    move-object v2, v3

    :cond_1
    if-nez v1, :cond_3

    iget-object v1, p0, Lct/bu;->o:Lct/be;

    invoke-static {v1}, Lct/cs;->a(Lct/be;)Landroid/telephony/CellLocation;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lct/cd;->a(Lct/be;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lct/cd;

    move-result-object v1

    invoke-static {v1}, Lct/cs;->a(Lct/cd;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v3

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    iget v4, v1, Lct/cd;->d:I

    iget v5, v1, Lct/cd;->e:I

    iget-object v6, v2, Lct/ce;->a:Landroid/location/Location;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "lac"

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "cid"

    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "location"

    invoke-virtual {v7, v4, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lct/bu;->o:Lct/be;

    const-string v4, "cell"

    invoke-virtual {p0, v4}, Lct/be;->a(Ljava/lang/String;)Lct/bi;

    move-result-object p0

    invoke-virtual {p0, v7}, Lct/bi;->b(Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v1

    :goto_1
    new-instance p0, Lct/cf;

    invoke-direct {p0, v0, v3, v2}, Lct/cf;-><init>(Lct/ch;Lct/cd;Lct/ce;)V

    return-object p0
.end method

.method static synthetic j(Lct/bu;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lct/bu;->v:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lct/bu;)Lct/bt;
    .locals 0

    .line 48
    iget-object p0, p0, Lct/bu;->e:Lct/bt;

    return-object p0
.end method

.method static synthetic l(Lct/bu;)Lct/bg;
    .locals 0

    .line 48
    iget-object p0, p0, Lct/bu;->k:Lct/bg;

    return-object p0
.end method

.method static synthetic m(Lct/bu;)Lct/ca;
    .locals 0

    .line 48
    iget-object p0, p0, Lct/bu;->i:Lct/ca;

    return-object p0
.end method

.method static synthetic n(Lct/bu;)Lct/cd;
    .locals 0

    .line 48
    iget-object p0, p0, Lct/bu;->l:Lct/cd;

    return-object p0
.end method

.method static synthetic o(Lct/bu;)Lct/ch;
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lct/bu;->m:Lct/ch;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I
    .locals 7

    .line 224
    iget-object v0, p0, Lct/bu;->o:Lct/be;

    .line 225
    invoke-virtual {v0}, Lct/be;->h()Lct/bf;

    move-result-object v0

    .line 226
    iget-object v1, v0, Lct/bf;->h:Ljava/lang/String;

    invoke-static {v1}, Lct/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-le v2, v4, :cond_0

    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    aget-object v2, v1, v4

    if-eqz v2, :cond_0

    aget-object v2, v1, v3

    aget-object v5, v1, v4

    invoke-static {v2, v5}, Lcom/tencent/tencentmap/lbssdk/service/e;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    aget-object v1, v1, v3

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/tencent/tencentmap/lbssdk/service/e;->v(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lct/bu;->v:Ljava/lang/String;

    .line 228
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x2

    return p1

    .line 234
    :cond_3
    iget-boolean v1, p0, Lct/bu;->u:Z

    if-eqz v1, :cond_4

    return v4

    :cond_4
    const/16 v1, 0x194

    .line 238
    iput v1, p0, Lct/bu;->t:I

    const/4 v1, 0x0

    iput-object v1, p0, Lct/bu;->m:Lct/ch;

    iput-object v1, p0, Lct/bu;->l:Lct/cd;

    iput-object v1, p0, Lct/bu;->n:Lct/ce;

    iget-object v2, p0, Lct/bu;->o:Lct/be;

    const-string v5, "cell"

    invoke-virtual {v2, v5}, Lct/be;->a(Ljava/lang/String;)Lct/bi;

    move-result-object v2

    invoke-virtual {v2}, Lct/bi;->a()V

    .line 239
    iget-object v2, p0, Lct/bu;->q:Ljava/lang/Object;

    monitor-enter v2

    .line 240
    :try_start_0
    iput-object p2, p0, Lct/bu;->p:Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 241
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-object p2, p0, Lct/bu;->r:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-static {p2, p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->copy(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationRequest;)V

    .line 243
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getQQ()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lct/bf;->g:Ljava/lang/String;

    .line 245
    iget-object p2, v0, Lct/bf;->e:Ljava/lang/String;

    invoke-static {p2}, Lct/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 246
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lct/bf;->e:Ljava/lang/String;

    .line 248
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide p1

    const-wide/16 v5, 0x1f40

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, v0, Lct/bf;->k:J

    .line 250
    iget-object p1, p0, Lct/bu;->c:Lct/bu$a;

    invoke-static {p1}, Lct/b$a;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lct/bu$a;

    invoke-direct {p1, p0, p3}, Lct/bu$a;-><init>(Lct/bu;Landroid/os/Looper;)V

    :goto_2
    iput-object p1, p0, Lct/bu;->c:Lct/bu$a;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lct/bu;->c:Lct/bu$a;

    invoke-virtual {p1, v1}, Lct/bu$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lct/bu;->c:Lct/bu$a;

    invoke-virtual {p1}, Lct/bu$a;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq p1, p3, :cond_7

    new-instance p1, Lct/bu$a;

    invoke-direct {p1, p0, p3}, Lct/bu$a;-><init>(Lct/bu;Landroid/os/Looper;)V

    goto :goto_2

    .line 251
    :cond_7
    :goto_3
    invoke-direct {p0}, Lct/bu;->e()V

    .line 252
    iget-object p1, p0, Lct/bu;->o:Lct/be;

    invoke-virtual {p1, p0}, Lct/be;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lct/bu;->r:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "use_network"

    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, p0, Lct/bu;->c:Lct/bu$a;

    iget-object p3, p0, Lct/bu;->h:Lct/bw;

    invoke-virtual {p3}, Lct/bw;->a()V

    iget-object p3, p0, Lct/bu;->i:Lct/ca;

    iget-boolean v0, p3, Lct/ca;->g:Z

    if-nez v0, :cond_8

    iput-boolean v4, p3, Lct/ca;->g:Z

    iget-object v0, p3, Lct/ca;->b:Lct/be;

    invoke-virtual {v0}, Lct/be;->j()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lct/ca$1;

    invoke-direct {v1, p3, p2}, Lct/ca$1;-><init>(Lct/ca;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p3, Lct/ca;->f:J

    :cond_8
    if-eqz p1, :cond_9

    iget-object p3, p0, Lct/bu;->d:Lct/b;

    invoke-static {p3}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lct/bu;->d:Lct/b;

    invoke-virtual {p3}, Lct/b;->a()V

    :cond_9
    if-eqz p1, :cond_a

    iget-object p1, p0, Lct/bu;->f:Lct/cb;

    invoke-static {p1}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lct/bu;->f:Lct/cb;

    iget-object p3, p0, Lct/bu;->r:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {p3}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    invoke-virtual {p1, p2}, Lct/cb;->a(Landroid/os/Handler;)V

    :cond_a
    iget-object p1, p0, Lct/bu;->e:Lct/bt;

    invoke-static {p1}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lct/ci;->d()Z

    iget-object p1, p0, Lct/bu;->e:Lct/bt;

    iget p3, p0, Lct/bu;->b:I

    if-ne p3, v4, :cond_b

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p1, v4}, Lct/bt;->a(Z)V

    iget-object p1, p0, Lct/bu;->e:Lct/bt;

    iget-object p3, p0, Lct/bu;->r:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {p3}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v0

    const-wide/16 v4, 0x7d0

    sub-long/2addr v0, v4

    invoke-virtual {p1, p2, v0, v1}, Lct/bt;->a(Landroid/os/Handler;J)V

    :cond_c
    iget-object p1, p0, Lct/bu;->r:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowDirection()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lct/bu;->g:Lct/br;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    invoke-virtual {p1}, Lct/br;->a()V

    :cond_d
    return v3

    :catchall_0
    move-exception p1

    .line 241
    monitor-exit v2

    throw p1
.end method

.method public final a()Lcom/tencent/map/geolocation/TencentLocation;
    .locals 1

    .line 439
    iget v0, p0, Lct/bu;->t:I

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lct/bu;->s:Lct/cr;

    invoke-direct {p0, v0}, Lct/bu;->a(Lct/cr;)V

    .line 441
    iget-object v0, p0, Lct/bu;->s:Lct/cr;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .line 664
    iget v0, p0, Lct/bu;->b:I

    if-ne v0, p1, :cond_0

    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lct/bu;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 670
    :try_start_0
    iget-object v1, p0, Lct/bu;->p:Lcom/tencent/map/geolocation/TencentLocationListener;

    if-nez v1, :cond_1

    .line 674
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    iput p1, p0, Lct/bu;->b:I

    return-void

    .line 671
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "removeUpdates MUST called before set coordinate type!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 674
    monitor-exit v0

    throw p1
.end method

.method public final b()V
    .locals 2

    .line 458
    invoke-direct {p0}, Lct/bu;->e()V

    .line 459
    iget-object v0, p0, Lct/bu;->q:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 460
    :try_start_0
    iput-object v1, p0, Lct/bu;->p:Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 461
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    iget-object v0, p0, Lct/bu;->k:Lct/bg;

    invoke-interface {v0}, Lct/bg;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 461
    monitor-exit v0

    throw v1
.end method

.method public final c()I
    .locals 1

    .line 680
    iget v0, p0, Lct/bu;->b:I

    return v0
.end method

.method public final onCellInfoEvent(Lct/cd;)V
    .locals 7

    .line 697
    iget v0, p1, Lct/cd;->e:I

    iget v1, p1, Lct/cd;->f:I

    iget-object v2, p0, Lct/bu;->l:Lct/cd;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v4, v2, Lct/cd;->e:I

    iget v2, v2, Lct/cd;->f:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    iput-object p1, p0, Lct/bu;->l:Lct/cd;

    iget-object p1, p0, Lct/bu;->f:Lct/cb;

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lct/cb;->b()I

    move-result p1

    if-nez p1, :cond_3

    if-eq v0, v4, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, p0, Lct/bu;->w:Z

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :cond_3
    const/16 v6, 0xf9f

    invoke-direct {p0, v6}, Lct/bu;->b(I)V

    :goto_2
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v5

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x5

    if-nez p1, :cond_4

    const-string p1, "scan wifi"

    goto :goto_3

    :cond_4
    const-string p1, "prepare json. wifi is not scannable?"

    :goto_3
    aput-object p1, v6, v0

    const-string p1, "onCellChanged: %d(%d)-->%d(%d) (%d)%s"

    invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public final onGpsInfoEvent(Lct/ce;)V
    .locals 10

    .line 705
    iget-object v0, p1, Lct/ce;->a:Landroid/location/Location;

    sget-object v1, Lct/bp;->b:Landroid/location/Location;

    if-eq v0, v1, :cond_3

    iput-object p1, p0, Lct/bu;->n:Lct/ce;

    invoke-static {}, Lct/bs;->a()Lct/bs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lct/bs;->a(Lct/ce;)I

    iget v0, p0, Lct/bu;->b:I

    iget-object v1, p0, Lct/bu;->r:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getRequestLevel()I

    move-result v1

    iget-object v2, p0, Lct/bu;->s:Lct/cr;

    new-instance v3, Landroid/location/Location;

    iget-object v4, p1, Lct/ce;->a:Landroid/location/Location;

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v3}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    const-string v5, "lat"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string v7, "lng"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    invoke-static {v0}, Lct/b$a;->a(I)Z

    move-result v0

    const/4 v4, 0x0

    const-string v9, "gps"

    if-eqz v0, :cond_1

    new-instance v0, Lct/cr$a;

    invoke-direct {v0}, Lct/cr$a;-><init>()V

    iput-object v2, v0, Lct/cr$a;->b:Lct/cr;

    iput-object v9, v0, Lct/cr$a;->d:Ljava/lang/String;

    iput v1, v0, Lct/cr$a;->c:I

    new-instance v1, Landroid/location/Location;

    iget-object p1, p1, Lct/ce;->a:Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    :goto_1
    invoke-virtual {v0, v1}, Lct/cr$a;->a(Landroid/location/Location;)Lct/cr$a;

    move-result-object p1

    invoke-virtual {p1}, Lct/cr$a;->a()Lct/cr;

    move-result-object p1

    invoke-virtual {v3, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v3, v7, v8}, Landroid/location/Location;->setLongitude(D)V

    invoke-virtual {p1, v3}, Lct/cr;->a(Landroid/location/Location;)V

    invoke-direct {p0, v4, p1}, Lct/bu;->a(ILct/cr;)V

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lct/bu;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf9f

    invoke-direct {p0, v0}, Lct/bu;->b(I)V

    :cond_2
    new-instance v0, Lct/cr$a;

    invoke-direct {v0}, Lct/cr$a;-><init>()V

    iput-object v2, v0, Lct/cr$a;->b:Lct/cr;

    iput-object v9, v0, Lct/cr$a;->d:Ljava/lang/String;

    iput v1, v0, Lct/cr$a;->c:I

    new-instance v1, Landroid/location/Location;

    iget-object p1, p1, Lct/ce;->a:Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lct/bu;->e:Lct/bt;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lct/bt;->b()Z

    :cond_3
    return-void
.end method

.method public final onNetworkEvent(Ljava/lang/Integer;)V
    .locals 2

    .line 713
    iget-object v0, p0, Lct/bu;->o:Lct/be;

    iget-object v0, v0, Lct/be;->a:Landroid/content/Context;

    invoke-static {v0}, Lct/b$a;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 714
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x1f3f

    const-wide/16 v0, 0x3e8

    .line 725
    invoke-direct {p0, p1, v0, v1}, Lct/bu;->a(IJ)V

    :goto_0
    return-void
.end method

.method public final onStatusEvent(Landroid/os/Message;)V
    .locals 5

    .line 709
    iget v0, p1, Landroid/os/Message;->what:I

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    goto :goto_2

    :pswitch_0
    const-string v1, "cell"

    if-ne p1, v2, :cond_0

    const-string v0, "cell enabled"

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "cell disabled"

    goto :goto_0

    :cond_1
    const-string v0, "unknown"

    :goto_0
    sget-boolean v2, Lct/cs;->a:Z

    if-eqz v2, :cond_4

    const/4 p1, 0x2

    const-string v0, "permission denied"

    goto :goto_1

    :pswitch_1
    const-string v1, "gps"

    if-ne p1, v2, :cond_2

    const-string v0, "gps enabled"

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    const-string v0, "gps disabled"

    goto :goto_1

    :cond_3
    const-string v0, "unknown"

    :cond_4
    :goto_1
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :pswitch_2
    const-string v0, "wifi"

    if-ne p1, v2, :cond_5

    const-string v1, "wifi enabled"

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    const-string v1, "wifi disabled"

    goto :goto_2

    :cond_6
    const-string v1, "unknown"

    :goto_2
    iget-object v2, p0, Lct/bu;->q:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lct/bu;->p:Lcom/tencent/map/geolocation/TencentLocationListener;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lct/bu;->p:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-interface {v3, v0, p1, v1}, Lcom/tencent/map/geolocation/TencentLocationListener;->onStatusUpdate(Ljava/lang/String;ILjava/lang/String;)V

    :cond_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :pswitch_data_0
    .packed-switch 0x2ee1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onWifiInfoEvent(Lct/ch;)V
    .locals 3

    .line 701
    sget-object v0, Lct/ch;->a:Lct/ch;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x22b

    const-wide/16 v0, 0x5dc

    invoke-direct {p0, p1, v0, v1}, Lct/bu;->a(IJ)V

    return-void

    :cond_0
    iget-object v0, p0, Lct/bu;->m:Lct/ch;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lct/ch;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lct/ch;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lct/bu;->w:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lct/bu;->m:Lct/ch;

    invoke-virtual {v0, p1}, Lct/ch;->a(Lct/ch;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Lct/bu;->m:Lct/ch;

    const/16 p1, 0xf9f

    invoke-direct {p0, p1}, Lct/bu;->b(I)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lct/bu;->w:Z

    return-void
.end method
