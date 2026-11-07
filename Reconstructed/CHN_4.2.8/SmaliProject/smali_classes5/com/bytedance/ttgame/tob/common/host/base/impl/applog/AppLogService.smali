.class public final Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;
.super Ljava/lang/Object;
.source "AppLogService.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0011\n\u0002\u0008)\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0016JH\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112&\u0010\u0012\u001a\"\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013j\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0014\u0018\u0001`\u0015H\u0016JH\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u00112&\u0010\u0012\u001a\"\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013j\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0014\u0018\u0001`\u0015H\u0016J\u0008\u0010\u001a\u001a\u00020\rH\u0016J\u0008\u0010\u001b\u001a\u00020\u0008H\u0016J\u0008\u0010\u001c\u001a\u00020\u0008H\u0016J\u0008\u0010\u001d\u001a\u00020\u0008H\u0016JH\u0010\u001e\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112&\u0010\u0012\u001a\"\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013j\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0014\u0018\u0001`\u0015H\u0016J\u0008\u0010\u001f\u001a\u00020\u0008H\u0016J\u0008\u0010 \u001a\u00020\u000bH\u0016J\u0008\u0010!\u001a\u00020\u0008H\u0016J\u0008\u0010\"\u001a\u00020\u0008H\u0016J\u0013\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00080$H\u0016\u00a2\u0006\u0002\u0010%J\u0008\u0010&\u001a\u00020\u0008H\u0016J\u0008\u0010\'\u001a\u00020\u0008H\u0016J\u0008\u0010(\u001a\u00020\u0008H\u0016J\u0008\u0010)\u001a\u00020\u0008H\u0016JP\u0010*\u001a\u00020\r2\u0006\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010-\u001a\u00020\u00112&\u0010\u0012\u001a\"\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013j\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0014\u0018\u0001`\u0015H\u0016J\u0018\u0010.\u001a\u00020\r2\u0006\u0010/\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u000bH\u0016J\u0018\u00101\u001a\u00020\r2\u0006\u00102\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u000bH\u0016J0\u00103\u001a\u00020\r2\u0006\u00104\u001a\u00020\u00082\u0006\u00105\u001a\u00020\u00082\u0006\u00106\u001a\u00020\u00082\u0006\u00107\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u000bH\u0016J0\u00108\u001a\u00020\r2\u0006\u00104\u001a\u00020\u00082\u0006\u00105\u001a\u00020\u00082\u0006\u00106\u001a\u00020\u00082\u0006\u00107\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u000bH\u0016JP\u00109\u001a\u00020\r2\u0006\u00104\u001a\u00020\u00082\u0006\u00105\u001a\u00020\u00082\u0006\u00106\u001a\u00020\u00082\u0006\u00107\u001a\u00020\u00112\u0006\u0010:\u001a\u00020\u000b2\u0006\u0010;\u001a\u00020\u00082\u0006\u0010<\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020\u0011H\u0016J\u0010\u0010>\u001a\u00020\r2\u0006\u0010?\u001a\u00020\u0008H\u0016J\u0018\u0010@\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u000bH\u0016JH\u0010A\u001a\u00020\r2\u0006\u00104\u001a\u00020\u00082\u0006\u00105\u001a\u00020\u00082\u0006\u00106\u001a\u00020\u00082\u0006\u00107\u001a\u00020\u00112\u0006\u00102\u001a\u00020\u00082\u0006\u0010<\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020\u0011H\u0016J8\u0010B\u001a\u00020\r2\u0006\u0010C\u001a\u00020\u00082\u0006\u0010D\u001a\u00020\u00082\u0006\u0010E\u001a\u00020\u00082\u0006\u0010F\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\u0008H\u0016J\u0018\u0010H\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u000bH\u0016J\u0010\u0010I\u001a\u00020\r2\u0006\u0010J\u001a\u00020\u0011H\u0016J\u0018\u0010K\u001a\u00020\r2\u0006\u0010L\u001a\u00020\u00082\u0006\u0010M\u001a\u00020NH\u0016J \u0010K\u001a\u00020\r2\u0006\u0010O\u001a\u00020\u00082\u0006\u0010P\u001a\u00020N2\u0006\u0010Q\u001a\u00020\u0011H\u0016J \u0010R\u001a\u00020\r2\u0006\u00104\u001a\u00020\u00082\u0006\u00105\u001a\u00020\u00082\u0006\u00106\u001a\u00020\u0008H\u0016J$\u0010S\u001a\u00020\r2\u0012\u0010M\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080T2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010U\u001a\u00020\r2\u0006\u0010V\u001a\u00020\u000bH\u0016J\u0010\u0010W\u001a\u00020\r2\u0006\u0010X\u001a\u00020\u0008H\u0016J,\u0010Y\u001a\u00020\r2\"\u0010Z\u001a\u001e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00140\u0013j\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0014`\u0015H\u0016J\u0010\u0010[\u001a\u00020\r2\u0006\u0010\\\u001a\u00020\u0008H\u0016J\u0010\u0010]\u001a\u00020\r2\u0006\u0010^\u001a\u00020_H\u0016J\u0010\u0010`\u001a\u00020\r2\u0006\u0010^\u001a\u00020\u0008H\u0016J8\u0010a\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00082&\u0010\u0012\u001a\"\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013j\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0014\u0018\u0001`\u0015H\u0016R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006b"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService;",
        "()V",
        "appLogDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;",
        "getAppLogDelegate",
        "()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;",
        "addCommonParams",
        "",
        "url",
        "isApi",
        "",
        "costCoins",
        "",
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
        "flush",
        "getAid",
        "getAppId",
        "getClientUdid",
        "getCoins",
        "getDid",
        "getEncryptAndCompress",
        "getIid",
        "getOpenUdid",
        "getSendUris",
        "",
        "()[Ljava/lang/String;",
        "getSsid",
        "getUdid",
        "getUserID",
        "getUserUniqueID",
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
        "level",
        "onEventV3",
        "name",
        "params",
        "Lorg/json/JSONObject;",
        "event",
        "jsonObject",
        "eventType",
        "onEventViewContent",
        "putCommonParams",
        "",
        "setEncryptAndCompress",
        "encryptAndCompress",
        "setExternalAbVersion",
        "version",
        "setHeaderInfo",
        "map",
        "setUserAgent",
        "ua",
        "setUserID",
        "id",
        "",
        "setUserUniqueID",
        "startPlay",
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
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private appLogDelegate:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "533762fcb53b004cb837c01200a2835f"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    return-object v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->appLogDelegate:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->appLogDelegate:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->appLogDelegate:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    return-object v0
.end method


