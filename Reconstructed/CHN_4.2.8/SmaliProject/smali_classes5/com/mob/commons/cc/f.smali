.class public Lcom/mob/commons/cc/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/cc/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    not-int p1, p1

    return p1
.end method

.method public a(II)I
    .locals 0

    and-int/2addr p1, p2

    return p1
.end method

.method public a(Lcom/mob/commons/cc/i$a;)Lcom/mob/commons/cc/i$b;
    .locals 7

    const-string v0, "method name: "

    .line 36
    new-instance v1, Lcom/mob/commons/cc/i$b;

    invoke-direct {v1}, Lcom/mob/commons/cc/i$b;-><init>()V

    .line 38
    :try_start_0
    const-string v2, "andOperation"

    iget-object v3, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v5

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v5

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v4

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 41
    iget-object v0, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p1, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/mob/commons/cc/f;->a(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->a:Ljava/lang/Object;

    goto/16 :goto_0

    .line 42
    :cond_0
    const-string v2, "orOperation"

    iget-object v6, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v2, v3, :cond_1

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v5

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v5

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v4

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 45
    iget-object v0, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p1, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/mob/commons/cc/f;->b(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->a:Ljava/lang/Object;

    goto/16 :goto_0

    .line 46
    :cond_1
    const-string v2, "rMoveOperation"

    iget-object v6, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v5

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v5

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v4

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 49
    iget-object v0, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p1, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/mob/commons/cc/f;->c(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->a:Ljava/lang/Object;

    goto/16 :goto_0

    .line 50
    :cond_2
    const-string v2, "lMoveOperation"

    iget-object v6, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v5

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v5

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v4

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v4

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 53
    iget-object v0, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p1, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/mob/commons/cc/f;->d(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->a:Ljava/lang/Object;

    goto/16 :goto_0

    .line 54
    :cond_3
    const-string v2, "xOperation"

    iget-object v6, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v2, v4, :cond_4

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v5

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v5

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 56
    iget-object p1, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object p1, p1, v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mob/commons/cc/f;->a(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->a:Ljava/lang/Object;

    goto/16 :goto_0

    .line 57
    :cond_4
    const-string v2, "xorOperation"

    iget-object v6, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v2, v3, :cond_5

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v5

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v5

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v4

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v4

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 60
    iget-object v0, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p1, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/mob/commons/cc/f;->e(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->a:Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_5
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

    .line 66
    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->c:Ljava/lang/Throwable;

    :goto_0
    return-object v1
.end method

.method public b(II)I
    .locals 0

    or-int/2addr p1, p2

    return p1
.end method

.method public c(II)I
    .locals 0

    shr-int/2addr p1, p2

    return p1
.end method

.method public d(II)I
    .locals 0

    shl-int/2addr p1, p2

    return p1
.end method

.method public e(II)I
    .locals 0

    xor-int/2addr p1, p2

    return p1
.end method
