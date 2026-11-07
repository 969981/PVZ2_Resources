.class public final Lct/ar$a;
.super Lct/as$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public volatile b:Z

.field private c:Lct/r;

.field private e:I


# direct methods
.method public constructor <init>(Lct/r;I)V
    .locals 1

    invoke-direct {p0}, Lct/as$a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lct/ar$a;->a:Ljava/net/Socket;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lct/ar$a;->b:Z

    const/16 v0, 0x2710

    iput v0, p0, Lct/ar$a;->e:I

    iput-object p1, p0, Lct/ar$a;->c:Lct/r;

    iput p2, p0, Lct/ar$a;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    invoke-static {}, Lct/ax;->d()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lct/ar$a;->c:Lct/r;

    iget-object v2, v2, Lct/r;->a:Ljava/lang/String;

    iget-object v2, p0, Lct/ar$a;->c:Lct/r;

    iget v2, v2, Lct/r;->b:I

    invoke-static {}, Lct/ax;->b()V

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lct/ar$a;->c:Lct/r;

    iget-object v3, v3, Lct/r;->a:Ljava/lang/String;

    iget-object v4, p0, Lct/ar$a;->c:Lct/r;

    iget v4, v4, Lct/r;->b:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    iget v5, p0, Lct/ar$a;->e:I

    invoke-virtual {v3, v2, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v3, p0, Lct/ar$a;->a:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v4, p0, Lct/ar$a;->a:Ljava/net/Socket;

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lct/ar$a;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lct/ar$a;->a:Ljava/net/Socket;

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-object v4, p0, Lct/ar$a;->a:Ljava/net/Socket;

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lct/ar$a;->d:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ConnectIpRunnable run end. ip:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lct/ar$a;->c:Lct/r;

    iget-object v5, v5, Lct/r;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",port:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lct/ar$a;->c:Lct/r;

    iget v5, v5, Lct/r;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",_sk:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lct/ar$a;->a:Ljava/net/Socket;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->b()V

    return-void
.end method
