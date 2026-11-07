.class public Losdk/okhttp3/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Losdk/okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Losdk/okhttp3/ResponseBody;

.field cacheResponse:Losdk/okhttp3/Response;

.field code:I

.field handshake:Losdk/okhttp3/Handshake;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field headers:Losdk/okhttp3/Headers$Builder;

.field message:Ljava/lang/String;

.field networkResponse:Losdk/okhttp3/Response;

.field priorResponse:Losdk/okhttp3/Response;

.field protocol:Losdk/okhttp3/Protocol;

.field receivedResponseAtMillis:J

.field request:Losdk/okhttp3/Request;

.field sentRequestAtMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 301
    iput v0, p0, Losdk/okhttp3/Response$Builder;->code:I

    .line 313
    new-instance v0, Losdk/okhttp3/Headers$Builder;

    invoke-direct {v0}, Losdk/okhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Losdk/okhttp3/Response$Builder;->headers:Losdk/okhttp3/Headers$Builder;

    return-void
.end method

.method constructor <init>(Losdk/okhttp3/Response;)V
    .locals 2

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 301
    iput v0, p0, Losdk/okhttp3/Response$Builder;->code:I

    .line 317
    iget-object v0, p1, Losdk/okhttp3/Response;->request:Losdk/okhttp3/Request;

    iput-object v0, p0, Losdk/okhttp3/Response$Builder;->request:Losdk/okhttp3/Request;

    .line 318
    iget-object v0, p1, Losdk/okhttp3/Response;->protocol:Losdk/okhttp3/Protocol;

    iput-object v0, p0, Losdk/okhttp3/Response$Builder;->protocol:Losdk/okhttp3/Protocol;

    .line 319
    iget v0, p1, Losdk/okhttp3/Response;->code:I

    iput v0, p0, Losdk/okhttp3/Response$Builder;->code:I

    .line 320
    iget-object v0, p1, Losdk/okhttp3/Response;->message:Ljava/lang/String;

    iput-object v0, p0, Losdk/okhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 321
    iget-object v0, p1, Losdk/okhttp3/Response;->handshake:Losdk/okhttp3/Handshake;

    iput-object v0, p0, Losdk/okhttp3/Response$Builder;->handshake:Losdk/okhttp3/Handshake;

    .line 322
    iget-object v0, p1, Losdk/okhttp3/Response;->headers:Losdk/okhttp3/Headers;

    invoke-virtual {v0}, Losdk/okhttp3/Headers;->newBuilder()Losdk/okhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Losdk/okhttp3/Response$Builder;->headers:Losdk/okhttp3/Headers$Builder;

    .line 323
    iget-object v0, p1, Losdk/okhttp3/Response;->body:Losdk/okhttp3/ResponseBody;

    iput-object v0, p0, Losdk/okhttp3/Response$Builder;->body:Losdk/okhttp3/ResponseBody;

    .line 324
    iget-object v0, p1, Losdk/okhttp3/Response;->networkResponse:Losdk/okhttp3/Response;

    iput-object v0, p0, Losdk/okhttp3/Response$Builder;->networkResponse:Losdk/okhttp3/Response;

    .line 325
    iget-object v0, p1, Losdk/okhttp3/Response;->cacheResponse:Losdk/okhttp3/Response;

    iput-object v0, p0, Losdk/okhttp3/Response$Builder;->cacheResponse:Losdk/okhttp3/Response;

    .line 326
    iget-object v0, p1, Losdk/okhttp3/Response;->priorResponse:Losdk/okhttp3/Response;

    iput-object v0, p0, Losdk/okhttp3/Response$Builder;->priorResponse:Losdk/okhttp3/Response;

    .line 327
    iget-wide v0, p1, Losdk/okhttp3/Response;->sentRequestAtMillis:J

    iput-wide v0, p0, Losdk/okhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 328
    iget-wide v0, p1, Losdk/okhttp3/Response;->receivedResponseAtMillis:J

    iput-wide v0, p0, Losdk/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-void
.end method

.method private checkPriorResponse(Losdk/okhttp3/Response;)V
    .locals 1

    .line 421
    iget-object p1, p1, Losdk/okhttp3/Response;->body:Losdk/okhttp3/ResponseBody;

    if-nez p1, :cond_0

    return-void

    .line 422
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkSupportResponse(Ljava/lang/String;Losdk/okhttp3/Response;)V
    .locals 1

    .line 403
    iget-object v0, p2, Losdk/okhttp3/Response;->body:Losdk/okhttp3/ResponseBody;

    if-nez v0, :cond_3

    .line 405
    iget-object v0, p2, Losdk/okhttp3/Response;->networkResponse:Losdk/okhttp3/Response;

    if-nez v0, :cond_2

    .line 407
    iget-object v0, p2, Losdk/okhttp3/Response;->cacheResponse:Losdk/okhttp3/Response;

    if-nez v0, :cond_1

    .line 409
    iget-object p2, p2, Losdk/okhttp3/Response;->priorResponse:Losdk/okhttp3/Response;

    if-nez p2, :cond_0

    return-void

    .line 410
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 408
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 406
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 404
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Response$Builder;
    .locals 1

    .line 370
    iget-object v0, p0, Losdk/okhttp3/Response$Builder;->headers:Losdk/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Losdk/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public body(Losdk/okhttp3/ResponseBody;)Losdk/okhttp3/Response$Builder;
    .locals 0
    .param p1    # Losdk/okhttp3/ResponseBody;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 386
    iput-object p1, p0, Losdk/okhttp3/Response$Builder;->body:Losdk/okhttp3/ResponseBody;

    return-object p0
