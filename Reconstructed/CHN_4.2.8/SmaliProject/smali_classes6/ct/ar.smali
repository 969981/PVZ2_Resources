.class public final Lct/ar;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/ar$b;,
        Lct/ar$c;,
        Lct/ar$d;,
        Lct/ar$a;
    }
.end annotation


# static fields
.field public static a:I = -0x1

.field public static b:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;[IIILjava/util/ArrayList;Ljava/util/ArrayList;)Ljava/net/Socket;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getFastSocketByDnsAndDefault start. domain:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ports:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",timeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",parallelNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",defaultTryList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->b()V

    new-instance v0, Lct/ar$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lct/ar$b;-><init>(Ljava/lang/String;[III)V

    invoke-static {}, Lct/as;->a()Lct/as;

    move-result-object p0

    invoke-virtual {p0, v0}, Lct/as;->a(Lct/as$a;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    new-instance p3, Lct/ar$d;

    invoke-direct {p3, p4, p2}, Lct/ar$d;-><init>(Ljava/util/ArrayList;I)V

    invoke-static {}, Lct/as;->a()Lct/as;

    move-result-object p2

    invoke-virtual {p2, p3}, Lct/as;->a(Lct/as$a;)Z

    const/4 p2, 0x0

    const/4 p4, 0x0

    :cond_0
    iget-boolean v1, v0, Lct/ar$b;->d:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p3, Lct/ar$d;->d:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p0, v0, Lct/ar$b;->d:Z

    if-eqz p0, :cond_2

    iget-boolean p0, v0, Lct/ar$b;->b:Z

    if-eqz p0, :cond_2

    iget-object p0, v0, Lct/ar$b;->a:Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    iget-object p0, v0, Lct/ar$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, v0, Lct/ar$b;->c:Ljava/net/Socket;

    if-eqz p0, :cond_2

    iget-object p0, v0, Lct/ar$b;->c:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lct/ar$b;->c:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, v0, Lct/ar$b;->c:Ljava/net/Socket;

    return-object p0

    :cond_2
    iget-boolean p0, p3, Lct/ar$d;->d:Z

    if-eqz p0, :cond_3

    iget-object p0, p3, Lct/ar$d;->a:Ljava/net/Socket;

    if-eqz p0, :cond_3

    iget-object p0, p3, Lct/ar$d;->a:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p3, Lct/ar$d;->a:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, p3, Lct/ar$d;->a:Ljava/net/Socket;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_0
    iget-boolean v1, v0, Lct/ar$b;->d:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lct/ar$b;->b:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lct/ar$b;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    if-nez p4, :cond_5

    iget-object p4, v0, Lct/ar$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p4, 0x1

    :cond_5
    iget-object v1, v0, Lct/ar$b;->c:Ljava/net/Socket;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lct/ar$b;->c:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lct/ar$b;->c:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object p2, v0, Lct/ar$b;->c:Ljava/net/Socket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, p0

    long-to-int p0, p3

    sput p0, Lct/ar;->b:I

    return-object p2

    :cond_6
    iget-boolean v1, p3, Lct/ar$d;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p3, Lct/ar$d;->a:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p3, Lct/ar$d;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p3, Lct/ar$d;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    sput p2, Lct/ar;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    sub-long/2addr p4, p0

    long-to-int p0, p4

    sput p0, Lct/ar;->b:I

    iget-object p0, p3, Lct/ar$d;->a:Ljava/net/Socket;

    return-object p0
.end method

.method public static a(Ljava/util/ArrayList;I)Ljava/net/Socket;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lct/ar$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    new-instance v5, Lct/ar$a;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lct/r;

    invoke-direct {v5, v6, p1}, Lct/ar$a;-><init>(Lct/r;I)V

    aput-object v5, v2, v4

    invoke-static {}, Lct/as;->a()Lct/as;

    move-result-object v5

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Lct/as;->a(Lct/as$a;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v0

    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_7

    const/4 p0, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_4

    aget-object v6, v2, v5

    iget-boolean v6, v6, Lct/ar$a;->d:Z

    if-eqz v6, :cond_2

    aget-object v6, v2, v5

    iget-object v6, v6, Lct/ar$a;->a:Ljava/net/Socket;

    if-eqz v6, :cond_2

    aget-object v6, v2, v5

    iget-object v6, v6, Lct/ar$a;->a:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v2, v5

    iget-object v6, v6, Lct/ar$a;->a:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    aget-object p1, v2, v5

    iget-object p1, p1, Lct/ar$a;->a:Ljava/net/Socket;

    goto :goto_3

    :cond_2
    aget-object v6, v2, v5

    iget-boolean v6, v6, Lct/ar$a;->d:Z

    if-nez v6, :cond_3

    const/4 v4, 0x0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz p1, :cond_6

    :goto_4
    if-ge v3, v1, :cond_7

    if-eq v3, v5, :cond_5

    aget-object v4, v2, v3

    iput-boolean p0, v4, Lct/ar$a;->b:Z

    aget-object v4, v2, v3

    iget-boolean v4, v4, Lct/ar$a;->d:Z

    if-eqz v4, :cond_5

    aget-object v4, v2, v3

    iget-object v4, v4, Lct/ar$a;->a:Ljava/net/Socket;

    if-eqz v4, :cond_5

    :try_start_0
    aget-object v4, v2, v3

    iget-object v4, v4, Lct/ar$a;->a:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    aget-object v4, v2, v3

    iput-object v0, v4, Lct/ar$a;->a:Ljava/net/Socket;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    const-wide/16 v5, 0x32

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move p0, v4

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getFastSocket end. socket:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->b()V

    return-object p1

    :cond_8
    :goto_5
    return-object v0
.end method

.method public static a(Ljava/lang/String;[II)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDnsIpList start. domain:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ports:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",timeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->b()V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lct/as;->a()Lct/as;

    move-result-object v0

    new-instance v1, Lct/ar$c;

    invoke-direct {v1, p0, p1}, Lct/ar$c;-><init>(Ljava/lang/String;[I)V

    invoke-virtual {v0, v1}, Lct/as;->a(Lct/as$a;)Z

    div-int/lit8 p2, p2, 0x32

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p2, :cond_1

    iget-boolean p1, v1, Lct/ar$c;->d:Z

    if-nez p1, :cond_1

    add-int/lit8 p0, p0, 0x1

    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getDnsIpList end. _dnsIpList:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v1, Lct/ar$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->b()V

    iget-object p0, v1, Lct/ar$c;->a:Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    iget-object p0, v1, Lct/ar$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    invoke-static {}, Lct/ax;->b()V

    :cond_2
    iget-object p0, v1, Lct/ar$c;->a:Ljava/util/ArrayList;

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([Ljava/net/InetAddress;[I)Ljava/util/ArrayList;
    .locals 7

    if-eqz p0, :cond_1

    array-length v0, p0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    array-length v2, p1

    mul-int v1, v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_0

    new-instance v4, Lct/r;

    aget-object v5, p0, v2

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aget v6, p1, v3

    invoke-direct {v4, v5, v6}, Lct/r;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method
