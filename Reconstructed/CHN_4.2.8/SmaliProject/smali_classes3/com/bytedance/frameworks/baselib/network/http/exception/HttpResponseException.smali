.class public Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;
.super Lcom/bytedance/frameworks/baselib/network/http/exception/ClientProtocolException;
.source "HttpResponseException.java"


# static fields
.field private static final serialVersionUID:J = -0x63bc080fd5942acdL


# instance fields
.field private final statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p2}, Lcom/bytedance/frameworks/baselib/network/http/exception/ClientProtocolException;-><init>(Ljava/lang/String;)V

    .line 43
    iput p1, p0, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;->statusCode:I

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/bytedance/frameworks/baselib/network/http/exception/HttpResponseException;->statusCode:I

    return v0
.end method
