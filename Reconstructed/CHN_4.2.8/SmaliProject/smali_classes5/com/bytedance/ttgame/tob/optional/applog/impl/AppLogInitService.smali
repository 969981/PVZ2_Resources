.class public final Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;
.super Lcom/bytedance/ttgame/tob/common/host/base/api/service/AbsOptionalService;
.source "AppLogInitService.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ab;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 /2\u00020\u00012\u00020\u0002:\u0001/B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J,\u0010\u0017\u001a\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u0018j\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r`\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0008\u0010\u001c\u001a\u00020\u000cH\u0002J\u001a\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0003J\u0010\u0010$\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u001a\u0010%\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0002J\u001e\u0010&\u001a\u00020\u001e2\u0014\u0010\'\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r0(H\u0002J&\u0010)\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020+2\u0014\u0010\'\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r0(H\u0002J&\u0010,\u001a\u00020\u001e2\u0014\u0010\'\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r0(2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0018\u0010-\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020+2\u0006\u0010\u001a\u001a\u00020\u001bH\u0003J0\u0010.\u001a\u00020\u001e2&\u0010\'\u001a\"\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0018j\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r`\u0019H\u0016R\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/service/AbsOptionalService;",
        "Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService;",
        "()V",
        "appLogDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;",
        "getAppLogDelegate",
        "()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;",
        "appLogDelegate$delegate",
        "Lkotlin/Lazy;",
        "headerInfo",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "",
        "mAppLogInited",
        "",
        "mAppLogListener",
        "Lcom/bytedance/applog/IDataObserver;",
        "mDidGot",
        "genActiveCustomParams",
        "",
        "getAppLogEventHandler",
        "Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;",
        "getCommonCustomParams",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "service",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;",
        "getUa",
        "init",
        "",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;",
        "initAppLog",
        "isNeedAddIsOsdkEvent",
        "onDidLoaded",
        "putExtraArguments",
        "map",
        "",
        "putInstallStatus",
        "context",
        "Landroid/content/Context;",
        "putPluginVersions",
        "setHeaderInfo",
        "setHeaderInfoAllTimes",
        "Companion",
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
.field private static final ATTRIBUTION_FORMAT:Ljava/lang/String; = "attribution_format"

.field private static final BOE:Ljava/lang/String; = "boe"

.field private static final CLICK_ID:Ljava/lang/String; = "click_id"

.field private static final CLICK_ID_NATURE:Ljava/lang/String; = "click_id_nature"

.field public static final Companion:Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ab;

.field private static final DEFAULT_ENV:Ljava/lang/String; = "prod"

.field private static final ENVIRONMENT:Ljava/lang/String; = "environment"

.field private static final KEY_PLUGIN_VERSION_PREFIX:Ljava/lang/String; = "p_vc_"

.field private static final LINK_URI:Ljava/lang/String; = "https://toblog-alink.ctobsnssdk.com"

.field private static final OCEAN_URI:Ljava/lang/String; = "https://log-api.oceanengine.com"

.field private static final ONLINE:Ljava/lang/String; = "online"

.field private static final PLUGIN_PKG_NAME_PREFIX:Ljava/lang/String; = "gbsdk.plugin."

.field private static final PPE:Ljava/lang/String; = "ppe"

.field private static final SUCCESS_URI:Ljava/lang/String; = "https://success.ctobsnssdk.com"

.field private static final TAG:Ljava/lang/String; = "AppLogInitService"

.field private static final TOB_URI:Ljava/lang/String; = "https://toblog.ctobsnssdk.com"

.field private static final X_TT_ENV:Ljava/lang/String; = "x_tt_env"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final appLogDelegate$delegate:Lkotlin/Lazy;

.field private final headerInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLogInited:Z

.field private mAppLogListener:Lcom/bytedance/applog/IDataObserver;

