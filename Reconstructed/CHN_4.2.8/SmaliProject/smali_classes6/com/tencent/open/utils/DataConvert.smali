.class public Lcom/tencent/open/utils/DataConvert;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intToBytes2(I)[B
    .locals 4

    const/4 v0, 0x4

    .line 11
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x8

    rsub-int/lit8 v3, v3, 0x18

    shr-int v3, p0, v3

    int-to-byte v3, v3

    .line 13
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static putBytes2Bytes([BI[BI)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    add-int v1, p3, v0

    .line 92
    aget-byte v2, p0, v0

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    array-length p0, p0

    return p0
.end method

.method public static putBytes2Bytes([B[BI)I
    .locals 3

    const/4 v0, 0x0

    .line 84
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    .line 85
    aget-byte v2, p0, v0

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    array-length p0, p0

    return p0
.end method

.method public static putInt2Bytes(I[BI)I
    .locals 3

    .line 61
    invoke-static {p0}, Lcom/tencent/open/utils/DataConvert;->intToBytes2(I)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 62
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    .line 63
    aget-byte v2, p0, v0

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    array-length p0, p0

    return p0
.end method

.method public static putShort2Bytes(I[BI)I
    .locals 2

    .line 69
    invoke-static {p0}, Lcom/tencent/open/utils/DataConvert;->intToBytes2(I)[B

    move-result-object p0

    const/4 v0, 0x2

    .line 70
    aget-byte v1, p0, v0

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    const/4 v1, 0x3

    .line 71
    aget-byte p0, p0, v1

    aput-byte p0, p1, p2

    return v0
.end method

.method public static putString2Bytes(Ljava/lang/String;[BI)I
    .locals 3

    .line 76
    invoke-static {p0}, Lcom/tencent/open/utils/DataConvert;->string2bytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 77
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    .line 78
    aget-byte v2, p0, v0

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    array-length p0, p0

    return p0
.end method

.method public static string2bytes(Ljava/lang/String;)[B
    .locals 5

    .line 45
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 47
    div-int/lit8 v1, v0, 0x2

    .line 48
    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    .line 53
    :cond_0
    new-array v0, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 55
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    .line 29
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 30
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
