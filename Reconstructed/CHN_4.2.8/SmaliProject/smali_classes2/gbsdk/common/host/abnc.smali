.class public Lgbsdk/common/host/abnc;
.super Ljava/lang/Object;
.source "MonitorNetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abnc$ac;,
        Lgbsdk/common/host/abnc$ad;,
        Lgbsdk/common/host/abnc$ab;
    }
.end annotation


# static fields
.field private static vm:Lgbsdk/common/host/abnc$ac;


# direct methods
.method public static U(Landroid/content/Context;)Lgbsdk/common/host/abnc$ad;
    .locals 2

    :try_start_0
    const-string v0, "connectivity"

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 96
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 105
    sget-object p0, Lgbsdk/common/host/abnc$ad;->vv:Lgbsdk/common/host/abnc$ad;

    return-object p0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "phone"

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 110
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 124
    :pswitch_0
    sget-object p0, Lgbsdk/common/host/abnc$ad;->vs:Lgbsdk/common/host/abnc$ad;

    goto :goto_0

    .line 122
    :pswitch_1
    sget-object p0, Lgbsdk/common/host/abnc$ad;->vw:Lgbsdk/common/host/abnc$ad;

    return-object p0

    .line 120
    :pswitch_2
    sget-object p0, Lgbsdk/common/host/abnc$ad;->vu:Lgbsdk/common/host/abnc$ad;

    :goto_0
    return-object p0

    .line 127
    :cond_2
    sget-object p0, Lgbsdk/common/host/abnc$ad;->vs:Lgbsdk/common/host/abnc$ad;

    return-object p0

    .line 98
    :cond_3
    :goto_1
    sget-object p0, Lgbsdk/common/host/abnc$ad;->vr:Lgbsdk/common/host/abnc$ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 130
    :catchall_0
    sget-object p0, Lgbsdk/common/host/abnc$ad;->vs:Lgbsdk/common/host/abnc$ad;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;[BLgbsdk/common/host/abnc$ab;Ljava/lang/String;ZLjava/util/Map;)Lgbsdk/common/host/abnw;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lgbsdk/common/host/abnc$ab;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lgbsdk/common/host/abnw;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    if-nez p1, :cond_1

    new-array v4, v3, [B

    goto :goto_0

    :cond_1
    move-object v4, p1

    .line 332
    :goto_0
    array-length v5, v4

    .line 336
    sget-object v6, Lgbsdk/common/host/abnc$ab;->vo:Lgbsdk/common/host/abnc$ab;

    const/16 v7, 0x80

    const/16 v8, 0x2000

    if-ne v6, p2, :cond_2

    if-le v5, v7, :cond_2

    .line 337
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 338
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 340
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 347
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "gzip"

    goto :goto_2

    .line 344
    :catchall_0
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    return-object v2

    .line 349
    :cond_2
    sget-object v6, Lgbsdk/common/host/abnc$ab;->vp:Lgbsdk/common/host/abnc$ab;

    if-ne v6, p2, :cond_4

    if-le v5, v7, :cond_4

    .line 350
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 351
    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2}, Ljava/util/zip/Deflater;-><init>()V

    .line 352
    invoke-virtual {v2, v4}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 353
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    new-array v4, v8, [B

    .line 355
    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v5

    if-nez v5, :cond_3

    .line 356
    invoke-virtual {v2, v4}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v5

    .line 357
    invoke-virtual {v1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 359
    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    .line 362
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "deflate"

    :goto_2
    move-object v5, v2

    goto :goto_3

    :cond_4
    move-object v5, v2

    move-object v1, v4

    :goto_3
    if-eqz p4, :cond_6

    .line 366
    array-length v2, v1

    invoke-static {v1, v2}, Lcom/bytedance/applog/encryptor/EncryptorUtil;->encrypt([BI)[B

    move-result-object v2

    if-eqz v2, :cond_5

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&tt_data=a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/octet-stream;tt-data=a"

    move-object v4, v1

    move-object v3, v2

    move-object v2, v0

    goto :goto_4

    :cond_5
    move-object v2, p0

    move-object v4, p3

    move-object v3, v1

    :goto_4
    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v6, "POST"

    move-object v9, p5

    .line 374
    invoke-static/range {v2 .. v9}, Lgbsdk/common/host/abnc;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;)Lgbsdk/common/host/abnw;

    move-result-object v0

    return-object v0

    :cond_6
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v4, "POST"

    move-object v0, p0

    move-object v2, p3

    move-object v3, v5

    move v5, v6

    move v6, v7

    move-object v7, p5

    .line 376
    invoke-static/range {v0 .. v7}, Lgbsdk/common/host/abnc;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;)Lgbsdk/common/host/abnw;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;)Lgbsdk/common/host/abnw;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lgbsdk/common/host/abnw;"
        }
    .end annotation

    const-string v0, "gzip"

    const/4 v1, 0x0

    .line 185
    :try_start_0
    sget-object v2, Lgbsdk/common/host/abnc;->vm:Lgbsdk/common/host/abnc$ac;

    if-eqz v2, :cond_0

    .line 186
    sget-object v2, Lgbsdk/common/host/abnc;->vm:Lgbsdk/common/host/abnc$ac;

    invoke-interface {v2, p0, p1}, Lgbsdk/common/host/abnc$ac;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    .line 189
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 196
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 198
    :try_start_1
    invoke-static {p0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->setupSSLFactory(Ljava/net/HttpURLConnection;)V

    if-eqz p6, :cond_2

    .line 200
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_2

    .line 201
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-nez v2, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p6, 0x0

    if-eqz p5, :cond_3

    const/4 p5, 0x1

    .line 211
    invoke-virtual {p0, p5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_1

    .line 213
    :cond_3
    invoke-virtual {p0, p6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :goto_1
    if-eqz p2, :cond_4

    const-string p5, "Content-Type"

    .line 216
    invoke-virtual {p0, p5, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p3, :cond_5

    const-string p2, "Content-Encoding"

    .line 219
    invoke-virtual {p0, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string p2, "Accept-Encoding"

    .line 221
    invoke-virtual {p0, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Version-Code"

    const-string p3, "1"

    .line 222
    invoke-virtual {p0, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_8

    .line 224
    invoke-interface {p7}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 225
    invoke-interface {p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 226
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 227
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 228
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-nez p7, :cond_6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-eqz p7, :cond_7

    goto :goto_2

    .line 231
    :cond_7
    invoke-virtual {p0, p5, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    if-eqz p4, :cond_f

    .line 238
    invoke-virtual {p0, p4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    .line 239
    array-length p2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-lez p2, :cond_9

    .line 242
    :try_start_2
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 243
    :try_start_3
    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 244
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    :try_start_4
    invoke-static {p2}, Lgbsdk/common/host/abnh;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p2, v1

    :goto_3
    invoke-static {p2}, Lgbsdk/common/host/abnh;->a(Ljava/io/Closeable;)V

    throw p1

    .line 249
    :cond_9
    :goto_4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_e

    .line 251
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 253
    :try_start_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p3

    .line 254
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_a

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz p3, :cond_a

    .line 257
    :try_start_6
    new-instance p3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p3, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 258
    :try_start_7
    invoke-static {p3}, Lgbsdk/common/host/abnc;->a(Ljava/io/InputStream;)[B

    move-result-object p4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 260
    :try_start_8
    invoke-static {p3}, Lgbsdk/common/host/abnh;->a(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object v1, p3

    goto :goto_5

    :catchall_3
    move-exception p1

    :goto_5
    invoke-static {v1}, Lgbsdk/common/host/abnh;->a(Ljava/io/Closeable;)V

    throw p1

    .line 263
    :cond_a
    invoke-static {p2}, Lgbsdk/common/host/abnc;->a(Ljava/io/InputStream;)[B

    move-result-object p4

    .line 266
    :goto_6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p3

    .line 267
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 268
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p7

    invoke-interface {p7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p7

    :cond_b
    :goto_7
    invoke-interface {p7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_b

    .line 270
    invoke-static {v1}, Lgbsdk/common/host/abnb;->l(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 271
    invoke-interface {v1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 274
    :cond_c
    new-instance p3, Lgbsdk/common/host/abnw;

    invoke-direct {p3, p1, p5, p4}, Lgbsdk/common/host/abnw;-><init>(ILjava/util/Map;[B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 282
    invoke-static {p2}, Lgbsdk/common/host/abnh;->a(Ljava/io/Closeable;)V

    if-eqz p0, :cond_d

    .line 285
    :try_start_9
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    :cond_d
    return-object p3

    :catchall_4
    move-exception p1

    move-object v1, p2

    goto :goto_8

    .line 277
    :cond_e
    :try_start_a
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p2

    .line 278
    new-instance p3, Lgbsdk/common/host/abne;

    invoke-direct {p3, p1, p2}, Lgbsdk/common/host/abne;-><init>(ILjava/lang/String;)V

    throw p3

    .line 236
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "request method is not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception p1

    :goto_8
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    goto :goto_9

    :catchall_6
    move-exception p0

    move-object p1, v1

    .line 280
    :goto_9
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception p0

    .line 282
    invoke-static {v1}, Lgbsdk/common/host/abnh;->a(Ljava/io/Closeable;)V

    if-eqz p1, :cond_10

    .line 285
    :try_start_c
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 287
    :catch_1
    :cond_10
    throw p0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 4

    .line 294
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_0
    const/4 v2, -0x1

    .line 297
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 298
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 301
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 304
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BLjava/util/Map;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 308
    array-length v0, p0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    .line 311
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 312
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 314
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 320
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    .line 322
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 316
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    throw p0

    :cond_0
    :goto_1
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "connectivity"

    .line 139
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 140
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 141
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
