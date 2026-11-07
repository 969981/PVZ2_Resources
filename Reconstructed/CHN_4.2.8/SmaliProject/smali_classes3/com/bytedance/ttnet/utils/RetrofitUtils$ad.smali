.class public Lcom/bytedance/ttnet/utils/RetrofitUtils$ad;
.super Lcom/bytedance/ttnet/utils/RetrofitUtils$ab;
.source "RetrofitUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttnet/utils/RetrofitUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ad"
.end annotation


# direct methods
.method public constructor <init>(Lcom/bytedance/retrofit2/intercept/Interceptor;)V
    .locals 0

    .line 471
    invoke-direct {p0, p1}, Lcom/bytedance/ttnet/utils/RetrofitUtils$ab;-><init>(Lcom/bytedance/retrofit2/intercept/Interceptor;)V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/bytedance/retrofit2/intercept/Interceptor$Chain;)Lcom/bytedance/retrofit2/SsResponse;
    .locals 5

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 478
    iget-object v2, p0, Lcom/bytedance/ttnet/utils/RetrofitUtils$ad;->aKv:Lcom/bytedance/retrofit2/intercept/Interceptor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    .line 480
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 481
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 479
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 482
    invoke-interface {p1}, Lcom/bytedance/retrofit2/intercept/Interceptor$Chain;->metrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/retrofit2/RetrofitMetrics;->interceptorNameAndTime:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Time"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v0, p0, Lcom/bytedance/ttnet/utils/RetrofitUtils$ad;->aKv:Lcom/bytedance/retrofit2/intercept/Interceptor;

    invoke-interface {v0, p1}, Lcom/bytedance/retrofit2/intercept/Interceptor;->intercept(Lcom/bytedance/retrofit2/intercept/Interceptor$Chain;)Lcom/bytedance/retrofit2/SsResponse;

    move-result-object p1

    return-object p1
.end method
