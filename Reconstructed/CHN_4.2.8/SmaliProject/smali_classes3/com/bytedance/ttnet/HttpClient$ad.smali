.class public Lcom/bytedance/ttnet/HttpClient$ad;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttnet/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ad"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/ttnet/HttpClient$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/bytedance/ttnet/HttpClient$ad;-><init>()V

    return-void
.end method


# virtual methods
.method public gI()Lgbsdk/common/host/abjt;
    .locals 2

    .line 32
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lgbsdk/common/host/abjb;->I(Landroid/content/Context;)Lgbsdk/common/host/abjb;

    move-result-object v1

    .line 34
    invoke-static {v0}, Lgbsdk/common/host/able;->N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lgbsdk/common/host/abwt;->hw()Lgbsdk/common/host/abwt;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgbsdk/common/host/abjb;->setOk3TncBridge(Lgbsdk/common/host/abin;)V

    :cond_0
    return-object v1
.end method
