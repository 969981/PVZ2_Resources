.class public Lcom/bytedance/ttnet/HttpClient$ab;
.super Lcom/bytedance/ttnet/HttpClient$ad;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttnet/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lcom/bytedance/ttnet/HttpClient$ad;-><init>(Lcom/bytedance/ttnet/HttpClient$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/ttnet/HttpClient$1;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/bytedance/ttnet/HttpClient$ab;-><init>()V

    return-void
.end method


# virtual methods
.method public gI()Lgbsdk/common/host/abjt;
    .locals 1

    .line 45
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ttnet/HttpClient$ae;->a(Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;)Lcom/bytedance/ttnet/HttpClient$ae;

    move-result-object v0

    return-object v0
.end method