.field private volatile mDidGot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ab;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ab;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->Companion:Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ab;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/service/AbsOptionalService;-><init>()V

    .line 64
    sget-object v0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ac;->b:Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ac;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->appLogDelegate$delegate:Lkotlin/Lazy;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->headerInfo:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$getAppLogDelegate(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;)Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "df5e52d8f068f135b3b4d01f7b55cac8"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    return-object p0

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onDidLoaded(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "b2e88485a8b68c2503c119a1aaa2e5b4"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->onDidLoaded(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    return-void
.end method

.method private final genActiveCustomParams()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4b860c085d43a890a7fad6e5a74cbeb3"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 320
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    .line 322
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    const-string v2, "service"

    .line 324
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getCommonCustomParams(Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;)Ljava/util/HashMap;

    move-result-object v2

    .line 325
    check-cast v2, Ljava/util/Map;

    .line 494
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 326
    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, ""

    :cond_2
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 328
    :cond_3
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getLaunchId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "service.launchId"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "launch_id"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[osdk_init]genActiveCustomParams, ticket:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ticket"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", device_id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "device_id"

    .line 332
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 331
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", unique_id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "unique_id"

    .line 332
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 331
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", launch_id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLogInitService"

    .line 330
    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private final getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ed7ddb6699dea6b144f4c87a9e2372fb"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->appLogDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    return-object v0
.end method

.method private final getCommonCustomParams(Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;)Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "6ae14b0e686c231a222e4817ea275c54"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    return-object p1

    .line 339
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getAdAttribution()Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 341
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    const-string v3, "click_id"

    .line 345
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "AppLogInitService"

    const-string v6, "osdk"

    const-string v7, ""

    const-string v8, "click_id_nature"

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 346
    :cond_3
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getApkAttribution()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 347
    move-object v9, v4

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_4

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :goto_0
    if-ne v9, v0, :cond_5

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_6

    .line 349
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    const-string v10, "attributionStr"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "extra"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 351
    move-object v9, v1

    check-cast v9, Ljava/util/Map;

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    move-object v9, v1

    check-cast v9, Ljava/util/Map;

    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 355
    check-cast v4, Ljava/lang/Throwable;

    const-string v9, "[osdk_parse]parse click_id failed: "

    invoke-static {v5, v9, v4}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    :cond_6
    :goto_2
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getApkAttributionEx()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v4, 0x1

    :goto_4
    const-string v9, "attribution_format"

    if-eqz v4, :cond_9

    .line 361
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 362
    :cond_9
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getApkAttribution()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getApkAttributionEx()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/bytedance/ttgame/tob/common/host/framework/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 363
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 365
    :cond_a
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :goto_5
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 369
    move-object v9, v1

    check-cast v9, Ljava/util/Map;

    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    move-result-object v10

    iget-object v10, v10, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->appId:Ljava/lang/String;

    const-string v11, "app_id"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "app_package"

    .line 370
    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v10, "app_version"

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getHostVersion()Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v10, "osdk_version"

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getPluginVersion()Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v10, "osdk_cp_version"

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "channel_op"

    const-string v10, "bsdk"

    .line 375
    invoke-interface {v9, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getPackageChannel()Ljava/lang/String;

    move-result-object v4

    const-string v10, "channel_id"

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v4

    const/4 v10, 0x0

    if-eqz v4, :cond_b

    invoke-interface {v4}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getDid()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_b
    move-object v4, v10

    :goto_6
    const-string v11, "device_id"

    invoke-interface {v9, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-interface {v4}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getUserUniqueID()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_c
    move-object v4, v10

    :goto_7
    const-string v11, "unique_id"

    invoke-interface {v9, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "shunting"

    const-string v11, "bytedance_ad"

    .line 381
    invoke-interface {v9, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-direct {p0, p1}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->isNeedAddIsOsdkEvent(Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 384
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v11, "is_osdk_event"

    invoke-interface {v9, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_d
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getTicketId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move-object v4, v7

    :cond_e
    const-string v11, "ticket"

    invoke-interface {v9, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    move-result-object v4

    iget v4, v4, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->unionMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v11, "union_mode_config"

    invoke-interface {v9, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getUnionMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v11, "union_mode"

    invoke-interface {v9, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getAllPluginVersion()Ljava/util/Map;

    move-result-object v4

    const-string v11, "osdk_all_p_version"

    invoke-interface {v9, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getOsdkType()Ljava/lang/String;

    move-result-object v4

    const-string v11, "osdk_type"

    invoke-interface {v9, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "platform_app_id"

    const-string v11, "3176"

    .line 393
    invoke-interface {v9, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getEnv()Ljava/lang/String;

    move-result-object v4

    const-string v11, "osdk_env"

    invoke-interface {v9, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getComponents()Ljava/lang/String;

    move-result-object v4

    const-string v11, "osdk_comps"

    invoke-interface {v9, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-direct {p0, v9, p1}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->putPluginVersions(Ljava/util/Map;Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;)V

    .line 399
    invoke-direct {p0, v9}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->putExtraArguments(Ljava/util/Map;)V

    .line 402
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v11, "service.appContext"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->isMockDeviceInfo(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v12, "osdk_mock_new_user"

    invoke-interface {v9, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getIsCloudGameValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v12, "is_cloud_game"

    invoke-interface {v9, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getInitConfig()Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;->getCloudGameInfo()Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 408
    sget-object v12, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;

    invoke-virtual {v12, v4}, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->getCloudGameInfoParams(Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;)Ljava/util/HashMap;

    move-result-object v4

    .line 409
    move-object v12, v4

    check-cast v12, Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    xor-int/2addr v13, v0

    if-eqz v13, :cond_f

    .line 410
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 411
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[cg_3rd]init applog,put cloudGameInfo to header.custom: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_f
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    move-result-object v4

    if-eqz v4, :cond_10

    iget-object v4, v4, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->screenOrientation:Ljava/lang/String;

    goto :goto_8

    :cond_10
    move-object v4, v10

    :goto_8
    if-nez v4, :cond_11

    move-object v4, v7

    :cond_11
    const-string v5, "screen_orientation"

    invoke-interface {v9, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    move-result-object v4

    if-eqz v4, :cond_12

    iget v4, v4, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->osdkPkgType:I

    goto :goto_9

    :cond_12
    const/4 v4, 0x0

    :goto_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "osdk_pkg_type"

    invoke-interface {v9, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    move-result-object v4

    if-eqz v4, :cond_13

    iget-boolean v4, v4, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->debugMode:Z

    if-ne v4, v0, :cond_13

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "data_link_env"

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getInitConfig()Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;->getPackageChannel()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_14
    move-object v0, v10

    :goto_b
    if-nez v0, :cond_15

    move-object v0, v7

    :cond_15
    const-string v4, "package_channel"

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :cond_16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "target_sdk_version"

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->isDataCheck()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "is_data_check_pkg"

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->headerInfo:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 434
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cloud_game"

    if-eqz v0, :cond_17

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 435
    :cond_17
    invoke-interface {v9, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_18
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 438
    :cond_19
    invoke-interface {v9, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_1a
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getInitConfig()Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;->getPackageTag()Ljava/lang/String;

    move-result-object v10

    :cond_1b
    if-nez v10, :cond_1c

    goto :goto_c

    :cond_1c
    move-object v7, v10

    :goto_c
    const-string v0, "osdk_pkg_tag"

    invoke-interface {v9, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v9}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->putInstallStatus(Landroid/content/Context;Ljava/util/Map;)V

    return-object v1
.end method

.method private final getUa()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "8efb22828217a9fa8f505f419fd403c4"

    invoke-static {v2, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "http.agent"

    .line 265
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :catchall_0
    :goto_0
    return-object v0
.end method

.method private final initAppLog(Landroid/app/Activity;)V
    .locals 8
    .annotation runtime Lcom/bytedance/ttgame/tob/common/host/framework/annotation/DexVmp;
        value = true
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "34c67bd9af551de1232a6391929e4c58"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    .line 175
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 176
    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->appId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_2

    const-string v4, ""

    :cond_2
    if-eqz v1, :cond_3

    .line 178
    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getPackageChannel()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v3

    :goto_1
    if-eqz v1, :cond_4

    .line 179
    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getEnv()Ljava/lang/String;

    move-result-object v3

    :cond_4
    if-nez v3, :cond_5

    const-string v3, "osdk"

    :cond_5
    const-string v6, "cloud_game_3rd"

    .line 180
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    .line 185
    :cond_6
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_8

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v6, 0x1

    :goto_3
    if-eqz v6, :cond_9

    :goto_4
    move-object v5, v3

    .line 191
    :cond_9
    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->isDebugMode()Z

    move-result v3

    const-string v6, "AppLogInitService"

    if-eqz v3, :cond_a

    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 192
    invoke-static {v3}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[osdk_init]initAppLog, channel = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_a
    new-instance v3, Lcom/bytedance/applog/InitConfig;

    invoke-direct {v3, v4, v5}, Lcom/bytedance/applog/InitConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v4, Lgbsdk/optional/applog/abic;

    invoke-direct {v4}, Lgbsdk/optional/applog/abic;-><init>()V

    check-cast v4, Lcom/bytedance/applog/network/INetworkClient;

    invoke-virtual {v3, v4}, Lcom/bytedance/applog/InitConfig;->setNetworkClient(Lcom/bytedance/applog/network/INetworkClient;)Lcom/bytedance/applog/InitConfig;

    .line 197
    invoke-virtual {v3, v0}, Lcom/bytedance/applog/InitConfig;->setEnablePlay(Z)Lcom/bytedance/applog/InitConfig;

    .line 200
    new-instance v4, Lcom/bytedance/applog/UriConfig$Builder;

    invoke-direct {v4}, Lcom/bytedance/applog/UriConfig$Builder;-><init>()V

    const-string v5, "https://toblog.ctobsnssdk.com/service/2/device_register/"

    .line 201
    invoke-virtual {v4, v5}, Lcom/bytedance/applog/UriConfig$Builder;->setRegisterUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v4

    const-string v5, "https://toblog.ctobsnssdk.com/service/2/app_alert_check/"

    .line 202
    invoke-virtual {v4, v5}, Lcom/bytedance/applog/UriConfig$Builder;->setActiveUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v4

    const-string v5, "https://log-api.oceanengine.com/service/2/app_log/"

    .line 203
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/applog/UriConfig$Builder;->setSendUris([Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v4

    const-string v5, "https://toblog.ctobsnssdk.com/service/2/profile/"

    .line 204
    invoke-virtual {v4, v5}, Lcom/bytedance/applog/UriConfig$Builder;->setProfileUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v4

    const-string v5, "https://log-api.oceanengine.com/service/2/log_settings/"

    .line 205
    invoke-virtual {v4, v5}, Lcom/bytedance/applog/UriConfig$Builder;->setSettingUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v4

    const-string v5, "https://toblog.ctobsnssdk.com/service/2/abtest_config/"

    .line 206
    invoke-virtual {v4, v5}, Lcom/bytedance/applog/UriConfig$Builder;->setAbUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v4

    const-string v5, "https://toblog-alink.ctobsnssdk.com/service/2/attribution_data"

    .line 208
    invoke-virtual {v4, v5}, Lcom/bytedance/applog/UriConfig$Builder;->setALinkAttributionUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v4

    const-string v5, "https://toblog-alink.ctobsnssdk.com/service/2/alink_data"

    .line 209
    invoke-virtual {v4, v5}, Lcom/bytedance/applog/UriConfig$Builder;->setALinkQueryUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/applog/UriConfig$Builder;->build()Lcom/bytedance/applog/UriConfig;

    move-result-object v4

    .line 200
    invoke-virtual {v3, v4}, Lcom/bytedance/applog/InitConfig;->setUriConfig(Lcom/bytedance/applog/UriConfig;)Lcom/bytedance/applog/InitConfig;

    .line 216
    invoke-virtual {v3, v0}, Lcom/bytedance/applog/InitConfig;->setAbEnable(Z)V

    .line 217
    invoke-virtual {v3, v0}, Lcom/bytedance/applog/InitConfig;->setAutoStart(Z)Lcom/bytedance/applog/InitConfig;

    .line 227
    invoke-virtual {v3, v2}, Lcom/bytedance/applog/InitConfig;->setGaidEnabled(Z)V

    const-string v4, "[osdk_init]initAppLog set gaid enabled false"

    .line 228
    invoke-static {v6, v4}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v3, v2}, Lcom/bytedance/applog/InitConfig;->setMacEnable(Z)V

    .line 234
    invoke-virtual {v3, v2}, Lcom/bytedance/applog/InitConfig;->setOperatorInfoEnabled(Z)V

    .line 237
    invoke-virtual {v3, v2}, Lcom/bytedance/applog/InitConfig;->setImeiEnable(Z)Lcom/bytedance/applog/InitConfig;

    .line 240
    invoke-virtual {v3, v2}, Lcom/bytedance/applog/InitConfig;->setSerialNumberEnable(Z)V

    .line 243
    invoke-virtual {v3, v2}, Lcom/bytedance/applog/InitConfig;->setIccIdEnabled(Z)V

    .line 246
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v2

    if-eqz v2, :cond_b

    new-instance v4, Lcom/bytedance/ttgame/tob/optional/applog/impl/-$$Lambda$AppLogInitService$lfRocYGWNs9EmXh66W2PLblOQ54;

    invoke-direct {v4, p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/-$$Lambda$AppLogInitService$lfRocYGWNs9EmXh66W2PLblOQ54;-><init>(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;)V

    invoke-interface {v2, v4}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->setActiveCustomParams(Lcom/bytedance/applog/IActiveCustomParamsCallback;)V

    .line 251
    :cond_b
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object v4, p1

    check-cast v4, Landroid/content/Context;

    sget-object v5, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager$Companion;

    invoke-virtual {v5}, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager$Companion;->getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;->getTopResumedActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_c

    move-object v5, p1

    :cond_c
    invoke-interface {v2, v4, v3, v5}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;Landroid/app/Activity;)V

    .line 254
    :cond_d
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getUa()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->setUserAgent(Ljava/lang/String;)V

    .line 257
    :cond_e
    check-cast p1, Landroid/content/Context;

    const-string v2, "iCoreDataService"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->setHeaderInfo(Landroid/content/Context;Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;)V

    .line 259
    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->mAppLogInited:Z

    const-string p1, "[osdk_init]initAppLog end"

    .line 260
    invoke-static {v6, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final initAppLog$lambda-1(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "71579c91e35d52ddd2e78d5402bad046"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AppLog"

    .line 221
    invoke-static {v0, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final initAppLog$lambda-2(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;)Ljava/util/Map;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "c31febd52b74316b74a778848ef7ab3c"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_0
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->genActiveCustomParams()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final isNeedAddIsOsdkEvent(Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "91a350d974193af3c2c9745a2f8c349d"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 449
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getOsdkType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Android_Convert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public static synthetic lambda$lfRocYGWNs9EmXh66W2PLblOQ54(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->initAppLog$lambda-2(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final onDidLoaded(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "2521834fb6fe5406113384ee10029a19"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->mDidGot:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getDid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 167
    iput-boolean v2, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->mDidGot:Z

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[osdk_init]init success, tob did is = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getDid()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLogInitService"

    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {p1, p2}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    :cond_3
    return-void
.end method

.method private final putExtraArguments(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f0d99cfd46731e31de3feaf616539e12"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 484
    :cond_0
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/api/internal/ExtraCapability;->getReportExtra()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 486
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "key"

    .line 487
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "extra_"

    invoke-static {v3, v6, v1, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 488
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final putInstallStatus(Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "26cf1a4abffc6a9969e9ead0b6e62c9e"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 457
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 458
    iget-wide v3, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 459
    iget-wide v5, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sub-long/2addr v5, v3

    const-string p1, "osdk_install_status"

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 461
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string p2, "AppLogInitService"

    const-string v0, "putInstallStatus for AppLog failed: "

    .line 463
    invoke-static {p2, v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private final putPluginVersions(Ljava/util/Map;Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "5067f3c7527c139230c14b285e746012"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 472
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getAllPluginVersion()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 473
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 474
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "versionInfo.key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const-string v4, "gbsdk.plugin."

    const-string v5, "p_vc_"

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 479
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "AppLogInitService"

    const-string v0, "setPluginVersions for AppLog failed: "

    invoke-static {p2, v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private final setHeaderInfo(Landroid/content/Context;Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;)V
    .locals 5
    .annotation runtime Lcom/bytedance/ttgame/tob/common/host/framework/annotation/DexVmp;
        value = true
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    .line 305
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object p2, v0, v2

    .line 0
    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "8f54536658b922d6b74cb5a4458a89c6"

    invoke-static {v0, p0, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-direct {p0, p2}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getCommonCustomParams(Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;)Ljava/util/HashMap;

    move-result-object v0

    .line 279
    check-cast v0, Ljava/util/Map;

    const-string v1, "device_ip"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_type"

    .line 280
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "business_label"

    .line 281
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "network_carrier"

    .line 283
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-interface {p2}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getNetworkType(service.appContext)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "network_type"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-interface {p2}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    const-string v1, "user_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-interface {p2}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "service.appContext.packageName"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pkg_name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->isBoeOpen(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 292
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->getBoeHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "boe"

    goto :goto_1

    .line 293
    :cond_2
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->isPpeOpen(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 295
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/DebugUtils;->getPpeHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ppe"

    goto :goto_1

    :cond_3
    const-string p2, "online"

    const-string p1, "prod"

    :goto_1
    const-string v1, "environment"

    .line 297
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "x_tt_env"

    .line 298
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-class p1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-static {p1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getInitSwitchData()Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_8

    .line 303
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->getDataLinkStatus()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "osdk_dl_status"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->getOnlyDataCheckStatusOpen()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "osdk_data_check"

    .line 305
    invoke-interface {v0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->getOsdkStatusGetFromConfig()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "osdk_tcc_all"

    .line 308
    invoke-interface {v0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->getDataLinkStatusGetFromConfig()Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "osdk_tcc_dl"

    .line 311
    invoke-interface {v0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_7
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->getDataFrom()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "osdk_switch_from"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_8
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->setHeaderInfo(Ljava/util/Map;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public getAppLogEventHandler()Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;
    .locals 1

    .line 162
    sget-object v0, Lgbsdk/optional/applog/abia;->b:Lgbsdk/optional/applog/abia;

    check-cast v0, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "2ed39f54b808ea50857b2673b94061bd"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[osdk_init]init, activity="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppLogInitService"

    invoke-static {v3, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->mAppLogInited:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 71
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getDid()Ljava/lang/String;

    move-result-object v4

    :cond_1
    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "[osdk_init]init, AppLog has been init but did is null"

    .line 72
    invoke-static {v3, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 p1, -0x3

    const-string v0, "AppLog has been init but did is null"

    .line 73
    invoke-interface {p2, p1, v0}, Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "[osdk_init]init, AppLog has been init and did not empty"

    .line 75
    invoke-static {v3, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {p1, p2}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    :cond_3
    :goto_0
    return-void

    .line 80
    :cond_4
    new-instance v0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;-><init>(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    check-cast v0, Lcom/bytedance/applog/IDataObserver;

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->mAppLogListener:Lcom/bytedance/applog/IDataObserver;

    .line 144
    const-class p2, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-static {p2}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object p2

    check-cast p2, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->isRunningCloud()Z

    move-result p2

    if-ne p2, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    .line 145
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object p2

    if-eqz p2, :cond_6

    const-string v0, ""

    invoke-interface {p2, v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->setUserUniqueID(Ljava/lang/String;)V

    .line 147
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->mAppLogListener:Lcom/bytedance/applog/IDataObserver;

    if-nez v0, :cond_7

    const-string v0, "mAppLogListener"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v4, v0

    :goto_1
    invoke-interface {p2, v4}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->addDataObserver(Lcom/bytedance/applog/IDataObserver;)V

    .line 148
    :cond_8
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object p2

    if-eqz p2, :cond_9

    sget-object v0, Lgbsdk/optional/applog/abia;->b:Lgbsdk/optional/applog/abia;

    check-cast v0, Lcom/bytedance/applog/event/IEventHandler;

    invoke-interface {p2, v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->setEventHandler(Lcom/bytedance/applog/event/IEventHandler;)V

    .line 149
    :cond_9
    invoke-direct {p0, p1}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->initAppLog(Landroid/app/Activity;)V

    return-void
.end method

.method public setHeaderInfoAllTimes(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4c4644901a12712424c9a0fa1aa4ee84"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 155
    iget-object v3, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->headerInfo:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 158
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->setHeaderInfo(Ljava/util/Map;)V

    :cond_3
    return-void
.end method
