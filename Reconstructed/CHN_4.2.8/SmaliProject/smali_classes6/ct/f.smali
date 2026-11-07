.class public final Lct/f;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/ArrayList;

.field public i:I

.field public j:I

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lct/r;

.field public o:Z

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lct/g;
    .locals 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lct/bc;

    invoke-direct {v2}, Lct/bc;-><init>()V

    invoke-static {}, Lct/aw;->b()V

    invoke-static {}, Lct/aw;->e()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v0, -0x4

    iput v0, p0, Lct/f;->k:I

    const-string v0, "Network fail before schedule"

    iput-object v0, p0, Lct/f;->l:Ljava/lang/String;

    return-object v4

    :cond_0
    new-instance v3, Lct/ae;

    iget-object v6, p0, Lct/f;->a:Ljava/lang/String;

    iget-object v7, p0, Lct/f;->b:Ljava/lang/String;

    iget-object v8, p0, Lct/f;->h:Ljava/util/ArrayList;

    iget-object v9, p0, Lct/f;->e:Ljava/lang/String;

    iget-object v10, p0, Lct/f;->c:Ljava/lang/String;

    iget v11, p0, Lct/f;->d:I

    iget v12, p0, Lct/f;->i:I

    iget v13, p0, Lct/f;->j:I

    iget-object v14, p0, Lct/f;->g:Ljava/lang/String;

    move-object v5, v3

    invoke-direct/range {v5 .. v14}, Lct/ae;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    const-string v5, "#halley-proxy.HalleyDispatchService"

    invoke-virtual {v2, v5}, Lct/bc;->b(Ljava/lang/String;)V

    const-string v5, "srvDispatch"

    invoke-virtual {v2, v5}, Lct/bc;->a(Ljava/lang/String;)V

    const-string v5, "request"

    invoke-virtual {v2, v5, v3}, Lct/bc;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lct/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lct/ay;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lct/f;->f:Ljava/lang/String;

    invoke-static {v2}, Lct/i;->a(Lct/bc;)Lct/aq;

    move-result-object v2

    invoke-interface {v2}, Lct/aq;->b()V

    invoke-static {}, Lct/aw;->e()Z

    move-result v3

    iput-boolean v3, p0, Lct/f;->o:Z

    invoke-interface {v2}, Lct/aq;->e()Lct/r;

    move-result-object v3

    iput-object v3, p0, Lct/f;->n:Lct/r;

    invoke-interface {v2}, Lct/aq;->h()I

    move-result v3

    iput v3, p0, Lct/f;->p:I

    invoke-interface {v2}, Lct/aq;->f()I

    move-result v3

    iput v3, p0, Lct/f;->q:I

    invoke-interface {v2}, Lct/aq;->i()I

    move-result v3

    iput v3, p0, Lct/f;->r:I

    invoke-interface {v2}, Lct/aq;->g()I

    move-result v3

    iput v3, p0, Lct/f;->s:I

    invoke-interface {v2}, Lct/aq;->c()I

    move-result v3

    if-nez v3, :cond_a

    invoke-interface {v2}, Lct/aq;->a()Lct/bc;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Lct/aq;->a()Lct/bc;

    move-result-object v2

    new-instance v3, Lct/af;

    invoke-direct {v3}, Lct/af;-><init>()V

    const/4 v5, -0x8

    :try_start_0
    const-string v6, "response"

    invoke-virtual {v2, v6, v3}, Lct/bc;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lct/af;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    iput v5, p0, Lct/f;->k:I

    const-string v0, "Response is Null"

    iput-object v0, p0, Lct/f;->l:Ljava/lang/String;

    return-object v4

    :cond_1
    new-instance v3, Lct/g;

    invoke-direct {v3}, Lct/g;-><init>()V

    invoke-static {}, Lct/aw;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "unkonwn"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lct/f;->g:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v4, v2, Lct/af;->a:Ljava/util/Map;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7

    new-instance v5, Lct/s;

    iget-object v8, p0, Lct/f;->g:Ljava/lang/String;

    invoke-direct {v5, v8}, Lct/s;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lct/ag;

    iget-object v10, v10, Lct/ag;->a:Ljava/util/ArrayList;

    iget-object v11, v2, Lct/af;->a:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lct/ag;

    iget-object v11, v11, Lct/ag;->b:Ljava/lang/String;

    new-instance v12, Lct/s$a;

    invoke-direct {v12, v9, v6, v7, v11}, Lct/s$a;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Lct/r;

    invoke-direct {v11}, Lct/r;-><init>()V

    invoke-virtual {v11, v10}, Lct/r;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v12, Lct/s$a;->c:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {}, Lct/ax;->d()V

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v12}, Lct/s;->a(Lct/s$a;)V

    goto :goto_0

    :cond_5
    iput-object v5, v3, Lct/g;->a:Lct/s;

    goto :goto_2

    :cond_6
    iput-object v4, v3, Lct/g;->a:Lct/s;

    const/16 v4, -0x9

    iput v4, p0, Lct/f;->k:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "req apn:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lct/f;->g:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",current apn:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lct/f;->l:Ljava/lang/String;

    :cond_7
    :goto_2
    iget-object v4, v2, Lct/af;->c:Lct/ad;

    if-eqz v4, :cond_8

    new-instance v4, Lct/d;

    iget-object v5, v2, Lct/af;->c:Lct/ad;

    invoke-direct {v4, v5}, Lct/d;-><init>(Lct/ad;)V

    iput-object v4, v3, Lct/g;->b:Lct/d;

    :cond_8
    iget-object v4, v2, Lct/af;->b:Lct/ah;

    if-eqz v4, :cond_9

    new-instance v4, Lct/c;

    iget-object v2, v2, Lct/af;->b:Lct/ah;

    invoke-direct {v4, v2}, Lct/c;-><init>(Lct/ah;)V

    iput-object v4, v3, Lct/g;->c:Lct/c;

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    long-to-int v0, v4

    iput v0, p0, Lct/f;->t:I

    return-object v3

    :catch_0
    move-exception v0

    invoke-static {}, Lct/ax;->e()V

    iput v5, p0, Lct/f;->k:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lct/f;->m:Ljava/lang/String;

    invoke-static {v0}, Lct/ay;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lct/f;->l:Ljava/lang/String;

    return-object v4

    :cond_a
    invoke-interface {v2}, Lct/aq;->c()I

    move-result v0

    iput v0, p0, Lct/f;->k:I

    invoke-interface {v2}, Lct/aq;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lct/f;->m:Ljava/lang/String;

    return-object v4
.end method
