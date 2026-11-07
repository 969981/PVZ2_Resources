.class public Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lcom/bytedance/retrofit2/intercept/Interceptor$Chain;


# instance fields
.field private final call:Lcom/bytedance/retrofit2/Call;

.field private calls:I

.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

.field private final request:Lcom/bytedance/retrofit2/client/Request;


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/bytedance/retrofit2/client/Request;Lcom/bytedance/retrofit2/Call;Lcom/bytedance/retrofit2/RetrofitMetrics;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;I",
            "Lcom/bytedance/retrofit2/client/Request;",
            "Lcom/bytedance/retrofit2/Call;",
            "Lcom/bytedance/retrofit2/RetrofitMetrics;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 23
    iput p2, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->index:I

    .line 24
    iput-object p3, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->request:Lcom/bytedance/retrofit2/client/Request;

    .line 25
    iput-object p4, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->call:Lcom/bytedance/retrofit2/Call;

    .line 26
    iput-object p5, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    return-void
.end method


# virtual methods
.method public call()Lcom/bytedance/retrofit2/Call;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->call:Lcom/bytedance/retrofit2/Call;

    return-object v0
.end method

.method public metrics()Lcom/bytedance/retrofit2/RetrofitMetrics;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    return-object v0
.end method

.method public proceed(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/SsResponse;
    .locals 9

    .line 36
    iget v0, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->index:I

    iget-object v1, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 38
    iget v0, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->calls:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->calls:I

    if-le v0, v1, :cond_1

    .line 44
    iget-object v0, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/retrofit2/intercept/Interceptor;

    .line 45
    instance-of v3, v2, Lcom/bytedance/retrofit2/CallServerInterceptor;

    if-eqz v3, :cond_0

    .line 46
    check-cast v2, Lcom/bytedance/retrofit2/CallServerInterceptor;

    invoke-virtual {v2}, Lcom/bytedance/retrofit2/CallServerInterceptor;->resetExecuted()V

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;

    iget-object v4, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v2, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->index:I

    add-int/lit8 v5, v2, 0x1

    iget-object v7, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->call:Lcom/bytedance/retrofit2/Call;

    iget-object v8, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-object v3, v0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;-><init>(Ljava/util/List;ILcom/bytedance/retrofit2/client/Request;Lcom/bytedance/retrofit2/Call;Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    .line 53
    iget-object v1, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v2, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/retrofit2/intercept/Interceptor;

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interceptor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RealInterceptorChain"

    .line 55
    invoke-static {v2, p1}, Lcom/bytedance/retrofit2/RetrofitLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-interface {v1, v0}, Lcom/bytedance/retrofit2/intercept/Interceptor;->intercept(Lcom/bytedance/retrofit2/intercept/Interceptor$Chain;)Lcom/bytedance/retrofit2/SsResponse;

    move-result-object p1

    const-string v0, "interceptor "

    if-eqz p1, :cond_4

    .line 64
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/SsResponse;->raw()Lcom/bytedance/retrofit2/client/Response;

    move-result-object v2

    if-eqz v2, :cond_3

    return-object p1

    .line 65
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned a ssResponse with no body"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public request()Lcom/bytedance/retrofit2/client/Request;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;->request:Lcom/bytedance/retrofit2/client/Request;

    return-object v0
.end method
