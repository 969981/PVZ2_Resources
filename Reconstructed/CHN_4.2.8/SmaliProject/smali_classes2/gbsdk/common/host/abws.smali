.class public final Lgbsdk/common/host/abws;
.super Lgbsdk/common/host/abku;
.source "SsInterceptor.java"


# static fields
.field public static volatile aIT:Z = false

.field private static final ln:Ljava/lang/String; = "Set-Cookie"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lgbsdk/common/host/abku;-><init>()V

    return-void
.end method

.method private cE(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 262
    invoke-static {p1}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 266
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 267
    invoke-static {p1, v0}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->parseUrlWithValueList(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p1

    .line 271
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 272
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-nez v3, :cond_3

    goto :goto_0

    .line 276
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 277
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 280
    :cond_4
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 281
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 282
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 283
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 284
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 285
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 288
    :cond_5
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 292
    :cond_6
    new-instance v2, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 294
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_8

    goto :goto_2

    .line 298
    :cond_8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_2

    .line 301
    :cond_9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_7

    .line 302
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_2

    .line 305
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 306
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 310
    :cond_b
    invoke-virtual {v2}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;->build()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method


# virtual methods
.method protected a(Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/retrofit2/SsResponse;)V
    .locals 17

    move-object/from16 v1, p1

    const-string v2, "X-SS-REQ-TICKET"

    .line 127
    invoke-super/range {p0 .. p2}, Lgbsdk/common/host/abku;->a(Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/retrofit2/SsResponse;)V

    if-eqz v1, :cond_19

    if-nez p2, :cond_0

    goto/16 :goto_d

    .line 131
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/retrofit2/SsResponse;->raw()Lcom/bytedance/retrofit2/client/Response;

    move-result-object v3

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 135
    :try_start_0
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getCommandListener()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CommandListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 136
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getCommandListener()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CommandListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CommandListener;->getHeaderKey()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 138
    invoke-virtual {v3, v0}, Lcom/bytedance/retrofit2/client/Response;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 140
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/retrofit2/client/Header;

    .line 142
    invoke-virtual {v6}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getCommandListener()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CommandListener;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CommandListener;->onCommandReceived(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->commandListenerDuration:J

    .line 157
    :cond_3
    invoke-static {}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->gO()Lcom/bytedance/ttnet/clientkey/ClientKeyManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->a(Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/retrofit2/client/Response;)V

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 161
    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Response;->getExtraInfo()Ljava/lang/Object;

    move-result-object v0

    .line 162
    instance-of v5, v0, Lcom/bytedance/ttnet/http/HttpRequestInfo;

    const/4 v7, 0x0

    if-eqz v5, :cond_8

    .line 163
    move-object v5, v0

    check-cast v5, Lcom/bytedance/ttnet/http/HttpRequestInfo;

    .line 164
    iget-object v0, v5, Lcom/bytedance/ttnet/http/HttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    if-eqz v0, :cond_9

    .line 165
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 166
    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    .line 167
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_6

    .line 170
    :try_start_1
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/retrofit2/client/Header;

    if-eqz v0, :cond_5

    .line 171
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_3

    .line 174
    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 179
    :cond_6
    iget-object v0, v5, Lcom/bytedance/ttnet/http/HttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    instance-of v0, v0, Lcom/bytedance/ttnet/http/RequestContext;

    if-eqz v0, :cond_7

    .line 180
    iget-object v0, v5, Lcom/bytedance/ttnet/http/HttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    check-cast v0, Lcom/bytedance/ttnet/http/RequestContext;

    iput-object v8, v0, Lcom/bytedance/ttnet/http/RequestContext;->headers:Lorg/json/JSONObject;

    .line 182
    :cond_7
    iget-object v0, v5, Lcom/bytedance/ttnet/http/HttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    check-cast v0, Lcom/bytedance/ttnet/http/RequestContext;

    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Response;->getStatus()I

    move-result v8

    iput v8, v0, Lcom/bytedance/ttnet/http/RequestContext;->status:I

    .line 183
    iget-object v0, v5, Lcom/bytedance/ttnet/http/HttpRequestInfo;->reqContext:Lcom/bytedance/frameworks/baselib/network/http/BaseRequestContext;

    check-cast v0, Lcom/bytedance/ttnet/http/RequestContext;

    iget-object v8, v5, Lcom/bytedance/ttnet/http/HttpRequestInfo;->remoteIp:Ljava/lang/String;

    iput-object v8, v0, Lcom/bytedance/ttnet/http/RequestContext;->remoteIp:Ljava/lang/String;

    goto :goto_4

    :cond_8
    move-object v5, v7

    .line 187
    :cond_9
    :goto_4
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {v1, v2}, Lcom/bytedance/retrofit2/client/Request;->getFirstHeader(Ljava/lang/String;)Lcom/bytedance/retrofit2/client/Header;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 189
    invoke-virtual {v8}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_a
    move-object v8, v7

    .line 190
    :goto_5
    invoke-virtual {v3, v2}, Lcom/bytedance/retrofit2/client/Response;->getFirstHeader(Ljava/lang/String;)Lcom/bytedance/retrofit2/client/Header;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 191
    invoke-virtual {v2}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_b
    move-object v2, v7

    :goto_6
    if-eqz v2, :cond_c

    move-object v7, v2

    .line 193
    :cond_c
    invoke-static {v0, v8, v7, v5}, Lgbsdk/common/host/abwq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ttnet/http/HttpRequestInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    :goto_7
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 203
    invoke-static {}, Lgbsdk/common/host/abtr;->getHostSuffix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    return-void

    :cond_d
    const-string v7, "Set-Cookie"

    .line 206
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const-string v9, "sessionid"

    const-string v10, "tt_sessionid"

    .line 207
    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    :goto_8
    const/4 v11, 0x1

    if-ge v10, v11, :cond_17

    .line 208
    aget-object v11, v7, v10

    .line 209
    invoke-virtual {v3, v11}, Lcom/bytedance/retrofit2/client/Response;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_16

    .line 210
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_e

    goto/16 :goto_c

    .line 213
    :cond_e
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/bytedance/retrofit2/client/Header;

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v8, :cond_f

    .line 214
    aget-object v14, v9, v13

    .line 216
    invoke-virtual {v12}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v14}, Lgbsdk/common/host/abkw;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 217
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v15

    if-eqz v15, :cond_10

    const-string v15, "SsOkHttpClient"

    .line 218
    invoke-static {v15, v14}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_10
    invoke-static {v14}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    move-object/from16 v16, v2

    goto :goto_b

    .line 223
    :cond_11
    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Response;->getStatus()I

    move-result v14

    .line 224
    iget-boolean v15, v5, Lcom/bytedance/ttnet/http/HttpRequestInfo;->reqTicketUnmatch:Z

    .line 225
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 227
    :try_start_4
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-static {v6}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v16, :cond_12

    move-object/from16 v16, v2

    :try_start_5
    const-string v2, "url_query"

    .line 229
    invoke-virtual {v8, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_a

    :catchall_2
    :cond_12
    move-object/from16 v16, v2

    .line 234
    :catchall_3
    :goto_a
    :try_start_6
    iget-object v2, v5, Lcom/bytedance/ttnet/http/HttpRequestInfo;->remoteIp:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "remote_ip"

    .line 235
    iget-object v6, v5, Lcom/bytedance/ttnet/http/HttpRequestInfo;->remoteIp:Ljava/lang/String;

    invoke-virtual {v8, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    :cond_13
    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_14

    const-string v2, "header_list"

    .line 238
    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14
    const-string v2, "?"

    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_15

    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_15
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v6, "set_cookie"

    .line 242
    invoke-static {v6, v2, v14, v15, v8}, Lgbsdk/common/host/abwq;->a(Ljava/lang/String;Ljava/lang/String;IZLorg/json/JSONObject;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v16

    const/4 v8, 0x2

    goto :goto_9

    :cond_16
    :goto_c
    move-object/from16 v16, v2

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v16

    const/4 v8, 0x2

    goto/16 :goto_8

    :catchall_4
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->checkReqTicketDuration:J

    .line 254
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 255
    invoke-static {v1, v3, v5}, Lgbsdk/common/host/abwo;->a(Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/retrofit2/client/Response;Lcom/bytedance/ttnet/http/HttpRequestInfo;)V

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/bytedance/retrofit2/RetrofitMetrics;->postCdnCacheVerifyDuration:J

    :cond_19
    :goto_d
    return-void
.end method

.method protected c(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/Request;
    .locals 9

    .line 53
    invoke-super {p0, p1}, Lgbsdk/common/host/abku;->c(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/Request;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 59
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->newBuilder()Lcom/bytedance/retrofit2/client/Request$Builder;

    move-result-object v2

    .line 60
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-direct {p0, v3}, Lgbsdk/common/host/abws;->cE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Lcom/bytedance/retrofit2/client/Request$Builder;->url(Ljava/lang/String;)Lcom/bytedance/retrofit2/client/Request$Builder;

    .line 63
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 64
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    iput-wide v5, v4, Lcom/bytedance/retrofit2/RetrofitMetrics;->filterDupQueryDuration:J

    .line 67
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 70
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_2
    sget-boolean v4, Lgbsdk/common/host/abws;->aIT:Z

    if-eqz v4, :cond_5

    .line 75
    :try_start_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 76
    invoke-static {v3, v4}, Lcom/bytedance/frameworks/core/encrypt/RequestEncryptUtils;->tryEncryptRequest(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 78
    invoke-virtual {v2, v5}, Lcom/bytedance/retrofit2/client/Request$Builder;->url(Ljava/lang/String;)Lcom/bytedance/retrofit2/client/Request$Builder;

    .line 80
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 81
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    if-nez v5, :cond_4

    goto :goto_0

    .line 85
    :cond_4
    new-instance v6, Lcom/bytedance/retrofit2/client/Header;

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 90
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 95
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/bytedance/retrofit2/RetrofitMetrics;->encryptRequestDuration:J

    .line 98
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 101
    :try_start_1
    invoke-static {v3}, Lgbsdk/common/host/abwq;->cH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-static {v4}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 103
    new-instance v5, Lcom/bytedance/retrofit2/client/Header;

    const-string v6, "X-SS-REQ-TICKET"

    invoke-direct {v5, v6, v4}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    .line 106
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 110
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/bytedance/retrofit2/RetrofitMetrics;->genReqTicketDuration:J

    .line 113
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 114
    invoke-static {v3, v1}, Lgbsdk/common/host/abwo;->h(Ljava/lang/String;Ljava/util/List;)V

    .line 115
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 116
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/bytedance/retrofit2/RetrofitMetrics;->preCdnCacheVerifyDuration:J

    .line 119
    :cond_9
    invoke-static {}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->gO()Lcom/bytedance/ttnet/clientkey/ClientKeyManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->a(Ljava/util/List;Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    .line 121
    invoke-virtual {v2, v1}, Lcom/bytedance/retrofit2/client/Request$Builder;->headers(Ljava/util/List;)Lcom/bytedance/retrofit2/client/Request$Builder;

    .line 122
    invoke-virtual {v2}, Lcom/bytedance/retrofit2/client/Request$Builder;->build()Lcom/bytedance/retrofit2/client/Request;

    move-result-object p1

    return-object p1
.end method
