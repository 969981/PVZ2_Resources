.class public final Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion$okClient$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloaderStream.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Losdk/okhttp3/OkHttpClient;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Losdk/okhttp3/OkHttpClient;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion$okClient$2;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion$okClient$2;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion$okClient$2;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion$okClient$2;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion$okClient$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion$okClient$2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b6ec311009e632c72abc9fb0c49bcd78"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Object;

    return-object v0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion$okClient$2;->invoke()Losdk/okhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Losdk/okhttp3/OkHttpClient;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion$okClient$2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b6ec311009e632c72abc9fb0c49bcd78"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Losdk/okhttp3/OkHttpClient;

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Losdk/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Losdk/okhttp3/OkHttpClient$Builder;-><init>()V

    .line 26
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3, v1}, Losdk/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 27
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Losdk/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 28
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Losdk/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Losdk/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Losdk/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v1}, Losdk/okhttp3/OkHttpClient$Builder;->followRedirects(Z)Losdk/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 31
    sget-object v1, Losdk/okhttp3/Protocol;->HTTP_1_1:Losdk/okhttp3/Protocol;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Losdk/okhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Losdk/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Losdk/okhttp3/OkHttpClient$Builder;->build()Losdk/okhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
