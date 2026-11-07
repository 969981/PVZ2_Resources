.class public final Lct/at;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/net/Socket;

.field public i:I

.field public j:I

.field public k:I

.field public l:Lct/r;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Ljava/util/ArrayList;

.field private u:I

.field private v:Z

.field private w:Z

.field private x:[I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lct/at;->a:I

    iput v0, p0, Lct/at;->b:I

    const/16 v0, 0x4e20

    iput v0, p0, Lct/at;->c:I

    const/4 v0, 0x3

    iput v0, p0, Lct/at;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lct/at;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lct/at;->n:I

    iput-boolean v1, p0, Lct/at;->o:Z

    iput-boolean v1, p0, Lct/at;->p:Z

    iput-object v0, p0, Lct/at;->e:Ljava/util/ArrayList;

    iput v1, p0, Lct/at;->q:I

    iput-boolean v1, p0, Lct/at;->r:Z

    iput-boolean v1, p0, Lct/at;->f:Z

    iput-boolean v1, p0, Lct/at;->s:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lct/at;->t:Ljava/util/ArrayList;

    iput v1, p0, Lct/at;->u:I

    iput-boolean v1, p0, Lct/at;->v:Z

    iput-boolean v1, p0, Lct/at;->w:Z

    const-string v2, "dispatcher.3g.qq.com"

    iput-object v2, p0, Lct/at;->g:Ljava/lang/String;

    sget-object v2, Lct/c;->a:[I

    iput-object v2, p0, Lct/at;->x:[I

    iput-object v0, p0, Lct/at;->h:Ljava/net/Socket;

    iput v1, p0, Lct/at;->i:I

    iput v1, p0, Lct/at;->y:I

    const/4 v0, -0x1

    iput v0, p0, Lct/at;->j:I

    iput v0, p0, Lct/at;->k:I

    return-void
.end method

.method private static a(Ljava/util/ArrayList;IIZ)Ljava/util/ArrayList;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-gtz p2, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    add-int v1, p1, p2

    invoke-virtual {p0, p1, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_3

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lct/r;

    new-instance v1, Lct/r;

    iget-object v2, p3, Lct/r;->a:Ljava/lang/String;

    iget p3, p3, Lct/r;->b:I

    invoke-direct {v1, v2, p3}, Lct/r;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_1
    return-object v0
.end method

.method private b()Z
    .locals 7

    iget-boolean v0, p0, Lct/at;->v:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lct/at;->w:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lct/at;->g:Ljava/lang/String;

    iget-object v5, p0, Lct/at;->x:[I

    iget v6, p0, Lct/at;->c:I

    invoke-static {v0, v5, v6}, Lct/ar;->a(Ljava/lang/String;[II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    long-to-int v0, v5

    iput v0, p0, Lct/at;->j:I

    iput-boolean v2, p0, Lct/at;->w:Z

    :cond_0
    iget-object v0, p0, Lct/at;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lct/at;->u:I

    iget-object v3, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lct/at;->t:Ljava/util/ArrayList;

    iget v3, p0, Lct/at;->u:I

    iget v4, p0, Lct/at;->b:I

    invoke-static {v0, v3, v4, v1}, Lct/at;->a(Ljava/util/ArrayList;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lct/at;->u:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lct/at;->u:I

    iget-object v3, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    :cond_1
    iput-boolean v2, p0, Lct/at;->v:Z

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v1, p0, Lct/at;->c:I

    invoke-static {v0, v1}, Lct/ar;->a(Ljava/util/ArrayList;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lct/at;->h:Ljava/net/Socket;

    iget v0, p0, Lct/at;->k:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    long-to-int v1, v5

    add-int/2addr v0, v1

    iput v0, p0, Lct/at;->k:I

    return v2

    :cond_3
    iput-boolean v2, p0, Lct/at;->v:Z

    iput v1, p0, Lct/at;->k:I

    :cond_4
    return v1
.end method

.method private c()Z
    .locals 6

    iget-boolean v0, p0, Lct/at;->r:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lct/at;->e:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lct/at;->q:I

    iget-object v2, p0, Lct/at;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lct/at;->e:Ljava/util/ArrayList;

    iget v2, p0, Lct/at;->q:I

    iget v3, p0, Lct/at;->b:I

    invoke-static {v0, v2, v3, v1}, Lct/at;->a(Ljava/util/ArrayList;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Lct/at;->q:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lct/at;->q:I

    iget-object v3, p0, Lct/at;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    iput-boolean v1, p0, Lct/at;->r:Z

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lct/at;->c:I

    invoke-static {v0, v4}, Lct/ar;->a(Ljava/util/ArrayList;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lct/at;->h:Ljava/net/Socket;

    iget v0, p0, Lct/at;->k:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int v2, v4

    add-int/2addr v0, v2

    iput v0, p0, Lct/at;->k:I

    return v1

    :cond_2
    iput-boolean v1, p0, Lct/at;->r:Z

    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lct/at;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lct/at;->o:Z

    iget-object v0, p0, Lct/at;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lct/at;->p:Z

    iget-object v0, p0, Lct/at;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lct/at;->r:Z

    iget-boolean v0, p0, Lct/at;->p:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lct/at;->f:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lct/at;->s:Z

    invoke-static {}, Lct/ax;->b()V

    :goto_5
    iget-boolean v0, p0, Lct/at;->o:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lct/at;->r:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lct/at;->v:Z

    if-nez v0, :cond_14

    :cond_5
    iget v0, p0, Lct/at;->y:I

    iget v3, p0, Lct/at;->m:I

    if-gt v0, v3, :cond_14

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/at;->y:I

    iget-boolean v0, p0, Lct/at;->o:Z

    if-nez v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lct/at;->d:Ljava/util/ArrayList;

    iget v5, p0, Lct/at;->n:I

    iget v6, p0, Lct/at;->a:I

    invoke-static {v0, v5, v6, v2}, Lct/at;->a(Ljava/util/ArrayList;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    iget v5, p0, Lct/at;->n:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lct/at;->n:I

    iget-object v6, p0, Lct/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_7

    :cond_6
    iput-boolean v2, p0, Lct/at;->o:Z

    :cond_7
    iget v5, p0, Lct/at;->c:I

    invoke-static {v0, v5}, Lct/ar;->a(Ljava/util/ArrayList;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lct/at;->h:Ljava/net/Socket;

    iput v1, p0, Lct/at;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    long-to-int v0, v5

    :goto_6
    iput v0, p0, Lct/at;->k:I

    :cond_8
    :goto_7
    invoke-static {}, Lct/ax;->b()V

    goto/16 :goto_8

    :cond_9
    iget-boolean v0, p0, Lct/at;->s:Z

    if-nez v0, :cond_b

    invoke-static {}, Lct/aw;->c()I

    move-result v0

    if-ne v0, v2, :cond_a

    invoke-direct {p0}, Lct/at;->b()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lct/at;->c()Z

    move-result v0

    goto :goto_7

    :cond_a
    invoke-direct {p0}, Lct/at;->c()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lct/at;->b()Z

    goto :goto_7

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, p0, Lct/at;->r:Z

    if-nez v3, :cond_d

    iget-object v3, p0, Lct/at;->e:Ljava/util/ArrayList;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c

    iget v3, p0, Lct/at;->q:I

    iget-object v4, p0, Lct/at;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    iget-object v0, p0, Lct/at;->e:Ljava/util/ArrayList;

    iget v3, p0, Lct/at;->q:I

    iget v4, p0, Lct/at;->b:I

    invoke-static {v0, v3, v4, v2}, Lct/at;->a(Ljava/util/ArrayList;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c

    iget v3, p0, Lct/at;->q:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lct/at;->q:I

    iget-object v4, p0, Lct/at;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_d

    :cond_c
    iput-boolean v2, p0, Lct/at;->r:Z

    :cond_d
    move-object v7, v0

    iget-boolean v0, p0, Lct/at;->w:Z

    if-nez v0, :cond_e

    iget-object v3, p0, Lct/at;->g:Ljava/lang/String;

    iget-object v4, p0, Lct/at;->x:[I

    iget v5, p0, Lct/at;->c:I

    iget v6, p0, Lct/at;->b:I

    iget-object v8, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-static/range {v3 .. v8}, Lct/ar;->a(Ljava/lang/String;[IIILjava/util/ArrayList;Ljava/util/ArrayList;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lct/at;->h:Ljava/net/Socket;

    sget v0, Lct/ar;->a:I

    iput v0, p0, Lct/at;->j:I

    sget v0, Lct/ar;->b:I

    iput v0, p0, Lct/at;->k:I

    iput-boolean v2, p0, Lct/at;->w:Z

    iget v0, p0, Lct/at;->u:I

    iget v3, p0, Lct/at;->b:I

    iget-object v4, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lct/at;->u:I

    iget-object v3, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_8

    iput-boolean v2, p0, Lct/at;->v:Z

    goto/16 :goto_7

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, p0, Lct/at;->v:Z

    if-nez v3, :cond_10

    iget-object v3, p0, Lct/at;->t:Ljava/util/ArrayList;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    iget v3, p0, Lct/at;->u:I

    iget-object v4, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    iget-object v0, p0, Lct/at;->t:Ljava/util/ArrayList;

    iget v3, p0, Lct/at;->u:I

    iget v4, p0, Lct/at;->b:I

    invoke-static {v0, v3, v4, v1}, Lct/at;->a(Ljava/util/ArrayList;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    iget v3, p0, Lct/at;->u:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lct/at;->u:I

    iget-object v4, p0, Lct/at;->t:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_10

    :cond_f
    iput-boolean v2, p0, Lct/at;->v:Z

    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-lez v3, :cond_11

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput v1, p0, Lct/at;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v0, p0, Lct/at;->c:I

    invoke-static {v3, v0}, Lct/ar;->a(Ljava/util/ArrayList;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lct/at;->h:Ljava/net/Socket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    long-to-int v0, v6

    goto/16 :goto_6

    :cond_11
    iput-boolean v2, p0, Lct/at;->v:Z

    iput-boolean v2, p0, Lct/at;->r:Z

    goto/16 :goto_7

    :goto_8
    iget-object v0, p0, Lct/at;->h:Ljava/net/Socket;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lct/at;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Lct/r;

    iget-object v2, p0, Lct/at;->h:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lct/at;->h:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getPort()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lct/r;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lct/at;->l:Lct/r;

    iput v1, p0, Lct/at;->i:I

    return-void

    :cond_12
    invoke-static {}, Lct/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, -0x3

    goto :goto_9

    :cond_13
    const/4 v0, -0x4

    :goto_9
    iput v0, p0, Lct/at;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lct/at;->h:Ljava/net/Socket;

    goto/16 :goto_5

    :cond_14
    return-void
.end method

.method public final a([I)V
    .locals 0

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lct/at;->x:[I

    return-void
.end method
