.class public Lgbsdk/common/host/abjj$ab;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abjj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lgbsdk/common/host/abjj$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgbsdk/common/host/abjj$ab;-><init>()V

    return-void
.end method


# virtual methods
.method public D(Landroid/content/Context;)Lgbsdk/common/host/abjt;
    .locals 0

    .line 15
    invoke-static {p1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object p1

    return-object p1
.end method
