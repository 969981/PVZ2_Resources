.class public final Lcom/bytedance/ttnet/http/HttpRequestInfo$1;
.super Ljava/lang/Object;
.source "HttpRequestInfo.java"

# interfaces
.implements Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/http/HttpRequestInfo;->injectCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bt()Lcom/bytedance/frameworks/baselib/network/http/BaseHttpRequestInfo;
    .locals 1

    .line 17
    new-instance v0, Lcom/bytedance/ttnet/http/HttpRequestInfo;

    invoke-direct {v0}, Lcom/bytedance/ttnet/http/HttpRequestInfo;-><init>()V

    return-object v0
.end method
