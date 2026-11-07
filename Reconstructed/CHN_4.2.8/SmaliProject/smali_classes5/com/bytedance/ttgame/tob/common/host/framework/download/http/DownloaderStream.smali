.class public final Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;
.super Ljava/lang/Object;
.source "DownloaderStream.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\'\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\tJ\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;",
        "",
        "requestCall",
        "Losdk/okhttp3/Call;",
        "response",
        "Losdk/okhttp3/Response;",
        "responseBody",
        "Losdk/okhttp3/ResponseBody;",
        "responseIn",
        "Ljava/io/InputStream;",
        "(Lokhttp3/Call;Lokhttp3/Response;Lokhttp3/ResponseBody;Ljava/io/InputStream;)V",
        "cancelRequest",
        "",
        "getContentLength",
        "",
        "getInputStream",
        "getResponseCode",
        "",
        "readEnd",
        "Companion",
        "ch_framework_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion;

.field private static final OK_DEFAULT_TIMEOUT:J = 0x7530L

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field public static final okClient$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Losdk/okhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final requestCall:Losdk/okhttp3/Call;

.field private final response:Losdk/okhttp3/Response;

.field private final responseBody:Losdk/okhttp3/ResponseBody;

.field private final responseIn:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion;

    .line 24
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion$okClient$2;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion$okClient$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->okClient$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Losdk/okhttp3/Call;Losdk/okhttp3/Response;Losdk/okhttp3/ResponseBody;Ljava/io/InputStream;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->requestCall:Losdk/okhttp3/Call;

    .line 17
    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->response:Losdk/okhttp3/Response;

    .line 18
    iput-object p3, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->responseBody:Losdk/okhttp3/ResponseBody;

    .line 19
    iput-object p4, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->responseIn:Ljava/io/InputStream;

    return-void
.end method

.method public synthetic constructor <init>(Losdk/okhttp3/Call;Losdk/okhttp3/Response;Losdk/okhttp3/ResponseBody;Ljava/io/InputStream;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;-><init>(Losdk/okhttp3/Call;Losdk/okhttp3/Response;Losdk/okhttp3/ResponseBody;Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final cancelRequest()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2f0db55129c14f5de1652b7a6efcf748"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 59
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->requestCall:Losdk/okhttp3/Call;

    invoke-interface {v0}, Losdk/okhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->requestCall:Losdk/okhttp3/Call;

    invoke-interface {v0}, Losdk/okhttp3/Call;->cancel()V

    .line 62
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 58
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final getContentLength()J
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "426013a7dce3a0b6e9847f44ee6a9dfa"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->responseBody:Losdk/okhttp3/ResponseBody;

    invoke-virtual {v0}, Losdk/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->responseIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1006d97a8475fa724dbd7df5603120e7"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->response:Losdk/okhttp3/Response;

    invoke-virtual {v0}, Losdk/okhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public final readEnd()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2ce38485ec53f0685a1182d0c365b1f0"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 67
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->responseIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 68
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 66
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :goto_0
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 70
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->responseBody:Losdk/okhttp3/ResponseBody;

    invoke-virtual {v0}, Losdk/okhttp3/ResponseBody;->close()V

    .line 71
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :goto_1
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 73
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->response:Losdk/okhttp3/Response;

    invoke-virtual {v0}, Losdk/okhttp3/Response;->close()V

    .line 74
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 72
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :goto_2
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->cancelRequest()V

    return-void
.end method
