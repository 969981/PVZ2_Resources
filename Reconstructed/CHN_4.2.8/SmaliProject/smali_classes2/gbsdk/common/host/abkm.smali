.class public final Lgbsdk/common/host/abkm;
.super Ljava/lang/Object;
.source "ByteArrayBuffer.java"


# instance fields
.field public sQ:[B

.field public sR:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    .line 19
    new-array p1, p1, [B

    iput-object p1, p0, Lgbsdk/common/host/abkm;->sQ:[B

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer capacity may not be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private t(I)V
    .locals 3

    .line 23
    iget-object v0, p0, Lgbsdk/common/host/abkm;->sQ:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    .line 24
    iget-object v0, p0, Lgbsdk/common/host/abkm;->sQ:[B

    iget v1, p0, Lgbsdk/common/host/abkm;->sR:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iput-object p1, p0, Lgbsdk/common/host/abkm;->sQ:[B

    return-void
.end method


# virtual methods
.method public a(Lgbsdk/common/host/abkl;II)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object p1, p1, Lgbsdk/common/host/abkl;->sS:[C

    invoke-virtual {p0, p1, p2, p3}, Lgbsdk/common/host/abkm;->a([CII)V

    return-void
.end method

.method public a([CII)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_4

    .line 59
    array-length v0, p1

    if-gt p2, v0, :cond_4

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    if-ltz v0, :cond_4

    array-length v1, p1

    if-gt v0, v1, :cond_4

    if-nez p3, :cond_1

    return-void

    .line 65
    :cond_1
    iget v0, p0, Lgbsdk/common/host/abkm;->sR:I

    add-int/2addr p3, v0

    .line 67
    iget-object v1, p0, Lgbsdk/common/host/abkm;->sQ:[B

    array-length v1, v1

    if-le p3, v1, :cond_2

    .line 68
    invoke-direct {p0, p3}, Lgbsdk/common/host/abkm;->t(I)V

    :cond_2
    :goto_0
    if-ge v0, p3, :cond_3

    .line 71
    iget-object v1, p0, Lgbsdk/common/host/abkm;->sQ:[B

    aget-char v2, p1, p2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_3
    iput p3, p0, Lgbsdk/common/host/abkm;->sR:I

    return-void

    .line 60
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public b([BII)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_3

    .line 32
    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    if-ltz v0, :cond_3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    if-nez p3, :cond_1

    return-void

    .line 38
    :cond_1
    iget v0, p0, Lgbsdk/common/host/abkm;->sR:I

    add-int/2addr v0, p3

    .line 39
    iget-object v1, p0, Lgbsdk/common/host/abkm;->sQ:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 40
    invoke-direct {p0, v0}, Lgbsdk/common/host/abkm;->t(I)V

    .line 42
    :cond_2
    iget-object v1, p0, Lgbsdk/common/host/abkm;->sQ:[B

    iget v2, p0, Lgbsdk/common/host/abkm;->sR:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iput v0, p0, Lgbsdk/common/host/abkm;->sR:I

    return-void

    .line 33
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public cH()I
    .locals 1

    .line 100
    iget-object v0, p0, Lgbsdk/common/host/abkm;->sQ:[B

    array-length v0, v0

    return v0
.end method

.method public cI()Z
    .locals 2

    .line 123
    iget v0, p0, Lgbsdk/common/host/abkm;->sR:I

    iget-object v1, p0, Lgbsdk/common/host/abkm;->sQ:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lgbsdk/common/host/abkm;->sR:I

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 119
    iget v0, p0, Lgbsdk/common/host/abkm;->sR:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 88
    iget v0, p0, Lgbsdk/common/host/abkm;->sR:I

    new-array v1, v0, [B

    if-lez v0, :cond_0

    .line 90
    iget-object v2, p0, Lgbsdk/common/host/abkm;->sQ:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v1
.end method

.method public u(I)V
    .locals 3

    .line 47
    iget v0, p0, Lgbsdk/common/host/abkm;->sR:I

    add-int/lit8 v0, v0, 0x1

    .line 48
    iget-object v1, p0, Lgbsdk/common/host/abkm;->sQ:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 49
    invoke-direct {p0, v0}, Lgbsdk/common/host/abkm;->t(I)V

    .line 51
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abkm;->sQ:[B

    iget v2, p0, Lgbsdk/common/host/abkm;->sR:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 52
    iput v0, p0, Lgbsdk/common/host/abkm;->sR:I

    return-void
.end method

.method public v(I)I
    .locals 1

    .line 96
    iget-object v0, p0, Lgbsdk/common/host/abkm;->sQ:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public w(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 112
    iget-object v0, p0, Lgbsdk/common/host/abkm;->sQ:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 115
    iput p1, p0, Lgbsdk/common/host/abkm;->sR:I

    return-void

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
