.class public final Lct/w;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Byte;

.field private b:Lct/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;[B)Lct/y;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lct/ab;
        }
    .end annotation

    invoke-static {p0, p1}, Lct/w;->b(Ljava/lang/String;[B)Lct/y;

    move-result-object p0

    return-object p0
.end method

.method private a(ILct/aa;)Z
    .locals 3

    iget-object v0, p0, Lct/w;->b:Lct/a;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lct/a;->a()Lct/ai;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lct/ai;->a:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lct/ai;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    iput-object p1, p0, Lct/w;->a:Ljava/lang/Byte;

    if-nez p1, :cond_0

    iget p1, v0, Lct/ai;->b:I

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput-object p1, p0, Lct/w;->a:Ljava/lang/Byte;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lct/w;->a:Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    iput p1, p2, Lct/aa;->q:I

    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v0

    iget-object v0, p0, Lct/w;->a:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->floatValue()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private static b(Ljava/lang/String;[B)Lct/y;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lct/ab;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-static {p0}, Lct/ay;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v3

    aput v3, v1, v2

    new-instance v2, Lct/y;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lct/y;-><init>(Ljava/lang/String;[I)V

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lct/y;->e:Ljava/lang/String;

    iput-object p1, v2, Lct/y;->i:[B

    iput-object p0, v2, Lct/y;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    new-instance p1, Lct/ab;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url format error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lct/ab;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Lct/y;)Lct/z;
    .locals 34

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v9, "OutOfMemory buffSize:"

    const-string v10, "/"

    const-string v11, "http://"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    :try_start_0
    invoke-static {}, Lct/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lct/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lct/o;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lct/o;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lct/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lct/a;

    move-result-object v1
    :try_end_0
    .catch Lct/l; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iput-object v1, v7, Lct/w;->b:Lct/a;
    :try_end_1
    .catch Lct/l; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lct/l;->printStackTrace()V

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ""

    sget-boolean v4, Lct/aw;->c:Z

    const/4 v6, 0x0

    if-nez v4, :cond_6

    if-eqz v1, :cond_2

    invoke-static {}, Lct/ax;->c()V

    iget-object v4, v8, Lct/y;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Lct/a;->a(Ljava/lang/String;)Lct/s$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lct/s$a;->c:Ljava/util/List;

    iget-object v3, v1, Lct/s$a;->b:Ljava/lang/String;

    :cond_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, v8, Lct/y;->n:I

    if-le v1, v2, :cond_1

    iget v1, v8, Lct/y;->n:I

    invoke-interface {v0, v6, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v2, v8, Lct/y;->c:[I

    if-eqz v2, :cond_3

    array-length v4, v2

    if-lez v4, :cond_3

    array-length v4, v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_4

    aget v14, v2, v5

    new-instance v6, Lct/r;

    iget-object v15, v8, Lct/y;->a:Ljava/lang/String;

    invoke-direct {v6, v15, v14}, Lct/r;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    new-instance v2, Lct/r;

    iget-object v4, v8, Lct/y;->a:Ljava/lang/String;

    const/16 v5, 0x50

    invoke-direct {v2, v4, v5}, Lct/r;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lct/r;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "accessList:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->b()V

    goto :goto_4

    :cond_5
    move-object v14, v0

    move v15, v1

    move-object/from16 v18, v3

    goto :goto_5

    :cond_6
    new-instance v1, Lct/r;

    iget-object v2, v8, Lct/y;->d:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-direct {v1, v2, v4}, Lct/r;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v14, v0

    move-object/from16 v18, v3

    const/4 v15, 0x0

    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sdk:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lct/o;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lct/y;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Halley-sdk"

    invoke-virtual {v8, v1, v0}, Lct/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lct/z;

    invoke-direct {v6}, Lct/z;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    iget v0, v8, Lct/y;->n:I

    if-gt v1, v0, :cond_53

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v20, v9

    const/4 v9, 0x0

    iput v9, v6, Lct/z;->a:I

    iput v9, v6, Lct/z;->c:I

    iput v9, v6, Lct/z;->d:I

    const/4 v9, 0x0

    iput-object v9, v6, Lct/z;->e:Lorg/apache/http/HttpResponse;

    iput-object v9, v6, Lct/z;->b:[B

    new-instance v9, Lct/aa;

    invoke-direct {v9}, Lct/aa;-><init>()V

    invoke-static {}, Lct/aw;->b()V

    invoke-static {}, Lct/aw;->e()Z

    move-result v0

    move-wide/from16 v21, v4

    const/4 v4, -0x4

    if-nez v0, :cond_8

    iput v4, v6, Lct/z;->a:I

    iget-object v0, v8, Lct/y;->b:Ljava/lang/String;

    iput-object v0, v9, Lct/aa;->c:Ljava/lang/String;

    iget-object v0, v8, Lct/y;->p:Ljava/lang/String;

    iput-object v0, v9, Lct/aa;->m:Ljava/lang/String;

    iput v1, v9, Lct/aa;->p:I

    const-string v0, "Network unable before request"

    iput-object v0, v9, Lct/aa;->o:Ljava/lang/String;

    iput v4, v9, Lct/aa;->h:I

    iget-boolean v0, v8, Lct/y;->g:Z

    if-eqz v0, :cond_7

    iget v0, v6, Lct/z;->a:I

    invoke-direct {v7, v0, v9}, Lct/w;->a(ILct/aa;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lct/ac;

    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v3, v9

    move-object/from16 v5, v18

    move-object v9, v6

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lct/ac;-><init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_7

    :cond_7
    move-object v9, v6

    :goto_7
    return-object v9

    :cond_8
    iget v0, v8, Lct/y;->n:I

    if-ne v1, v0, :cond_9

    const/16 v23, 0x1

    goto :goto_8

    :cond_9
    const/16 v23, 0x0

    :goto_8
    :try_start_2
    rem-int v0, v1, v19
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_21
    .catchall {:try_start_2 .. :try_end_2} :catchall_12

    if-ge v0, v15, :cond_a

    :try_start_3
    const-string v5, "Host"

    iget-object v4, v8, Lct/y;->d:Ljava/lang/String;

    invoke-virtual {v8, v5, v4}, Lct/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "x-tx-host"

    iget-object v5, v8, Lct/y;->d:Ljava/lang/String;

    invoke-virtual {v8, v4, v5}, Lct/y;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, 0x1

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v10, v2

    move-object v14, v6

    move/from16 v6, v23

    const/4 v4, 0x1

    goto/16 :goto_45

    :catch_2
    move-exception v0

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move-object/from16 v29, v14

    move/from16 v28, v15

    move-object/from16 v11, v20

    const/4 v4, 0x1

    :goto_9
    const/16 v20, 0x0

    const/16 v24, 0x0

    move-object v10, v2

    :goto_a
    move-object v14, v6

    move/from16 v6, v23

    goto/16 :goto_47

    :cond_a
    const/4 v4, 0x0

    :goto_b
    :try_start_4
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/r;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v12

    iget v5, v8, Lct/y;->m:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_20
    .catchall {:try_start_4 .. :try_end_4} :catchall_11

    move/from16 v26, v4

    int-to-long v4, v5

    cmp-long v27, v24, v4

    if-lez v27, :cond_b

    :try_start_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/r;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v10, v2

    :goto_c
    move-object v14, v6

    :goto_d
    move/from16 v6, v23

    goto/16 :goto_43

    :catch_3
    move-exception v0

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move-object/from16 v29, v14

    move/from16 v28, v15

    move-object/from16 v11, v20

    move/from16 v4, v26

    goto :goto_9

    :cond_b
    :goto_e
    :try_start_6
    iput-object v0, v9, Lct/aa;->a:Lct/r;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1f
    .catchall {:try_start_6 .. :try_end_6} :catchall_10

    if-eqz v4, :cond_11

    :try_start_7
    iget-object v4, v0, Lct/r;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_10

    const-string v5, ":"

    if-eqz v4, :cond_d

    :try_start_8
    iget v4, v0, Lct/r;->b:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_10

    move-object/from16 v24, v2

    const/4 v2, -0x1

    if-eq v4, v2, :cond_c

    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lct/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lct/r;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lct/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_d
    move-object/from16 v24, v2

    iget v2, v0, Lct/r;->b:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lct/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lct/r;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lct/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :goto_10
    iget-object v2, v8, Lct/y;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_11
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_10
    :goto_12
    const/4 v2, 0x0

    iput-boolean v2, v9, Lct/aa;->d:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v2, v0

    move-object/from16 v4, v24

    goto :goto_14

    :catchall_2
    move-exception v0

    goto/16 :goto_42

    :catch_4
    move-exception v0

    goto :goto_13

    :catch_5
    move-exception v0

    move-object/from16 v24, v2

    :goto_13
    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move-object/from16 v29, v14

    move/from16 v28, v15

    move-object/from16 v11, v20

    move-object/from16 v10, v24

    move/from16 v4, v26

    const/16 v20, 0x0

    const/16 v24, 0x0

    goto/16 :goto_a

    :cond_11
    move-object/from16 v24, v2

    const/4 v2, 0x1

    :try_start_a
    iput-boolean v2, v9, Lct/aa;->d:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1e
    .catchall {:try_start_a .. :try_end_a} :catchall_f

    move-object/from16 v2, v24

    const/4 v4, 0x0

    :goto_14
    :try_start_b
    iput-object v2, v9, Lct/aa;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "retry:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",url:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lct/aa;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",isJump:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v9, Lct/aa;->d:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",accessIP:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lct/aa;->a:Lct/r;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->b()V

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1d
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    move-object/from16 v25, v10

    :try_start_c
    iget-object v10, v8, Lct/y;->h:Ljava/util/Map;

    invoke-interface {v5, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v10
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1c
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    move-object/from16 v27, v11

    const-string v11, "X-Online-Host"

    if-lez v10, :cond_13

    :try_start_d
    iget-boolean v10, v9, Lct/aa;->d:Z

    if-nez v10, :cond_13

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_15
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v28, v10

    move-object/from16 v10, v24

    check-cast v10, Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v29, v14

    :try_start_e
    move-object/from16 v14, v24

    check-cast v14, Ljava/lang/String;

    invoke-interface {v0, v10, v14}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, v28

    move-object/from16 v14, v29

    goto :goto_15

    :cond_12
    move-object/from16 v29, v14

    sget-boolean v10, Lct/aw;->c:Z

    if-eqz v10, :cond_14

    iget-object v10, v8, Lct/y;->d:Ljava/lang/String;

    invoke-interface {v0, v11, v10}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_17

    :catchall_3
    move-exception v0

    move-object v10, v4

    goto/16 :goto_c

    :catch_6
    move-exception v0

    move-object/from16 v29, v14

    :goto_16
    move-object v10, v4

    move-object v14, v6

    move/from16 v28, v15

    move-object/from16 v11, v20

    move/from16 v6, v23

    move/from16 v4, v26

    const/16 v20, 0x0

    goto/16 :goto_46

    :cond_13
    move-object/from16 v29, v14

    :cond_14
    :goto_17
    :try_start_f
    iget-boolean v10, v9, Lct/aa;->d:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1b
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    if-eqz v10, :cond_16

    :try_start_10
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_18
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v28, v5

    move-object/from16 v5, v24

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v14, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v28

    goto :goto_18

    :cond_15
    sget-boolean v5, Lct/aw;->c:Z

    if-eqz v5, :cond_16

    invoke-static {v2}, Lct/ay;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v11, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_19

    :catch_7
    move-exception v0

    goto :goto_16

    :cond_16
    :goto_19
    :try_start_11
    iget-object v2, v8, Lct/y;->i:[B
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1b
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    if-eqz v2, :cond_17

    :try_start_12
    array-length v5, v2

    if-lez v5, :cond_17

    move-object v5, v0

    check-cast v5, Lorg/apache/http/client/methods/HttpPost;

    new-instance v10, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v10, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :cond_17
    :try_start_13
    iget v2, v8, Lct/y;->k:I

    iget v5, v8, Lct/y;->l:I

    invoke-static {}, Lct/ax;->b()V

    new-instance v10, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v10}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v10, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v10, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x2000

    invoke-static {v10, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/4 v2, 0x0

    invoke-static {v10, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-static {v11}, Lct/aw;->a(Lorg/apache/http/client/HttpClient;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1b
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    invoke-virtual {v11, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1a
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    move v10, v15

    sub-long v14, v32, v30

    long-to-int v2, v14

    :try_start_15
    iput v2, v6, Lct/z;->c:I

    iget v2, v6, Lct/z;->c:I

    invoke-static {}, Lct/ax;->b()V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iput-object v0, v6, Lct/z;->e:Lorg/apache/http/HttpResponse;

    iget v5, v6, Lct/z;->c:I

    iput v5, v9, Lct/aa;->f:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_19
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    const/16 v5, 0xc8

    if-eq v2, v5, :cond_22

    const/16 v5, 0x133

    if-eq v2, v5, :cond_19

    const/16 v5, 0x198

    if-eq v2, v5, :cond_18

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    :cond_18
    :pswitch_0
    :try_start_16
    iput v2, v6, Lct/z;->a:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move-object v0, v4

    move-object v14, v6

    :goto_1a
    move/from16 v28, v10

    move-object/from16 v24, v11

    move-object/from16 v11, v20

    :goto_1b
    const/4 v6, 0x0

    const/4 v10, -0x1

    goto/16 :goto_32

    :catchall_4
    move-exception v0

    move-object v10, v4

    :goto_1c
    move-object v14, v6

    goto/16 :goto_20

    :cond_19
    :pswitch_1
    :try_start_17
    const-string v2, "location"

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    if-eqz v0, :cond_1a

    :try_start_18
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :try_start_19
    invoke-static {}, Lct/ax;->c()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    goto :goto_1d

    :catchall_5
    move-exception v0

    move-object v10, v2

    goto :goto_1c

    :cond_1a
    :try_start_1a
    invoke-static {}, Lct/ax;->d()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    move-object v2, v4

    :goto_1d
    :try_start_1b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    if-eqz v0, :cond_1b

    const/4 v0, -0x6

    :try_start_1c
    iput v0, v6, Lct/z;->a:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    move-object v14, v6

    move/from16 v28, v10

    move-object/from16 v24, v11

    move-object/from16 v11, v20

    const/4 v0, 0x0

    goto :goto_1b

    :catchall_6
    move-exception v0

    move-object v14, v6

    move-object/from16 v16, v11

    move/from16 v6, v23

    move/from16 v4, v26

    const/4 v10, 0x0

    goto/16 :goto_4f

    :catch_8
    move-exception v0

    move-object v14, v6

    move/from16 v28, v10

    move-object/from16 v24, v11

    move-object/from16 v11, v20

    move/from16 v6, v23

    move/from16 v4, v26

    const/4 v10, 0x0

    goto/16 :goto_2f

    :cond_1b
    :try_start_1d
    iget-boolean v0, v8, Lct/y;->o:Z

    if-nez v0, :cond_21

    invoke-static {}, Lct/ax;->c()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_9
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    iput v1, v9, Lct/aa;->p:I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v1, 0x1

    add-int/2addr v3, v1

    const/4 v1, 0x6

    if-le v3, v1, :cond_1c

    const/4 v1, -0x5

    iput v1, v6, Lct/z;->a:I

    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v12

    long-to-int v1, v0

    iput v1, v6, Lct/z;->f:I

    iget v0, v6, Lct/z;->a:I

    iput v0, v9, Lct/aa;->h:I

    iget-object v0, v8, Lct/y;->p:Ljava/lang/String;

    iput-object v0, v9, Lct/aa;->m:Ljava/lang/String;

    iget-object v0, v8, Lct/y;->a:Ljava/lang/String;

    iput-object v0, v9, Lct/aa;->b:Ljava/lang/String;

    iget v0, v6, Lct/z;->f:I

    iput v0, v9, Lct/aa;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v21

    long-to-int v1, v0

    iput v1, v9, Lct/aa;->j:I

    iput-object v2, v9, Lct/aa;->e:Ljava/lang/String;

    iget-object v0, v8, Lct/y;->i:[B

    if-eqz v0, :cond_1d

    iget-object v0, v8, Lct/y;->i:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, v9, Lct/aa;->k:J

    goto :goto_1e

    :cond_1d
    const-wide/16 v1, 0x0

    iput-wide v1, v9, Lct/aa;->k:J

    :goto_1e
    invoke-virtual {v8, v9}, Lct/y;->a(Lct/aa;)V

    iget-boolean v0, v8, Lct/y;->g:Z

    if-eqz v0, :cond_1e

    iget v0, v6, Lct/z;->a:I

    invoke-direct {v7, v0, v9}, Lct/w;->a(ILct/aa;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/Thread;

    new-instance v10, Lct/ac;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v9

    move/from16 v4, v26

    move-object/from16 v5, v18

    move-object v14, v6

    move/from16 v6, v23

    invoke-direct/range {v1 .. v6}, Lct/ac;-><init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V

    invoke-direct {v0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1f

    :cond_1e
    move-object v14, v6

    :goto_1f
    iget-boolean v0, v8, Lct/y;->f:Z

    if-nez v0, :cond_1f

    iget v0, v14, Lct/z;->a:I

    if-eqz v0, :cond_20

    :cond_1f
    invoke-virtual {v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_20
    return-object v14

    :cond_21
    move-object v14, v6

    move-object v0, v2

    goto/16 :goto_1a

    :catchall_7
    move-exception v0

    move-object v14, v6

    move-object v10, v2

    goto :goto_20

    :catch_9
    move-exception v0

    move-object v14, v6

    move/from16 v28, v10

    move-object/from16 v24, v11

    move-object/from16 v11, v20

    move/from16 v6, v23

    move/from16 v4, v26

    const/16 v20, 0x0

    move-object v10, v2

    goto/16 :goto_47

    :catchall_8
    move-exception v0

    move-object v14, v6

    move-object v10, v4

    :goto_20
    move-object/from16 v16, v11

    move/from16 v6, v23

    goto/16 :goto_3d

    :catch_a
    move-exception v0

    move-object v14, v6

    move/from16 v28, v10

    move-object/from16 v24, v11

    move-object/from16 v11, v20

    move/from16 v6, v23

    const/16 v20, 0x0

    move-object v10, v4

    goto/16 :goto_3f

    :cond_22
    move-object v14, v6

    :try_start_1e
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_18
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    :try_start_1f
    iget-boolean v0, v8, Lct/y;->f:Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_17
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    if-eqz v0, :cond_31

    :try_start_20
    iget v5, v8, Lct/y;->j:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_15
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    :try_start_21
    new-array v0, v5, [B
    :try_end_21
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_21} :catch_12
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_15
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    :try_start_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_15
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    const/4 v15, 0x0

    :goto_21
    if-ge v15, v5, :cond_23

    sub-int v6, v5, v15

    :try_start_23
    invoke-virtual {v2, v0, v15, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_b
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    move/from16 v28, v10

    const/4 v10, -0x1

    if-eq v6, v10, :cond_24

    add-int/2addr v15, v6

    move/from16 v10, v28

    goto :goto_21

    :catchall_9
    move-exception v0

    move-object v10, v4

    move-object/from16 v16, v11

    goto/16 :goto_39

    :catch_b
    move-exception v0

    move/from16 v28, v10

    move-object v10, v4

    move-object/from16 v24, v11

    :goto_22
    move-object/from16 v11, v20

    goto/16 :goto_2e

    :cond_23
    move/from16 v28, v10

    :cond_24
    :try_start_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_11
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    move-object/from16 v24, v11

    sub-long v10, v32, v30

    long-to-int v6, v10

    :try_start_25
    iput v6, v14, Lct/z;->d:I

    iget v6, v14, Lct/z;->d:I

    iput v6, v9, Lct/aa;->g:I

    iget v6, v14, Lct/z;->d:I

    invoke-static {}, Lct/ax;->b()V

    int-to-long v10, v15

    iput-wide v10, v9, Lct/aa;->l:J
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_10
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    if-lt v15, v5, :cond_25

    const/4 v10, -0x1

    :try_start_26
    iput v10, v14, Lct/z;->a:I

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v9, Lct/aa;->o:Ljava/lang/String;

    goto :goto_23

    :catch_c
    move-exception v0

    move-object v10, v4

    goto :goto_22

    :cond_25
    const/4 v10, -0x1

    if-nez v15, :cond_26

    const/4 v0, -0x2

    iput v0, v14, Lct/z;->a:I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_c
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    goto :goto_23

    :cond_26
    :try_start_27
    new-array v6, v15, [B

    iput-object v6, v14, Lct/z;->b:[B
    :try_end_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_27 .. :try_end_27} :catch_e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_c
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    :try_start_28
    iget-object v5, v14, Lct/z;->b:[B

    const/4 v6, 0x0

    invoke-static {v0, v6, v5, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v6, v14, Lct/z;->a:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_c
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    :goto_23
    :try_start_29
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_d
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    :goto_24
    move-object/from16 v11, v20

    const/4 v6, 0x0

    goto/16 :goto_30

    :catch_d
    move-exception v0

    move-object v2, v0

    :try_start_2a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_c
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    goto :goto_24

    :catch_e
    move-exception v0

    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_10
    .catchall {:try_start_2b .. :try_end_2b} :catchall_a

    :try_start_2c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_f
    .catchall {:try_start_2c .. :try_end_2c} :catchall_a

    :goto_25
    const/4 v2, -0x8

    goto :goto_26

    :catch_f
    move-exception v0

    move-object v2, v0

    :try_start_2d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25

    :goto_26
    iput v2, v14, Lct/z;->a:I

    new-instance v0, Ljava/lang/StringBuilder;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_10
    .catchall {:try_start_2d .. :try_end_2d} :catchall_a

    move-object/from16 v11, v20

    :try_start_2e
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lct/aa;->o:Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_14
    .catchall {:try_start_2e .. :try_end_2e} :catchall_a

    iput v1, v9, Lct/aa;->p:I

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v1, 0x1

    add-int/2addr v3, v1

    const/4 v1, 0x6

    if-le v3, v1, :cond_27

    const/4 v1, -0x5

    iput v1, v14, Lct/z;->a:I

    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v12

    long-to-int v1, v0

    iput v1, v14, Lct/z;->f:I

    iget v0, v14, Lct/z;->a:I

    iput v0, v9, Lct/aa;->h:I

    iget-object v0, v8, Lct/y;->p:Ljava/lang/String;

    iput-object v0, v9, Lct/aa;->m:Ljava/lang/String;

    iget-object v0, v8, Lct/y;->a:Ljava/lang/String;

    iput-object v0, v9, Lct/aa;->b:Ljava/lang/String;

    iget v0, v14, Lct/z;->f:I

    iput v0, v9, Lct/aa;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v21

    long-to-int v1, v0

    iput v1, v9, Lct/aa;->j:I

    iput-object v4, v9, Lct/aa;->e:Ljava/lang/String;

    iget-object v0, v8, Lct/y;->i:[B

    if-eqz v0, :cond_28

    iget-object v0, v8, Lct/y;->i:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, v9, Lct/aa;->k:J

    goto :goto_27

    :cond_28
    const-wide/16 v1, 0x0

    iput-wide v1, v9, Lct/aa;->k:J

    :goto_27
    invoke-virtual {v8, v9}, Lct/y;->a(Lct/aa;)V

    iget-boolean v0, v8, Lct/y;->g:Z

    if-eqz v0, :cond_29

    iget v0, v14, Lct/z;->a:I

    invoke-direct {v7, v0, v9}, Lct/w;->a(ILct/aa;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/Thread;

    new-instance v10, Lct/ac;

    const/4 v6, 0x1

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v9

    move/from16 v4, v26

    move-object/from16 v5, v18

    invoke-direct/range {v1 .. v6}, Lct/ac;-><init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V

    invoke-direct {v0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_29
    iget-boolean v0, v8, Lct/y;->f:Z

    if-nez v0, :cond_2a

    iget v0, v14, Lct/z;->a:I

    if-eqz v0, :cond_2b

    :cond_2a
    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_2b
    return-object v14

    :catch_10
    move-exception v0

    goto/16 :goto_2c

    :catch_11
    move-exception v0

    goto/16 :goto_2b

    :catch_12
    move-exception v0

    move/from16 v28, v10

    move-object/from16 v24, v11

    move-object/from16 v11, v20

    const/4 v10, -0x1

    move-object v6, v0

    :try_start_2f
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_14
    .catchall {:try_start_2f .. :try_end_2f} :catchall_a

    :try_start_30
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_13
    .catchall {:try_start_30 .. :try_end_30} :catchall_a

    :goto_28
    const/4 v2, -0x8

    goto :goto_29

    :catch_13
    move-exception v0

    move-object v2, v0

    :try_start_31
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    :goto_29
    iput v2, v14, Lct/z;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lct/aa;->o:Ljava/lang/String;

    int-to-long v5, v5

    iput-wide v5, v9, Lct/aa;->l:J
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_14
    .catchall {:try_start_31 .. :try_end_31} :catchall_a

    iput v1, v9, Lct/aa;->p:I

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v1, 0x1

    add-int/2addr v3, v1

    const/4 v1, 0x6

    if-le v3, v1, :cond_2c

    const/4 v1, -0x5

    iput v1, v14, Lct/z;->a:I

    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v12

    long-to-int v1, v0

    iput v1, v14, Lct/z;->f:I

    iget v0, v14, Lct/z;->a:I

    iput v0, v9, Lct/aa;->h:I

    iget-object v0, v8, Lct/y;->p:Ljava/lang/String;

    iput-object v0, v9, Lct/aa;->m:Ljava/lang/String;

    iget-object v0, v8, Lct/y;->a:Ljava/lang/String;

    iput-object v0, v9, Lct/aa;->b:Ljava/lang/String;

    iget v0, v14, Lct/z;->f:I

    iput v0, v9, Lct/aa;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v21

    long-to-int v1, v0

    iput v1, v9, Lct/aa;->j:I

    iput-object v4, v9, Lct/aa;->e:Ljava/lang/String;

    iget-object v0, v8, Lct/y;->i:[B

    if-eqz v0, :cond_2d

    iget-object v0, v8, Lct/y;->i:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, v9, Lct/aa;->k:J

    goto :goto_2a

    :cond_2d
    const-wide/16 v1, 0x0

    iput-wide v1, v9, Lct/aa;->k:J

    :goto_2a
    invoke-virtual {v8, v9}, Lct/y;->a(Lct/aa;)V

    iget-boolean v0, v8, Lct/y;->g:Z

    if-eqz v0, :cond_2e

    iget v0, v14, Lct/z;->a:I

    invoke-direct {v7, v0, v9}, Lct/w;->a(ILct/aa;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/Thread;

    new-instance v10, Lct/ac;

    const/4 v6, 0x1

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v9

    move/from16 v4, v26

    move-object/from16 v5, v18

    invoke-direct/range {v1 .. v6}, Lct/ac;-><init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V

    invoke-direct {v0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2e
    iget-boolean v0, v8, Lct/y;->f:Z

    if-nez v0, :cond_2f

    iget v0, v14, Lct/z;->a:I

    if-eqz v0, :cond_30

    :cond_2f
    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_30
    return-object v14

    :catch_14
    move-exception v0

    goto :goto_2d

    :catch_15
    move-exception v0

    move/from16 v28, v10

    :goto_2b
    move-object/from16 v24, v11

    :goto_2c
    move-object/from16 v11, v20

    :goto_2d
    move-object v10, v4

    :goto_2e
    move/from16 v4, v26

    const/4 v6, 0x1

    :goto_2f
    const/16 v20, 0x0

    goto/16 :goto_47

    :cond_31
    move/from16 v28, v10

    move-object/from16 v24, v11

    move-object/from16 v11, v20

    const/4 v10, -0x1

    :try_start_32
    invoke-static {}, Lct/ax;->c()V

    const/4 v6, 0x0

    iput v6, v14, Lct/z;->a:I

    :goto_30
    iget v0, v14, Lct/z;->a:I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_16
    .catchall {:try_start_32 .. :try_end_32} :catchall_a

    if-nez v0, :cond_37

    iput v1, v9, Lct/aa;->p:I

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v1, 0x1

    add-int/2addr v3, v1

    const/4 v1, 0x6

    if-le v3, v1, :cond_32

    const/4 v1, -0x5

    iput v1, v14, Lct/z;->a:I

    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v12

    long-to-int v1, v0

    iput v1, v14, Lct/z;->f:I

    iget v0, v14, Lct/z;->a:I

    iput v0, v9, Lct/aa;->h:I

    iget-object v0, v8, Lct/y;->p:Ljava/lang/String;

    iput-object v0, v9, Lct/aa;->m:Ljava/lang/String;

    iget-object v0, v8, Lct/y;->a:Ljava/lang/String;

    iput-object v0, v9, Lct/aa;->b:Ljava/lang/String;

    iget v0, v14, Lct/z;->f:I

    iput v0, v9, Lct/aa;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v21

    long-to-int v1, v0

    iput v1, v9, Lct/aa;->j:I

    iput-object v4, v9, Lct/aa;->e:Ljava/lang/String;

    iget-object v0, v8, Lct/y;->i:[B

    if-eqz v0, :cond_33

    iget-object v0, v8, Lct/y;->i:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, v9, Lct/aa;->k:J

    goto :goto_31

    :cond_33
    const-wide/16 v1, 0x0

    iput-wide v1, v9, Lct/aa;->k:J

    :goto_31
    invoke-virtual {v8, v9}, Lct/y;->a(Lct/aa;)V

    iget-boolean v0, v8, Lct/y;->g:Z

    if-eqz v0, :cond_34

    iget v0, v14, Lct/z;->a:I

    invoke-direct {v7, v0, v9}, Lct/w;->a(ILct/aa;)Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/Thread;

    new-instance v10, Lct/ac;

    const/4 v6, 0x1

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v9

    move/from16 v4, v26

    move-object/from16 v5, v18

    invoke-direct/range {v1 .. v6}, Lct/ac;-><init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V

    invoke-direct {v0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_34
    iget-boolean v0, v8, Lct/y;->f:Z

    if-nez v0, :cond_35

    iget v0, v14, Lct/z;->a:I

    if-eqz v0, :cond_36

    :cond_35
    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_36
    return-object v14

    :cond_37
    move-object v0, v4

    const/16 v23, 0x1

    :goto_32
    iput v1, v9, Lct/aa;->p:I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    add-int/lit8 v1, v1, 0x1

    :goto_33
    move v15, v1

    const/16 v17, 0x0

    goto :goto_34

    :cond_38
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x6

    if-le v3, v2, :cond_39

    add-int/lit8 v1, v1, 0x1

    const/4 v2, -0x5

    iput v2, v14, Lct/z;->a:I

    goto :goto_33

    :cond_39
    move v15, v1

    move/from16 v17, v3

    :goto_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v12

    long-to-int v2, v1

    iput v2, v14, Lct/z;->f:I

    iget v1, v14, Lct/z;->a:I

    iput v1, v9, Lct/aa;->h:I

    iget-object v1, v8, Lct/y;->p:Ljava/lang/String;

    iput-object v1, v9, Lct/aa;->m:Ljava/lang/String;

    iget-object v1, v8, Lct/y;->a:Ljava/lang/String;

    iput-object v1, v9, Lct/aa;->b:Ljava/lang/String;

    iget v1, v14, Lct/z;->f:I

    iput v1, v9, Lct/aa;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v21

    long-to-int v2, v1

    iput v2, v9, Lct/aa;->j:I

    iput-object v0, v9, Lct/aa;->e:Ljava/lang/String;

    iget-object v1, v8, Lct/y;->i:[B

    if-eqz v1, :cond_3a

    iget-object v1, v8, Lct/y;->i:[B

    array-length v1, v1

    int-to-long v1, v1

    goto :goto_35

    :cond_3a
    const-wide/16 v1, 0x0

    :goto_35
    iput-wide v1, v9, Lct/aa;->k:J

    invoke-virtual {v8, v9}, Lct/y;->a(Lct/aa;)V

    iget-boolean v1, v8, Lct/y;->g:Z

    if-eqz v1, :cond_3b

    iget v1, v14, Lct/z;->a:I

    invoke-direct {v7, v1, v9}, Lct/w;->a(ILct/aa;)Z

    move-result v1

    if-eqz v1, :cond_3b

    new-instance v5, Ljava/lang/Thread;

    new-instance v4, Lct/ac;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v9, v4

    move/from16 v4, v26

    move-object v10, v5

    move-object/from16 v5, v18

    const/16 v20, 0x0

    move/from16 v6, v23

    invoke-direct/range {v1 .. v6}, Lct/ac;-><init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V

    invoke-direct {v10, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_36

    :cond_3b
    const/16 v20, 0x0

    :goto_36
    iget-boolean v1, v8, Lct/y;->f:Z

    if-nez v1, :cond_3d

    iget v1, v14, Lct/z;->a:I

    if-eqz v1, :cond_3c

    goto :goto_37

    :cond_3c
    move-object v2, v0

    move v1, v15

    move/from16 v3, v17

    goto/16 :goto_4d

    :cond_3d
    :goto_37
    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v2, v0

    move-object v9, v11

    move-object v6, v14

    move v1, v15

    move/from16 v3, v17

    goto/16 :goto_4e

    :catchall_a
    move-exception v0

    goto :goto_38

    :catch_16
    move-exception v0

    goto :goto_3a

    :catchall_b
    move-exception v0

    move-object/from16 v24, v11

    :goto_38
    move-object v10, v4

    move-object/from16 v16, v24

    :goto_39
    move/from16 v4, v26

    const/4 v6, 0x1

    goto/16 :goto_4f

    :catch_17
    move-exception v0

    move/from16 v28, v10

    move-object/from16 v24, v11

    move-object/from16 v11, v20

    :goto_3a
    const/16 v20, 0x0

    move-object v10, v4

    move/from16 v4, v26

    const/4 v6, 0x1

    goto/16 :goto_47

    :catchall_c
    move-exception v0

    goto :goto_3c

    :catch_18
    move-exception v0

    goto :goto_3b

    :catch_19
    move-exception v0

    move-object v14, v6

    :goto_3b
    move/from16 v28, v10

    move-object/from16 v24, v11

    goto :goto_3e

    :catchall_d
    move-exception v0

    move-object v14, v6

    :goto_3c
    move-object/from16 v24, v11

    move-object v10, v4

    move/from16 v6, v23

    move-object/from16 v16, v24

    :goto_3d
    move/from16 v4, v26

    goto/16 :goto_4f

    :catch_1a
    move-exception v0

    move-object v14, v6

    move-object/from16 v24, v11

    move/from16 v28, v15

    :goto_3e
    move-object/from16 v11, v20

    const/16 v20, 0x0

    move-object v10, v4

    move/from16 v6, v23

    :goto_3f
    move/from16 v4, v26

    goto/16 :goto_47

    :catch_1b
    move-exception v0

    move-object v14, v6

    move/from16 v28, v15

    move-object/from16 v11, v20

    const/16 v20, 0x0

    goto :goto_41

    :catch_1c
    move-exception v0

    goto :goto_40

    :catchall_e
    move-exception v0

    move-object v14, v6

    move-object v10, v4

    goto/16 :goto_d

    :catch_1d
    move-exception v0

    move-object/from16 v25, v10

    :goto_40
    move-object/from16 v27, v11

    move-object/from16 v29, v14

    move/from16 v28, v15

    move-object/from16 v11, v20

    const/16 v20, 0x0

    move-object v14, v6

    :goto_41
    move-object v10, v4

    move/from16 v6, v23

    goto :goto_44

    :catchall_f
    move-exception v0

    move-object v14, v6

    move/from16 v6, v23

    move/from16 v4, v26

    const/4 v10, 0x0

    goto/16 :goto_45

    :catch_1e
    move-exception v0

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move-object/from16 v29, v14

    move/from16 v28, v15

    move-object/from16 v11, v20

    const/16 v20, 0x0

    move-object v14, v6

    move/from16 v6, v23

    move/from16 v4, v26

    const/4 v10, 0x0

    goto/16 :goto_46

    :catchall_10
    move-exception v0

    move-object/from16 v24, v2

    :goto_42
    move-object v14, v6

    move/from16 v6, v23

    move-object/from16 v10, v24

    :goto_43
    move/from16 v4, v26

    goto :goto_45

    :catch_1f
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move-object/from16 v29, v14

    move/from16 v28, v15

    move-object/from16 v11, v20

    const/16 v20, 0x0

    move-object v14, v6

    move/from16 v6, v23

    move-object/from16 v10, v24

    :goto_44
    move/from16 v4, v26

    goto :goto_46

    :catchall_11
    move-exception v0

    move-object/from16 v24, v2

    move/from16 v26, v4

    move-object v14, v6

    move/from16 v6, v23

    move-object/from16 v10, v24

    goto :goto_45

    :catch_20
    move-exception v0

    move-object/from16 v24, v2

    move/from16 v26, v4

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move-object/from16 v29, v14

    move/from16 v28, v15

    move-object/from16 v11, v20

    const/16 v20, 0x0

    move-object v14, v6

    move/from16 v6, v23

    move-object/from16 v10, v24

    goto :goto_46

    :catchall_12
    move-exception v0

    move-object/from16 v24, v2

    move-object v14, v6

    const/16 v20, 0x0

    move/from16 v6, v23

    move-object/from16 v10, v24

    const/4 v4, 0x0

    :goto_45
    const/16 v16, 0x0

    goto/16 :goto_4f

    :catch_21
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move-object/from16 v29, v14

    move/from16 v28, v15

    move-object/from16 v11, v20

    const/16 v20, 0x0

    move-object v14, v6

    move/from16 v6, v23

    move-object/from16 v10, v24

    const/4 v4, 0x0

    :goto_46
    const/16 v24, 0x0

    :goto_47
    :try_start_33
    invoke-static {}, Lct/ax;->e()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lct/aa;->n:Ljava/lang/String;

    invoke-static {v0}, Lct/ay;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lct/aa;->o:Ljava/lang/String;

    invoke-static {}, Lct/aw;->e()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-static {}, Lct/i;->a()Z

    move-result v2

    if-eqz v2, :cond_46

    instance-of v2, v0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v2, :cond_3e

    const/16 v0, -0xa

    goto :goto_48

    :cond_3e
    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_3f

    const/16 v0, -0xb

    goto :goto_48

    :cond_3f
    instance-of v2, v0, Ljava/net/SocketException;

    if-eqz v2, :cond_40

    const/16 v0, -0xc

    goto :goto_48

    :cond_40
    instance-of v2, v0, Lorg/apache/http/NoHttpResponseException;

    if-eqz v2, :cond_41

    const/16 v0, -0xd

    goto :goto_48

    :cond_41
    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_42

    const/16 v0, -0xe

    goto :goto_48

    :cond_42
    instance-of v2, v0, Lorg/apache/http/conn/HttpHostConnectException;

    if-eqz v2, :cond_43

    const/16 v0, -0xf

    goto :goto_48

    :cond_43
    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_44

    const/16 v0, -0x10

    goto :goto_48

    :cond_44
    instance-of v0, v0, Lorg/apache/http/MalformedChunkCodingException;

    if-eqz v0, :cond_45

    const/16 v0, -0x9

    goto :goto_48

    :cond_45
    const/4 v0, -0x3

    goto :goto_48

    :cond_46
    const/16 v0, -0x11

    goto :goto_48

    :cond_47
    const/4 v0, -0x4

    :goto_48
    iput v0, v14, Lct/z;->a:I
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_13

    iput v1, v9, Lct/aa;->p:I

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    add-int/lit8 v1, v1, 0x1

    :goto_49
    move v0, v1

    const/4 v15, 0x0

    goto :goto_4a

    :cond_48
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x6

    if-le v3, v2, :cond_49

    add-int/lit8 v1, v1, 0x1

    const/4 v2, -0x5

    iput v2, v14, Lct/z;->a:I

    goto :goto_49

    :cond_49
    move v0, v1

    move v15, v3

    :goto_4a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v12

    long-to-int v2, v1

    iput v2, v14, Lct/z;->f:I

    iget v1, v14, Lct/z;->a:I

    iput v1, v9, Lct/aa;->h:I

    iget-object v1, v8, Lct/y;->p:Ljava/lang/String;

    iput-object v1, v9, Lct/aa;->m:Ljava/lang/String;

    iget-object v1, v8, Lct/y;->a:Ljava/lang/String;

    iput-object v1, v9, Lct/aa;->b:Ljava/lang/String;

    iget v1, v14, Lct/z;->f:I

    iput v1, v9, Lct/aa;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v21

    long-to-int v2, v1

    iput v2, v9, Lct/aa;->j:I

    iput-object v10, v9, Lct/aa;->e:Ljava/lang/String;

    iget-object v1, v8, Lct/y;->i:[B

    if-eqz v1, :cond_4a

    iget-object v1, v8, Lct/y;->i:[B

    array-length v1, v1

    int-to-long v1, v1

    goto :goto_4b

    :cond_4a
    const-wide/16 v1, 0x0

    :goto_4b
    iput-wide v1, v9, Lct/aa;->k:J

    invoke-virtual {v8, v9}, Lct/y;->a(Lct/aa;)V

    iget-boolean v1, v8, Lct/y;->g:Z

    if-eqz v1, :cond_4b

    iget v1, v14, Lct/z;->a:I

    invoke-direct {v7, v1, v9}, Lct/w;->a(ILct/aa;)Z

    move-result v1

    if-eqz v1, :cond_4b

    new-instance v5, Ljava/lang/Thread;

    new-instance v3, Lct/ac;

    move-object v1, v3

    move-object/from16 v2, p0

    move/from16 v17, v0

    move-object v0, v3

    move-object v3, v9

    move-object v9, v5

    move-object/from16 v5, v18

    invoke-direct/range {v1 .. v6}, Lct/ac;-><init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_4c

    :cond_4b
    move/from16 v17, v0

    :goto_4c
    if-eqz v24, :cond_4d

    iget-boolean v0, v8, Lct/y;->f:Z

    if-nez v0, :cond_4c

    iget v0, v14, Lct/z;->a:I

    if-eqz v0, :cond_4d

    :cond_4c
    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v2, v10

    move-object v9, v11

    move-object v6, v14

    move v3, v15

    move/from16 v1, v17

    goto :goto_4e

    :cond_4d
    move-object v2, v10

    move v3, v15

    move/from16 v1, v17

    :goto_4d
    move-object v9, v11

    move-object v6, v14

    :goto_4e
    move-object/from16 v10, v25

    move-object/from16 v11, v27

    move/from16 v15, v28

    move-object/from16 v14, v29

    goto/16 :goto_6

    :catchall_13
    move-exception v0

    move-object/from16 v16, v24

    :goto_4f
    iput v1, v9, Lct/aa;->p:I

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    const/4 v1, 0x1

    add-int/2addr v3, v1

    const/4 v1, 0x6

    if-le v3, v1, :cond_4e

    const/4 v1, -0x5

    iput v1, v14, Lct/z;->a:I

    :cond_4e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v12

    long-to-int v2, v1

    iput v2, v14, Lct/z;->f:I

    iget v1, v14, Lct/z;->a:I

    iput v1, v9, Lct/aa;->h:I

    iget-object v1, v8, Lct/y;->p:Ljava/lang/String;

    iput-object v1, v9, Lct/aa;->m:Ljava/lang/String;

    iget-object v1, v8, Lct/y;->a:Ljava/lang/String;

    iput-object v1, v9, Lct/aa;->b:Ljava/lang/String;

    iget v1, v14, Lct/z;->f:I

    iput v1, v9, Lct/aa;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v21

    long-to-int v2, v1

    iput v2, v9, Lct/aa;->j:I

    iput-object v10, v9, Lct/aa;->e:Ljava/lang/String;

    iget-object v1, v8, Lct/y;->i:[B

    if-eqz v1, :cond_4f

    iget-object v1, v8, Lct/y;->i:[B

    array-length v1, v1

    int-to-long v1, v1

    goto :goto_50

    :cond_4f
    const-wide/16 v1, 0x0

    :goto_50
    iput-wide v1, v9, Lct/aa;->k:J

    invoke-virtual {v8, v9}, Lct/y;->a(Lct/aa;)V

    iget-boolean v1, v8, Lct/y;->g:Z

    if-eqz v1, :cond_50

    iget v1, v14, Lct/z;->a:I

    invoke-direct {v7, v1, v9}, Lct/w;->a(ILct/aa;)Z

    move-result v1

    if-eqz v1, :cond_50

    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lct/ac;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object v3, v9

    move-object/from16 v5, v18

    invoke-direct/range {v1 .. v6}, Lct/ac;-><init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    :cond_50
    if-eqz v16, :cond_52

    iget-boolean v1, v8, Lct/y;->f:Z

    if-nez v1, :cond_51

    iget v1, v14, Lct/z;->a:I

    if-eqz v1, :cond_52

    :cond_51
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_52
    throw v0

    :cond_53
    move-object v14, v6

    return-object v14

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lct/y;)Lct/z;
    .locals 0

    invoke-static {}, Lct/ax;->c()V

    invoke-direct {p0, p1}, Lct/w;->b(Lct/y;)Lct/z;

    move-result-object p1

    return-object p1
.end method
