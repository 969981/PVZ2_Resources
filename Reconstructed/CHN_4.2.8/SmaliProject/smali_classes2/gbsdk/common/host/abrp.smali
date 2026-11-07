.class public final Lgbsdk/common/host/abrp;
.super Ljava/lang/Object;
.source "AppLogDelegateImplMultiInstance.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abrp$ab;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\'\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u0000 x2\u00020\u0001:\u0001xB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J(\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016JH\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001d2&\u0010\u001e\u001a\"\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020 \u0018\u00010\u001fj\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020 \u0018\u0001`!H\u0016JH\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u001d2&\u0010\u001e\u001a\"\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020 \u0018\u00010\u001fj\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020 \u0018\u0001`!H\u0016J8\u0010&\u001a\u00020\n2&\u0010\u001e\u001a\"\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020 \u0018\u00010\u001fj\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020 \u0018\u0001`!2\u0006\u0010\'\u001a\u00020(H\u0002J\u0008\u0010)\u001a\u00020\nH\u0016J\u0008\u0010*\u001a\u00020\u000eH\u0016J\u0008\u0010+\u001a\u00020\u000eH\u0016JH\u0010,\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001d2&\u0010\u001e\u001a\"\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020 \u0018\u00010\u001fj\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020 \u0018\u0001`!H\u0016J\u0008\u0010-\u001a\u00020\u000eH\u0016J\u0008\u0010.\u001a\u00020\u0013H\u0016J\u0008\u0010/\u001a\u00020\u000eH\u0016J\n\u00100\u001a\u0004\u0018\u000101H\u0016J\u0008\u00102\u001a\u00020\u000eH\u0016J\u0008\u00103\u001a\u00020\u000eH\u0016J\u0008\u00104\u001a\u00020\u000eH\u0016J\u0008\u00105\u001a\u00020\u000eH\u0016J\u0008\u00106\u001a\u00020\u000eH\u0016J\u0010\u00107\u001a\u00020\u000e2\u0006\u00108\u001a\u00020\u0013H\u0002J \u00109\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010:\u001a\u0002012\u0006\u0010;\u001a\u00020<H\u0016JP\u0010=\u001a\u00020\n2\u0006\u0010>\u001a\u00020\u001d2\u0006\u0010?\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010@\u001a\u00020\u001d2&\u0010\u001e\u001a\"\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020 \u0018\u00010\u001fj\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020 \u0018\u0001`!H\u0016J\u0018\u0010A\u001a\u00020\n2\u0006\u0010B\u001a\u00020\u000e2\u0006\u0010C\u001a\u00020\u0013H\u0016J\u0018\u0010D\u001a\u00020\n2\u0006\u0010E\u001a\u00020\u000e2\u0006\u0010C\u001a\u00020\u0013H\u0016J0\u0010F\u001a\u00020\n2\u0006\u0010G\u001a\u00020\u000e2\u0006\u0010H\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020\u0013H\u0016J0\u0010K\u001a\u00020\n2\u0006\u0010G\u001a\u00020\u000e2\u0006\u0010H\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020\u0013H\u0016JP\u0010L\u001a\u00020\n2\u0006\u0010G\u001a\u00020\u000e2\u0006\u0010H\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020\u001d2\u0006\u0010M\u001a\u00020\u00132\u0006\u0010N\u001a\u00020\u000e2\u0006\u0010O\u001a\u00020\u000e2\u0006\u0010C\u001a\u00020\u00132\u0006\u0010P\u001a\u00020\u001dH\u0016J\u0010\u0010Q\u001a\u00020\n2\u0006\u0010R\u001a\u00020\u000eH\u0016J\u0018\u0010S\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010C\u001a\u00020\u0013H\u0016JH\u0010T\u001a\u00020\n2\u0006\u0010G\u001a\u00020\u000e2\u0006\u0010H\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020\u001d2\u0006\u0010E\u001a\u00020\u000e2\u0006\u0010O\u001a\u00020\u000e2\u0006\u0010C\u001a\u00020\u00132\u0006\u0010P\u001a\u00020\u001dH\u0016J8\u0010U\u001a\u00020\n2\u0006\u0010V\u001a\u00020\u000e2\u0006\u0010W\u001a\u00020\u000e2\u0006\u0010X\u001a\u00020\u000e2\u0006\u0010Y\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020\u00132\u0006\u0010Z\u001a\u00020\u000eH\u0016J\u0018\u0010[\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010C\u001a\u00020\u0013H\u0016J\u0010\u0010\\\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u001dH\u0016J\u0010\u0010]\u001a\u00020\n2\u0006\u0010^\u001a\u00020\u000eH\u0016J\u0018\u0010]\u001a\u00020\n2\u0006\u0010^\u001a\u00020\u000e2\u0006\u0010_\u001a\u00020(H\u0016J \u0010]\u001a\u00020\n2\u0006\u0010^\u001a\u00020\u000e2\u0006\u0010`\u001a\u00020(2\u0006\u0010a\u001a\u00020\u001dH\u0016J \u0010b\u001a\u00020\n2\u0006\u0010G\u001a\u00020\u000e2\u0006\u0010H\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020\u000eH\u0016J4\u0010c\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010_\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0d2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010e\u001a\u00020\n2\u0006\u0010f\u001a\u00020gH\u0016J\u0010\u0010h\u001a\u00020\n2\u0006\u0010i\u001a\u00020\u0013H\u0016J\u0010\u0010j\u001a\u00020\n2\u0006\u0010k\u001a\u00020lH\u0016J\u0010\u0010m\u001a\u00020\n2\u0006\u0010n\u001a\u00020\u000eH\u0016J\u001e\u0010o\u001a\u00020\n2\u0014\u0010p\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010 0dH\u0016J\u0010\u0010q\u001a\u00020\n2\u0006\u0010r\u001a\u00020\u000eH\u0016J\u0010\u0010s\u001a\u00020\n2\u0006\u0010t\u001a\u00020uH\u0016J\u0010\u0010v\u001a\u00020\n2\u0006\u0010t\u001a\u00020\u000eH\u0016J8\u0010w\u001a\u00020\n2\u0006\u0010#\u001a\u00020\u000e2&\u0010\u001e\u001a\"\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020 \u0018\u00010\u001fj\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020 \u0018\u0001`!H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006y"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogDelegateImplMultiInstance;",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;",
        "()V",
        "appLogInstance",
        "Lcom/bytedance/applog/IAppLogInstance;",
        "getAppLogInstance",
        "()Lcom/bytedance/applog/IAppLogInstance;",
        "appLogInstance$delegate",
        "Lkotlin/Lazy;",
        "addDataObserver",
        "",
        "dataObserver",
        "Lcom/bytedance/applog/IDataObserver;",
        "addNetCommonParams",
        "",
        "context",
        "Landroid/content/Context;",
        "url",
        "isApi",
        "",
        "level",
        "Lcom/bytedance/applog/Level;",
        "addSessionHook",
        "hook",
        "Lcom/bytedance/applog/ISessionObserver;",
        "costCoins",
        "coinType",
        "method",
        "coinNum",
        "",
        "otherParams",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "endPlay",
        "ectypeName",
        "result",
        "duration",
        "fillOtherParams",
        "param",
        "Lorg/json/JSONObject;",
        "flush",
        "getAppId",
        "getClientUdid",
        "getCoins",
        "getDid",
        "getEncryptAndCompress",
        "getIid",
        "getInitConfig",
        "Lcom/bytedance/applog/InitConfig;",
        "getOpenUdid",
        "getSsid",
        "getUdid",
        "getUserID",
        "getUserUniqueID",
        "getYesNoString",
        "bool",
        "init",
        "config",
        "resumeActivity",
        "Landroid/app/Activity;",
        "levelUp",
        "lev",
        "getExp",
        "aflev",
        "onEventAccessAccount",
        "accountType",
        "isSuccess",
        "onEventAccessPaymentChannel",
        "paymentChannel",
        "onEventAddCart",
        "contentType",
        "contentName",
        "contentId",
        "contentNumber",
        "onEventAddToFavorite",
        "onEventCheckOut",
        "isVirtualCurrency",
        "virtualCurrency",
        "currency",
        "currencyAmount",
        "onEventCreateGameRole",
        "gameRoleId",
        "onEventLogin",
        "onEventPurchase",
        "onEventQuest",
        "questId",
        "questType",
        "questName",
        "questNo",
        "description",
        "onEventRegister",
        "onEventUpdateLevel",
        "onEventV3",
        "event",
        "params",
        "jsonObject",
        "eventType",
        "onEventViewContent",
        "putCommonParams",
        "",
        "setActiveCustomParams",
        "callback",
        "Lcom/bytedance/applog/IActiveCustomParamsCallback;",
        "setEncryptAndCompress",
        "encryptAndCompress",
        "setEventHandler",
        "handler",
        "Lcom/bytedance/applog/event/IEventHandler;",
        "setExternalAbVersion",
        "version",
        "setHeaderInfo",
        "custom",
        "setUserAgent",
        "ua",
        "setUserID",
        "id",
        "",
        "setUserUniqueID",
        "startPlay",
        "Companion",
        "ch_base_impl_tobRelease"
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
.field public static final CL:Lgbsdk/common/host/abrp$ab;

