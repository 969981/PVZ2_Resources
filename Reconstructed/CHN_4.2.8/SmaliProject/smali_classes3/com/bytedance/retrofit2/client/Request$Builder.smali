.class public Lcom/bytedance/retrofit2/client/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/retrofit2/client/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field addCommonParam:Z

.field body:Lcom/bytedance/retrofit2/mime/TypedOutput;

.field extraInfo:Ljava/lang/Object;

.field headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;"
        }
    .end annotation
.end field

.field isBodyEncryptEnabled:Z

.field isQueryEncryptEnabled:Z

.field maxLength:I

.field method:Ljava/lang/String;

.field metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

.field priorityLevel:I

.field requestBody:Losdk/okhttp3/RequestBody;

.field requestPriorityLevel:I

.field responseStreaming:Z

.field serviceType:Ljava/lang/String;

.field tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->isQueryEncryptEnabled:Z

    .line 340
    iput-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->isBodyEncryptEnabled:Z

    const-string v0, "GET"

    .line 343
    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->method:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/bytedance/retrofit2/client/Request;)V
    .locals 2

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->isQueryEncryptEnabled:Z

    .line 340
    iput-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->isBodyEncryptEnabled:Z

    .line 347
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request;->method:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->method:Ljava/lang/String;

    .line 348
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->url:Ljava/lang/String;

    .line 349
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->headers:Ljava/util/List;

    .line 350
    iget-object v1, p1, Lcom/bytedance/retrofit2/client/Request;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request;->body:Lcom/bytedance/retrofit2/mime/TypedOutput;

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->body:Lcom/bytedance/retrofit2/mime/TypedOutput;

    .line 352
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request;->requestBody:Losdk/okhttp3/RequestBody;

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->requestBody:Losdk/okhttp3/RequestBody;

    .line 353
    iget v0, p1, Lcom/bytedance/retrofit2/client/Request;->priorityLevel:I

    iput v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->priorityLevel:I

    .line 354
    iget v0, p1, Lcom/bytedance/retrofit2/client/Request;->requestPriorityLevel:I

    iput v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->requestPriorityLevel:I

    .line 355
    iget-boolean v0, p1, Lcom/bytedance/retrofit2/client/Request;->responseStreaming:Z

    iput-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->responseStreaming:Z

    .line 356
    iget v0, p1, Lcom/bytedance/retrofit2/client/Request;->maxLength:I

    iput v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->maxLength:I

    .line 357
    iget-boolean v0, p1, Lcom/bytedance/retrofit2/client/Request;->addCommonParam:Z

    iput-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->addCommonParam:Z

    .line 358
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request;->extraInfo:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->extraInfo:Ljava/lang/Object;

    .line 359
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request;->serviceType:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->serviceType:Ljava/lang/String;

    .line 360
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request;->metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    .line 361
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request;->tags:Ljava/util/Map;

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->tags:Ljava/util/Map;

    .line 362
    iget-boolean v0, p1, Lcom/bytedance/retrofit2/client/Request;->isQueryEncryptEnabled:Z

    iput-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->isQueryEncryptEnabled:Z

    .line 363
    iget-boolean p1, p1, Lcom/bytedance/retrofit2/client/Request;->isBodyEncryptEnabled:Z

    iput-boolean p1, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->isBodyEncryptEnabled:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/retrofit2/client/Request;
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 483
    new-instance v0, Lcom/bytedance/retrofit2/client/Request;

    invoke-direct {v0, p0}, Lcom/bytedance/retrofit2/client/Request;-><init>(Lcom/bytedance/retrofit2/client/Request$Builder;)V

    return-object v0

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Lcom/bytedance/retrofit2/mime/TypedOutput;)Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 1

    const-string v0, "DELETE"

    .line 379
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/retrofit2/client/Request$Builder;->method(Ljava/lang/String;Lcom/bytedance/retrofit2/mime/TypedOutput;)Lcom/bytedance/retrofit2/client/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public get()Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    .line 367
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/retrofit2/client/Request$Builder;->method(Ljava/lang/String;Lcom/bytedance/retrofit2/mime/TypedOutput;)Lcom/bytedance/retrofit2/client/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 2

    const-string v0, "HEAD"

    const/4 v1, 0x0

    .line 371
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/retrofit2/client/Request$Builder;->method(Ljava/lang/String;Lcom/bytedance/retrofit2/mime/TypedOutput;)Lcom/bytedance/retrofit2/client/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/util/List;)Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;)",
            "Lcom/bytedance/retrofit2/client/Request$Builder;"
        }
    .end annotation

    .line 417
    iput-object p1, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->headers:Ljava/util/List;

    return-object p0
