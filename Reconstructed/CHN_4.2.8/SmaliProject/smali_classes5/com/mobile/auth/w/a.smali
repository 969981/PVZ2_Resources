.class public Lcom/mobile/auth/w/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/HostnameVerifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mobile/auth/w/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Lcom/mobile/auth/w/c;II)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/w/c;->buildPopRequestParamas()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    const-string v4, "utf-8"

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/mobile/auth/w/c;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/4 v6, 0x1

    :try_start_3
    invoke-virtual {v1, v6}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v1, v6}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-virtual {p0}, Lcom/mobile/auth/w/c;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mobile/auth/w/a;->b(Ljava/lang/String;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    invoke-virtual {p0}, Lcom/mobile/auth/w/c;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string p1, "host"

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept"

    const-string p2, "application/json"

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "x-acs-action"

    invoke-virtual {p0}, Lcom/mobile/auth/w/c;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "x-sdk-invoke-type"

    const-string p1, "common"

    invoke-virtual {v1, p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "x-sdk-client"

    const-string p1, "Java/2.0.0"

    invoke-virtual {v1, p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "traceparent"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Content-Type"

    const-string p1, "application/x-www-form-urlencoded"

    invoke-virtual {v1, p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "User-Agent"

    const-string p1, "AlibabaCloud (Linux; amd64) Java/1.8.0_152-b187 Core/4.5.26 HTTPClient/ApacheHttpClient"

    invoke-virtual {v1, p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "x-acs-version"

    const-string p1, "2017-05-25"

    invoke-virtual {v1, p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_1

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_0
    :try_start_5
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p1, :cond_3

    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    :cond_5
    :goto_4
    return-object v4

    :catchall_1
    move-exception v3

    move-object v7, p2

    move-object p2, p1

    move-object p1, v3

    move-object v3, v2

    goto :goto_5

    :catch_0
    move-exception v3

    move-object v7, p2

    move-object p2, p1

    move-object p1, v3

    move-object v3, v2

    goto :goto_6

    :catch_1
    move-exception v3

    move-object v7, p2

    move-object p2, p1

    move-object p1, v3

    move-object v3, v2

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object v3, v0

    move-object v7, p2

    move-object p2, p1

    move-object p1, v2

    :goto_5
    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_13

    :catch_2
    move-exception v2

    move-object v3, v0

    move-object v7, p2

    move-object p2, p1

    move-object p1, v2

    :goto_6
    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_b

    :catch_3
    move-exception v2

    move-object v3, v0

    move-object v7, p2

    move-object p2, p1

    move-object p1, v2

    :goto_7
    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_f

    :catchall_3
    move-exception p2

    move-object v3, v0

    move-object v2, v1

    move-object v1, v3

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto/16 :goto_13

    :catch_4
    move-exception p2

    move-object v3, v0

    move-object v2, v1

    move-object v1, v3

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto/16 :goto_b

    :catch_5
    move-exception p2

    move-object v3, v0

    move-object v2, v1

    move-object v1, v3

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto/16 :goto_f

    :catchall_4
    move-exception p1

    move-object p2, v0

    goto :goto_8

    :catch_6
    move-exception p1

    move-object p2, v0

    goto :goto_9

    :catch_7
    move-exception p1

    move-object p2, v0

    goto :goto_a

    :catchall_5
    move-exception p1

    move-object p0, v0

    move-object p2, p0

    :goto_8
    move-object v3, p2

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_13

    :catch_8
    move-exception p1

    move-object p0, v0

    move-object p2, p0

    :goto_9
    move-object v3, p2

    move-object v2, v1

    move-object v1, v3

    goto :goto_b

    :catch_9
    move-exception p1

    move-object p0, v0

    move-object p2, p0

    :goto_a
    move-object v3, p2

    move-object v2, v1

    move-object v1, v3

    goto :goto_f

    :catchall_6
    move-exception p1

    move-object p0, v0

    move-object p2, p0

    move-object v1, p2

    move-object v2, v1

    move-object v3, v2

    goto/16 :goto_13

    :catch_a
    move-exception p1

    move-object p0, v0

    move-object p2, p0

    move-object v1, p2

    move-object v2, v1

    move-object v3, v2

    :goto_b
    :try_start_a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    if-eqz p2, :cond_6

    :try_start_b
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_c

    :catchall_7
    move-exception p0

    goto :goto_d

    :cond_6
    :goto_c
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_8
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_e

    :goto_d
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    :cond_a
    :goto_e
    return-object p1

    :catch_b
    move-exception p1

    move-object p0, v0

    move-object p2, p0

    move-object v1, p2

    move-object v2, v1

    move-object v3, v2

    :goto_f
    :try_start_d
    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    if-eqz p2, :cond_b

    :try_start_e
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_10

    :catchall_8
    move-exception p0

    goto :goto_11

    :cond_b
    :goto_10
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_c
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_d
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_12

    :goto_11
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    :cond_f
    :goto_12
    return-object p1

    :catchall_9
    move-exception p1

    :goto_13
    if-eqz p2, :cond_10

    :try_start_10
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_14

    :catchall_a
    move-exception p0

    goto :goto_15

    :cond_10
    :goto_14
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_11
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_12
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    goto :goto_16

    :goto_15
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14
    :goto_16
    throw p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    :catchall_b
    move-exception p0

    :try_start_12
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    return-object v0

    :catchall_c
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Lcom/mobile/auth/w/c;III)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/mobile/auth/w/c;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mobile/auth/w/c;->buildPopRequestParamas()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    const-string v4, "utf-8"

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/4 v5, 0x1

    :try_start_3
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p0}, Lcom/mobile/auth/w/c;->getRequestMethod()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string p0, "Host"

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Accept"

    const-string p1, "text/xml,text/javascript"

    invoke-virtual {v1, p0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "User-Agent"

    const-string p1, "top-sdk-java"

    invoke-virtual {v1, p0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Content-Type"

    const-string p1, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {v1, p0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-eqz p1, :cond_2

    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    :cond_4
    :goto_3
    return-object v3

    :catch_0
    move-exception v2

    goto/16 :goto_a

    :catch_1
    move-exception v2

    goto/16 :goto_e

    :catchall_1
    move-exception v2

    move-object v0, p3

    goto/16 :goto_12

    :catch_2
    move-exception v2

    move-object v0, p3

    goto/16 :goto_a

    :catch_3
    move-exception v2

    move-object v0, p3

    goto/16 :goto_e

    :catchall_2
    move-exception v2

    move-object p2, p3

    goto :goto_5

    :catch_4
    move-exception v2

    move-object p2, p3

    goto :goto_7

    :catch_5
    move-exception v2

    move-object p2, p3

    goto :goto_9

    :catchall_3
    move-exception v2

    move-object p1, p3

    goto :goto_4

    :catch_6
    move-exception v2

    move-object p1, p3

    goto :goto_6

    :catch_7
    move-exception v2

    move-object p1, p3

    goto :goto_8

    :catchall_4
    move-exception v2

    move-object p0, p3

    move-object p1, p0

    :goto_4
    move-object p2, p1

    :goto_5
    move-object v0, p2

    goto/16 :goto_12

    :catch_8
    move-exception v2

    move-object p0, p3

    move-object p1, p0

    :goto_6
    move-object p2, p1

    :goto_7
    move-object v0, p2

    goto :goto_a

    :catch_9
    move-exception v2

    move-object p0, p3

    move-object p1, p0

    :goto_8
    move-object p2, p1

    :goto_9
    move-object v0, p2

    goto :goto_e

    :catchall_5
    move-exception v2

    move-object p0, p3

    move-object p1, p0

    move-object p2, p1

    move-object v0, p2

    move-object v1, v0

    goto/16 :goto_12

    :catch_a
    move-exception v2

    move-object p0, p3

    move-object p1, p0

    move-object p2, p1

    move-object v0, p2

    move-object v1, v0

    :goto_a
    :try_start_a
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-eqz p1, :cond_5

    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_b

    :catchall_6
    move-exception p0

    goto :goto_c

    :cond_5
    :goto_b
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_d

    :goto_c
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    :cond_9
    :goto_d
    return-object v2

    :catch_b
    move-exception v2

    move-object p0, p3

    move-object p1, p0

    move-object p2, p1

    move-object v0, p2

    move-object v1, v0

    :goto_e
    :try_start_d
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-eqz p1, :cond_a

    :try_start_e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_f

    :catchall_7
    move-exception p0

    goto :goto_10

    :cond_a
    :goto_f
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_c
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_11

    :goto_10
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    :cond_e
    :goto_11
    return-object v2

    :catchall_8
    move-exception v2

    :goto_12
    if-eqz p1, :cond_f

    :try_start_10
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_13

    :catchall_9
    move-exception p0

    goto :goto_14

    :cond_f
    :goto_13
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V

    :cond_10
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_11
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_12
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    goto :goto_15

    :goto_14
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    :goto_15
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    :catchall_a
    move-exception p0

    :try_start_12
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    return-object p3

    :catchall_b
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object p3
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :goto_0
    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "utf-8"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callApiByInternet:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    const-string v3, "POST"

    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, p3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string p2, "Host"

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Content-Type"

    const-string p3, "application/json;charset=UTF-8"

    invoke-virtual {p1, p2, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p0

    const/16 p3, 0xc8

    if-ne p0, p3, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :goto_0
    :try_start_4
    new-instance p3, Ljava/io/InputStreamReader;

    invoke-direct {p3, p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p0, :cond_2

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {p3}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    :cond_4
    :goto_4
    return-object v3

    :catchall_1
    move-exception v2

    move-object v4, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v0

    goto :goto_5

    :catch_0
    move-exception v2

    move-object v4, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v0

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v4, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v0

    :goto_5
    move-object v0, p3

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v0

    :goto_6
    move-object v0, p3

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v0

    :goto_7
    move-object v0, p3

    goto :goto_a

    :catchall_3
    move-exception p3

    move-object v0, v1

    move-object v2, v0

    move-object v4, p1

    move-object p1, p0

    move-object p0, p3

    :goto_8
    move-object p3, p2

    move-object p2, v4

    goto/16 :goto_16

    :catch_4
    move-exception p3

    move-object v0, v1

    move-object v2, v0

    move-object v4, p1

    move-object p1, p0

    move-object p0, p3

    :goto_9
    move-object p3, p2

    move-object p2, v4

    goto/16 :goto_d

    :catch_5
    move-exception p3

    move-object v0, v1

    move-object v2, v0

    move-object v4, p1

    move-object p1, p0

    move-object p0, p3

    :goto_a
    move-object p3, p2

    move-object p2, v4

    goto/16 :goto_12

    :catchall_4
    move-exception p0

    move-object p3, p2

    move-object v0, v1

    move-object v2, v0

    move-object p2, p1

    move-object p1, v2

    goto/16 :goto_16

    :catch_6
    move-exception p0

    move-object p3, p2

    move-object v0, v1

    move-object v2, v0

    move-object p2, p1

    move-object p1, v2

    goto :goto_d

    :catch_7
    move-exception p0

    move-object p3, p2

    move-object v0, v1

    move-object v2, v0

    move-object p2, p1

    move-object p1, v2

    goto/16 :goto_12

    :catchall_5
    move-exception p0

    move-object p2, p1

    move-object p1, v1

    move-object p3, p1

    goto :goto_b

    :catch_8
    move-exception p0

    move-object p2, p1

    move-object p1, v1

    move-object p3, p1

    goto :goto_c

    :catch_9
    move-exception p0

    move-object p2, p1

    move-object p1, v1

    move-object p3, p1

    goto :goto_11

    :catchall_6
    move-exception p0

    move-object p1, v1

    move-object p2, p1

    move-object p3, p2

    :goto_b
    move-object v0, p3

    move-object v2, v0

    goto/16 :goto_16

    :catch_a
    move-exception p0

    move-object p1, v1

    move-object p2, p1

    move-object p3, p2

    :goto_c
    move-object v0, p3

    move-object v2, v0

    :goto_d
    :try_start_9
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-eqz p1, :cond_5

    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catchall_7
    move-exception p1

    goto :goto_f

    :cond_5
    :goto_e
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_10

    :goto_f
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    :cond_9
    :goto_10
    return-object p0

    :catch_b
    move-exception p0

    move-object p1, v1

    move-object p2, p1

    move-object p3, p2

    :goto_11
    move-object v0, p3

    move-object v2, v0

    :goto_12
    :try_start_c
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    if-eqz p1, :cond_a

    :try_start_d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_13

    :catchall_8
    move-exception p1

    goto :goto_14

    :cond_a
    :goto_13
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_c
    if-eqz p3, :cond_d

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    :cond_d
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_15

    :goto_14
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    :cond_e
    :goto_15
    return-object p0

    :catchall_9
    move-exception p0

    :goto_16
    if-eqz p1, :cond_f

    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_17

    :catchall_a
    move-exception p1

    goto :goto_18

    :cond_f
    :goto_17
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_11
    if-eqz p3, :cond_12

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    :cond_12
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    goto :goto_19

    :goto_18
    :try_start_10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    :goto_19
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    :catchall_b
    move-exception p0

    :try_start_11
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    return-object v1

    :catchall_c
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static b(Ljava/lang/String;)Ljavax/net/ssl/HostnameVerifier;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/mobile/auth/w/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/mobile/auth/w/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mobile/auth/w/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mobile/auth/w/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HostnameVerifier;

    return-object p0

    :cond_0
    new-instance v0, Lcom/mobile/auth/w/a$1;

    invoke-direct {v0}, Lcom/mobile/auth/w/a$1;-><init>()V

    sget-object v1, Lcom/mobile/auth/w/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/mobile/auth/w/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    sget-object v1, Lcom/mobile/auth/w/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method
