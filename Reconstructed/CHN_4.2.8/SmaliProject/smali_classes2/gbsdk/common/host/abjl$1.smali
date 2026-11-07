.class public Lgbsdk/common/host/abjl$1;
.super Ljava/lang/Object;
.source "CronetSsCall.java"

# interfaces
.implements Lcom/bytedance/retrofit2/mime/TypedInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abjl;->a(Ljava/net/HttpURLConnection;Z)Lcom/bytedance/retrofit2/mime/TypedInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic iV:Ljava/net/HttpURLConnection;

.field final synthetic jc:Z

.field final synthetic jd:Lgbsdk/common/host/abjl;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abjl;Ljava/net/HttpURLConnection;Z)V
    .locals 0

    .line 283
    iput-object p1, p0, Lgbsdk/common/host/abjl$1;->jd:Lgbsdk/common/host/abjl;

    iput-object p2, p0, Lgbsdk/common/host/abjl$1;->iV:Ljava/net/HttpURLConnection;

    iput-boolean p3, p0, Lgbsdk/common/host/abjl$1;->jc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public in()Ljava/io/InputStream;
    .locals 4

    .line 298
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abjl$1;->iV:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abjl$1;->iV:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    iget-boolean v2, p0, Lgbsdk/common/host/abjl$1;->jc:Z

    iget-object v3, p0, Lgbsdk/common/host/abjl$1;->jd:Lgbsdk/common/host/abjl;

    iget-object v3, v3, Lgbsdk/common/host/abjl;->io:Lcom/bytedance/retrofit2/RetrofitMetrics;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->processInputStream(Ljava/io/InputStream;Ljava/util/Map;ZLcom/bytedance/retrofit2/RetrofitMetrics;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 300
    iget-object v1, p0, Lgbsdk/common/host/abjl$1;->jd:Lgbsdk/common/host/abjl;

    iget-object v1, v1, Lgbsdk/common/host/abjl;->it:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    invoke-static {v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->isForceHandleResponse(Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v0, p0, Lgbsdk/common/host/abjl$1;->iV:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 310
    :goto_0
    new-instance v1, Lgbsdk/common/host/abjs;

    iget-object v2, p0, Lgbsdk/common/host/abjl$1;->jd:Lgbsdk/common/host/abjl;

    invoke-direct {v1, v0, v2}, Lgbsdk/common/host/abjs;-><init>(Ljava/io/InputStream;Lcom/bytedance/retrofit2/client/SsCall;)V

    return-object v1

    .line 303
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abjl$1;->iV:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    .line 304
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

    .line 305
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v1, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;

    iget-object v2, p0, Lgbsdk/common/host/abjl$1;->iV:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public length()J
    .locals 2

    .line 291
    iget-object v0, p0, Lgbsdk/common/host/abjl$1;->iV:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 2

    .line 286
    iget-object v0, p0, Lgbsdk/common/host/abjl$1;->iV:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-static {v0, v1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
