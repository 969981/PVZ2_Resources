.class public Lcom/talkweb/sdk/util/HttpClientUtil;
.super Ljava/lang/Object;
.source "HttpClientUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 183
    invoke-static {p0, v0}, Lcom/talkweb/sdk/util/HttpClientUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    new-instance v0, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V

    .line 188
    new-instance v1, Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-direct {v1, p0}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/GetMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object p0

    const-string v2, "http.protocol.content-charset"

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    new-instance p1, Lorg/apache/commons/httpclient/Header;

    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0 (Windows NT 6.1; rv:11.0) Gecko/20100101 Firefox/11.0"

    .line 193
    invoke-direct {p1, v2, v3}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpClient;->getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object p1

    const-string v2, "http.default-headers"

    .line 195
    invoke-virtual {p1, v2, p0}, Lorg/apache/commons/httpclient/params/HostParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 198
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/commons/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 202
    throw p0

    :catch_1
    move-exception p0

    .line 200
    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .line 207
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "mobileNo"

    const-string v1, "18073111523"

    .line 208
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mt"

    const-string v1, "\u3010\u62d3\u7ef4\u6e38\u620f\u3011\u60a8\u7684\u9a8c\u8bc1\u7801\u4e3a\uff1a1225\uff0c\u6709\u6548\u65f6\u95f45\u5206\u949f"

    .line 209
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "http://175.6.2.94:14592/em_smsChannel_twgame/sendServlet"

    const-string v3, "gbk"

    invoke-static {v2, p0, v3}, Lcom/talkweb/sdk/util/HttpClientUtil;->post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "utf-8"

    const/4 v1, 0x1

    .line 45
    invoke-static {p0, p1, v0, v1}, Lcom/talkweb/sdk/util/HttpClientUtil;->post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 49
    invoke-static {p0, p1, p2, v0}, Lcom/talkweb/sdk/util/HttpClientUtil;->post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 71
    const-class v4, Lcom/talkweb/sdk/util/HttpClientUtil;

    new-instance v5, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v5}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V

    .line 72
    new-instance v6, Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-direct {v6, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v6}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v7, "http.protocol.content-charset"

    invoke-virtual {v0, v7, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v0

    const/16 v7, 0xbb8

    invoke-virtual {v0, v7}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setConnectionTimeout(I)V

    .line 75
    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setSoTimeout(I)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v7, Lorg/apache/commons/httpclient/Header;

    const-string v8, "User-Agent"

    const-string v9, "Mozilla/5.0 (Windows NT 6.1; rv:11.0) Gecko/20100101 Firefox/11.0"

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpClient;->getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v7

    const-string v8, "http.default-headers"

    invoke-virtual {v7, v8, v0}, Lorg/apache/commons/httpclient/params/HostParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_1

    .line 82
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/httpclient/NameValuePair;

    .line 83
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 84
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    .line 86
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 91
    invoke-virtual {v6, v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestBody([Lorg/apache/commons/httpclient/NameValuePair;)V

    goto :goto_1

    .line 87
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 88
    new-instance v12, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v12, v13, v11}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v0, v10

    add-int/2addr v10, v8

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    const/4 v9, 0x0

    :goto_2
    const-string v10, ",param:{}"

    const/4 v11, 0x0

    if-eqz v0, :cond_3

    move/from16 v12, p3

    if-lt v9, v12, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 103
    :try_start_0
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v11

    move-object v6, v5

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v3, v11

    move-object v5, v3

    move-object v6, v5

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object v13, v0

    .line 107
    :try_start_1
    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Send http post error,url:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14, v2, v13}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    return-object v11

    .line 113
    :cond_4
    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Send http post,url:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v6}, Lorg/apache/commons/httpclient/methods/PostMethod;->getStatusCode()I

    move-result v0

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_7

    .line 115
    invoke-virtual {v6}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 117
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    :try_start_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    :goto_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    .line 124
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 146
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 152
    :catch_2
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    nop

    :goto_5
    if-eqz v5, :cond_5

    .line 158
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_5
    return-object v0

    .line 122
    :cond_6
    :try_start_8
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    .line 127
    :cond_7
    :try_start_9
    invoke-virtual {v6}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 128
    :try_start_a
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 129
    :try_start_b
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 132
    :try_start_c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    :goto_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    .line 136
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 137
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 146
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 152
    :catch_5
    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_7

    :catch_6
    nop

    :goto_7
    if-eqz v5, :cond_8

    .line 158
    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    :catch_7
    :cond_8
    return-object v11

    .line 134
    :cond_9
    :try_start_10
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_b

    :catch_9
    move-exception v0

    move-object v3, v11

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v6, v11

    goto :goto_b

    :catch_a
    move-exception v0

    move-object v3, v11

    move-object v6, v3

    .line 142
    :goto_8
    :try_start_11
    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Get post result error,url:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v3, :cond_a

    .line 146
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    goto :goto_9

    :catch_b
    nop

    :cond_a
    :goto_9
    if-eqz v6, :cond_b

    .line 152
    :try_start_13
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    goto :goto_a

    :catch_c
    nop

    :cond_b
    :goto_a
    if-eqz v5, :cond_c

    .line 158
    :try_start_14
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    :catch_d
    :cond_c
    return-object v11

    :catchall_3
    move-exception v0

    move-object v11, v3

    :goto_b
    if-eqz v11, :cond_d

    .line 146
    :try_start_15
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    goto :goto_c

    :catch_e
    nop

    :cond_d
    :goto_c
    if-eqz v6, :cond_e

    .line 152
    :try_start_16
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    goto :goto_d

    :catch_f
    nop

    :cond_e
    :goto_d
    if-eqz v5, :cond_f

    .line 158
    :try_start_17
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    .line 162
    :catch_10
    :cond_f
    throw v0
.end method
