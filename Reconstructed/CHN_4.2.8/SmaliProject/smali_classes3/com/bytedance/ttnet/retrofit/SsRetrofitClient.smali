.class public Lcom/bytedance/ttnet/retrofit/SsRetrofitClient;
.super Ljava/lang/Object;
.source "SsRetrofitClient.java"

# interfaces
.implements Lcom/bytedance/retrofit2/client/Client;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newSsCall(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/SsCall;
    .locals 1

    .line 20
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ttnet/HttpClient;->getHttpClient(Ljava/lang/String;)Lgbsdk/common/host/abjt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0, p1}, Lgbsdk/common/host/abjt;->newSsCall(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/SsCall;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