.field public static final CN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppLogDelegateImplMultiInstance"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final CM:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgbsdk/common/host/abrp$ab;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgbsdk/common/host/abrp$ab;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgbsdk/common/host/abrp;->CL:Lgbsdk/common/host/abrp$ab;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lgbsdk/common/host/abrp$ac;->CO:Lgbsdk/common/host/abrp$ac;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abrp;->CM:Lkotlin/Lazy;

    return-void
.end method

.method private final a(Ljava/util/HashMap;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v3, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "0e7e0e7439845e70d0fa5248e4d81bdf"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 290
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_4

    .line 291
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    const-string v0, "otherParams.entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    check-cast p1, Ljava/lang/Iterable;

    .line 391
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 293
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 294
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final ej()Lcom/bytedance/applog/IAppLogInstance;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "dfcbc8e955da97a5a89a652a742d5c6b"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/applog/IAppLogInstance;

    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abrp;->CM:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-appLogInstance>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/bytedance/applog/IAppLogInstance;

    return-object v0
.end method

.method private final x(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "yes"

    goto :goto_0

    :cond_0
    const-string p1, "no"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public addDataObserver(Lcom/bytedance/applog/IDataObserver;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "782f3421f1cea7d3cb30b5fcc79c3096"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "dataObserver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/applog/IAppLogInstance;->addDataObserver(Lcom/bytedance/applog/IDataObserver;)V

    return-void
.end method

.method public addNetCommonParams(Landroid/content/Context;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p3}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aput-object p4, v0, v2

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "572aae9849fd67314c20142d3bb1db3b"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/applog/IAppLogInstance;->addNetCommonParams(Landroid/content/Context;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method public addSessionHook(Lcom/bytedance/applog/ISessionObserver;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "fee1b119f05695c7eb43fe354e83de91"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "hook"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/applog/IAppLogInstance;->addSessionHook(Lcom/bytedance/applog/ISessionObserver;)V

    return-void
.end method

.method public costCoins(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/4 v3, 0x3

    aput-object p4, v0, v3

    sget-object v3, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "5b947743bf472eb4d940017c65198a64"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "coinType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 373
    :try_start_0
    invoke-direct {p0, p4, v1}, Lgbsdk/common/host/abrp;->a(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    const-string p4, "coin_type"

    .line 374
    invoke-virtual {v1, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "coin_num"

    .line 376
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 377
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string p2, "gt_cost_coins"

    invoke-interface {p1, p2, v1, v2}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 379
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "AppLogDelegateImplMultiInstance"

    const-string p3, "costCoins JSON handle failed"

    invoke-static {p2, p3, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public endPlay(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/4 v3, 0x3

    aput-object p4, v0, v3

    sget-object v3, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "4ea94a392b3cd740225aea7c09ce2c33"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ectypeName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 329
    :try_start_0
    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper;->Companion:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;

    invoke-virtual {v3}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->getUNCOMPLETED()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    sget-object p2, Lcom/bytedance/applog/game/WhalerGameHelper$Result;->UNCOMPLETED:Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    goto :goto_0

    .line 333
    :cond_1
    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper;->Companion:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;

    invoke-virtual {v3}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->getSUCCESS()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    sget-object p2, Lcom/bytedance/applog/game/WhalerGameHelper$Result;->SUCCESS:Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    goto :goto_0

    .line 337
    :cond_2
    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper;->Companion:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;

    invoke-virtual {v3}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->getFAIL()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 338
    sget-object p2, Lcom/bytedance/applog/game/WhalerGameHelper$Result;->FAIL:Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    goto :goto_0

    .line 342
    :cond_3
    sget-object p2, Lcom/bytedance/applog/game/WhalerGameHelper$Result;->SUCCESS:Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    .line 345
    :goto_0
    invoke-direct {p0, p4, v1}, Lgbsdk/common/host/abrp;->a(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    const-string p4, "ectype_name"

    .line 346
    invoke-virtual {v1, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    iget-object p1, p2, Lcom/bytedance/applog/game/WhalerGameHelper$Result;->gameResult:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "duration"

    .line 348
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string p2, "gt_end_play"

    invoke-interface {p1, p2, v1, v2}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 351
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "AppLogDelegateImplMultiInstance"

    const-string p3, "endPlay JSON handle failed"

    invoke-static {p2, p3, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public flush()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "50f8b2df33732babb8c182fc0101f9b9"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->flush()V

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "476c7ffe32817cffb626f49b910d74ee"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 71
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getClientUdid()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "dc1b8a89b8b54adf1710e9dfe97341cb"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 75
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getClientUdid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getCoins(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/4 v3, 0x3

    aput-object p4, v0, v3

    sget-object v3, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "73224e3d97d59abbf9e85b1187f0d4ee"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "coinType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 359
    :try_start_0
    invoke-direct {p0, p4, v1}, Lgbsdk/common/host/abrp;->a(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    const-string p4, "coin_type"

    .line 360
    invoke-virtual {v1, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "coin_num"

    .line 362
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 363
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string p2, "gt_get_coins"

    invoke-interface {p1, p2, v1, v2}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 365
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "AppLogDelegateImplMultiInstance"

    const-string p3, "getCoins JSON handle failed"

    invoke-static {p2, p3, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getDid()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2ce5b0879d841a06ec34dc8eeefe832e"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 65
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getDid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getEncryptAndCompress()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "adf4abe6d5d3f30741eaa507094523a2"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 121
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getEncryptAndCompress()Z

    move-result v0

    return v0
.end method

.method public getIid()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "446f70ca9b9ecd1021536b6b58389f6b"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 67
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getIid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getInitConfig()Lcom/bytedance/applog/InitConfig;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b171f10d9789bd8c8d6b5b03e4e8d186"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/applog/InitConfig;

    return-object v0

    .line 59
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    return-object v0
.end method

.method public getOpenUdid()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e03e359d8eea3c1e45fdc05f3e353d3c"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 81
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getOpenUdid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a8a703754407a8cfe94d2b384303565a"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 69
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getSsid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1a646c068f373759f463e8a28ed5adc9"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 73
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getUdid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "0c0a448de68d6db6b9feb978c022671e"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 85
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getUserID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getUserUniqueID()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4f6acc61a4818fc1bcac616129d2c5a3"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 79
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getUserUniqueID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "0c2bbd37db7f4dfe17db10c100d33253"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resumeActivity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AppLogDelegateImplMultiInstance"

    const-string v1, "init call"

    .line 55
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/applog/IAppLogInstance;->init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;Landroid/app/Activity;)V

    return-void
.end method

.method public levelUp(IILjava/lang/String;ILjava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    aput-object p3, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const/4 v1, 0x4

    aput-object p5, v0, v1

    sget-object v1, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "9e404dd71e08e1ff29ccff9c9f9f1f59"

    invoke-static {v0, p0, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "method"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 303
    :try_start_0
    invoke-direct {p0, p5, v1}, Lgbsdk/common/host/abrp;->a(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    const-string p5, "get_exp"

    .line 304
    invoke-virtual {v1, p5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 305
    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "aflev"

    .line 306
    invoke-virtual {v1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "lev"

    .line 307
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 308
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string p2, "gt_levelup"

    invoke-interface {p1, p2, v1, v3}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 310
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "AppLogDelegateImplMultiInstance"

    const-string p3, "levelUp JSON handle failed"

    invoke-static {p2, p3, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onEventAccessAccount(Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "3672ad89dae41b8de5e2c82821cb1729"

    invoke-static {v0, p0, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "accountType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "account_type"

    .line 152
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_success"

    .line 153
    invoke-direct {p0, p2}, Lgbsdk/common/host/abrp;->x(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string p2, "access_account"

    invoke-interface {p1, p2, v0, v3}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "AppLogDelegateImplMultiInstance"

    const-string v0, "onEventAccessAccount JSON handle failed"

    invoke-static {p2, v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onEventAccessPaymentChannel(Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "cf6b5e321e3a8354fc4a87ee80eff812"

    invoke-static {v0, p0, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "paymentChannel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "payment_channel"

    .line 238
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_success"

    .line 239
    invoke-direct {p0, p2}, Lgbsdk/common/host/abrp;->x(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string p2, "access_payment_channel"

    invoke-interface {p1, p2, v0, v3}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 242
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "AppLogDelegateImplMultiInstance"

    const-string v0, "onEventAccessPaymentChannel JSON handle failed"

    invoke-static {p2, v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onEventAddCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, p5}, Ljava/lang/Byte;-><init>(B)V

    const/4 v4, 0x4

    aput-object v3, v0, v4

    sget-object v3, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "0fee4bfdd8b93a1bd77e845dfc771d22"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "content_type"

    .line 199
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content_name"

    .line 200
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content_id"

    .line 201
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content_num"

    .line 202
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "is_success"

    .line 203
    invoke-direct {p0, p5}, Lgbsdk/common/host/abrp;->x(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string p2, "add_cart"

    invoke-interface {p1, p2, v0, v2}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 206
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "AppLogDelegateImplMultiInstance"

    const-string p3, "onEventAddCart JSON handle failed"

    invoke-static {p2, p3, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onEventAddToFavorite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, p5}, Ljava/lang/Byte;-><init>(B)V

    const/4 v4, 0x4

    aput-object v3, v0, v4

    sget-object v3, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "a147026dedfdb4bc281e2a20809d4d46"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "content_type"

    .line 185
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content_name"

    .line 186
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content_id"

    .line 187
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content_num"

    .line 188
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "is_success"

    .line 189
    invoke-direct {p0, p5}, Lgbsdk/common/host/abrp;->x(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string p2, "add_to_favourite"

    invoke-interface {p1, p2, v0, v2}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 192
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "AppLogDelegateImplMultiInstance"

    const-string p3, "onEventAddToFavorite JSON handle failed"

    invoke-static {p2, p3, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onEventCheckOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZI)V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, p5}, Ljava/lang/Byte;-><init>(B)V

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const/4 v3, 0x5

    aput-object p6, v0, v3

    const/4 v3, 0x6

    aput-object p7, v0, v3

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, p8}, Ljava/lang/Byte;-><init>(B)V

    const/4 v4, 0x7

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p9}, Ljava/lang/Integer;-><init>(I)V

    const/16 v4, 0x8

    aput-object v3, v0, v4

    sget-object v3, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "e9ffdb0ee395ed34577d22fa408d4ab8"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualCurrency"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "content_type"

    .line 272
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content_name"

    .line 273
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content_id"

    .line 274
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content_num"

    .line 275
    invoke-virtual {v1, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "is_virtual_currency"

    .line 276
    invoke-direct {p0, p5}, Lgbsdk/common/host/abrp;->x(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "virtual_currency"

    .line 277
    invoke-virtual {v1, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    invoke-virtual {v1, v0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_success"

    .line 279
    invoke-direct {p0, p8}, Lgbsdk/common/host/abrp;->x(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "currency_amount"

    .line 280
    invoke-virtual {v1, p1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 281
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string p2, "check_out"

    invoke-interface {p1, p2, v1, v2}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 283
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "AppLogDelegateImplMultiInstance"

    const-string p3, "onEventCheckOut JSON handle failed"

    invoke-static {p2, p3, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onEventCreateGameRole(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "495b0af091e7e8c81d76d0beb762ca3e"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "gameRoleId"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "gamerole_id"

    .line 163
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string v2, "create_gamerole"

    invoke-interface {p1, v2, v1, v0}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 166
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "AppLogDelegateImplMultiInstance"

    const-string v1, "onEventCreateGameRole JSON handle failed"

    invoke-static {v0, v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onEventLogin(Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "feae6d5ba8186f3764381b36396dd822"

    invoke-static {v0, p0, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 141
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_success"

    .line 142
    invoke-direct {p0, p2}, Lgbsdk/common/host/abrp;->x(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string p2, "log_in"

    invoke-interface {p1, p2, v1, v3}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "AppLogDelegateImplMultiInstance"

    const-string v0, "onEventLogin JSON handle failed"

    invoke-static {p2, v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onEventPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const/4 v3, 0x4

    aput-object p5, v0, v3

    const/4 v3, 0x5

    aput-object p6, v0, v3

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, p7}, Ljava/lang/Byte;-><init>(B)V

    const/4 v4, 0x6

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x7

    aput-object v3, v0, v4

    sget-object v3, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "098bcf67532c52d0cf7369b6a89930e2"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentChannel"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "content_type"

    .line 252
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content_name"

    .line 253
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content_id"

    .line 254
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content_num"

    .line 255
    invoke-virtual {v1, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "payment_channel"

    .line 256
    invoke-virtual {v1, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_success"

    .line 258
    invoke-direct {p0, p7}, Lgbsdk/common/host/abrp;->x(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "currency_amount"

    .line 259
    invoke-virtual {v1, p1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 260
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string p2, "purchase"

    invoke-interface {p1, p2, v1, v2}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 262
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "AppLogDelegateImplMultiInstance"

    const-string p3, "onEventPurchase JSON handle failed"

    invoke-static {p2, p3, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onEventQuest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, p5}, Ljava/lang/Byte;-><init>(B)V

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const/4 v3, 0x5

    aput-object p6, v0, v3

    sget-object v3, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "cb16d668fbd5fe8f142a5a5a6e1fc97c"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "questId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "questType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "questName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "quest_id"

    .line 213
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "quest_type"

    .line 214
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "quest_name"

    .line 215
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "quest_no"

    .line 216
    invoke-virtual {v1, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "is_success"

    .line 217
    invoke-direct {p0, p5}, Lgbsdk/common/host/abrp;->x(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string p2, "quest"

    invoke-interface {p1, p2, v1, v2}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 221
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "AppLogDelegateImplMultiInstance"

    const-string p3, "onEventQuest JSON handle failed"

    invoke-static {p2, p3, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onEventRegister(Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "285521c0dfdb46a84a1bcc56473ef3e1"

    invoke-static {v0, p0, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 130
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_success"

    .line 131
    invoke-direct {p0, p2}, Lgbsdk/common/host/abrp;->x(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string p2, "register"

    invoke-interface {p1, p2, v1, v3}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "AppLogDelegateImplMultiInstance"

    const-string v0, "onEventRegister JSON handle failed"

    invoke-static {p2, v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onEventUpdateLevel(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "4fb0ebfe9e30c25c49b06eb15eb038b0"

    invoke-static {v1, p0, v2, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 227
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "level"

    .line 228
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string v2, "update_level"

    invoke-interface {p1, v2, v1, v0}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 231
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "AppLogDelegateImplMultiInstance"

    const-string v1, "onEventUpdateLevel JSON handle failed"

    invoke-static {v0, v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onEventV3(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a164b4bf3d8cf27b8999db4cb089f815"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;)V

    return-void
.end method

.method public onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a5ff7641e43bdf151a7d67e703bb8887"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "5faf4277130b85ad1fc63f5a6868c00e"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public onEventViewContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    sget-object v3, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "b23b6a6cc6a6ab251a256a6b7cbaec41"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "content_type"

    .line 173
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content_name"

    .line 174
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content_id"

    .line 175
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string p2, "view_content"

    invoke-interface {p1, p2, v0, v2}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 178
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "AppLogDelegateImplMultiInstance"

    const-string p3, "onEventViewContent JSON handle failed"

    invoke-static {p2, p3, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public putCommonParams(Landroid/content/Context;Ljava/util/Map;ZLcom/bytedance/applog/Level;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/bytedance/applog/Level;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p3}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aput-object p4, v0, v2

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3498790554e045b7b3eaded14543d862"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/applog/IAppLogInstance;->putCommonParams(Landroid/content/Context;Ljava/util/Map;ZLcom/bytedance/applog/Level;)V

    return-void
.end method

.method public setActiveCustomParams(Lcom/bytedance/applog/IActiveCustomParamsCallback;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1f2019bde73fa121044dfcd7a32730ed"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/applog/IAppLogInstance;->setActiveCustomParams(Lcom/bytedance/applog/IActiveCustomParamsCallback;)V

    return-void
.end method

.method public setEncryptAndCompress(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6e871d5a7152e125f74e4f46fde2d03d"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/applog/IAppLogInstance;->setEncryptAndCompress(Z)V

    return-void
.end method

.method public setEventHandler(Lcom/bytedance/applog/event/IEventHandler;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6fc5aa141b22c64b5fcf68f935a3c4e9"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/applog/IAppLogInstance;->setEventHandler(Lcom/bytedance/applog/event/IEventHandler;)V

    return-void
.end method

.method public setExternalAbVersion(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "990d519883f55fef62769d8a92e8b8df"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/applog/IAppLogInstance;->setExternalAbVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setHeaderInfo(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "51db3b08e593d65480d4fb9cded54f81"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "custom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 100
    :cond_1
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/bytedance/applog/IAppLogInstance;->setHeaderInfo(Ljava/util/HashMap;)V

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "96254169de3f8869fdbfb6a9105d9593"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ua"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/applog/IAppLogInstance;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method public setUserID(J)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b1ba9e4ca75c81873779c955db2b375d"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/applog/IAppLogInstance;->setUserID(J)V

    return-void
.end method

.method public setUserUniqueID(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "81c9f51a7dd71e47a767d62785393ce6"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/applog/IAppLogInstance;->setUserUniqueID(Ljava/lang/String;)V

    return-void
.end method

.method public startPlay(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
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

    sget-object v3, Lgbsdk/common/host/abrp;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "8f6dd3a5dfb1117dc975b59c4b63cf06"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ectypeName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 317
    :try_start_0
    invoke-direct {p0, p2, v0}, Lgbsdk/common/host/abrp;->a(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    const-string p2, "ectype_name"

    .line 318
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    invoke-direct {p0}, Lgbsdk/common/host/abrp;->ej()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string p2, "gt_start_play"

    invoke-interface {p1, p2, v0, v2}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 321
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "AppLogDelegateImplMultiInstance"

    const-string v0, "startPlay JSON handle failed"

    invoke-static {p2, v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
