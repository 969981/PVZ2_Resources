.class public Lcom/tw/pay/sdk/alipay/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NetworkManager"


# instance fields
.field private connectTimeout:I

.field mContext:Landroid/content/Context;

.field mProxy:Ljava/net/Proxy;

.field private readTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    .line 38
    iput v0, p0, Lcom/tw/pay/sdk/alipay/NetworkManager;->connectTimeout:I

    .line 39
    iput v0, p0, Lcom/tw/pay/sdk/alipay/NetworkManager;->readTimeout:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/tw/pay/sdk/alipay/NetworkManager;->mProxy:Ljava/net/Proxy;

    .line 44
    iput-object p1, p0, Lcom/tw/pay/sdk/alipay/NetworkManager;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/tw/pay/sdk/alipay/NetworkManager;->setDefaultHostnameVerifier()V

    return-void
.end method

.method private detectProxy()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/tw/pay/sdk/alipay/NetworkManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 54
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    if-eqz v0, :cond_0

    .line 60
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 62
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/alipay/NetworkManager;->mProxy:Ljava/net/Proxy;

    :cond_0
    return-void
.end method

.method private setDefaultHostnameVerifier()V
    .locals 1

    .line 69
    new-instance v0, Lcom/tw/pay/sdk/alipay/NetworkManager$1;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/alipay/NetworkManager$1;-><init>(Lcom/tw/pay/sdk/alipay/NetworkManager;)V

    .line 75
    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method


# virtual methods
.method public SendAndWaitResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 89
    invoke-direct {p0}, Lcom/tw/pay/sdk/alipay/NetworkManager;->detectProxy()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "requestData"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 98
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/tw/pay/sdk/alipay/NetworkManager;->mProxy:Ljava/net/Proxy;

    if-eqz p2, :cond_0

    .line 102
    iget-object p2, p0, Lcom/tw/pay/sdk/alipay/NetworkManager;->mProxy:Ljava/net/Proxy;

    invoke-virtual {v0, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :goto_0
    :try_start_1
    iget v0, p0, Lcom/tw/pay/sdk/alipay/NetworkManager;->connectTimeout:I

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 107
    iget v0, p0, Lcom/tw/pay/sdk/alipay/NetworkManager;->readTimeout:I

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v0, "Content-type"

    const-string v2, "application/x-www-form-urlencoded;charset=utf-8"

    .line 109
    invoke-virtual {p2, v0, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    .line 114
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 115
    invoke-virtual {v1, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 116
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 118
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/tw/pay/sdk/alipay/BaseHelper;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkManager"

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/alipay/BaseHelper;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v0, p2

    move-object p2, p1

    .line 122
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object p1, p2

    :goto_2
    return-object p1

    :goto_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 125
    throw p2
.end method

.method public urlDownloadToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 145
    invoke-direct {p0}, Lcom/tw/pay/sdk/alipay/NetworkManager;->detectProxy()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 148
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/tw/pay/sdk/alipay/NetworkManager;->mProxy:Ljava/net/Proxy;

    if-eqz p2, :cond_0

    .line 151
    iget-object p2, p0, Lcom/tw/pay/sdk/alipay/NetworkManager;->mProxy:Ljava/net/Proxy;

    invoke-virtual {v1, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    .line 155
    :goto_0
    iget v1, p0, Lcom/tw/pay/sdk/alipay/NetworkManager;->connectTimeout:I

    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 156
    iget v1, p0, Lcom/tw/pay/sdk/alipay/NetworkManager;->readTimeout:I

    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 157
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 159
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    .line 160
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 162
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 164
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 168
    :goto_1
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 169
    invoke-virtual {p3, v1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    .line 173
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_2
    return p1
.end method
