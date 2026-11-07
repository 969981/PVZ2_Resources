.class public Lcom/tw/OnLinePaySdk/tools/Des;
.super Ljava/lang/Object;
.source "Des.java"


# static fields
.field private static final algorithm:Ljava/lang/String; = "DES/CBC/PKCS5Padding"

.field private static final baseAlgorithm:Ljava/lang/String; = "DES"

.field private static final desKey:Ljava/lang/String; = "TwDwnSvr"

.field private static final encoding:Ljava/lang/String; = "utf-8"

.field private static final iv:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 9
    fill-array-data v0, :array_0

    sput-object v0, Lcom/tw/OnLinePaySdk/tools/Des;->iv:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static StringToBytes(Ljava/lang/String;)[B
    .locals 11

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 97
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_0

    return-object v0

    :cond_0
    mul-int/lit8 v3, v2, 0x2

    .line 98
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v3, 0x1

    .line 99
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x66

    const/16 v6, 0x46

    const/16 v7, 0x39

    const/16 v8, 0x61

    const/16 v9, 0x41

    const/16 v10, 0x30

    if-lt v4, v10, :cond_1

    if-gt v4, v7, :cond_1

    add-int/lit8 v4, v4, -0x30

    :goto_1
    int-to-short v4, v4

    goto :goto_3

    :cond_1
    if-lt v4, v9, :cond_2

    if-gt v4, v6, :cond_2

    add-int/lit8 v4, v4, -0x41

    :goto_2
    add-int/lit8 v4, v4, 0xa

    goto :goto_1

    :cond_2
    if-lt v4, v8, :cond_3

    if-gt v4, v5, :cond_3

    add-int/lit8 v4, v4, -0x61

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_3
    shl-int/lit8 v4, v4, 0x4

    int-to-short v4, v4

    if-lt v3, v10, :cond_4

    if-gt v3, v7, :cond_4

    add-int/lit8 v3, v3, -0x30

    :goto_4
    int-to-short v3, v3

    or-int/2addr v3, v4

    int-to-short v3, v3

    goto :goto_6

    :cond_4
    if-lt v3, v9, :cond_5

    if-gt v3, v6, :cond_5

    add-int/lit8 v3, v3, -0x41

    :goto_5
    add-int/lit8 v3, v3, 0xa

    goto :goto_4

    :cond_5
    if-lt v3, v8, :cond_6

    if-gt v3, v5, :cond_6

    add-int/lit8 v3, v3, -0x61

    goto :goto_5

    :cond_6
    move v3, v1

    .line 121
    :goto_6
    invoke-static {v3}, Lcom/tw/OnLinePaySdk/tools/Des;->shortToByte(S)B

    move-result v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
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

.method private static bytesToString([B)Ljava/lang/String;
    .locals 5

    .line 66
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 70
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    return-object v0

    .line 71
    :cond_0
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/tw/OnLinePaySdk/tools/Des;->byteToShort(B)S

    move-result v2

    and-int/lit8 v3, v2, 0xf

    int-to-short v3, v3

    and-int/lit16 v2, v2, 0xf0

    int-to-short v2, v2

    shr-int/lit8 v2, v2, 0x4

    int-to-short v2, v2

    const/16 v4, 0x9

    if-ltz v2, :cond_1

    if-gt v2, v4, :cond_1

    add-int/lit8 v2, v2, 0x30

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x41

    add-int/lit8 v2, v2, -0xa

    :goto_1
    int-to-char v2, v2

    if-ltz v3, :cond_2

    if-gt v3, v4, :cond_2

    add-int/lit8 v3, v3, 0x30

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x41

    add-int/lit8 v3, v3, -0xa

    :goto_2
    int-to-char v3, v3

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/tools/Des;->StringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 45
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/tw/OnLinePaySdk/tools/Des;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 46
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "TwDwnSvr"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "DES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "DES/CBC/PKCS5Padding"

    .line 48
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    .line 49
    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 50
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 51
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lcom/tw/OnLinePaySdk/tools/Des;->StringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 56
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/tw/OnLinePaySdk/tools/Des;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 57
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v2, "DES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p0, "DES/CBC/PKCS5Padding"

    .line 59
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v2, 0x2

    .line 60
    invoke-virtual {p0, v2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 61
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 62
    new-instance p1, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method public static encryption(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "utf-8"

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 22
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/tw/OnLinePaySdk/tools/Des;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 23
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "TwDwnSvr"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "DES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "DES/CBC/PKCS5Padding"

    .line 25
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    .line 26
    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 27
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 28
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/tools/Des;->bytesToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "utf-8"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 33
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/tw/OnLinePaySdk/tools/Des;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 34
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v2, "DES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p0, "DES/CBC/PKCS5Padding"

    .line 36
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v2, 0x1

    .line 37
    invoke-virtual {p0, v2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 38
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 39
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/tools/Des;->bytesToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static shortToByte(S)B
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
