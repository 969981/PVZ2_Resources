.class public Lcom/mob/commons/cc/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/cc/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/cc/r$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mob/commons/cc/r$a;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/mob/commons/cc/r$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/mob/commons/cc/r$a;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    iput-object v0, p0, Lcom/mob/commons/cc/r;->a:Lcom/mob/commons/cc/r$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/commons/cc/i$a;)Lcom/mob/commons/cc/i$b;
    .locals 6

    const-string v0, "method name: "

    .line 30
    new-instance v1, Lcom/mob/commons/cc/i$b;

    invoke-direct {v1}, Lcom/mob/commons/cc/i$b;-><init>()V

    .line 32
    :try_start_0
    const-string v2, "iterator"

    iget-object v3, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-nez v2, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/mob/commons/cc/r;->a()Lcom/mob/commons/cc/r$a;

    move-result-object p1

    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->a:Ljava/lang/Object;

    goto/16 :goto_0

    .line 34
    :cond_0
    const-string v2, "isInRange"

    iget-object v3, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v4

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 36
    :cond_1
    iget-object p1, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcom/mob/commons/cc/r;->a(Ljava/lang/Number;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->a:Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_2
    const-string v2, "contains"

    iget-object v5, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v4

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v4

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_4

    .line 39
    :cond_3
    iget-object p1, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcom/mob/commons/cc/r;->b(Ljava/lang/Number;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->a:Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_4
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

    .line 45
    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->c:Ljava/lang/Throwable;

    :goto_0
    return-object v1
.end method

.method public a()Lcom/mob/commons/cc/r$a;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/mob/commons/cc/r;->a:Lcom/mob/commons/cc/r$a;

    return-object v0
.end method

.method public a(Ljava/lang/Number;)Z
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/mob/commons/cc/r;->a:Lcom/mob/commons/cc/r$a;

    invoke-static {v0}, Lcom/mob/commons/cc/r$a;->a(Lcom/mob/commons/cc/r$a;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 21
    iget-object v1, p0, Lcom/mob/commons/cc/r;->a:Lcom/mob/commons/cc/r$a;

    invoke-static {v1}, Lcom/mob/commons/cc/r$a;->b(Lcom/mob/commons/cc/r$a;)Ljava/lang/Number;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 22
    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/Number;)Z
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/mob/commons/cc/r;->a(Ljava/lang/Number;)Z

    move-result p1

    return p1
.end method
