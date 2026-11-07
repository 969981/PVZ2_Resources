.class public final Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;
.super Ljava/lang/Object;
.source "AppLogInitService.kt"

# interfaces
.implements Lcom/bytedance/applog/IDataObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J \u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001a\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u0016JB\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0005H\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "com/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$init$1",
        "Lcom/bytedance/applog/IDataObserver;",
        "onAbVidsChange",
        "",
        "vids",
        "",
        "extVids",
        "onIdLoaded",
        "did",
        "iid",
        "ssid",
        "onRemoteAbConfigGet",
        "changed",
        "",
        "abConfig",
        "Lorg/json/JSONObject;",
        "onRemoteConfigGet",
        "config",
        "onRemoteIdGet",
        "oldDid",
        "newDid",
        "oldIid",
        "newIid",
        "oldSsid",
        "newSsid",
        "optional_applog_impl_tobRelease"
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
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic b:Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->b:Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->c:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->d:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "c1c8b9d3eb4174a2afb968fcf5342459"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->access$getAppLogDelegate(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;)Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getDid()Ljava/lang/String;

    move-result-object v3

    :cond_1
    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AppLogInitService"

    if-nez v0, :cond_2

    const-string v0, "[osdk_init]onIdLoaded"

    .line 90
    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {p0, p1, p2}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->access$onDidLoaded(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    goto :goto_0

    :cond_2
    const-string p0, "[osdk_init]onIdLoaded, but appLogDelegate?.getDid() is empty"

    .line 93
    invoke-static {v1, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final b(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "4d9d7f60305728990e44cc4d06d5a597"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->access$getAppLogDelegate(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;)Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getDid()Ljava/lang/String;

    move-result-object v3

    :cond_1
    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AppLogInitService"

    if-nez v0, :cond_2

    const-string v0, "[osdk_init]onRemoteIdGet"

    .line 115
    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p0, p1, p2}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->access$onDidLoaded(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    goto :goto_0

    :cond_2
    const-string p0, "[osdk_init]onRemoteIdGet, but appLogDelegate?.getDid() is empty"

    .line 118
    invoke-static {v1, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final c(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "3a560a82be5136cf67f616468730593a"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-static {p0, p1, p2}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->access$onDidLoaded(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    return-void
.end method

.method public static synthetic lambda$TzjAxnuRQJpHAUEcfeWMqiopJXg(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->a(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    return-void
.end method

.method public static synthetic lambda$fE_E8RirCD0l6H7_fg9Pj5_uDqs(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->c(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    return-void
.end method

.method public static synthetic lambda$laBKXpHGe7tY8RV7IJVa90v3xSQ(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->b(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    return-void
.end method


# virtual methods
.method public onAbVidsChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d0729004ab1d98701c2799a15090fdab"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "vids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extVids"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "40c95fb485fab94f3dee0224019fffe6"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "did"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iid"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ssid"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->mainThread()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->b:Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;

    iget-object p3, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->d:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    new-instance v1, Lcom/bytedance/ttgame/tob/optional/applog/impl/-$$Lambda$AppLogInitService$ad$TzjAxnuRQJpHAUEcfeWMqiopJXg;

    invoke-direct {v1, p2, p3, v0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/-$$Lambda$AppLogInitService$ad$TzjAxnuRQJpHAUEcfeWMqiopJXg;-><init>(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRemoteAbConfigGet(ZLorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    sget-object v1, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "87b973df1d410d2679a16f667b84c371"

    invoke-static {v0, p0, v1, p1, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "abConfig"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRemoteConfigGet(ZLorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    sget-object p2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v1, "340de7ffce2f42e9012172bc2e084686"

    invoke-static {v0, p0, p2, p1, v1}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->mainThread()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->b:Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->d:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    new-instance v2, Lcom/bytedance/ttgame/tob/optional/applog/impl/-$$Lambda$AppLogInitService$ad$fE_E8RirCD0l6H7_fg9Pj5_uDqs;

    invoke-direct {v2, p2, v0, v1}, Lcom/bytedance/ttgame/tob/optional/applog/impl/-$$Lambda$AppLogInitService$ad$fE_E8RirCD0l6H7_fg9Pj5_uDqs;-><init>(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 p2, 0x2

    aput-object p3, v0, p2

    const/4 p2, 0x3

    aput-object p4, v0, p2

    const/4 p2, 0x4

    aput-object p5, v0, p2

    const/4 p2, 0x5

    aput-object p6, v0, p2

    const/4 p2, 0x6

    aput-object p7, v0, p2

    sget-object p2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v1, "55de2955118e01929d2e515b92402797"

    invoke-static {v0, p0, p2, p1, v1}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "newDid"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldIid"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newIid"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldSsid"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newSsid"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->mainThread()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->b:Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;

    iget-object p3, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->c:Landroid/app/Activity;

    iget-object p4, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->d:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    new-instance p5, Lcom/bytedance/ttgame/tob/optional/applog/impl/-$$Lambda$AppLogInitService$ad$laBKXpHGe7tY8RV7IJVa90v3xSQ;

    invoke-direct {p5, p2, p3, p4}, Lcom/bytedance/ttgame/tob/optional/applog/impl/-$$Lambda$AppLogInitService$ad$laBKXpHGe7tY8RV7IJVa90v3xSQ;-><init>(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    invoke-interface {p1, p5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
