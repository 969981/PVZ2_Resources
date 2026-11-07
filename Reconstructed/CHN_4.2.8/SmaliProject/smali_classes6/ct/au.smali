.class public final Lct/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Lct/au;


# instance fields
.field private volatile b:Z

.field private c:I

.field private d:Ljava/util/Map;

.field private e:Ljava/net/Socket;

.field private f:I

.field private g:Lct/r;

.field private h:Ljava/io/OutputStream;

.field private i:Ljava/io/InputStream;

.field private j:Ljava/lang/Object;

.field private k:I

.field private l:I

.field private m:J

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lct/au;

    invoke-direct {v0}, Lct/au;-><init>()V

    sput-object v0, Lct/au;->a:Lct/au;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lct/au;->b:Z

    const/16 v0, 0x4e20

    iput v0, p0, Lct/au;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lct/au;->d:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lct/au;->f:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lct/au;->j:Ljava/lang/Object;

    iput v0, p0, Lct/au;->k:I

    iput v0, p0, Lct/au;->l:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lct/au;->m:J

    iput v0, p0, Lct/au;->n:I

    iput v0, p0, Lct/au;->o:I

    return-void
.end method

.method public static declared-synchronized a()Lct/au;
    .locals 2

    const-class v0, Lct/au;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lct/au;->a:Lct/au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lct/au;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lct/au;->f:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lct/av;

    if-eqz v1, :cond_0

    iput p1, v1, Lct/av;->b:I

    if-eqz p2, :cond_0

    iput-object p2, v1, Lct/av;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lct/av;

    invoke-direct {p0, v1}, Lct/au;->b(Lct/av;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lct/av;)Z
    .locals 8

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_5

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p1, Lct/av;->j:J

    sub-long/2addr v3, v5

    iget v5, p1, Lct/av;->k:I

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_5

    if-eqz p1, :cond_2

    iget-object v3, p0, Lct/au;->d:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lct/au;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lct/av;->k()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lct/av;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lct/av;->k()I

    move-result v3

    invoke-virtual {p1}, Lct/av;->k()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_5

    invoke-direct {p0}, Lct/au;->e()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doSendData try send task:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lct/av;->k()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",sk:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->c()V

    invoke-virtual {p1}, Lct/av;->l()[B

    move-result-object v3

    iget-object v4, p0, Lct/au;->h:Ljava/io/OutputStream;

    array-length v5, v3

    invoke-virtual {v4, v3, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    iget-object v4, p0, Lct/au;->h:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lct/au;->m:J

    array-length v3, v3

    invoke-static {}, Lct/ax;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_2
    invoke-static {}, Lct/ax;->f()V

    const/4 v4, -0x5

    iput v4, p1, Lct/av;->b:I

    invoke-static {v3}, Lct/ay;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lct/av;->c:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_0

    :try_start_3
    iget v3, p1, Lct/av;->b:I

    invoke-direct {p0, v3}, Lct/au;->a(I)V

    iget-object v3, p0, Lct/au;->h:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    iget-object v3, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    invoke-direct {p0}, Lct/au;->g()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :goto_3
    if-nez v2, :cond_3

    :try_start_5
    iget p1, p1, Lct/av;->b:I

    invoke-direct {p0, p1}, Lct/au;->a(I)V

    iget-object p1, p0, Lct/au;->h:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    iget-object p1, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    invoke-direct {p0}, Lct/au;->g()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_2
    move-exception p1

    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    throw v0

    :cond_4
    invoke-direct {p0}, Lct/au;->g()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :goto_5
    monitor-exit p0

    throw p1

    :cond_5
    monitor-exit p0

    return v2
.end method

.method private declared-synchronized c()I
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doReadData: try read data...sk:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->c()V

    const/4 v2, 0x4

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    const/4 v6, -0x1

    if-ge v5, v2, :cond_2

    invoke-static {}, Lct/ax;->b()V

    iget-object v7, p0, Lct/au;->i:Ljava/io/InputStream;

    rsub-int/lit8 v8, v5, 0x4

    invoke-virtual {v7, v3, v5, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-lez v7, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lct/au;->m:J

    sub-long/2addr v8, v10

    long-to-int v9, v8

    iput v9, p0, Lct/au;->n:I

    add-int/2addr v5, v7

    if-ne v5, v2, :cond_0

    goto :goto_1

    :cond_1
    if-eq v7, v6, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v7, -0x6

    if-ne v5, v2, :cond_a

    invoke-static {v3}, Lct/ay;->a([B)I

    move-result v8

    if-le v8, v2, :cond_9

    const/high16 v9, 0x80000

    if-le v8, v9, :cond_3

    goto/16 :goto_5

    :cond_3
    new-array v9, v8, [B

    invoke-static {v3, v4, v9, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_4
    :goto_2
    if-ge v5, v8, :cond_6

    sub-int v10, v8, v5

    invoke-static {}, Lct/ax;->b()V

    iget-object v11, p0, Lct/au;->i:Ljava/io/InputStream;

    invoke-virtual {v11, v9, v5, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    invoke-static {}, Lct/ax;->b()V

    if-lez v10, :cond_5

    add-int/2addr v5, v10

    goto :goto_2

    :cond_5
    if-ne v10, v6, :cond_4

    :cond_6
    if-eq v5, v8, :cond_7

    invoke-static {}, Lct/ax;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readLen != packSize,rspBuff:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lct/ay;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lct/au;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v7

    :cond_7
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    long-to-int v2, v5

    iput v2, p0, Lct/au;->o:I

    invoke-static {}, Lct/ax;->c()V

    new-instance v2, Lct/bc;

    invoke-direct {v2}, Lct/bc;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2, v9}, Lct/bc;->a([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, v2, Lct/bc;->a:Lct/bd;

    iget v3, v3, Lct/bd;->b:I

    iget-object v5, p0, Lct/au;->d:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lct/av;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lct/av;->k()I

    move-result v6

    if-ne v6, v3, :cond_8

    iput-object v2, v5, Lct/av;->a:Lct/bc;

    iput v4, v5, Lct/av;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    long-to-int v0, v6

    iput v0, v5, Lct/av;->h:I

    iget v0, p0, Lct/au;->l:I

    iput v0, v5, Lct/av;->e:I

    iget-object v0, p0, Lct/au;->g:Lct/r;

    iput-object v0, v5, Lct/av;->i:Lct/r;

    iget-object v0, p0, Lct/au;->d:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v5, Lct/av;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :cond_8
    const/16 v4, -0x32

    :goto_3
    monitor-exit p0

    return v4

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lct/ay;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x8

    invoke-direct {p0, v1, v0}, Lct/au;->a(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    :goto_4
    :try_start_6
    throw v0

    :cond_9
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packSizeFail:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lct/au;->a(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return v7

    :cond_a
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readLen fail:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lct/au;->a(ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return v7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lct/ax;->f()V

    invoke-static {v0}, Lct/ay;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x7

    invoke-direct {p0, v1, v0}, Lct/au;->a(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return v1

    :goto_6
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lct/au;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/au;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lct/au;->j:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lct/au;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lct/au;->e:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lct/au;->h:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lct/au;->i:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lct/au;->i:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iput-object v1, p0, Lct/au;->i:Ljava/io/InputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lct/au;->i:Ljava/io/InputStream;

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lct/au;->h:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lct/au;->h:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_1
    :try_start_4
    iput-object v1, p0, Lct/au;->h:Ljava/io/OutputStream;

    goto :goto_1

    :catchall_1
    move-exception v0

    iput-object v1, p0, Lct/au;->h:Ljava/io/OutputStream;

    throw v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_2

    :try_start_5
    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iput-object v1, p0, Lct/au;->e:Ljava/net/Socket;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    :try_start_7
    iput-object v1, p0, Lct/au;->e:Ljava/net/Socket;

    throw v0

    :catch_2
    iput-object v1, p0, Lct/au;->e:Ljava/net/Socket;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-static {}, Lct/ax;->d()V

    new-instance v0, Lct/at;

    invoke-direct {v0}, Lct/at;-><init>()V

    invoke-static {}, Lct/b$a;->c()Lct/b$a;

    move-result-object v1

    iget-object v1, v1, Lct/b$a;->b:Lct/d;

    iget v1, v1, Lct/d;->a:I

    iput v1, v0, Lct/at;->c:I

    invoke-static {}, Lct/b$a;->c()Lct/b$a;

    move-result-object v1

    iget-object v1, v1, Lct/b$a;->b:Lct/d;

    iget v1, v1, Lct/d;->d:I

    iput v1, v0, Lct/at;->a:I

    iput v1, v0, Lct/at;->b:I

    const-string v1, "dispatcher.3g.qq.com"

    sget-object v2, Lct/c;->a:[I

    iput-object v1, v0, Lct/at;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lct/at;->a([I)V

    invoke-static {}, Lct/t;->a()Lct/t;

    move-result-object v2

    invoke-virtual {v2, v1}, Lct/t;->a(Ljava/lang/String;)Lct/s$a;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lct/s$a;->c:Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v2, v0, Lct/at;->d:Ljava/util/ArrayList;

    :cond_0
    invoke-static {}, Lct/b$a;->c()Lct/b$a;

    move-result-object v1

    iget-object v1, v1, Lct/b$a;->a:Lct/c;

    iget-wide v1, v1, Lct/c;->b:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-gtz v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lct/b$a;->c()Lct/b$a;

    move-result-object v7

    iget-object v7, v7, Lct/b$a;->b:Lct/d;

    iget v7, v7, Lct/d;->e:I

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v1, v7

    cmp-long v7, v1, v3

    if-gez v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-static {}, Lct/b$a;->c()Lct/b$a;

    move-result-object v1

    iget-object v1, v1, Lct/b$a;->a:Lct/c;

    invoke-virtual {v1}, Lct/c;->c()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lct/at;->e:Ljava/util/ArrayList;

    iput-boolean v5, v0, Lct/at;->f:Z

    iput v6, p0, Lct/au;->l:I

    invoke-virtual {v0}, Lct/at;->a()V

    iget v1, v0, Lct/at;->j:I

    iput v1, p0, Lct/au;->k:I

    iget v1, v0, Lct/at;->k:I

    iput v1, p0, Lct/au;->l:I

    iget v1, v0, Lct/at;->i:I

    const/4 v2, -0x3

    if-nez v1, :cond_5

    iget-object v1, v0, Lct/at;->h:Ljava/net/Socket;

    iput-object v1, p0, Lct/au;->e:Ljava/net/Socket;

    iget-object v0, v0, Lct/at;->l:Lct/r;

    iput-object v0, p0, Lct/au;->g:Lct/r;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reConnect ok. sk:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",accessIP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lct/au;->g:Lct/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->d()V

    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    iget v1, p0, Lct/au;->c:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lct/au;->h:Ljava/io/OutputStream;

    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lct/au;->i:Ljava/io/InputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reConnect socket succ. sk:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "reConnect socket fail. sk:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->e()V

    invoke-static {v0}, Lct/ay;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lct/au;->a(ILjava/lang/String;)V

    invoke-direct {p0}, Lct/au;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    throw v0

    :cond_3
    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    if-nez v0, :cond_4

    const-string v0, "sk is null"

    invoke-direct {p0, v2, v0}, Lct/au;->a(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connect:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "close:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lct/au;->a(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    invoke-static {}, Lct/aw;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lct/i;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ret:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lct/at;->i:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lct/au;->a(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-void

    :cond_6
    const/16 v0, -0x10

    :try_start_6
    invoke-direct {p0, v0}, Lct/au;->a(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-wide/16 v0, 0xbb8

    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return-void

    :catch_1
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, -0x4

    :try_start_8
    invoke-direct {p0, v0}, Lct/au;->a(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const-wide/16 v0, 0x1388

    :try_start_9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit p0

    return-void

    :catch_2
    :cond_8
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lct/av;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lct/av;->j:J

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lct/av;->k()I

    move-result v0

    iget-object v1, p0, Lct/au;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lct/av;

    if-eqz v1, :cond_1

    invoke-static {}, Lct/ax;->d()V

    return-void

    :cond_1
    iget-object v1, p0, Lct/au;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x55f0

    iput v1, p1, Lct/av;->k:I

    invoke-direct {p0, p1}, Lct/au;->b(Lct/av;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lct/au;->d()V

    :try_start_0
    iget-object v1, p1, Lct/av;->d:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x16

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lct/au;->k:I

    iput v1, p1, Lct/av;->f:I

    iget v1, p0, Lct/au;->l:I

    iput v1, p1, Lct/av;->e:I

    iget v1, p0, Lct/au;->n:I

    iput v1, p1, Lct/av;->g:I

    iget v1, p0, Lct/au;->o:I

    iput v1, p1, Lct/av;->h:I

    const/4 v1, 0x0

    iput v1, p1, Lct/av;->b:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_0
    iget v1, p1, Lct/av;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/16 v1, -0xe

    iput v1, p1, Lct/av;->b:I

    iget v1, p0, Lct/au;->k:I

    iput v1, p1, Lct/av;->f:I

    iget v1, p0, Lct/au;->l:I

    iput v1, p1, Lct/av;->e:I

    iget v1, p0, Lct/au;->n:I

    iput v1, p1, Lct/av;->g:I

    iget v1, p0, Lct/au;->o:I

    iput v1, p1, Lct/av;->h:I

    :cond_3
    iget-object p1, p0, Lct/au;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final run()V
    .locals 3

    :catch_0
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0}, Lct/au;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lct/au;->c()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    invoke-static {}, Lct/ax;->b()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    invoke-static {}, Lct/ax;->b()V

    invoke-direct {p0, v1}, Lct/au;->a(I)V

    invoke-direct {p0}, Lct/au;->f()V

    invoke-direct {p0}, Lct/au;->g()V

    invoke-direct {p0}, Lct/au;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    invoke-direct {p0}, Lct/au;->b()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lct/au;->f()V

    invoke-direct {p0}, Lct/au;->g()V

    invoke-direct {p0}, Lct/au;->e()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v1, p0, Lct/au;->j:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_4

    iget-object v2, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    invoke-static {}, Lct/ax;->c()V

    iget-object v2, p0, Lct/au;->j:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    iget-object v2, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    invoke-static {}, Lct/ax;->c()V

    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    iput-boolean v0, p0, Lct/au;->b:Z

    throw v1

    :catch_1
    iput-boolean v0, p0, Lct/au;->b:Z

    return-void
.end method
