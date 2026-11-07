.class final Lct/ca$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/os/Handler;

.field private synthetic b:Lct/ca;


# direct methods
.method constructor <init>(Lct/ca;Landroid/os/Handler;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lct/ca$1;->b:Lct/ca;

    iput-object p2, p0, Lct/ca$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 118
    iget-object v0, p0, Lct/ca$1;->b:Lct/ca;

    iget-object v0, v0, Lct/ca;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 119
    iget-object v0, p0, Lct/ca$1;->b:Lct/ca;

    iget-object v1, p0, Lct/ca$1;->a:Landroid/os/Handler;

    iget-object v2, v0, Lct/ca;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v3, 0x0

    :goto_0
    iget-boolean v4, v0, Lct/ca;->g:Z

    if-eqz v4, :cond_a

    const/16 v4, 0x1386

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lct/ca$a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v3, Lct/ca$a;->b:Lct/ca$a;

    if-ne v3, v7, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lct/ca;->b:Lct/be;

    iget-object v3, v3, Lct/be;->a:Landroid/content/Context;

    invoke-static {v3}, Lct/b$a;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v0, v7}, Lct/ca;->a(Lct/ca$a;)V

    goto/16 :goto_4

    :cond_1
    iget-object v3, v7, Lct/ca$a;->a:Ljava/lang/String;

    iget-object v3, v0, Lct/ca;->b:Lct/be;

    invoke-static {v7}, Lct/ca$a;->b(Lct/ca$a;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lct/ca$a;->a(Lct/ca$a;)[B

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lct/be;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    iget-wide v8, v0, Lct/ca;->c:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v0, Lct/ca;->c:J

    iget-wide v8, v0, Lct/ca;->d:J

    invoke-static {v7}, Lct/ca$a;->a(Lct/ca$a;)[B

    move-result-object v10

    array-length v10, v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v0, Lct/ca;->d:J

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lct/b$a;->b([B)[B

    move-result-object v8

    iget-wide v9, v0, Lct/ca;->e:J

    if-eqz v8, :cond_2

    array-length v8, v8

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    int-to-long v11, v8

    add-long/2addr v9, v11

    iput-wide v9, v0, Lct/ca;->e:J

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    invoke-static {v7}, Lct/ca$a;->c(Lct/ca$a;)I

    move-result v9

    if-ne v5, v9, :cond_3

    invoke-static {v7}, Lct/ca$a;->d(Lct/ca$a;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    iput-object v3, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v3, 0x1387

    iput v3, v8, Landroid/os/Message;->what:I

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_3
    const/4 v8, 0x2

    invoke-static {v7}, Lct/ca$a;->c(Lct/ca$a;)I

    move-result v9

    if-ne v8, v9, :cond_5

    invoke-static {v7}, Lct/ca$a;->d(Lct/ca$a;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Location;

    invoke-static {v3, v8}, Lct/bq;->a(Ljava/lang/String;Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lct/ca;->b:Lct/be;

    :goto_2
    invoke-virtual {v3, v8}, Lct/be;->c(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v3, v0, Lct/ca;->b:Lct/be;

    sget-object v8, Lct/bp;->b:Landroid/location/Location;

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v3, v0, Lct/ca;->b:Lct/be;

    iget-object v3, v3, Lct/be;->a:Landroid/content/Context;

    invoke-static {v3}, Lct/b$a;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lct/ca;->h:Lct/bz;

    invoke-interface {v3}, Lct/bz;->d()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_6
    :goto_4
    move-object v3, v7

    goto/16 :goto_0

    :catch_1
    move-object v3, v7

    :catch_2
    invoke-static {v3}, Lct/ca$a;->e(Lct/ca$a;)I

    iget-object v7, v0, Lct/ca;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lct/ca$a;

    invoke-static {v8}, Lct/ca$a;->c(Lct/ca$a;)I

    move-result v8

    invoke-static {v3}, Lct/ca$a;->c(Lct/ca$a;)I

    move-result v9

    if-ne v8, v9, :cond_7

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    invoke-static {v3}, Lct/ca$a;->f(Lct/ca$a;)I

    move-result v6

    if-lez v6, :cond_9

    if-nez v5, :cond_9

    invoke-static {v3}, Lct/ca$a;->f(Lct/ca$a;)I

    iget-object v5, v0, Lct/ca;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    invoke-virtual {v0, v3}, Lct/ca;->a(Lct/ca$a;)V

    :goto_6
    const-wide/16 v5, 0x1f40

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catch_3
    nop

    goto/16 :goto_0

    :cond_a
    return-void
.end method
