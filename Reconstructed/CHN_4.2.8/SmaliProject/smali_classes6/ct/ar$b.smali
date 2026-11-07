.class public final Lct/ar$b;
.super Lct/as$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Z

.field public c:Ljava/net/Socket;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:[I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[III)V
    .locals 1

    invoke-direct {p0}, Lct/as$a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lct/ar$b;->b:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lct/ar$b;->f:Ljava/lang/String;

    iput-object p2, p0, Lct/ar$b;->g:[I

    iput p3, p0, Lct/ar$b;->h:I

    iput p4, p0, Lct/ar$b;->i:I

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

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DnsIpListRunnable run start. _domain:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lct/ar$b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",_ports"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lct/ar$b;->g:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",_timeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lct/ar$b;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",_parallelNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lct/ar$b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lct/ar$b;->f:Ljava/lang/String;

    iget-object v1, p0, Lct/ar$b;->g:[I

    iget v2, p0, Lct/ar$b;->h:I

    invoke-static {v0, v1, v2}, Lct/ar;->a(Ljava/lang/String;[II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lct/ar$b;->a:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lct/ar$b;->a:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lct/ar$b;->i:I

    iget-object v2, p0, Lct/ar$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lct/ar$b;->e:I

    new-instance v0, Ljava/util/ArrayList;

    iget v2, p0, Lct/ar$b;->e:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lct/ar$b;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iget v4, p0, Lct/ar$b;->e:I

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-boolean v1, p0, Lct/ar$b;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lct/ar$b;->h:I

    invoke-static {v0, v4}, Lct/ar;->a(Ljava/util/ArrayList;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lct/ar$b;->c:Ljava/net/Socket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int v0, v4

    sput v0, Lct/ar;->b:I

    iput-boolean v1, p0, Lct/ar$b;->d:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DnsIpListRunnable run end. _triedNum:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lct/ar$b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",_retSk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lct/ar$b;->c:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    invoke-static {}, Lct/ax;->b()V

    return-void

    :cond_1
    :goto_1
    iput-boolean v1, p0, Lct/ar$b;->d:Z

    goto :goto_0
.end method
