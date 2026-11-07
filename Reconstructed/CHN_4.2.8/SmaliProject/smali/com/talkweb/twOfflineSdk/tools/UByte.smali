.class public final Lcom/talkweb/twOfflineSdk/tools/UByte;
.super Ljava/lang/Object;
.source "UByte.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StringToBytes(Ljava/lang/String;)[B
    .locals 11

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 176
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_6

    mul-int/lit8 v3, v2, 0x2

    .line 177
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v3, 0x1

    .line 178
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x66

    const/16 v6, 0x46

    const/16 v7, 0x39

    const/16 v8, 0x61

    const/16 v9, 0x41

    const/16 v10, 0x30

    if-lt v4, v10, :cond_0

    if-gt v4, v7, :cond_0

    add-int/lit8 v4, v4, -0x30

    :goto_1
    int-to-short v4, v4

    goto :goto_3

    :cond_0
    if-lt v4, v9, :cond_1

    if-gt v4, v6, :cond_1

    add-int/lit8 v4, v4, -0x41

    :goto_2
    add-int/lit8 v4, v4, 0xa

    goto :goto_1

    :cond_1
    if-lt v4, v8, :cond_2

    if-gt v4, v5, :cond_2

    add-int/lit8 v4, v4, -0x61

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_3
    shl-int/lit8 v4, v4, 0x4

    int-to-short v4, v4

    if-lt v3, v10, :cond_3

    if-gt v3, v7, :cond_3

    add-int/lit8 v3, v3, -0x30

    :goto_4
    int-to-short v3, v3

    or-int/2addr v3, v4

    int-to-short v3, v3

    goto :goto_6

    :cond_3
    if-lt v3, v9, :cond_4

    if-gt v3, v6, :cond_4

    add-int/lit8 v3, v3, -0x41

    :goto_5
    add-int/lit8 v3, v3, 0xa

    goto :goto_4

    :cond_4
    if-lt v3, v8, :cond_5

    if-gt v3, v5, :cond_5

    add-int/lit8 v3, v3, -0x61

    goto :goto_5

    :cond_5
    move v3, v1

    .line 200
    :goto_6
    invoke-static {v3}, Lcom/talkweb/twOfflineSdk/tools/UByte;->shortToByte(S)B

    move-result v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public static byteToHex([B)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 235
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p0, v1

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/UByte;->hexPrintByte(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static byteToShort(B)S
    .locals 1

    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_0

    and-int/lit8 p0, p0, 0x7f

    int-to-short p0, p0

    add-int/lit16 p0, p0, 0x80

    :cond_0
    int-to-short p0, p0

    return p0
.end method

.method public static bytesToCharString([B)Ljava/lang/String;
    .locals 4

    .line 161
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 164
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 165
    aget-byte v2, p0, v1

    int-to-char v2, v2

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 5

    .line 134
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 138
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 139
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/UByte;->byteToShort(B)S

    move-result v2

    and-int/lit8 v3, v2, 0xf

    int-to-short v3, v3

    and-int/lit16 v2, v2, 0xf0

    int-to-short v2, v2

    shr-int/lit8 v2, v2, 0x4

    int-to-short v2, v2

    const/16 v4, 0x9

    if-ltz v2, :cond_0

    if-gt v2, v4, :cond_0

    add-int/lit8 v2, v2, 0x30

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x41

    add-int/lit8 v2, v2, -0xa

    :goto_1
    int-to-char v2, v2

    if-ltz v3, :cond_1

    if-gt v3, v4, :cond_1

    add-int/lit8 v3, v3, 0x30

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x41

    add-int/lit8 v3, v3, -0xa

    :goto_2
    int-to-char v3, v3

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static digitBytesToInt([B)I
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/UByte;->bytesToCharString([B)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static digitStringToBytes(Ljava/lang/String;)[B
    .locals 3

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getSubSequence([BII)[B
    .locals 2

    .line 124
    array-length v0, p0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 127
    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 128
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static hexPrintByte(B)Ljava/lang/String;
    .locals 3

    and-int/lit8 v0, p0, 0xf

    int-to-short v0, v0

    and-int/lit16 p0, p0, 0xf0

    shr-int/lit8 p0, p0, 0x4

    int-to-short p0, p0

    const/16 v1, 0xa

    if-lt p0, v1, :cond_0

    add-int/lit8 p0, p0, 0x41

    sub-int/2addr p0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x30

    :goto_0
    int-to-char p0, p0

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x41

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x30

    :goto_1
    int-to-char v0, v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hexPrintBytes(I[B)Ljava/lang/String;
    .locals 3

    .line 98
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-gtz p0, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 102
    aget-byte v2, p1, v1

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/UByte;->hexPrintByte(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hexPrintBytes(I[BI)Ljava/lang/String;
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-gtz p0, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    add-int v2, v1, p2

    .line 112
    aget-byte v2, p1, v2

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/UByte;->hexPrintByte(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static intToLiteralBytes(II)[B
    .locals 2

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 21
    new-array v0, p1, [B

    .line 22
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/UByte;->digitStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 23
    array-length v1, p0

    if-lt v1, p1, :cond_0

    const/4 v1, 0x0

    .line 24
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 26
    :cond_0
    array-length v0, p0

    sub-int/2addr p1, v0

    const/16 v0, 0x30

    invoke-static {p0, p1, v0}, Lcom/talkweb/twOfflineSdk/tools/UByte;->padingLeft([BIB)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static literalBytesToInt([B)I
    .locals 3

    const/4 v0, 0x0

    .line 225
    aget-byte v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    const/4 v1, 0x1

    .line 226
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0xa

    .line 227
    aget-byte v2, p0, v1

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static longToLiteralBytes(JI)[B
    .locals 2

    .line 31
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p2, p2, 0x2

    if-ge p1, p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    rsub-int/lit8 v0, p1, 0x10

    if-ge p2, v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/UByte;->StringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static padingBlank([BIIB)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v1, p1, v0

    .line 119
    aput-byte p3, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static padingLeft([BIB)[B
    .locals 4

    .line 215
    array-length v0, p0

    add-int v1, v0, p1

    .line 216
    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_0

    .line 218
    aput-byte p2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static padingRight([BIB)[B
    .locals 3

    .line 206
    array-length v0, p0

    add-int v1, v0, p1

    .line 207
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 208
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v2, p1, :cond_0

    add-int p0, v0, v2

    .line 210
    aput-byte p2, v1, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static shortToByte(S)B
    .locals 2

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    int-to-byte p0, p0

    return p0

    :cond_0
    const/16 v0, 0x80

    int-to-byte v1, v0

    sub-int/2addr p0, v0

    int-to-byte p0, p0

    or-int/2addr p0, v1

    int-to-byte p0, p0

    return p0
.end method
