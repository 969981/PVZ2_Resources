.class public final Lcom/apm/insight/log/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/insight/log/a/a$b;,
        Lcom/apm/insight/log/a/a$a;,
        Lcom/apm/insight/log/a/a$f;,
        Lcom/apm/insight/log/a/a$c;,
        Lcom/apm/insight/log/a/a$e;,
        Lcom/apm/insight/log/a/a$g;,
        Lcom/apm/insight/log/a/a$d;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Z


# instance fields
.field private i:Landroid/content/Context;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Lcom/apm/insight/log/a/a$d;->a:Lcom/apm/insight/log/a/a$d;

    invoke-virtual {v0}, Lcom/apm/insight/log/a/a$d;->a()I

    move-result v0

    sput v0, Lcom/apm/insight/log/a/a;->a:I

    .line 38
    sget-object v0, Lcom/apm/insight/log/a/a$g;->a:Lcom/apm/insight/log/a/a$g;

    invoke-virtual {v0}, Lcom/apm/insight/log/a/a$g;->a()I

    move-result v0

    sput v0, Lcom/apm/insight/log/a/a;->b:I

    .line 39
    sget-object v0, Lcom/apm/insight/log/a/a$e;->a:Lcom/apm/insight/log/a/a$e;

    invoke-virtual {v0}, Lcom/apm/insight/log/a/a$e;->a()I

    move-result v0

    sput v0, Lcom/apm/insight/log/a/a;->c:I

    .line 40
    sget-object v0, Lcom/apm/insight/log/a/a$c;->b:Lcom/apm/insight/log/a/a$c;

    invoke-virtual {v0}, Lcom/apm/insight/log/a/a$c;->a()I

    move-result v0

    sput v0, Lcom/apm/insight/log/a/a;->d:I

    .line 41
    sget-object v0, Lcom/apm/insight/log/a/a$f;->b:Lcom/apm/insight/log/a/a$f;

    invoke-virtual {v0}, Lcom/apm/insight/log/a/a$f;->a()I

    move-result v0

    sput v0, Lcom/apm/insight/log/a/a;->e:I

    .line 42
    sget-object v0, Lcom/apm/insight/log/a/a$a;->b:Lcom/apm/insight/log/a/a$a;

    invoke-virtual {v0}, Lcom/apm/insight/log/a/a$a;->a()I

    move-result v0

    sput v0, Lcom/apm/insight/log/a/a;->f:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apm/insight/log/a/a;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 47
    sput-boolean v0, Lcom/apm/insight/log/a/a;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;IIILjava/lang/String;IILjava/lang/String;IIIIIILjava/lang/String;)V
    .locals 6

    move-object v0, p0

    move/from16 v1, p10

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    .line 95
    iput-object v2, v0, Lcom/apm/insight/log/a/a;->i:Landroid/content/Context;

    move v2, p2

    .line 96
    iput v2, v0, Lcom/apm/insight/log/a/a;->j:I

    move-object v3, p5

    .line 97
    iput-object v3, v0, Lcom/apm/insight/log/a/a;->k:Ljava/lang/String;

    move-object v4, p9

    .line 98
    iput-object v4, v0, Lcom/apm/insight/log/a/a;->l:Ljava/lang/String;

    .line 99
    iput v1, v0, Lcom/apm/insight/log/a/a;->m:I

    .line 100
    div-int v5, p11, v1

    iput v5, v0, Lcom/apm/insight/log/a/a;->n:I

    const/4 v5, 0x0

    .line 101
    iput-object v5, v0, Lcom/apm/insight/log/a/a;->o:Ljava/lang/String;

    move-object v5, p4

    .line 102
    iput-object v5, v0, Lcom/apm/insight/log/a/a;->p:Ljava/lang/String;

    .line 103
    invoke-static/range {p2 .. p19}, Lcom/apm/insight/log/a/a;->a(IZLjava/lang/String;Ljava/lang/String;IIILjava/lang/String;IILjava/lang/String;IIIIIILjava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/apm/insight/log/a/a;->q:J

    return-void
.end method

.method private static native a(IZLjava/lang/String;Ljava/lang/String;IIILjava/lang/String;IILjava/lang/String;IIIIIILjava/lang/String;)J
.end method

.method static native a(J)V
.end method

.method private static native a(JI)V
.end method

.method private static native a(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native a(JILjava/lang/String;Ljava/lang/String;JJ)V
.end method

.method private static native a(JZ)V
.end method

.method public static declared-synchronized a(Lcom/apm/insight/log/a/f;)V
    .locals 2

    const-class v0, Lcom/apm/insight/log/a/a;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-boolean v1, Lcom/apm/insight/log/a/a;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 64
    monitor-exit v0

    return-void

    .line 70
    :cond_0
    :try_start_1
    invoke-interface {p0}, Lcom/apm/insight/log/a/f;->c()V

    const/4 p0, 0x1

    .line 73
    sput-boolean p0, Lcom/apm/insight/log/a/a;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static native b(J)V
.end method

.method private static native b(JI)V
.end method

.method private static native c(J)V
.end method

.method private static native d(J)V
.end method

.method public static h()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 269
    invoke-static {}, Lcom/apm/insight/log/a/c;->a()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k()I
    .locals 1

    .line 15
    sget v0, Lcom/apm/insight/log/a/a;->a:I

    return v0
.end method

.method static synthetic l()I
    .locals 1

    .line 15
    sget v0, Lcom/apm/insight/log/a/a;->b:I

    return v0
.end method

.method static synthetic m()I
    .locals 1

    .line 15
    sget v0, Lcom/apm/insight/log/a/a;->c:I

    return v0
.end method

.method static synthetic n()I
    .locals 1

    .line 15
    sget v0, Lcom/apm/insight/log/a/a;->d:I

    return v0
.end method

.method static synthetic o()I
    .locals 1

    .line 15
    sget v0, Lcom/apm/insight/log/a/a;->e:I

    return v0
.end method

.method static synthetic p()I
    .locals 1

    .line 15
    sget v0, Lcom/apm/insight/log/a/a;->f:I

    return v0
.end method

.method static synthetic q()Ljava/util/ArrayList;
    .locals 1

    .line 15
    sget-object v0, Lcom/apm/insight/log/a/a;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static native s()J
.end method

.method private static native t()J
.end method

.method private static native u()J
.end method

.method private static native v()J
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide v0, p0, Lcom/apm/insight/log/a/a;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/apm/insight/log/a/a;->i:Landroid/content/Context;

    const/4 v0, 0x6

    .line 128
    iput v0, p0, Lcom/apm/insight/log/a/a;->j:I

    .line 129
    iget-wide v0, p0, Lcom/apm/insight/log/a/a;->q:J

    invoke-static {v0, v1}, Lcom/apm/insight/log/a/a;->d(J)V

    .line 130
    iput-wide v2, p0, Lcom/apm/insight/log/a/a;->q:J

    .line 132
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(I)V
    .locals 5

    .line 169
    iget-wide v0, p0, Lcom/apm/insight/log/a/a;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 170
    invoke-static {v0, v1, p1}, Lcom/apm/insight/log/a/a;->a(JI)V

    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 145
    iget-wide v0, p0, Lcom/apm/insight/log/a/a;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v2, p0, Lcom/apm/insight/log/a/a;->j:I

    if-lt p1, v2, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 146
    invoke-static {v0, v1, p1, p2, p3}, Lcom/apm/insight/log/a/a;->a(JILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 10

    move-object v0, p0

    .line 151
    iget-wide v1, v0, Lcom/apm/insight/log/a/a;->q:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget v3, v0, Lcom/apm/insight/log/a/a;->j:I

    move v4, p1

    if-lt v4, v3, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    .line 152
    invoke-static/range {v1 .. v9}, Lcom/apm/insight/log/a/a;->a(JILjava/lang/String;Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0, p1, p2}, Lcom/apm/insight/log/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 5

    .line 182
    iget-wide v0, p0, Lcom/apm/insight/log/a/a;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 183
    invoke-static {v0, v1, p1}, Lcom/apm/insight/log/a/a;->a(JZ)V

    :cond_0
    return-void
.end method

.method public final a(JJ)[Ljava/io/File;
    .locals 8

    .line 228
    iget-object v0, p0, Lcom/apm/insight/log/a/a;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 229
    invoke-static {}, Lcom/apm/insight/log/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apm/insight/log/a/a;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/io/File;

    return-object p1

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/apm/insight/log/a/a;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/apm/insight/log/a/a;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/apm/insight/log/a/a;->p:Ljava/lang/String;

    const/4 v7, -0x1

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v7}, Lcom/apm/insight/log/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;JJ)[Ljava/io/File;
    .locals 7

    .line 239
    iget-object v2, p0, Lcom/apm/insight/log/a/a;->p:Ljava/lang/String;

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/apm/insight/log/a/a;->a(Ljava/lang/String;Ljava/lang/String;JJ)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JJ)[Ljava/io/File;
    .locals 8

    .line 243
    iget-object v0, p0, Lcom/apm/insight/log/a/a;->k:Ljava/lang/String;

    const/4 v7, -0x1

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v7}, Lcom/apm/insight/log/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final a(ZJJI)[Ljava/io/File;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 250
    iget-object p1, p0, Lcom/apm/insight/log/a/a;->o:Ljava/lang/String;

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    if-nez v0, :cond_1

    .line 254
    invoke-static {}, Lcom/apm/insight/log/c;->b()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/io/File;

    return-object p1

    :cond_2
    move-object v1, v0

    .line 260
    iget-object v0, p0, Lcom/apm/insight/log/a/a;->k:Ljava/lang/String;

    const/4 v2, 0x0

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/apm/insight/log/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 5

    .line 157
    iget-wide v0, p0, Lcom/apm/insight/log/a/a;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 158
    invoke-static {v0, v1}, Lcom/apm/insight/log/a/a;->b(J)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 5

    .line 175
    iput p1, p0, Lcom/apm/insight/log/a/a;->j:I

    .line 176
    iget-wide v0, p0, Lcom/apm/insight/log/a/a;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 177
    invoke-static {v0, v1, p1}, Lcom/apm/insight/log/a/a;->b(JI)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 208
    invoke-virtual {p0, v0, p1, p2}, Lcom/apm/insight/log/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 5

    .line 163
    iget-wide v0, p0, Lcom/apm/insight/log/a/a;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 164
    invoke-static {v0, v1}, Lcom/apm/insight/log/a/a;->c(J)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 212
    invoke-virtual {p0, v0, p1, p2}, Lcom/apm/insight/log/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()J
    .locals 5

    .line 188
    iget-wide v0, p0, Lcom/apm/insight/log/a/a;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/apm/insight/log/a/a;->s()J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 216
    invoke-virtual {p0, v0, p1, p2}, Lcom/apm/insight/log/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()J
    .locals 5

    .line 192
    iget-wide v0, p0, Lcom/apm/insight/log/a/a;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/apm/insight/log/a/a;->t()J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 220
    invoke-virtual {p0, v0, p1, p2}, Lcom/apm/insight/log/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f()J
    .locals 5

    .line 196
    iget-wide v0, p0, Lcom/apm/insight/log/a/a;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/apm/insight/log/a/a;->u()J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public final finalize()V
    .locals 1

    .line 138
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {p0}, Lcom/apm/insight/log/a/a;->a()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/apm/insight/log/a/a;->a()V

    throw v0
.end method

.method public final g()J
    .locals 5

    .line 200
    iget-wide v0, p0, Lcom/apm/insight/log/a/a;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/apm/insight/log/a/a;->v()J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public final i()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 274
    sget-boolean v1, Lcom/apm/insight/log/a/a;->h:Z

    if-nez v1, :cond_0

    const-string v1, "not inited"

    return-object v1

    .line 279
    :cond_0
    iget-object v1, v0, Lcom/apm/insight/log/a/a;->o:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 280
    invoke-static {}, Lcom/apm/insight/log/c;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apm/insight/log/a/a;->o:Ljava/lang/String;

    .line 282
    :cond_1
    iget-object v1, v0, Lcom/apm/insight/log/a/a;->o:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "get process name failed"

    return-object v1

    :cond_2
    const/16 v2, 0x3a

    const/16 v3, 0x2d

    .line 285
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 288
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/apm/insight/log/a/a;->l:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v1, "cache dir not exists"

    return-object v1

    .line 294
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v1, "cache dir is empty"

    return-object v1

    .line 302
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "__"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/apm/insight/log/a/a;->p:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".alog.cache.guard"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "^"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/apm/insight/log/a/a;->p:Ljava/lang/String;

    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "__\\d{5}\\.alog\\.cache$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 304
    array-length v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v8, v7, :cond_9

    aget-object v13, v3, v8

    .line 305
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    add-int/lit8 v9, v9, 0x1

    .line 307
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x6000

    cmp-long v17, v13, v15

    if-ltz v17, :cond_5

    add-int/lit8 v10, v10, 0x1

    :cond_5
    move-object/from16 v16, v3

    :cond_6
    move-object v15, v6

    move/from16 v17, v7

    goto :goto_1

    .line 310
    :cond_7
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/apm/insight/log/a/a;->p:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 311
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v11, v11, 0x1

    .line 313
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v13

    iget v3, v0, Lcom/apm/insight/log/a/a;->m:I

    move-object v15, v6

    move/from16 v17, v7

    int-to-long v6, v3

    cmp-long v3, v13, v6

    if-ltz v3, :cond_8

    add-int/lit8 v12, v12, 0x1

    :cond_8
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move-object v6, v15

    move-object/from16 v3, v16

    move/from16 v7, v17

    goto :goto_0

    :cond_9
    if-gtz v9, :cond_a

    const-string v1, "alog_trace"

    .line 319
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "cache guard not exists"

    return-object v1

    :cond_a
    if-gtz v10, :cond_b

    const-string v1, "cache guard size insufficiently"

    return-object v1

    .line 326
    :cond_b
    iget v2, v0, Lcom/apm/insight/log/a/a;->n:I

    if-ge v11, v2, :cond_c

    const-string v1, "cache block count insufficiently"

    return-object v1

    :cond_c
    if-ge v12, v2, :cond_d

    const-string v1, "cache block size insufficiently"

    return-object v1

    .line 334
    :cond_d
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/apm/insight/log/a/a;->k:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_e

    const-string v1, "log dir not exists"

    return-object v1

    .line 339
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "^\\d{4}_\\d{2}_\\d{2}_\\d+__"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/apm/insight/log/a/a;->p:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\.vlog$"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 341
    new-instance v3, Lcom/apm/insight/log/a/b;

    invoke-direct {v3, v0, v1}, Lcom/apm/insight/log/a/b;-><init>(Lcom/apm/insight/log/a/a;Ljava/util/regex/Pattern;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 347
    array-length v1, v1

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    const-string v1, "OK"

    return-object v1

    :cond_10
    :goto_2
    const-string v1, "no log file for current process and instance"

    return-object v1
.end method

.method public final j()J
    .locals 2

    .line 355
    iget-wide v0, p0, Lcom/apm/insight/log/a/a;->q:J

    return-wide v0
.end method
