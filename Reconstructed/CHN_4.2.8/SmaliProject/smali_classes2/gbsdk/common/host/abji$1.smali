.class public Lgbsdk/common/host/abji$1;
.super Ljava/lang/Object;
.source "ConcurrentCronetSsCall.java"

# interfaces
.implements Lcom/bytedance/retrofit2/mime/TypedInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abji;->a(Ljava/net/HttpURLConnection;)Lcom/bytedance/retrofit2/mime/TypedInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic iV:Ljava/net/HttpURLConnection;

.field final synthetic iW:Lgbsdk/common/host/abji;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abji;Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lgbsdk/common/host/abji$1;->iW:Lgbsdk/common/host/abji;

    iput-object p2, p0, Lgbsdk/common/host/abji$1;->iV:Ljava/net/HttpURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public in()Ljava/io/InputStream;
    .locals 4

    .line 746
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abji$1;->iV:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abji$1;->iV:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lgbsdk/common/host/abji$1;->iW:Lgbsdk/common/host/abji;

    iget-object v3, v3, Lgbsdk/common/host/abji;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->processInputStream(Ljava/io/InputStream;Ljava/util/Map;ZLcom/bytedance/retrofit2/RetrofitMetrics;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 748
    iget-object v1, p0, Lgbsdk/common/host/abji$1;->iW:Lgbsdk/common/host/abji;

    iget-object v1, v1, Lgbsdk/common/host/abji;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->isForceHandleResponse(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    iget-object v0, p0, Lgbsdk/common/host/abji$1;->iV:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 757
    :goto_0
    new-instance v1, Lgbsdk/common/host/abjs;

    iget-object v2, p0, Lgbsdk/common/host/abji$1;->iW:Lgbsdk/common/host/abji;

    invoke-direct {v1, v0, v2}, Lgbsdk/common/host/abjs;-><init>(Ljava/io/InputStream;Lcom/bytedance/retrofit2/client/SsCall;)V

    return-object v1

    .line 751
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abji$1;->iV:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  exception = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    new-instance v1, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;

    iget-object v2, p0, Lgbsdk/common/host/abji$1;->iV:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public length()J
    .locals 2

    .line 739
    iget-object v0, p0, Lgbsdk/common/host/abji$1;->iV:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 2

    .line 734
    iget-object v0, p0, Lgbsdk/common/host/abji$1;->iV:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-static {v0, v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
