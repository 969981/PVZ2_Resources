.class public Lcom/tencent/wxop/stat/b/h;
.super Ljava/lang/Object;


# static fields
.field static final synthetic cH:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d([B)[B
    .locals 3

    array-length v0, p0

    new-instance v1, Lcom/tencent/wxop/stat/b/j;

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Lcom/tencent/wxop/stat/b/j;-><init>([B)V

    invoke-virtual {v1, p0, v0}, Lcom/tencent/wxop/stat/b/j;->a([BI)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, v1, Lcom/tencent/wxop/stat/b/j;->g:I

    iget-object v0, v1, Lcom/tencent/wxop/stat/b/j;->cI:[B

    array-length v0, v0

    if-ne p0, v0, :cond_0

    iget-object p0, v1, Lcom/tencent/wxop/stat/b/j;->cI:[B

    return-object p0

    :cond_0
    iget p0, v1, Lcom/tencent/wxop/stat/b/j;->g:I

    new-array p0, p0, [B

    iget-object v0, v1, Lcom/tencent/wxop/stat/b/j;->cI:[B

    iget v1, v1, Lcom/tencent/wxop/stat/b/j;->g:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad base-64"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e([B)[B
    .locals 7

    array-length v0, p0

    new-instance v1, Lcom/tencent/wxop/stat/b/k;

    invoke-direct {v1}, Lcom/tencent/wxop/stat/b/k;-><init>()V

    div-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0x4

    iget-boolean v3, v1, Lcom/tencent/wxop/stat/b/k;->ba:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v0, 0x3

    if-lez v3, :cond_3

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_0
    rem-int/lit8 v3, v0, 0x3

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x2

    :cond_3
    :goto_0
    iget-boolean v3, v1, Lcom/tencent/wxop/stat/b/k;->bb:Z

    if-eqz v3, :cond_5

    if-lez v0, :cond_5

    add-int/lit8 v3, v0, -0x1

    div-int/lit8 v3, v3, 0x39

    add-int/2addr v3, v5

    iget-boolean v6, v1, Lcom/tencent/wxop/stat/b/k;->cP:Z

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    :cond_5
    new-array v3, v2, [B

    iput-object v3, v1, Lcom/tencent/wxop/stat/b/k;->cI:[B

    invoke-virtual {v1, p0, v0}, Lcom/tencent/wxop/stat/b/k;->a([BI)Z

    sget-boolean p0, Lcom/tencent/wxop/stat/b/h;->cH:Z

    if-nez p0, :cond_7

    iget p0, v1, Lcom/tencent/wxop/stat/b/k;->g:I

    if-ne p0, v2, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_2
    iget-object p0, v1, Lcom/tencent/wxop/stat/b/k;->cI:[B

    return-object p0
.end method
