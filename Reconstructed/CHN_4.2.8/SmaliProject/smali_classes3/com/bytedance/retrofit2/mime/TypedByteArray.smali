.class public Lcom/bytedance/retrofit2/mime/TypedByteArray;
.super Lcom/bytedance/retrofit2/mime/AbsTypedOutput;
.source "TypedByteArray.java"

# interfaces
.implements Lcom/bytedance/retrofit2/mime/TypedInput;


# instance fields
.field private bytes:[B

.field private final fakeFileName:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[B[Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/bytedance/retrofit2/mime/AbsTypedOutput;-><init>()V

    if-eqz p3, :cond_0

    .line 46
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 47
    aget-object p3, p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 50
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "application/unknown"

    goto :goto_1

    :cond_1
    const-string p1, "application/octet-stream"

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 59
    iput-object p1, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->mimeType:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->bytes:[B

    .line 61
    iput-object p3, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->fakeFileName:Ljava/lang/String;

    return-void

    .line 57
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    check-cast p1, Lcom/bytedance/retrofit2/mime/TypedByteArray;

    .line 106
    iget-object v2, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->bytes:[B

    iget-object v3, p1, Lcom/bytedance/retrofit2/mime/TypedByteArray;->bytes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->mimeType:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/retrofit2/mime/TypedByteArray;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public fileName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->fakeFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->fakeFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getBytes()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->bytes:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 117
    iget-object v1, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->bytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public in()Ljava/io/InputStream;
    .locals 2

    .line 94
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public interceptRequestBody()Z
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->bytes:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    const v3, 0x19000

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/bytedance/frameworks/encryptor/EncryptorUtil;->encrypt([BI)[B

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 145
    :cond_1
    iput-object v0, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->bytes:[B

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public length()J
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->bytes:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public md5Stub()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->bytes:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_0
    invoke-static {v0}, Lcom/bytedance/retrofit2/mime/DigestUtil;->md5Hex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypedByteArray[length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/retrofit2/mime/TypedByteArray;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/bytedance/retrofit2/mime/TypedByteArray;->bytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