# virtual methods
.method public addCommonParams(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1cb919253dd9cc18982dd1cf7dc9e75d"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getInstance().appContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/bytedance/applog/Level;->L0:Lcom/bytedance/applog/Level;

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->addNetCommonParams(Landroid/content/Context;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, ""

    :cond_2
    return-object p1
.end method

.method public costCoins(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 4
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

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aput-object p4, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c21595c74132e86cbd144ab48ed2a933"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "coinType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->costCoins(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public endPlay(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 4
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

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aput-object p4, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f7a21a260b03f68badaec5ac10a25d5c"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ectypeName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->endPlay(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public flush()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c26596d480da7e8ba9863f65e718e93c"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->flush()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    return-void
.end method

.method public getAid()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c85cf245f8b527300c19ba07582bf8ef"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e1b333bd4e2d46ec9de58d289c993105"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public getClientUdid()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e7bf2624ffc3f438a9a451f6b8a29eea"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getClientUdid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public getCoins(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 4
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

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aput-object p4, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d959a2f4836bf9120ff3e5dff838a673"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "coinType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getCoins(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public getDid()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "92e2e16b715f9a54eefd28aace34b4bb"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getDid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public getEncryptAndCompress()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "53704b7f2c1cc88f920329ba91488f04"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getEncryptAndCompress()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getIid()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e744c62c1b20059ba200197d9a2029c5"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getIid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public getOpenUdid()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "df95ffacb8eb4fab74b962bd6e865382"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getOpenUdid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public getSendUris()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "5a3ce04ea5a615b690080c8b2eab8ebc"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/applog/UriConfig;->getSendUris()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    new-array v0, v0, [Ljava/lang/String;

    .line 181
    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    :cond_2
    return-object v1
.end method

.method public getSsid()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6ec13e04d8a6057523731feb15ab1b21"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getSsid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "951e593c51b17bae7d560da62dea6d87"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getUdid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "72a9765e8ee614104b87c29749b7edce"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getUserID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public getUserUniqueID()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "38ce62c0103171c7fb1518cf0fec022e"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getUserUniqueID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public levelUp(IILjava/lang/String;ILjava/util/HashMap;)V
    .locals 7
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

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    aput-object p5, v0, v1

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8063de404c60aefe84f789f1cd4da92c"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "method"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->levelUp(IILjava/lang/String;ILjava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public onEventAccessAccount(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "bc34094b26852a5b886f2f23009e64b7"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "accountType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->onEventAccessAccount(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onEventAccessPaymentChannel(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "45004aa4132905a573060ceca87b42ad"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "paymentChannel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->onEventAccessPaymentChannel(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onEventAddCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p5}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "de315433a2ec6943e3a14c34ea192b4f"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

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

    .line 126
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->onEventAddCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_1
    return-void
.end method

.method public onEventAddToFavorite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p5}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "9d002db991fa18f4a5b49b82927aaccb"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

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

    .line 122
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->onEventAddToFavorite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_1
    return-void
.end method

.method public onEventCheckOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZI)V
    .locals 14

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v5, 0x1

    aput-object v2, v0, v5

    const/4 v5, 0x2

    aput-object v3, v0, v5

    new-instance v5, Ljava/lang/Integer;

    move/from16 v8, p4

    invoke-direct {v5, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v9, 0x3

    aput-object v5, v0, v9

    new-instance v5, Ljava/lang/Byte;

    move/from16 v9, p5

    invoke-direct {v5, v9}, Ljava/lang/Byte;-><init>(B)V

    const/4 v10, 0x4

    aput-object v5, v0, v10

    const/4 v5, 0x5

    aput-object v6, v0, v5

    const/4 v5, 0x6

    aput-object v7, v0, v5

    new-instance v5, Ljava/lang/Byte;

    move/from16 v10, p8

    invoke-direct {v5, v10}, Ljava/lang/Byte;-><init>(B)V

    const/4 v11, 0x7

    aput-object v5, v0, v11

    new-instance v5, Ljava/lang/Integer;

    move/from16 v11, p9

    invoke-direct {v5, v11}, Ljava/lang/Integer;-><init>(I)V

    const/16 v12, 0x8

    aput-object v5, v0, v12

    sget-object v5, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v12, "3050cd814746bc3349167058930c35f2"

    move-object v13, p0

    invoke-static {v0, p0, v5, v4, v12}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentName"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentId"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualCurrency"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->onEventCheckOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZI)V

    :cond_1
    return-void
.end method

.method public onEventCreateGameRole(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "079674a46cf980a5a13ed8fb56a23291"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "gameRoleId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->onEventCreateGameRole(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onEventLogin(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c7ac041350249f37075adecafad471cc"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->onEventLogin(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onEventPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 13

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v7, 0x1

    aput-object v2, v0, v7

    const/4 v7, 0x2

    aput-object v3, v0, v7

    new-instance v7, Ljava/lang/Integer;

    move/from16 v8, p4

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v9, 0x3

    aput-object v7, v0, v9

    const/4 v7, 0x4

    aput-object v5, v0, v7

    const/4 v7, 0x5

    aput-object v6, v0, v7

    new-instance v7, Ljava/lang/Byte;

    move/from16 v9, p7

    invoke-direct {v7, v9}, Ljava/lang/Byte;-><init>(B)V

    const/4 v10, 0x6

    aput-object v7, v0, v10

    new-instance v7, Ljava/lang/Integer;

    move/from16 v10, p8

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v11, 0x7

    aput-object v7, v0, v11

    sget-object v7, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v11, "f25717c30e588f33c79af8c4b4a72dcb"

    move-object v12, p0

    invoke-static {v0, p0, v7, v4, v11}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentId"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentChannel"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->onEventPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    :cond_1
    return-void
.end method

.method public onEventQuest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 8

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p5}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object p6, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "813c17600adda01d1b864cd8b0a8e698"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

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

    .line 130
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->onEventQuest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onEventRegister(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "82ce706fa565f41c4871db235375952f"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->onEventRegister(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onEventUpdateLevel(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "169457dacdb2ae6e5d7be7ad9f2adf20"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->onEventUpdateLevel(I)V

    :cond_1
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

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "af91de1c4c6ac073b1a90f295a118e47"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 72
    const-class p2, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-static {p2}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object p2

    check-cast p2, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-interface {p2}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->isDebugMode()Z

    move-result p2

    const-string v0, "onEventV3 exception: "

    if-nez p2, :cond_2

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppLogService"

    invoke-static {v0, p2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
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

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "73f74c20889dc30e48b0b390e8050b7b"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 86
    const-class p2, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-static {p2}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object p2

    check-cast p2, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-interface {p2}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->isDebugMode()Z

    move-result p2

    const-string p3, "onEventV3 exception: "

    if-nez p2, :cond_2

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AppLogService"

    invoke-static {p3, p2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public onEventViewContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "39d6eb1dd20bcf83d58542865b279163"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

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

    .line 118
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->onEventViewContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public putCommonParams(Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "7d653ea75cc669c80af20415a09b3770"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getInstance().appContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/bytedance/applog/Level;->L0:Lcom/bytedance/applog/Level;

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->putCommonParams(Landroid/content/Context;Ljava/util/Map;ZLcom/bytedance/applog/Level;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
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

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "17821bb287880cc0343dcd5384aa5184"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->setEncryptAndCompress(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    return-void
.end method

.method public setExternalAbVersion(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "bdad10ad9591f3e187aeff3581bc8469"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->setExternalAbVersion(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    return-void
.end method

.method public setHeaderInfo(Ljava/util/HashMap;)V
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

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ae346495520c263c382ee7dfb6b1f800"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map;

    invoke-interface {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->setHeaderInfo(Ljava/util/Map;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "897a5ecd55650a07926abbedbc1ee7ed"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ua"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->setUserAgent(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
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

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4a0809b38c096f35f1ebcf586ff1ed05"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->setUserID(J)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    return-void
.end method

.method public setUserUniqueID(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "cfd300ddbc9bbc56f004025118a2e457"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->setUserUniqueID(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    return-void
.end method

.method public startPlay(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
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

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3ee9cd52c48fd32d7718c93488fbfc8e"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ectypeName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/AppLogService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->startPlay(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    return-void
.end method
