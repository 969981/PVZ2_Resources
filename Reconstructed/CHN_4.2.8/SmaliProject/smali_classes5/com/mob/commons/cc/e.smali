.class public Lcom/mob/commons/cc/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/mob/commons/cc/i;


# instance fields
.field private a:Lcom/mob/commons/cc/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/mob/commons/cc/g;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/mob/commons/cc/e;->a:Lcom/mob/commons/cc/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/commons/cc/i$a;)Lcom/mob/commons/cc/i$b;
    .locals 4

    const-string v0, "method name: "

    .line 41
    new-instance v1, Lcom/mob/commons/cc/i$b;

    invoke-direct {v1}, Lcom/mob/commons/cc/i$b;-><init>()V

    .line 43
    :try_start_0
    const-string v2, "setHandler"

    iget-object v3, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v3

    instance-of v2, v2, Lcom/mob/commons/cc/g;

    if-eqz v2, :cond_0

    .line 45
    iget-object p1, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object p1, p1, v3

    check-cast p1, Lcom/mob/commons/cc/g;

    invoke-direct {p0, p1}, Lcom/mob/commons/cc/e;->a(Lcom/mob/commons/cc/g;)V

    goto :goto_0

    .line 47
    :cond_0
    new-instance v2, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at line: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/mob/commons/cc/i$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lcom/mob/commons/cc/i$a;->d:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/mob/commons/cc/i$b;->c:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 51
    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->c:Ljava/lang/Throwable;

    :goto_0
    return-object v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/mob/commons/cc/e;->a:Lcom/mob/commons/cc/g;

    if-eqz v0, :cond_0

    .line 18
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Lcom/mob/commons/cc/e;->a:Lcom/mob/commons/cc/g;

    const-string p2, "onServiceConnected"

    invoke-virtual {p1, p2, v0}, Lcom/mob/commons/cc/g;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/mob/commons/cc/e;->a:Lcom/mob/commons/cc/g;

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object p1, p0, Lcom/mob/commons/cc/e;->a:Lcom/mob/commons/cc/g;

    const-string v1, "onServiceDisconnected"

    invoke-virtual {p1, v1, v0}, Lcom/mob/commons/cc/g;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