.end method

.method public build()Losdk/okhttp3/Response;
    .locals 3

    .line 437
    iget-object v0, p0, Losdk/okhttp3/Response$Builder;->request:Losdk/okhttp3/Request;

    if-eqz v0, :cond_3

    .line 438
    iget-object v0, p0, Losdk/okhttp3/Response$Builder;->protocol:Losdk/okhttp3/Protocol;

    if-eqz v0, :cond_2

    .line 439
    iget v0, p0, Losdk/okhttp3/Response$Builder;->code:I

    if-ltz v0, :cond_1

    .line 440
    iget-object v0, p0, Losdk/okhttp3/Response$Builder;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 441
    new-instance v0, Losdk/okhttp3/Response;

    invoke-direct {v0, p0}, Losdk/okhttp3/Response;-><init>(Losdk/okhttp3/Response$Builder;)V

    return-object v0

    .line 440
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Losdk/okhttp3/Response$Builder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheResponse(Losdk/okhttp3/Response;)Losdk/okhttp3/Response$Builder;
    .locals 1
    .param p1    # Losdk/okhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    .line 397
    invoke-direct {p0, v0, p1}, Losdk/okhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Losdk/okhttp3/Response;)V

    .line 398
    :cond_0
    iput-object p1, p0, Losdk/okhttp3/Response$Builder;->cacheResponse:Losdk/okhttp3/Response;

    return-object p0
.end method

.method public code(I)Losdk/okhttp3/Response$Builder;
    .locals 0

    .line 342
    iput p1, p0, Losdk/okhttp3/Response$Builder;->code:I

    return-object p0
.end method

.method public handshake(Losdk/okhttp3/Handshake;)Losdk/okhttp3/Response$Builder;
    .locals 0
    .param p1    # Losdk/okhttp3/Handshake;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 352
    iput-object p1, p0, Losdk/okhttp3/Response$Builder;->handshake:Losdk/okhttp3/Handshake;

    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Response$Builder;
    .locals 1

    .line 361
    iget-object v0, p0, Losdk/okhttp3/Response$Builder;->headers:Losdk/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Losdk/okhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public headers(Losdk/okhttp3/Headers;)Losdk/okhttp3/Response$Builder;
    .locals 0

    .line 381
    invoke-virtual {p1}, Losdk/okhttp3/Headers;->newBuilder()Losdk/okhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Losdk/okhttp3/Response$Builder;->headers:Losdk/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public message(Ljava/lang/String;)Losdk/okhttp3/Response$Builder;
    .locals 0

    .line 347
    iput-object p1, p0, Losdk/okhttp3/Response$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public networkResponse(Losdk/okhttp3/Response;)Losdk/okhttp3/Response$Builder;
    .locals 1
    .param p1    # Losdk/okhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    .line 391
    invoke-direct {p0, v0, p1}, Losdk/okhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Losdk/okhttp3/Response;)V

    .line 392
    :cond_0
    iput-object p1, p0, Losdk/okhttp3/Response$Builder;->networkResponse:Losdk/okhttp3/Response;

    return-object p0
.end method

.method public priorResponse(Losdk/okhttp3/Response;)Losdk/okhttp3/Response$Builder;
    .locals 0
    .param p1    # Losdk/okhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 415
    invoke-direct {p0, p1}, Losdk/okhttp3/Response$Builder;->checkPriorResponse(Losdk/okhttp3/Response;)V

    .line 416
    :cond_0
    iput-object p1, p0, Losdk/okhttp3/Response$Builder;->priorResponse:Losdk/okhttp3/Response;

    return-object p0
.end method

.method public protocol(Losdk/okhttp3/Protocol;)Losdk/okhttp3/Response$Builder;
    .locals 0

    .line 337
    iput-object p1, p0, Losdk/okhttp3/Response$Builder;->protocol:Losdk/okhttp3/Protocol;

    return-object p0
.end method

.method public receivedResponseAtMillis(J)Losdk/okhttp3/Response$Builder;
    .locals 0

    .line 432
    iput-wide p1, p0, Losdk/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Losdk/okhttp3/Response$Builder;
    .locals 1

    .line 375
    iget-object v0, p0, Losdk/okhttp3/Response$Builder;->headers:Losdk/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Losdk/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Losdk/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public request(Losdk/okhttp3/Request;)Losdk/okhttp3/Response$Builder;
    .locals 0

    .line 332
    iput-object p1, p0, Losdk/okhttp3/Response$Builder;->request:Losdk/okhttp3/Request;

    return-object p0
.end method

.method public sentRequestAtMillis(J)Losdk/okhttp3/Response$Builder;
    .locals 0

    .line 427
    iput-wide p1, p0, Losdk/okhttp3/Response$Builder;->sentRequestAtMillis:J

    return-object p0
.end method
