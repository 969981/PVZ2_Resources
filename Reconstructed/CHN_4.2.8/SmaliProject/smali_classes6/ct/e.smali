.class public final Lct/e;
.super Ljava/lang/Object;

# interfaces
.implements Lct/a;
.implements Lct/n;
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private d:Ljava/util/Set;

.field private e:Ljava/util/concurrent/BlockingQueue;

.field private f:Lct/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lct/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lct/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lct/e;->c:Ljava/lang/String;

    iput-object v0, p0, Lct/e;->d:Ljava/util/Set;

    iput-object v0, p0, Lct/e;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-static {}, Lct/ax;->b()V

    iput-object p1, p0, Lct/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lct/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lct/e;->c:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lct/e;->d:Ljava/util/Set;

    const-string p2, "dispatcher.3g.qq.com"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lct/e;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-static {}, Lct/q;->a()Lct/q;

    move-result-object p1

    iput-object p1, p0, Lct/e;->f:Lct/p;

    invoke-static {}, Lct/j;->a()Lct/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Lct/j;->a(Lct/n;)V

    return-void
.end method


# virtual methods
.method public final a()Lct/ai;
    .locals 1

    invoke-static {}, Lct/b$a;->c()Lct/b$a;

    move-result-object v0

    iget-object v0, v0, Lct/b$a;->b:Lct/d;

    iget-object v0, v0, Lct/d;->f:Lct/ai;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lct/s$a;
    .locals 2

    iget-object v0, p0, Lct/e;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lct/t;->a()Lct/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lct/t;->a(Ljava/lang/String;)Lct/s$a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lct/s$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lct/ax;->d()V

    :cond_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAccessIPListByDomainname...domain not registered. domain:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", registered domains:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lct/e;->d:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    invoke-static {}, Lct/ax;->d()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lct/e;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lct/ax;->c()V

    invoke-static {}, Lct/ax;->c()V

    :try_start_0
    iget-object v0, p0, Lct/e;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    invoke-static {}, Lct/ax;->b()V

    iget-object v0, p0, Lct/e;->e:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lct/i;

    invoke-direct {v1}, Lct/i;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lct/ax;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lct/ax;->e()V

    :goto_0
    iget-object v0, p0, Lct/e;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    invoke-static {}, Lct/ax;->b()V

    return-void
.end method

.method public final run()V
    .locals 9

    const-string v0, ","

    invoke-static {}, Lct/ax;->c()V

    invoke-static {}, Lct/t;->a()Lct/t;

    :goto_0
    :try_start_0
    invoke-static {}, Lct/ax;->b()V

    iget-object v1, p0, Lct/e;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    invoke-static {}, Lct/ax;->b()V

    invoke-static {}, Lct/ax;->c()V

    invoke-static {}, Lct/t;->a()Lct/t;

    move-result-object v1

    invoke-static {}, Lct/aw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v1, Lct/t;->a:Lct/u;

    invoke-interface {v1, v2}, Lct/u;->b(Ljava/lang/String;)V

    invoke-static {}, Lct/ax;->c()V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {}, Lct/ax;->d()V

    const-string v2, ""

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lct/ax;->d()V

    goto :goto_0

    :cond_2
    sget-boolean v1, Lct/h;->a:Z

    if-nez v1, :cond_3

    :goto_3
    invoke-static {}, Lct/ax;->c()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lct/t;->a()Lct/t;

    move-result-object v1

    iget-object v2, p0, Lct/e;->d:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lct/t;->a(Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Lct/f;

    invoke-direct {v1}, Lct/f;-><init>()V

    invoke-static {}, Lct/o;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lct/f;->b:Ljava/lang/String;

    invoke-static {}, Lct/o;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lct/f;->c:Ljava/lang/String;

    invoke-static {}, Lct/o;->d()I

    move-result v2

    iput v2, v1, Lct/f;->d:I

    invoke-static {}, Lct/o;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lct/f;->a:Ljava/lang/String;

    invoke-static {}, Lct/o;->g()Ljava/lang/String;

    invoke-static {}, Lct/o;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lct/f;->e:Ljava/lang/String;

    iget-object v2, p0, Lct/e;->d:Ljava/util/Set;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lct/f;->h:Ljava/util/ArrayList;

    iget-object v3, v1, Lct/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lct/aw;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lct/f;->g:Ljava/lang/String;

    invoke-static {}, Lct/aw;->c()I

    move-result v2

    iput v2, v1, Lct/f;->i:I

    invoke-static {}, Lct/aw;->d()I

    move-result v2

    iput v2, v1, Lct/f;->j:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request info:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lct/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lct/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lct/f;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lct/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lct/f;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lct/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lct/f;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lct/f;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->b()V

    invoke-virtual {v1}, Lct/f;->a()Lct/g;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "accessInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lct/g;->a:Lct/s;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", sdkCfgInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lct/g;->b:Lct/d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", sdkAccessInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lct/g;->c:Lct/c;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->c()V

    invoke-static {}, Lct/t;->a()Lct/t;

    move-result-object v3

    iget-object v4, v2, Lct/g;->a:Lct/s;

    invoke-virtual {v3, v4}, Lct/t;->a(Lct/s;)V

    invoke-static {}, Lct/b$a;->c()Lct/b$a;

    move-result-object v3

    iget-object v4, v2, Lct/g;->b:Lct/d;

    if-eqz v4, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateSdkCfInfo...SdkCfgInfo:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/ax;->c()V

    iget v5, v4, Lct/d;->a:I

    const/16 v6, 0x4e20

    const v7, 0xea60

    const/16 v8, 0x7d0

    if-lt v5, v8, :cond_5

    iget v5, v4, Lct/d;->a:I

    if-le v5, v7, :cond_6

    :cond_5
    iget v5, v4, Lct/d;->a:I

    invoke-static {}, Lct/ax;->d()V

    iput v6, v4, Lct/d;->a:I

    :cond_6
    iget v5, v4, Lct/d;->b:I

    if-lt v5, v8, :cond_7

    iget v5, v4, Lct/d;->b:I

    if-le v5, v7, :cond_8

    :cond_7
    iget v5, v4, Lct/d;->b:I

    invoke-static {}, Lct/ax;->d()V

    iput v6, v4, Lct/d;->b:I

    :cond_8
    iput-object v4, v3, Lct/b$a;->b:Lct/d;

    iget-object v3, v3, Lct/b$a;->b:Lct/d;

    invoke-virtual {v3}, Lct/d;->b()V

    :cond_9
    invoke-static {}, Lct/b$a;->c()Lct/b$a;

    move-result-object v3

    iget-object v2, v2, Lct/g;->c:Lct/c;

    if-eqz v2, :cond_a

    iput-object v2, v3, Lct/b$a;->a:Lct/c;

    iget-object v2, v3, Lct/b$a;->a:Lct/c;

    invoke-virtual {v2}, Lct/c;->b()V

    :cond_a
    iget v2, v1, Lct/f;->k:I

    iget-object v2, v1, Lct/f;->l:Ljava/lang/String;

    invoke-static {}, Lct/ax;->c()V

    iget-object v2, p0, Lct/e;->f:Lct/p;

    invoke-interface {v2, v1}, Lct/p;->a(Lct/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
