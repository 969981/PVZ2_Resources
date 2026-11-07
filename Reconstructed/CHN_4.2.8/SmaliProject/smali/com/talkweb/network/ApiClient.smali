.class public Lcom/talkweb/network/ApiClient;
.super Ljava/lang/Object;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkweb/network/ApiClient$MainThreadExecutor;
    }
.end annotation


# static fields
.field private static final JSON_CONTENT_TYPE:Ljava/lang/String; = "application/json; charset=utf-8"


# instance fields
.field private final config:Lcom/talkweb/network/config/NetworkConfig;

.field private final deliveryExecutor:Ljava/util/concurrent/Executor;

.field private final engine:Lcom/talkweb/network/factory/NativeHttpEngine;

.field private final json:Lcom/talkweb/network/serialization/JsonSerializer;

.field private final netExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/talkweb/network/factory/NativeHttpEngine;Lcom/talkweb/network/config/NetworkConfig;)V
    .locals 1

    .line 60
    new-instance v0, Lcom/talkweb/network/serialization/GsonSerializer;

    invoke-direct {v0}, Lcom/talkweb/network/serialization/GsonSerializer;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/talkweb/network/ApiClient;-><init>(Lcom/talkweb/network/factory/NativeHttpEngine;Lcom/talkweb/network/serialization/JsonSerializer;Lcom/talkweb/network/config/NetworkConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/talkweb/network/factory/NativeHttpEngine;Lcom/talkweb/network/serialization/JsonSerializer;Lcom/talkweb/network/config/NetworkConfig;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/talkweb/network/ApiClient;->engine:Lcom/talkweb/network/factory/NativeHttpEngine;

    .line 66
    iput-object p2, p0, Lcom/talkweb/network/ApiClient;->json:Lcom/talkweb/network/serialization/JsonSerializer;

    .line 67
    iput-object p3, p0, Lcom/talkweb/network/ApiClient;->config:Lcom/talkweb/network/config/NetworkConfig;

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/talkweb/network/ApiClient;->netExecutor:Ljava/util/concurrent/Executor;

    .line 69
    new-instance p1, Lcom/talkweb/network/ApiClient$MainThreadExecutor;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/talkweb/network/ApiClient$MainThreadExecutor;-><init>(Lcom/talkweb/network/ApiClient$1;)V

    iput-object p1, p0, Lcom/talkweb/network/ApiClient;->deliveryExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
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

    .line 202
    iget-object v0, p0, Lcom/talkweb/network/ApiClient;->config:Lcom/talkweb/network/config/NetworkConfig;

    invoke-virtual {v0}, Lcom/talkweb/network/config/NetworkConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 203
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "/"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_5

    .line 211
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3f

    .line 213
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v3, 0x0

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 214
    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    const/16 v1, 0x26

    .line 215
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/talkweb/network/ApiClient;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/talkweb/network/ApiClient;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_1

    .line 219
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    return-object p1

    .line 204
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u975e\u6cd5 baseUrl: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private deliverError(Lcom/talkweb/network/ApiCallback;Lcom/talkweb/network/model/ApiError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/talkweb/network/ApiCallback<",
            "*>;",
            "Lcom/talkweb/network/model/ApiError;",
            ")V"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/talkweb/network/ApiClient;->deliveryExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/talkweb/network/-$$Lambda$ApiClient$UtOrTEb9k9yU9q8IsYeSZXqTgrg;

    invoke-direct {v1, p1, p2}, Lcom/talkweb/network/-$$Lambda$ApiClient$UtOrTEb9k9yU9q8IsYeSZXqTgrg;-><init>(Lcom/talkweb/network/ApiCallback;Lcom/talkweb/network/model/ApiError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private deliverSuccess(Lcom/talkweb/network/ApiCallback;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/talkweb/network/ApiCallback<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/talkweb/network/ApiClient;->deliveryExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/talkweb/network/-$$Lambda$ApiClient$-WntVL5ZcL2awbCZFDjM-vBSrS4;

    invoke-direct {v1, p2, p1}, Lcom/talkweb/network/-$$Lambda$ApiClient$-WntVL5ZcL2awbCZFDjM-vBSrS4;-><init>(Ljava/lang/Object;Lcom/talkweb/network/ApiCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    .line 230
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private enqueue(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;",
            "Lcom/talkweb/network/ApiCallback<",
            "TT;>;)",
            "Lcom/talkweb/network/model/Call;"
        }
    .end annotation

    move-object v6, p0

    move-object v0, p4

    move-object v1, p2

    move-object v2, p3

    .line 130
    invoke-direct {p0, p2, p3}, Lcom/talkweb/network/ApiClient;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 131
    iget-object v3, v6, Lcom/talkweb/network/ApiClient;->json:Lcom/talkweb/network/serialization/JsonSerializer;

    invoke-interface {v3, p4}, Lcom/talkweb/network/serialization/JsonSerializer;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 133
    :goto_0
    new-instance v7, Lcom/talkweb/network/internal/NativeRequest;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v4, :cond_1

    const-string v0, "application/json; charset=utf-8"

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/talkweb/network/internal/NativeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v8, Lcom/talkweb/network/internal/NativeCall;

    invoke-direct {v8}, Lcom/talkweb/network/internal/NativeCall;-><init>()V

    .line 139
    iget-object v9, v6, Lcom/talkweb/network/ApiClient;->netExecutor:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/talkweb/network/-$$Lambda$ApiClient$9R4jALoiWkCFVGBPl9ZLZoA_yYg;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v8

    move-object v3, v7

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/talkweb/network/-$$Lambda$ApiClient$9R4jALoiWkCFVGBPl9ZLZoA_yYg;-><init>(Lcom/talkweb/network/ApiClient;Lcom/talkweb/network/internal/NativeCall;Lcom/talkweb/network/internal/NativeRequest;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v8
.end method

.method static synthetic lambda$deliverError$2(Lcom/talkweb/network/ApiCallback;Lcom/talkweb/network/model/ApiError;)V
    .locals 0

    .line 247
    invoke-interface {p0, p1}, Lcom/talkweb/network/ApiCallback;->onError(Lcom/talkweb/network/model/ApiError;)V

    return-void
.end method

.method static synthetic lambda$deliverSuccess$1(Ljava/lang/Object;Lcom/talkweb/network/ApiCallback;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 239
    invoke-interface {p1, p0}, Lcom/talkweb/network/ApiCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    :cond_0
    new-instance p0, Lcom/talkweb/network/model/ApiError;

    const/4 v0, 0x0

    const-string v1, "\u6570\u636e\u4e3a\u7a7a"

    invoke-direct {p0, v0, v1}, Lcom/talkweb/network/model/ApiError;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/talkweb/network/ApiCallback;->onError(Lcom/talkweb/network/model/ApiError;)V

    :goto_0
    return-void
.end method

.method private parse(Lcom/talkweb/network/internal/NativeResponse;Lcom/google/gson/reflect/TypeToken;)Lcom/talkweb/network/model/ApiResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/talkweb/network/internal/NativeResponse;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/talkweb/network/model/ApiResult<",
            "TT;>;"
        }
    .end annotation

    .line 166
    invoke-virtual {p1}, Lcom/talkweb/network/internal/NativeResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    new-instance p2, Lcom/talkweb/network/model/ApiError;

    iget v0, p1, Lcom/talkweb/network/internal/NativeResponse;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Lcom/talkweb/network/internal/NativeResponse;->message:Ljava/lang/String;

    .line 168
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/talkweb/network/internal/NativeResponse;->code:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/talkweb/network/internal/NativeResponse;->message:Ljava/lang/String;

    :goto_0
    invoke-direct {p2, v0, p1}, Lcom/talkweb/network/model/ApiError;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 167
    invoke-static {p2}, Lcom/talkweb/network/model/ApiResult;->failure(Lcom/talkweb/network/model/ApiError;)Lcom/talkweb/network/model/ApiResult;

    move-result-object p1

    return-object p1

    .line 171
    :cond_1
    iget-object v0, p1, Lcom/talkweb/network/internal/NativeResponse;->body:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/talkweb/network/internal/NativeResponse;->body:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 174
    :goto_1
    const-class v0, Lcom/talkweb/network/model/BaseResponse;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/talkweb/network/ApiClient;->json:Lcom/talkweb/network/serialization/JsonSerializer;

    invoke-interface {v2, p1, v0}, Lcom/talkweb/network/serialization/JsonSerializer;->decode(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/network/model/BaseResponse;

    .line 178
    iget-object v2, v0, Lcom/talkweb/network/model/BaseResponse;->code:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/talkweb/network/model/BaseResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/talkweb/network/ApiClient;->config:Lcom/talkweb/network/config/NetworkConfig;

    invoke-virtual {v2}, Lcom/talkweb/network/config/NetworkConfig;->getSuccessCode()I

    move-result v2

    .line 179
    :goto_2
    iget-object v3, p0, Lcom/talkweb/network/ApiClient;->config:Lcom/talkweb/network/config/NetworkConfig;

    invoke-virtual {v3}, Lcom/talkweb/network/config/NetworkConfig;->getSuccessCode()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 180
    iget-object v3, v0, Lcom/talkweb/network/model/BaseResponse;->data:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 181
    iget-object v0, v0, Lcom/talkweb/network/model/BaseResponse;->data:Ljava/lang/Object;

    invoke-static {v0}, Lcom/talkweb/network/model/ApiResult;->success(Ljava/lang/Object;)Lcom/talkweb/network/model/ApiResult;

    move-result-object p1

    return-object p1

    .line 183
    :cond_4
    new-instance v3, Lcom/talkweb/network/model/ApiError;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, v0, Lcom/talkweb/network/model/BaseResponse;->message:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v0, v0, Lcom/talkweb/network/model/BaseResponse;->message:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string v0, "\u6570\u636e\u4e3a\u7a7a"

    :goto_3
    invoke-direct {v3, v2, v0}, Lcom/talkweb/network/model/ApiError;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/talkweb/network/model/ApiResult;->failure(Lcom/talkweb/network/model/ApiError;)Lcom/talkweb/network/model/ApiResult;

    move-result-object p1

    return-object p1

    .line 186
    :cond_6
    new-instance v3, Lcom/talkweb/network/model/ApiError;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, v0, Lcom/talkweb/network/model/BaseResponse;->message:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/talkweb/network/model/BaseResponse;->message:Ljava/lang/String;

    goto :goto_4

    :cond_7
    const-string v4, "\u4e1a\u52a1\u9519\u8bef"

    :goto_4
    iget-object v0, v0, Lcom/talkweb/network/model/BaseResponse;->data:Ljava/lang/Object;

    invoke-direct {v3, v2, v4, v1, v0}, Lcom/talkweb/network/model/ApiError;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/talkweb/network/model/ApiResult;->failure(Lcom/talkweb/network/model/ApiError;)Lcom/talkweb/network/model/ApiResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 191
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/talkweb/network/ApiClient;->json:Lcom/talkweb/network/serialization/JsonSerializer;

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/talkweb/network/serialization/JsonSerializer;->decode(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 192
    invoke-static {p1}, Lcom/talkweb/network/model/ApiResult;->success(Ljava/lang/Object;)Lcom/talkweb/network/model/ApiResult;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 194
    new-instance p2, Lcom/talkweb/network/model/ApiError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u54cd\u5e94\u89e3\u6790\u5931\u8d25: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v1, v0, p1}, Lcom/talkweb/network/model/ApiError;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    invoke-static {p2}, Lcom/talkweb/network/model/ApiResult;->failure(Lcom/talkweb/network/model/ApiError;)Lcom/talkweb/network/model/ApiResult;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/util/Map;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;",
            "Lcom/talkweb/network/ApiCallback<",
            "TT;>;)",
            "Lcom/talkweb/network/model/Call;"
        }
    .end annotation

    const-string v1, "DELETE"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 121
    invoke-direct/range {v0 .. v6}, Lcom/talkweb/network/ApiClient;->enqueue(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/talkweb/network/ApiCallback<",
            "TT;>;)",
            "Lcom/talkweb/network/model/Call;"
        }
    .end annotation

    .line 116
    invoke-static {p3}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/talkweb/network/ApiClient;->delete(Ljava/lang/String;Ljava/util/Map;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;",
            "Lcom/talkweb/network/ApiCallback<",
            "TT;>;)",
            "Lcom/talkweb/network/model/Call;"
        }
    .end annotation

    const-string v1, "GET"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 81
    invoke-direct/range {v0 .. v6}, Lcom/talkweb/network/ApiClient;->enqueue(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/talkweb/network/ApiCallback<",
            "TT;>;)",
            "Lcom/talkweb/network/model/Call;"
        }
    .end annotation

    .line 76
    invoke-static {p3}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/talkweb/network/ApiClient;->get(Ljava/lang/String;Ljava/util/Map;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$enqueue$0$ApiClient(Lcom/talkweb/network/internal/NativeCall;Lcom/talkweb/network/internal/NativeRequest;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)V
    .locals 2

    .line 140
    invoke-virtual {p1}, Lcom/talkweb/network/internal/NativeCall;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/talkweb/network/ApiClient;->engine:Lcom/talkweb/network/factory/NativeHttpEngine;

    invoke-virtual {v1, p2, p1}, Lcom/talkweb/network/factory/NativeHttpEngine;->execute(Lcom/talkweb/network/internal/NativeRequest;Lcom/talkweb/network/internal/NativeCall;)Lcom/talkweb/network/internal/NativeResponse;

    move-result-object p1

    .line 145
    invoke-direct {p0, p1, p3}, Lcom/talkweb/network/ApiClient;->parse(Lcom/talkweb/network/internal/NativeResponse;Lcom/google/gson/reflect/TypeToken;)Lcom/talkweb/network/model/ApiResult;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Lcom/talkweb/network/model/ApiResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 147
    invoke-virtual {p1}, Lcom/talkweb/network/model/ApiResult;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lcom/talkweb/network/ApiClient;->deliverSuccess(Lcom/talkweb/network/ApiCallback;Ljava/lang/Object;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p1}, Lcom/talkweb/network/model/ApiResult;->getError()Lcom/talkweb/network/model/ApiError;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lcom/talkweb/network/ApiClient;->deliverError(Lcom/talkweb/network/ApiCallback;Lcom/talkweb/network/model/ApiError;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 155
    new-instance p2, Lcom/talkweb/network/model/ApiError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u54cd\u5e94\u89e3\u6790\u5931\u8d25: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3, p1}, Lcom/talkweb/network/model/ApiError;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    invoke-direct {p0, p4, p2}, Lcom/talkweb/network/ApiClient;->deliverError(Lcom/talkweb/network/ApiCallback;Lcom/talkweb/network/model/ApiError;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 152
    new-instance p2, Lcom/talkweb/network/model/ApiError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3, p1}, Lcom/talkweb/network/model/ApiError;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    invoke-direct {p0, p4, p2}, Lcom/talkweb/network/ApiClient;->deliverError(Lcom/talkweb/network/ApiCallback;Lcom/talkweb/network/model/ApiError;)V

    :goto_0
    return-void
.end method

.method public post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;",
            "Lcom/talkweb/network/ApiCallback<",
            "TT;>;)",
            "Lcom/talkweb/network/model/Call;"
        }
    .end annotation

    const-string v1, "POST"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    .line 95
    invoke-direct/range {v0 .. v6}, Lcom/talkweb/network/ApiClient;->enqueue(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/talkweb/network/ApiCallback<",
            "TT;>;)",
            "Lcom/talkweb/network/model/Call;"
        }
    .end annotation

    .line 89
    invoke-static {p4}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/talkweb/network/ApiClient;->post(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;",
            "Lcom/talkweb/network/ApiCallback<",
            "TT;>;)",
            "Lcom/talkweb/network/model/Call;"
        }
    .end annotation

    const-string v1, "PUT"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    .line 109
    invoke-direct/range {v0 .. v6}, Lcom/talkweb/network/ApiClient;->enqueue(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/talkweb/network/ApiCallback<",
            "TT;>;)",
            "Lcom/talkweb/network/model/Call;"
        }
    .end annotation

    .line 103
    invoke-static {p4}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/talkweb/network/ApiClient;->put(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Lcom/google/gson/reflect/TypeToken;Lcom/talkweb/network/ApiCallback;)Lcom/talkweb/network/model/Call;

    move-result-object p1

    return-object p1
.end method
