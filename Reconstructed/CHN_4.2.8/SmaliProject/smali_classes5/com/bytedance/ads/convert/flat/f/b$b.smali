.class public final Lcom/bytedance/ads/convert/flat/f/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ads/convert/flat/f/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lorg/json/JSONObject;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/f/b$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/ads/convert/flat/f/b$b;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/ads/convert/flat/f/b$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "msg"

    const-string v3, ""

    const-string v4, "X-Tt-Logid"

    iget-object v5, v1, Lcom/bytedance/ads/convert/flat/f/b$b;->a:Ljava/lang/String;

    iget-object v0, v1, Lcom/bytedance/ads/convert/flat/f/b$b;->b:Lorg/json/JSONObject;

    iget-object v6, v1, Lcom/bytedance/ads/convert/flat/f/b$b;->c:Ljava/lang/String;

    const-string v7, "https://analytics.oceanengine.com/sdk/app/"

    const-string v8, "url"

    .line 1
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "eventName"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "body"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "tag"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x5

    const/4 v10, 0x0

    :try_start_0
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    if-eqz v7, :cond_5

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v11, "POST"

    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v11, 0x1388

    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v11, "enable-encrypt"

    const-string v12, "1"

    invoke-virtual {v7, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "Content-Type"

    const-string v12, "application/json"

    invoke-virtual {v7, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v12, Lcom/bytedance/ads/convert/flat/i/e;->a:Lcom/bytedance/ads/convert/flat/i/e;

    invoke-virtual {v12, v0, v6}, Lcom/bytedance/ads/convert/flat/i/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "EncryptUtils.doInClient(body, tag).toString()"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v12, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    new-instance v0, Lorg/json/JSONObject;

    const-string v12, "inputStream"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v12

    new-instance v13, Ljava/lang/String;

    sget-object v14, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v12, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    goto :goto_0

    :cond_0
    move-object v13, v3

    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "post: response: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v15}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result v16

    if-nez v16, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 v14, 0xc8

    if-eq v12, v14, :cond_2

    .line 3
    invoke-virtual {v15}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getLifecycleCallback()Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

    move-result-object v12

    if-eqz v12, :cond_3

    new-instance v14, Ljava/lang/Exception;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v5, v9, v13, v14}, Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;->onEventSendFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v15}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getLifecycleCallback()Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v5, v13}, Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;->onEventSendSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_2
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto/16 :goto_5

    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v12, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object/from16 v17, v10

    move-object v10, v7

    move-object/from16 v7, v17

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v17, v10

    move-object v10, v7

    move-object/from16 v7, v17

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v11, v10

    move-object v10, v7

    move-object v7, v11

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v11, v10

    move-object v10, v7

    move-object v7, v11

    goto :goto_3

    :cond_5
    :try_start_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v7, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {v0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v7, v10

    move-object v11, v7

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v7, v10

    move-object v11, v7

    :goto_3
    if-eqz v10, :cond_6

    :try_start_5
    invoke-virtual {v10, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_6

    move-object v3, v4

    :catch_3
    :cond_6
    :try_start_6
    sget-object v4, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v4}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getLifecycleCallback()Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-interface {v12, v5, v9, v3, v0}, Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;->onEventSendFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request error"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_4
    if-eqz v10, :cond_9

    .line 5
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    :cond_a
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_b
    :goto_5
    return-void

    :catchall_3
    move-exception v0

    :goto_6
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_e
    throw v0
.end method
