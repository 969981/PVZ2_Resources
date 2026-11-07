.class public final Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion;
.super Ljava/lang/Object;
.source "DownloaderStream.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion;",
        "",
        "()V",
        "OK_DEFAULT_TIMEOUT",
        "",
        "okClient",
        "Losdk/okhttp3/OkHttpClient;",
        "getOkClient",
        "()Lokhttp3/OkHttpClient;",
        "okClient$delegate",
        "Lkotlin/Lazy;",
        "createDownloaderStream",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;",
        "url",
        "",
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
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion;-><init>()V

    return-void
.end method

.method private final getOkClient()Losdk/okhttp3/OkHttpClient;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c88db77557c50c1217731ccdce303dcd"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Losdk/okhttp3/OkHttpClient;

    return-object v0

    .line 24
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->okClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-okClient>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Losdk/okhttp3/OkHttpClient;

    return-object v0
.end method


# virtual methods
.method public final createDownloaderStream(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "c519d2aa4b1f401345c3575f73681822"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;

    return-object p1

    :cond_0
    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v1, Losdk/okhttp3/Request$Builder;

    invoke-direct {v1}, Losdk/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Losdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Losdk/okhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Losdk/okhttp3/Request$Builder;->build()Losdk/okhttp3/Request;

    move-result-object p1

    .line 39
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion;->getOkClient()Losdk/okhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Losdk/okhttp3/OkHttpClient;->newCall(Losdk/okhttp3/Request;)Losdk/okhttp3/Call;

    move-result-object v3

    .line 40
    invoke-interface {v3}, Losdk/okhttp3/Call;->execute()Losdk/okhttp3/Response;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 41
    invoke-virtual {v4}, Losdk/okhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 44
    invoke-virtual {v4}, Losdk/okhttp3/Response;->body()Losdk/okhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 45
    invoke-virtual {v5}, Losdk/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "Content-Encoding"

    .line 46
    invoke-virtual {v4, v1}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-static {v2, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/util/zip/GZIPInputStream;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v0, Ljava/io/InputStream;

    move-object v6, v0

    goto :goto_0

    :cond_1
    move-object v6, p1

    .line 49
    :goto_0
    new-instance p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;

    const-string v0, "requestCall"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;-><init>(Losdk/okhttp3/Call;Losdk/okhttp3/Response;Losdk/okhttp3/ResponseBody;Ljava/io/InputStream;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 45
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "downloader response byte stream is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "downloader response body is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloader response is error, code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Losdk/okhttp3/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "downloader response is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
