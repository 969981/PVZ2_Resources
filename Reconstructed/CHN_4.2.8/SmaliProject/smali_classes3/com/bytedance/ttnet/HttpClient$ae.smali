.class public Lcom/bytedance/ttnet/HttpClient$ae;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Lgbsdk/common/host/abjt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttnet/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ae"
.end annotation


# static fields
.field private static volatile aEZ:Lcom/bytedance/ttnet/HttpClient$ae; = null

.field private static final aFc:I = 0x3


# instance fields
.field private aFa:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

.field private volatile aFb:I


# direct methods
.method private constructor <init>(Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/bytedance/ttnet/HttpClient$ae;->aFa:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    return-void
.end method

.method public static a(Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;)Lcom/bytedance/ttnet/HttpClient$ae;
    .locals 2

    .line 104
    sget-object v0, Lcom/bytedance/ttnet/HttpClient$ae;->aEZ:Lcom/bytedance/ttnet/HttpClient$ae;

    if-nez v0, :cond_1

    .line 105
    const-class v0, Lcom/bytedance/ttnet/HttpClient$ae;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/bytedance/ttnet/HttpClient$ae;->aEZ:Lcom/bytedance/ttnet/HttpClient$ae;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lcom/bytedance/ttnet/HttpClient$ae;

    invoke-direct {v1, p0}, Lcom/bytedance/ttnet/HttpClient$ae;-><init>(Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;)V

    sput-object v1, Lcom/bytedance/ttnet/HttpClient$ae;->aEZ:Lcom/bytedance/ttnet/HttpClient$ae;

    .line 109
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 111
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/ttnet/HttpClient$ae;->aEZ:Lcom/bytedance/ttnet/HttpClient$ae;

    return-object p0
.end method

.method private h(Ljava/lang/Throwable;)V
    .locals 3

    .line 123
    instance-of v0, p1, Ljava/net/MalformedURLException;

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MalformedURLException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 132
    :cond_1
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->inst()Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;->isPreOrForceInitCronet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/bytedance/ttnet/HttpClient$ae;->aFb:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/ttnet/HttpClient$ae;->aFb:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    .line 134
    sput-boolean v1, Lcom/bytedance/ttnet/HttpClient;->sIsCronetException:Z

    .line 135
    invoke-static {p1}, Lgbsdk/common/host/abwk;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/ttnet/HttpClient;->sCronetExceptionMessage:Ljava/lang/String;

    .line 137
    sget-object p1, Lcom/bytedance/ttnet/HttpClient;->sCronetExceptionMessage:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x100

    if-le p1, v0, :cond_2

    .line 138
    sget-object p1, Lcom/bytedance/ttnet/HttpClient;->sCronetExceptionMessage:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/ttnet/HttpClient;->sCronetExceptionMessage:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public newSsCall(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/SsCall;
    .locals 1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/ttnet/HttpClient$ae;->aFa:Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    invoke-virtual {v0, p1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->newSsCall(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/SsCall;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 149
    invoke-direct {p0, v0}, Lcom/bytedance/ttnet/HttpClient$ae;->h(Ljava/lang/Throwable;)V

    .line 150
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->notifyColdStartFinish()V

    .line 152
    sget-object v0, Lcom/bytedance/ttnet/HttpClient;->OK3_IMPL:Lcom/bytedance/ttnet/HttpClient$ad;

    invoke-virtual {v0}, Lcom/bytedance/ttnet/HttpClient$ad;->gI()Lgbsdk/common/host/abjt;

    move-result-object v0

    invoke-interface {v0, p1}, Lgbsdk/common/host/abjt;->newSsCall(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/SsCall;

    move-result-object p1

    return-object p1
.end method
