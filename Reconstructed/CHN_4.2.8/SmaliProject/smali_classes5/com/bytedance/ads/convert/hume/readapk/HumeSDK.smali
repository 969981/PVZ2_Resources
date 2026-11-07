.class public Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/String;

.field public static volatile b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 13

    const-string v0, "r"

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :goto_0
    move-object p0, v3

    .line 2
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_1

    filled-new-array {v5, v5, v5}, [Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->a:[Ljava/lang/String;

    return-void

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_1
    new-instance p0, Ljava/io/RandomAccessFile;

    invoke-direct {p0, v4, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v6}, Lcom/bytedance/ads/convert/flat/c/b;->a(Ljava/nio/channels/FileChannel;)Lcom/bytedance/ads/convert/flat/g/a;

    move-result-object v7

    .line 4
    iget-object v7, v7, Lcom/bytedance/ads/convert/flat/g/a;->a:Ljava/lang/Object;

    .line 5
    check-cast v7, Ljava/nio/ByteBuffer;

    invoke-static {v7}, Lcom/bytedance/ads/convert/flat/c/b;->a(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/bytedance/ads/convert/flat/g/b; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_6

    :catchall_1
    move-exception v7

    goto :goto_2

    :catch_0
    nop

    goto :goto_4

    :catchall_2
    move-exception v7

    move-object v6, v3

    goto :goto_2

    :catch_1
    move-object v6, v3

    goto :goto_4

    :catchall_3
    move-exception p0

    move-object v7, p0

    move-object p0, v3

    move-object v6, p0

    :goto_2
    if-eqz v6, :cond_2

    :try_start_5
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/bytedance/ads/convert/flat/g/b; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_3

    :catch_2
    nop

    :cond_2
    :goto_3
    if-eqz p0, :cond_3

    :try_start_6
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/bytedance/ads/convert/flat/g/b; {:try_start_6 .. :try_end_6} :catch_8

    :catch_3
    :cond_3
    :try_start_7
    throw v7
    :try_end_7
    .catch Lcom/bytedance/ads/convert/flat/g/b; {:try_start_7 .. :try_end_7} :catch_8

    :catch_4
    move-object p0, v3

    move-object v6, p0

    :goto_4
    if-eqz v6, :cond_4

    :try_start_8
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/bytedance/ads/convert/flat/g/b; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_5

    :catch_5
    nop

    :cond_4
    :goto_5
    if-eqz p0, :cond_5

    move-object v7, v3

    :catch_6
    :goto_6
    :try_start_9
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lcom/bytedance/ads/convert/flat/g/b; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_7

    :catch_7
    nop

    goto :goto_7

    :catch_8
    :cond_5
    move-object v7, v3

    :goto_7
    const/4 p0, 0x0

    if-eqz v7, :cond_7

    new-array v6, v1, [[B

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v1, :cond_8

    .line 6
    aget v9, v2, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    if-eqz v9, :cond_6

    .line 7
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    add-int/2addr v12, v11

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    add-int/2addr v11, v9

    invoke-static {v10, v12, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 8
    aput-object v9, v6, v8

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_7
    move-object v6, v3

    :cond_8
    const-string v2, "UTF-8"

    if-nez v6, :cond_9

    move-object v7, v3

    goto :goto_b

    :cond_9
    new-array v7, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v1, :cond_b

    .line 9
    :try_start_a
    aget-object v9, v6, v8

    if-eqz v9, :cond_a

    new-instance v9, Ljava/lang/String;

    aget-object v10, v6, v8

    invoke-direct {v9, v10, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v9, v7, v8

    goto :goto_a

    :cond_a
    aput-object v5, v7, v8
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_9

    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :catch_9
    move-exception v6

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_b
    :goto_b
    if-eqz v7, :cond_c

    goto :goto_c

    .line 10
    :cond_c
    sget-object v7, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->a:[Ljava/lang/String;

    :goto_c
    sput-object v7, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->a:[Ljava/lang/String;

    array-length v6, v7

    const/4 v8, 0x2

    if-lt v6, v8, :cond_12

    aget-object v6, v7, p0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    sget-object v6, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->a:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 11
    :try_start_b
    new-instance v6, Ljava/io/RandomAccessFile;

    invoke-direct {v6, v4, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    sget-object v0, Lcom/bytedance/ads/convert/flat/h/a;->a:[B

    array-length v4, v0

    new-array v4, v4, [B

    array-length v0, v0

    int-to-long v11, v0

    sub-long/2addr v9, v11

    invoke-virtual {v6, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v6, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v4}, Lcom/bytedance/ads/convert/flat/h/a;->a([B)Z

    move-result v0
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-nez v0, :cond_d

    :goto_d
    :try_start_d
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_f

    :catch_a
    move-exception v0

    goto :goto_e

    :cond_d
    const-wide/16 v11, 0x2

    sub-long/2addr v9, v11

    :try_start_e
    invoke-virtual {v6, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v6}, Lcom/bytedance/ads/convert/flat/h/a;->a(Ljava/io/DataInput;)S

    move-result v0
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-gtz v0, :cond_e

    goto :goto_d

    :goto_e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_f
    move-object v3, v5

    goto :goto_16

    :cond_e
    int-to-long v11, v0

    sub-long/2addr v9, v11

    :try_start_f
    invoke-virtual {v6, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v0, v0, [B

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_10

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_10
    move-object v3, v4

    goto :goto_16

    :catchall_4
    move-exception p0

    goto :goto_18

    :catch_c
    move-exception v0

    goto :goto_11

    :catch_d
    move-exception v0

    goto :goto_12

    :catch_e
    move-exception v0

    goto :goto_13

    :catch_f
    move-exception v0

    goto :goto_14

    :catchall_5
    move-exception p0

    goto :goto_17

    :catch_10
    move-exception v0

    move-object v6, v3

    :goto_11
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v6, :cond_f

    goto :goto_15

    :catch_11
    move-exception v0

    move-object v6, v3

    :goto_12
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v6, :cond_f

    goto :goto_15

    :catch_12
    move-exception v0

    move-object v6, v3

    :goto_13
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    if-eqz v6, :cond_f

    goto :goto_15

    :catch_13
    move-exception v0

    move-object v6, v3

    :goto_14
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v6, :cond_f

    :goto_15
    :try_start_12
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_14

    goto :goto_16

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 12
    :cond_f
    :goto_16
    sget-object v0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->a:[Ljava/lang/String;

    if-nez v3, :cond_10

    move-object v3, v5

    :cond_10
    aput-object v3, v0, p0

    goto :goto_1a

    :catchall_6
    move-exception p0

    move-object v3, v6

    :goto_17
    move-object v6, v3

    :goto_18
    if-eqz v6, :cond_11

    .line 13
    :try_start_13
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_11
    :goto_19
    throw p0

    .line 14
    :cond_12
    :goto_1a
    sget-object p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->a:[Ljava/lang/String;

    array-length v0, p0

    if-lt v0, v1, :cond_14

    aget-object p0, p0, v8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_14

    sget-object p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->a:[Ljava/lang/String;

    aget-object p0, p0, v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    if-le p0, v0, :cond_13

    sget-object v0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->a:[Ljava/lang/String;

    aget-object v1, v0, v8

    sub-int/2addr p0, v8

    invoke-virtual {v1, v8, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v8

    goto :goto_1b

    :cond_13
    sget-object p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->a:[Ljava/lang/String;

    aput-object v5, p0, v8

    :cond_14
    :goto_1b
    return-void

    :array_0
    .array-data 4
        -0x6699999a
        0x71777777
        0x71777778
    .end array-data
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    sget-boolean v0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->b:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->b:Z

    :cond_0
    invoke-static {p0}, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->getExtra(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    if-eqz v1, :cond_3

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_3

    const-string p0, "hume_channel_id"

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static getExtra(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->a(Landroid/content/Context;)V

    sput-boolean v1, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->b:Z

    :cond_0
    sget-object p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->a:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    sget-object p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->a:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/bytedance/ads/convert/hume/readapk/HumeSDK;->a:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method
