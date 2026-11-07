.class public final Lgbsdk/common/host/abkl;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"


# instance fields
.field public sR:I

.field public sS:[C


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    .line 19
    new-array p1, p1, [C

    iput-object p1, p0, Lgbsdk/common/host/abkl;->sS:[C

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
    iget-object v0, p0, Lgbsdk/common/host/abkl;->sS:[C

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [C

    .line 24
    iget-object v0, p0, Lgbsdk/common/host/abkl;->sS:[C

    iget v1, p0, Lgbsdk/common/host/abkl;->sR:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iput-object p1, p0, Lgbsdk/common/host/abkl;->sS:[C

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 2

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 172
    :cond_0
    iget v0, p0, Lgbsdk/common/host/abkl;->sR:I

    if-le p3, v0, :cond_1

    move p3, v0

    :cond_1
    const/4 v0, -0x1

    if-le p2, p3, :cond_2

    return v0

    :cond_2
    :goto_0
    if-ge p2, p3, :cond_4

    .line 179
    iget-object v1, p0, Lgbsdk/common/host/abkl;->sS:[C

    aget-char v1, v1, p2

    if-ne v1, p1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public a(Lgbsdk/common/host/abkl;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p1, Lgbsdk/common/host/abkl;->sS:[C

    const/4 v1, 0x0

    iget p1, p1, Lgbsdk/common/host/abkl;->sR:I

    invoke-virtual {p0, v0, v1, p1}, Lgbsdk/common/host/abkl;->a([CII)V

    return-void
.end method

.method public a(Lgbsdk/common/host/abkl;II)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object p1, p1, Lgbsdk/common/host/abkl;->sS:[C

    invoke-virtual {p0, p1, p2, p3}, Lgbsdk/common/host/abkl;->a([CII)V

    return-void
.end method

.method public a(Lgbsdk/common/host/abkm;II)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object p1, p1, Lgbsdk/common/host/abkm;->sQ:[B

    invoke-virtual {p0, p1, p2, p3}, Lgbsdk/common/host/abkl;->b([BII)V

    return-void
.end method

.method public a([CII)V
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
    iget v0, p0, Lgbsdk/common/host/abkl;->sR:I

    add-int/2addr v0, p3

    .line 39
    iget-object v1, p0, Lgbsdk/common/host/abkl;->sS:[C

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 40
    invoke-direct {p0, v0}, Lgbsdk/common/host/abkl;->t(I)V

    .line 42
    :cond_2
    iget-object v1, p0, Lgbsdk/common/host/abkl;->sS:[C

    iget v2, p0, Lgbsdk/common/host/abkl;->sR:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iput v0, p0, Lgbsdk/common/host/abkl;->sR:I

    return-void

    .line 33
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public aU(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 51
    iget v1, p0, Lgbsdk/common/host/abkl;->sR:I

    add-int/2addr v1, v0

    .line 52
    iget-object v2, p0, Lgbsdk/common/host/abkl;->sS:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 53
    invoke-direct {p0, v1}, Lgbsdk/common/host/abkl;->t(I)V

    :cond_1
    const/4 v2, 0x0

    .line 55
    iget-object v3, p0, Lgbsdk/common/host/abkl;->sS:[C

    iget v4, p0, Lgbsdk/common/host/abkl;->sR:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 56
    iput v1, p0, Lgbsdk/common/host/abkl;->sR:I

    return-void
.end method

.method public append(Ljava/lang/Object;)V
    .locals 0

    .line 115
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgbsdk/common/host/abkl;->aU(Ljava/lang/String;)V

    return-void
.end method

.method public b([BII)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_5

    .line 86
    array-length v0, p1

    if-gt p2, v0, :cond_5

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    if-ltz v0, :cond_5

    array-length v1, p1

    if-gt v0, v1, :cond_5

    if-nez p3, :cond_1

    return-void

    .line 92
    :cond_1
    iget v0, p0, Lgbsdk/common/host/abkl;->sR:I

    add-int/2addr p3, v0

    .line 94
    iget-object v1, p0, Lgbsdk/common/host/abkl;->sS:[C

    array-length v1, v1

    if-le p3, v1, :cond_2

    .line 95
    invoke-direct {p0, p3}, Lgbsdk/common/host/abkl;->t(I)V

    :cond_2
    :goto_0
    if-ge v0, p3, :cond_4

    .line 98
    aget-byte v1, p1, p2

    if-gez v1, :cond_3

    add-int/lit16 v1, v1, 0x100

    .line 102
    :cond_3
    iget-object v2, p0, Lgbsdk/common/host/abkl;->sS:[C

    int-to-char v1, v1

    aput-char v1, v2, v0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_4
    iput p3, p0, Lgbsdk/common/host/abkl;->sR:I

    return-void

    .line 87
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public c(C)V
    .locals 3

    .line 74
    iget v0, p0, Lgbsdk/common/host/abkl;->sR:I

    add-int/lit8 v0, v0, 0x1

    .line 75
    iget-object v1, p0, Lgbsdk/common/host/abkl;->sS:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 76
    invoke-direct {p0, v0}, Lgbsdk/common/host/abkl;->t(I)V

    .line 78
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abkl;->sS:[C

    iget v2, p0, Lgbsdk/common/host/abkl;->sR:I

    aput-char p1, v1, v2

    .line 79
    iput v0, p0, Lgbsdk/common/host/abkl;->sR:I

    return-void
.end method

.method public cH()I
    .locals 1

    .line 139
    iget-object v0, p0, Lgbsdk/common/host/abkl;->sS:[C

    array-length v0, v0

    return v0
.end method

.method public cI()Z
    .locals 2

    .line 165
    iget v0, p0, Lgbsdk/common/host/abkl;->sR:I

    iget-object v1, p0, Lgbsdk/common/host/abkl;->sS:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cJ()[C
    .locals 4

    .line 123
    iget v0, p0, Lgbsdk/common/host/abkl;->sR:I

    new-array v1, v0, [C

    if-lez v0, :cond_0

    .line 125
    iget-object v2, p0, Lgbsdk/common/host/abkl;->sS:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v1
.end method

.method public charAt(I)C
    .locals 1

    .line 131
    iget-object v0, p0, Lgbsdk/common/host/abkl;->sS:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lgbsdk/common/host/abkl;->sR:I

    return-void
.end method

.method public d(II)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_2

    .line 194
    iget v0, p0, Lgbsdk/common/host/abkl;->sR:I

    if-gt p2, v0, :cond_1

    if-gt p1, p2, :cond_0

    .line 200
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgbsdk/common/host/abkl;->sS:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 198
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 195
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 192
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public e(II)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_4

    .line 207
    iget v0, p0, Lgbsdk/common/host/abkl;->sR:I

    if-gt p2, v0, :cond_3

    if-gt p1, p2, :cond_2

    :goto_0
    if-ge p1, p2, :cond_0

    .line 213
    iget-object v0, p0, Lgbsdk/common/host/abkl;->sS:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-le p2, p1, :cond_1

    .line 216
    iget-object v0, p0, Lgbsdk/common/host/abkl;->sS:[C

    add-int/lit8 v1, p2, -0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 219
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgbsdk/common/host/abkl;->sS:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 211
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 208
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 205
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public ensureCapacity(I)V
    .locals 2

    .line 147
    iget-object v0, p0, Lgbsdk/common/host/abkl;->sS:[C

    array-length v0, v0

    iget v1, p0, Lgbsdk/common/host/abkl;->sR:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    add-int/2addr v1, p1

    .line 149
    invoke-direct {p0, v1}, Lgbsdk/common/host/abkl;->t(I)V

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 161
    iget v0, p0, Lgbsdk/common/host/abkl;->sR:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 223
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgbsdk/common/host/abkl;->sS:[C

    iget v2, p0, Lgbsdk/common/host/abkl;->sR:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public w(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 154
    iget-object v0, p0, Lgbsdk/common/host/abkl;->sS:[C

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 157
    iput p1, p0, Lgbsdk/common/host/abkl;->sR:I

    return-void

    .line 155
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public x(I)I
    .locals 2

    .line 187
    iget v0, p0, Lgbsdk/common/host/abkl;->sR:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgbsdk/common/host/abkl;->a(III)I

    move-result p1

    return p1
.end method