.end method

.method public maxLength(I)Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 0

    .line 442
    iput p1, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->maxLength:I

    return-object p0
.end method

.method public method(Ljava/lang/String;Lcom/bytedance/retrofit2/mime/TypedOutput;)Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 2

    if-eqz p1, :cond_4

    .line 393
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 395
    invoke-static {p1}, Lcom/bytedance/retrofit2/Utils;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 398
    invoke-static {p1}, Lcom/bytedance/retrofit2/Utils;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    new-instance p2, Lcom/bytedance/retrofit2/mime/FormUrlEncodedTypedOutput;

    invoke-direct {p2}, Lcom/bytedance/retrofit2/mime/FormUrlEncodedTypedOutput;-><init>()V

    const-string v0, "body"

    const-string v1, "null"

    .line 401
    invoke-virtual {p2, v0, v1}, Lcom/bytedance/retrofit2/mime/FormUrlEncodedTypedOutput;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_2
    iput-object p1, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->method:Ljava/lang/String;

    .line 405
    iput-object p2, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->body:Lcom/bytedance/retrofit2/mime/TypedOutput;

    return-object p0

    .line 394
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 392
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public patch(Lcom/bytedance/retrofit2/mime/TypedOutput;)Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 1

    const-string v0, "PATCH"

    .line 387
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/retrofit2/client/Request$Builder;->method(Ljava/lang/String;Lcom/bytedance/retrofit2/mime/TypedOutput;)Lcom/bytedance/retrofit2/client/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public post(Lcom/bytedance/retrofit2/mime/TypedOutput;)Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 1

    const-string v0, "POST"

    .line 375
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/retrofit2/client/Request$Builder;->method(Ljava/lang/String;Lcom/bytedance/retrofit2/mime/TypedOutput;)Lcom/bytedance/retrofit2/client/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public priorityLevel(I)Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 0

    .line 422
    iput p1, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->priorityLevel:I

    return-object p0
.end method

.method public put(Lcom/bytedance/retrofit2/mime/TypedOutput;)Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 1

    const-string v0, "PUT"

    .line 383
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/retrofit2/client/Request$Builder;->method(Ljava/lang/String;Lcom/bytedance/retrofit2/mime/TypedOutput;)Lcom/bytedance/retrofit2/client/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public requestPriorityLevel(I)Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 0

    .line 427
    iput p1, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->requestPriorityLevel:I

    return-object p0
.end method

.method public responseStreaming(Z)Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 0

    .line 437
    iput-boolean p1, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->responseStreaming:Z

    return-object p0
.end method

.method public serviceType(Ljava/lang/String;)Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->serviceType:Ljava/lang/String;

    return-object p0
.end method

.method public setExtraInfo(Ljava/lang/Object;)Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->extraInfo:Ljava/lang/Object;

    return-object p0
.end method

.method public tag(Ljava/lang/Class;Ljava/lang/Object;)Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;TT;)",
            "Lcom/bytedance/retrofit2/client/Request$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 469
    iget-object v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->tags:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->tags:Ljava/util/Map;

    :cond_0
    if-nez p2, :cond_1

    .line 473
    iget-object p2, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->tags:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->tags:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0

    .line 468
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tag(Ljava/lang/Object;)Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 1

    .line 455
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/retrofit2/client/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lcom/bytedance/retrofit2/client/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public url(Ljava/lang/String;)Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 412
    iput-object p1, p0, Lcom/bytedance/retrofit2/client/Request$Builder;->url:Ljava/lang/String;

    return-object p0

    .line 411
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
