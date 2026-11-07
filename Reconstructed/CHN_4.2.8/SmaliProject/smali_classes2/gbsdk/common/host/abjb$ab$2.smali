.class public Lgbsdk/common/host/abjb$ab$2;
.super Ljava/lang/Object;
.source "SsOkHttp3Client.java"

# interfaces
.implements Lcom/bytedance/retrofit2/mime/TypedInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abjb$ab;->a(Losdk/okhttp3/ResponseBody;Ljava/util/Map;Z)Lcom/bytedance/retrofit2/mime/TypedInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic jc:Z

.field final synthetic og:Losdk/okhttp3/ResponseBody;

.field final synthetic oh:Ljava/util/Map;

.field final synthetic oi:Lgbsdk/common/host/abjb$ab;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abjb$ab;Losdk/okhttp3/ResponseBody;Ljava/util/Map;Z)V
    .locals 0

    .line 910
    iput-object p1, p0, Lgbsdk/common/host/abjb$ab$2;->oi:Lgbsdk/common/host/abjb$ab;

    iput-object p2, p0, Lgbsdk/common/host/abjb$ab$2;->og:Losdk/okhttp3/ResponseBody;

    iput-object p3, p0, Lgbsdk/common/host/abjb$ab$2;->oh:Ljava/util/Map;

    iput-boolean p4, p0, Lgbsdk/common/host/abjb$ab$2;->jc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public in()Ljava/io/InputStream;
    .locals 4

    .line 925
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab$2;->og:Losdk/okhttp3/ResponseBody;

    invoke-virtual {v0}, Losdk/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abjb$ab$2;->oh:Ljava/util/Map;

    iget-boolean v2, p0, Lgbsdk/common/host/abjb$ab$2;->jc:Z

    iget-object v3, p0, Lgbsdk/common/host/abjb$ab$2;->oi:Lgbsdk/common/host/abjb$ab;

    iget-object v3, v3, Lgbsdk/common/host/abjb$ab;->retrofitMetrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/frameworks/baselib/network/http/parser/StreamParser;->processInputStream(Ljava/io/InputStream;Ljava/util/Map;ZLcom/bytedance/retrofit2/RetrofitMetrics;)Ljava/io/InputStream;

    move-result-object v0

    .line 926
    new-instance v1, Lgbsdk/common/host/abjs;

    iget-object v2, p0, Lgbsdk/common/host/abjb$ab$2;->oi:Lgbsdk/common/host/abjb$ab;

    invoke-direct {v1, v0, v2}, Lgbsdk/common/host/abjs;-><init>(Ljava/io/InputStream;Lcom/bytedance/retrofit2/client/SsCall;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    .line 929
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab$2;->oi:Lgbsdk/common/host/abjb$ab;

    iget-object v1, v1, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    if-eqz v1, :cond_1

    .line 930
    iget-object v1, p0, Lgbsdk/common/host/abjb$ab$2;->oi:Lgbsdk/common/host/abjb$ab;

    iget-object v1, v1, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    invoke-virtual {v1}, Losdk/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    .line 931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  exception = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 933
    new-instance v1, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;

    iget-object v2, p0, Lgbsdk/common/host/abjb$ab$2;->oi:Lgbsdk/common/host/abjb$ab;

    iget-object v2, v2, Lgbsdk/common/host/abjb$ab;->oa:Losdk/okhttp3/Response;

    invoke-virtual {v2}, Losdk/okhttp3/Response;->code()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 935
    :cond_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public length()J
    .locals 2

    .line 919
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab$2;->og:Losdk/okhttp3/ResponseBody;

    invoke-virtual {v0}, Losdk/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 1

    .line 913
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab$2;->og:Losdk/okhttp3/ResponseBody;

    invoke-virtual {v0}, Losdk/okhttp3/ResponseBody;->contentType()Losdk/okhttp3/MediaType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 914
    :cond_0
    invoke-virtual {v0}, Losdk/okhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
