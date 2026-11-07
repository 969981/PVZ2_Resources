.class public abstract Lgbsdk/common/host/absz;
.super Ljava/lang/Object;
.source "RequestCallbackEx.kt"

# interfaces
.implements Lgbsdk/common/host/abyt;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00082\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH&J\u0018\u0010\u0011\u001a\u00020\u000c2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/main/plugin/RequestCallbackEx;",
        "Lcom/volcengine/zeus/download/RequestCallback;",
        "timeOutMillis",
        "",
        "(I)V",
        "autoCallbackRunnable",
        "Ljava/lang/Runnable;",
        "isCallbackDone",
        "",
        "mainHandler",
        "Landroid/os/Handler;",
        "onCallback",
        "",
        "isTimeOut",
        "remoteData",
        "",
        "Lcom/volcengine/zeus/download/PluginDownloadBean;",
        "result",
        "ch_main_tobRelease"
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


# instance fields
.field private final aCu:Landroid/os/Handler;

.field private aCv:Z

.field private final aCw:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lgbsdk/common/host/absz;->aCu:Landroid/os/Handler;

    .line 16
    new-instance v0, Lgbsdk/common/host/-$$Lambda$absz$YvWqTdqbnCfFkqO1GWmPQu5ck9U;

    invoke-direct {v0, p0}, Lgbsdk/common/host/-$$Lambda$absz$YvWqTdqbnCfFkqO1GWmPQu5ck9U;-><init>(Lgbsdk/common/host/absz;)V

    iput-object v0, p0, Lgbsdk/common/host/absz;->aCw:Ljava/lang/Runnable;

    if-lez p1, :cond_0

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1388

    .line 26
    :goto_0
    iget-object p1, p0, Lgbsdk/common/host/absz;->aCu:Landroid/os/Handler;

    iget-object v2, p0, Lgbsdk/common/host/absz;->aCw:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final a(Lgbsdk/common/host/absz;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/absz;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "0ca40e86668bc6ab091da6dd2319ddd2"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-boolean v1, p0, Lgbsdk/common/host/absz;->aCv:Z

    if-nez v1, :cond_1

    const-string v1, "RequestCallbackEx"

    const-string v2, "[osdk_zeus_w]auto callback on timeout!"

    .line 18
    invoke-static {v1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput-boolean v0, p0, Lgbsdk/common/host/absz;->aCv:Z

    .line 20
    invoke-virtual {p0, v0, v3}, Lgbsdk/common/host/absz;->a(ZLjava/util/List;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$YvWqTdqbnCfFkqO1GWmPQu5ck9U(Lgbsdk/common/host/absz;)V
    .locals 0

    invoke-static {p0}, Lgbsdk/common/host/absz;->a(Lgbsdk/common/host/absz;)V

    return-void
.end method


# virtual methods
.method public abstract a(ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "+",
            "Lcom/volcengine/zeus/download/PluginDownloadBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public y(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/volcengine/zeus/download/PluginDownloadBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/absz;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "ab014e38baa89bb88b4b4e27e61d7665"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/absz;->aCu:Landroid/os/Handler;

    iget-object v3, p0, Lgbsdk/common/host/absz;->aCw:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    iget-boolean v1, p0, Lgbsdk/common/host/absz;->aCv:Z

    if-nez v1, :cond_1

    .line 35
    iput-boolean v0, p0, Lgbsdk/common/host/absz;->aCv:Z

    .line 36
    invoke-virtual {p0, v2, p1}, Lgbsdk/common/host/absz;->a(ZLjava/util/List;)V

    goto :goto_0

    :cond_1
    const-string p1, "RequestCallbackEx"

    const-string v0, "[osdk_zeus_w]callback from zeus, already auto callback on timeout, ignore this!"

    .line 38
    invoke-static {p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
