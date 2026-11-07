.class final Lct/ca;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/ca$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lct/ca$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lct/be;

.field c:J

.field d:J

.field e:J

.field f:J

.field volatile g:Z

.field final h:Lct/bz;


# direct methods
.method constructor <init>(Lct/be;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lct/ca;->b:Lct/be;

    .line 45
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lct/ca;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 47
    invoke-virtual {p1}, Lct/be;->g()Lct/bz;

    move-result-object p1

    iput-object p1, p0, Lct/ca;->h:Lct/bz;

    return-void
.end method

.method static a([BI)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_1

    .line 275
    invoke-static {p0}, Lcom/tencent/tencentmap/lbssdk/service/e;->o([B)I

    move-result p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 281
    invoke-static {p1, p0}, Lct/bp;->a(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 278
    invoke-static {p1, p0}, Lct/bp;->a(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a(Lct/ca$a;)V
    .locals 6

    .line 219
    invoke-static {p1}, Lct/ca$a;->c(Lct/ca$a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 220
    invoke-static {p1}, Lct/ca$a;->d(Lct/ca$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lct/cf;

    .line 221
    invoke-virtual {p1}, Lct/cf;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lct/cf;->b:Lct/cd;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p1, Lct/cf;->a:Lct/ch;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 222
    :cond_2
    iget-object v0, p0, Lct/ca;->b:Lct/be;

    iget-object v0, v0, Lct/be;->a:Landroid/content/Context;

    iget-object v1, p1, Lct/cf;->c:Lct/ce;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v1, Lct/ce;->a:Landroid/location/Location;

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    iget-object v3, p1, Lct/cf;->a:Lct/ch;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lct/ch;->a()Ljava/util/List;

    move-result-object v2

    :cond_4
    iget-object p1, p1, Lct/cf;->b:Lct/cd;

    invoke-static {v0}, Lct/be;->a(Landroid/content/Context;)Lct/be;

    move-result-object v0

    invoke-virtual {v0}, Lct/be;->h()Lct/bf;

    move-result-object v0

    invoke-virtual {v0}, Lct/bf;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-static {v1, v4}, Lct/b$a;->a(Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, ";"

    invoke-static {v2, v4, v5}, Lct/b$a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v4, v5}, Lct/b$a;->a(Lct/cd;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lct/bf;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 223
    iget-object v0, p0, Lct/ca;->h:Lct/bz;

    invoke-interface {v0, p1}, Lct/bz;->b(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final a(Ljava/lang/String;Lct/cf;I)V
    .locals 3

    .line 59
    iget-object v0, p0, Lct/ca;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lct/b$a;->b([B)[B

    move-result-object v0

    .line 71
    invoke-static {v0, p3}, Lct/ca;->a([BI)Ljava/lang/String;

    move-result-object p3

    .line 72
    new-instance v1, Lct/ca$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, p3, p2}, Lct/ca$a;-><init>(I[BLjava/lang/String;Ljava/lang/Object;)V

    .line 75
    iput-object p1, v1, Lct/ca$a;->a:Ljava/lang/String;

    .line 78
    invoke-static {v1}, Lct/ca$a;->a(Lct/ca$a;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lct/ca;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
