.class public final Lgbsdk/common/host/abop;
.super Ljava/lang/Object;
.source "PayloadReader.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static C(Ljava/io/File;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abop;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "5a4d2b1192ccfb3ad30cdcb6cddee1aa"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 96
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 97
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    :try_start_2
    invoke-static {p0}, Lgbsdk/common/host/abou;->c(Ljava/nio/channels/FileChannel;)Lgbsdk/common/host/aboq;

    move-result-object v1

    iget-object v1, v1, Lgbsdk/common/host/aboq;->ye:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 99
    invoke-static {v1}, Lgbsdk/common/host/abou;->a(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    .line 104
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lgbsdk/common/host/abpl; {:try_start_3 .. :try_end_3} :catch_7

    .line 110
    :catch_0
    :cond_1
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lgbsdk/common/host/abpl; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object p0, v3

    goto :goto_1

    :catch_1
    move-object p0, v3

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object p0, v3

    move-object v0, p0

    :goto_1
    if-eqz p0, :cond_2

    .line 104
    :try_start_5
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lgbsdk/common/host/abpl; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_2

    :catch_2
    nop

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 110
    :try_start_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lgbsdk/common/host/abpl; {:try_start_6 .. :try_end_6} :catch_7

    .line 113
    :catch_3
    :cond_3
    :try_start_7
    throw v1
    :try_end_7
    .catch Lgbsdk/common/host/abpl; {:try_start_7 .. :try_end_7} :catch_7

    :catch_4
    move-object p0, v3

    move-object v0, p0

    :catch_5
    :goto_3
    if-eqz p0, :cond_4

    .line 104
    :try_start_8
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lgbsdk/common/host/abpl; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_4

    :catch_6
    nop

    :cond_4
    :goto_4
    if-eqz v0, :cond_5

    goto :goto_0

    :catch_7
    :cond_5
    :goto_5
    return-object v3
.end method

.method public static a(Ljava/io/File;[I)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    sget-object v3, Lgbsdk/common/host/abop;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "fc04a202615e413c8ebbe81949504d6f"

    invoke-static {v0, v4, v3, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 29
    :cond_0
    invoke-static {p0, p1}, Lgbsdk/common/host/abop;->b(Ljava/io/File;[I)[[B

    move-result-object p0

    if-nez p0, :cond_1

    return-object v4

    .line 33
    :cond_1
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 35
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 36
    aget-object v2, p0, v1

    if-eqz v2, :cond_2

    .line 37
    new-instance v2, Ljava/lang/String;

    aget-object v3, p0, v1

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v2, v0, v1

    goto :goto_1

    :cond_2
    const-string v2, ""

    .line 39
    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method public static b(Ljava/io/File;[I)[[B
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    sget-object v3, Lgbsdk/common/host/abop;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "cf74275ea407ce5f14631502ca882334"

    invoke-static {v0, v4, v3, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, [[B

    return-object p0

    .line 56
    :cond_0
    invoke-static {p0}, Lgbsdk/common/host/abop;->C(Ljava/io/File;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 57
    array-length v0, p1

    if-gtz v0, :cond_1

    goto :goto_1

    .line 60
    :cond_1
    array-length v0, p1

    new-array v0, v0, [[B

    .line 61
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 62
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_2

    .line 64
    invoke-static {v2}, Lgbsdk/common/host/abop;->c(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    aput-object v2, v0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 58
    :cond_4
    :goto_1
    check-cast v4, [[B

    return-object v4
.end method

.method private static c(Ljava/nio/ByteBuffer;)[B
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abop;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "0cb1b53704eb72af0ec91cc366089c13"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, [B

    return-object p0

    .line 77
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    .line 79
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    add-int/2addr v1, p0

    .line 79
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method
