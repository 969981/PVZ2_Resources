.class public Lcom/tw/pay/sdk/net/HttpDataNet;
.super Ljava/lang/Object;
.source "HttpDataNet.java"


# static fields
.field public static final CONNECT_TIMEOUT:Ljava/lang/String; = "999999"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Login(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/talkweb/sdk/vo/ReturnObject;"
        }
    .end annotation

    .line 35
    :try_start_0
    new-instance v0, Lcom/talkweb/sdk/vo/ReturnObject;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/ReturnObject;-><init>()V

    sget-object v1, Lcom/tw/pay/sdk/net/HttpUrl;->Login_url:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->postData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/vo/ReturnObject;->decode(Ljava/lang/String;)Lcom/talkweb/sdk/vo/BaseVO;

    move-result-object p1

    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/net/ConnectException;->printStackTrace()V

    .line 38
    new-instance p1, Lcom/talkweb/sdk/vo/ReturnObject;

    invoke-direct {p1}, Lcom/talkweb/sdk/vo/ReturnObject;-><init>()V

    const-string v0, "999999"

    .line 39
    invoke-virtual {p1, v0}, Lcom/talkweb/sdk/vo/ReturnObject;->setResultCode(Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public checkIndentifyCode(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/talkweb/sdk/vo/ReturnObject;"
        }
    .end annotation

    .line 62
    :try_start_0
    new-instance v0, Lcom/talkweb/sdk/vo/ReturnObject;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/ReturnObject;-><init>()V

    invoke-virtual {p0, p2, p3}, Lcom/tw/pay/sdk/net/HttpDataNet;->postData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/talkweb/sdk/vo/ReturnObject;->decode(Ljava/lang/String;)Lcom/talkweb/sdk/vo/BaseVO;

    move-result-object p2

    check-cast p2, Lcom/talkweb/sdk/vo/ReturnObject;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    goto :goto_0

    :catch_1
    move-exception p2

    .line 64
    invoke-virtual {p2}, Ljava/net/ConnectException;->printStackTrace()V

    .line 65
    new-instance p2, Lcom/talkweb/sdk/vo/ReturnObject;

    invoke-direct {p2}, Lcom/talkweb/sdk/vo/ReturnObject;-><init>()V

    const-string p3, "999999"

    .line 66
    invoke-virtual {p2, p3}, Lcom/talkweb/sdk/vo/ReturnObject;->setResultCode(Ljava/lang/String;)V

    const-string p3, "interent_busy"

    .line 67
    invoke-static {p1, p3}, Lcom/tw/OnLinePaySdk/tools/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/talkweb/sdk/vo/ReturnObject;->setContent(Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public getPayType(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/talkweb/sdk/vo/ReturnObject;"
        }
    .end annotation

    .line 125
    :try_start_0
    new-instance v0, Lcom/talkweb/sdk/vo/ReturnObject;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/ReturnObject;-><init>()V

    sget-object v1, Lcom/tw/pay/sdk/net/HttpUrl;->PayType_url:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->postData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/vo/ReturnObject;->decode(Ljava/lang/String;)Lcom/talkweb/sdk/vo/BaseVO;

    move-result-object p1

    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public initNewPwd(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 49
    :try_start_0
    sget-object v0, Lcom/tw/pay/sdk/net/HttpUrl;->InitPwd_url:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->postData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public oneKeyRegister(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/talkweb/sdk/vo/ReturnObject;"
        }
    .end annotation

    .line 89
    :try_start_0
    new-instance v0, Lcom/talkweb/sdk/vo/ReturnObject;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/ReturnObject;-><init>()V

    sget-object v1, Lcom/tw/pay/sdk/net/HttpUrl;->OneKeyRegister:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->postData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/vo/ReturnObject;->decode(Ljava/lang/String;)Lcom/talkweb/sdk/vo/BaseVO;

    move-result-object p1

    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public payRequset(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/talkweb/sdk/vo/ReturnObject;"
        }
    .end annotation

    .line 147
    :try_start_0
    new-instance v0, Lcom/talkweb/sdk/vo/ReturnObject;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/ReturnObject;-><init>()V

    sget-object v1, Lcom/tw/pay/sdk/net/HttpUrl;->PayRsquest_url:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->postData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/vo/ReturnObject;->decode(Ljava/lang/String;)Lcom/talkweb/sdk/vo/BaseVO;

    move-result-object p1

    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public postData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 161
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 163
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 165
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 166
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 168
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 169
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_0
    new-instance p2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {p2, p1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 172
    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 173
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 175
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p2

    const-string v2, "http.connection.timeout"

    const/16 v3, 0x1388

    .line 176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 175
    invoke-interface {p2, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 178
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p2

    const-string v2, "http.socket.timeout"

    const/16 v3, 0x3a98

    .line 179
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 178
    invoke-interface {p2, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 180
    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 181
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    .line 182
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 185
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    .line 186
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    .line 185
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HttpDataNet"

    invoke-static {v0, p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    new-instance p1, Ljava/net/ConnectException;

    invoke-direct {p1}, Ljava/net/ConnectException;-><init>()V

    throw p1
.end method

.method public recordTerminal(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/talkweb/sdk/vo/ReturnObject;"
        }
    .end annotation

    .line 101
    :try_start_0
    new-instance v0, Lcom/talkweb/sdk/vo/ReturnObject;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/ReturnObject;-><init>()V

    sget-object v1, Lcom/tw/pay/sdk/net/HttpUrl;->RecordTerminal_url:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->postData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/vo/ReturnObject;->decode(Ljava/lang/String;)Lcom/talkweb/sdk/vo/BaseVO;

    move-result-object p1

    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public register(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/talkweb/sdk/vo/ReturnObject;"
        }
    .end annotation

    .line 77
    :try_start_0
    new-instance v0, Lcom/talkweb/sdk/vo/ReturnObject;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/ReturnObject;-><init>()V

    sget-object v1, Lcom/tw/pay/sdk/net/HttpUrl;->Register_url:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->postData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/vo/ReturnObject;->decode(Ljava/lang/String;)Lcom/talkweb/sdk/vo/BaseVO;

    move-result-object p1

    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerPhone(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/talkweb/sdk/vo/ReturnObject;"
        }
    .end annotation

    .line 136
    :try_start_0
    new-instance v0, Lcom/talkweb/sdk/vo/ReturnObject;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/ReturnObject;-><init>()V

    sget-object v1, Lcom/tw/pay/sdk/net/HttpUrl;->Register_phone:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->postData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/vo/ReturnObject;->decode(Ljava/lang/String;)Lcom/talkweb/sdk/vo/BaseVO;

    move-result-object p1

    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public verifyCode(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/talkweb/sdk/vo/ReturnObject;"
        }
    .end annotation

    .line 113
    :try_start_0
    new-instance v0, Lcom/talkweb/sdk/vo/ReturnObject;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/ReturnObject;-><init>()V

    sget-object v1, Lcom/tw/pay/sdk/net/HttpUrl;->VerifyCode_url:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->postData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/vo/ReturnObject;->decode(Ljava/lang/String;)Lcom/talkweb/sdk/vo/BaseVO;

    move-result-object p1

    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
