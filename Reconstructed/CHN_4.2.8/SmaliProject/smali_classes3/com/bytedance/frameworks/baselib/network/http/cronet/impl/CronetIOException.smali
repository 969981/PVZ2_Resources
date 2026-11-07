.class public Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/CronetIOException;
.super Ljava/io/IOException;
.source "CronetIOException.java"


# instance fields
.field private final cronetInternalErrorCode:I

.field private requestInfo:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

.field private statusCode:I

.field private traceCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;Ljava/lang/String;I)V
    .locals 2

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    iput-object p2, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/CronetIOException;->requestInfo:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    .line 17
    iput-object p3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/CronetIOException;->traceCode:Ljava/lang/String;

    .line 18
    instance-of p2, p1, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;

    if-eqz p2, :cond_0

    .line 19
    check-cast p1, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;

    invoke-virtual {p1}, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;->getStatusCode()I

    move-result p1

    iput p1, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/CronetIOException;->statusCode:I

    .line 21
    :cond_0
    iput p4, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/CronetIOException;->cronetInternalErrorCode:I

    return-void
.end method


# virtual methods
.method public getCronetInternalErrorCode()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/CronetIOException;->cronetInternalErrorCode:I

    return v0
.end method

.method public getRequestInfo()Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/CronetIOException;->requestInfo:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    return-object v0
.end method

.method public getRequestLog()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/CronetIOException;->requestInfo:Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;

    iget-object v0, v0, Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;->requestLog:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/CronetIOException;->statusCode:I

    return v0
.end method

.method public getTraceCode()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/CronetIOException;->traceCode:Ljava/lang/String;

    return-object v0
.end method
