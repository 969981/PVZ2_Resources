.class public final Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;
.super Ljava/lang/Object;
.source "TobHostService.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u000202H\u0016J\u0008\u00103\u001a\u00020\nH\u0016J\u0008\u0010\u0010\u001a\u000204H\u0016J\u0014\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u001505H\u0016J\u0008\u0010\u001b\u001a\u000206H\u0016J\u0008\u0010 \u001a\u000207H\u0016J\u0008\u0010%\u001a\u000208H\u0016J\u0008\u0010*\u001a\u000209H\u0016J\u0008\u0010:\u001a\u00020;H\u0016J\u0008\u0010<\u001a\u00020=H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0011R2\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u0014j\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0015`\u00168BX\u0082\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0008\u001a\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0008\u001a\u0004\u0008 \u0010!R\u001b\u0010#\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u0008\u001a\u0004\u0008%\u0010&R\u001b\u0010(\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010\u0008\u001a\u0004\u0008*\u0010+R\u001b\u0010-\u001a\u00020.8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010\u0008\u001a\u0004\u0008/\u00100\u00a8\u0006>"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;",
        "()V",
        "aLoggerDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/alog/ALoggerDelegateImpl;",
        "getALoggerDelegate",
        "()Lcom/bytedance/ttgame/tob/common/host/delegate/impl/alog/ALoggerDelegateImpl;",
        "aLoggerDelegate$delegate",
        "Lkotlin/Lazy;",
        "applogDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;",
        "getApplogDelegate",
        "()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;",
        "applogDelegate$delegate",
        "frankieDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/robust/FrankieDelegateImpl;",
        "getFrankieDelegate",
        "()Lcom/bytedance/ttgame/tob/common/host/delegate/impl/robust/FrankieDelegateImpl;",
        "frankieDelegate$delegate",
        "hostConstantMap",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "getHostConstantMap",
        "()Ljava/util/HashMap;",
        "luffyDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/luffy/LuffyDelegateImpl;",
        "getLuffyDelegate",
        "()Lcom/bytedance/ttgame/tob/common/host/delegate/impl/luffy/LuffyDelegateImpl;",
        "luffyDelegate$delegate",
        "npthDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/npth/NpthDelegateImpl;",
        "getNpthDelegate",
        "()Lcom/bytedance/ttgame/tob/common/host/delegate/impl/npth/NpthDelegateImpl;",
        "npthDelegate$delegate",
        "performanceDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/performance/PerformanceDelegateImpl;",
        "getPerformanceDelegate",
        "()Lcom/bytedance/ttgame/tob/common/host/delegate/impl/performance/PerformanceDelegateImpl;",
        "performanceDelegate$delegate",
        "salvageLogDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/salvage/SalvageLogDelegateImpl;",
        "getSalvageLogDelegate",
        "()Lcom/bytedance/ttgame/tob/common/host/delegate/impl/salvage/SalvageLogDelegateImpl;",
        "salvageLogDelegate$delegate",
        "ttnetDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/ttnet/TTNetDelegateImpl;",
        "getTtnetDelegate",
        "()Lcom/bytedance/ttgame/tob/common/host/delegate/impl/ttnet/TTNetDelegateImpl;",
        "ttnetDelegate$delegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/ALoggerDelegate;",
        "getAppLogDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/FrankieDelegate;",
        "",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/NpthDelegate;",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/PerformanceDelegate;",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/SalvageLogDelegate;",
        "getTTNetDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/TTNetDelegate;",
        "isHostToB",
        "",
        "ch_delegate_impl_osdk_tobRelease"
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
.field private final aLoggerDelegate$delegate:Lkotlin/Lazy;

.field private final applogDelegate$delegate:Lkotlin/Lazy;

.field private final frankieDelegate$delegate:Lkotlin/Lazy;

.field private final hostConstantMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final luffyDelegate$delegate:Lkotlin/Lazy;

.field private final npthDelegate$delegate:Lkotlin/Lazy;

.field private final performanceDelegate$delegate:Lkotlin/Lazy;

.field private final salvageLogDelegate$delegate:Lkotlin/Lazy;

.field private final ttnetDelegate$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$af;->DX:Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$af;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->npthDelegate$delegate:Lkotlin/Lazy;

    .line 31
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ae;->DW:Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ae;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->luffyDelegate$delegate:Lkotlin/Lazy;

    .line 32
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ah;->DZ:Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ah;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->salvageLogDelegate$delegate:Lkotlin/Lazy;

    .line 33
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ab;->DT:Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ab;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->aLoggerDelegate$delegate:Lkotlin/Lazy;

    .line 34
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ac;->DU:Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ac;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->applogDelegate$delegate:Lkotlin/Lazy;

    .line 41
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ad;->DV:Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ad;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->frankieDelegate$delegate:Lkotlin/Lazy;

    .line 42
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ag;->DY:Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ag;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->performanceDelegate$delegate:Lkotlin/Lazy;

    .line 43
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ai;->Ea:Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService$ai;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->ttnetDelegate$delegate:Lkotlin/Lazy;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->hostConstantMap:Ljava/util/HashMap;

    return-void
.end method

.method private final getALoggerDelegate()Lgbsdk/common/host/abrc;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "eb6372056f5a9738b353f9312fd9b58a"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abrc;

    return-object v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->aLoggerDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abrc;

    return-object v0
.end method

.method private final getApplogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a6bc5c51b11e2495fcd2c878bca34716"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    return-object v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->applogDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    return-object v0
.end method

.method private final getFrankieDelegate()Lgbsdk/common/host/abts;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d4f527a77b72650ea7413d80a91e71a8"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abts;

    return-object v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->frankieDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abts;

    return-object v0
.end method

.method private final getHostConstantMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "fdc322b9b8ac6a5a2691d5acbe4c7815"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    return-object v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->hostConstantMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->hostConstantMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    const-string v1, "CONFIG_JSON_PATH_KEY"

    const-string v2, "config.json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->hostConstantMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private final getLuffyDelegate()Lgbsdk/common/host/abuc;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f5ef0db6511cfb4b9768233ed2307a4b"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abuc;

    return-object v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->luffyDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abuc;

    return-object v0
.end method

.method private final getNpthDelegate()Lgbsdk/common/host/abtw;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "892039d0999f99d007bd441a2b75cf8e"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abtw;

    return-object v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->npthDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abtw;

    return-object v0
.end method

.method private final getPerformanceDelegate()Lgbsdk/common/host/abtt;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "111cb383c8e80929bd7e0f5d4e887406"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abtt;

    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->performanceDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abtt;

    return-object v0
.end method

.method private final getSalvageLogDelegate()Lgbsdk/common/host/abup;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d56680a2e0cf5a27fe31bd6d98b44840"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abup;

    return-object v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->salvageLogDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abup;

    return-object v0
.end method

.method private final getTtnetDelegate()Lgbsdk/common/host/abus;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3a0019f6b68238324063243bb8c24068"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abus;

    return-object v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->ttnetDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abus;

    return-object v0
.end method


# virtual methods
.method public getALoggerDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/ALoggerDelegate;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "eb6372056f5a9738b353f9312fd9b58a"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/ALoggerDelegate;

    return-object v0

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->getALoggerDelegate()Lgbsdk/common/host/abrc;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/ALoggerDelegate;

    return-object v0
.end method

.method public getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "51d444764a214f5c56de540b121bd154"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    return-object v0

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->getApplogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getFrankieDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/FrankieDelegate;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d4f527a77b72650ea7413d80a91e71a8"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/FrankieDelegate;

    return-object v0

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->getFrankieDelegate()Lgbsdk/common/host/abts;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/FrankieDelegate;

    return-object v0
.end method

.method public getHostConstantMap()Ljava/util/Map;
    .locals 4
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

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "fdc322b9b8ac6a5a2691d5acbe4c7815"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->getHostConstantMap()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getLuffyDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f5ef0db6511cfb4b9768233ed2307a4b"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    return-object v0

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->getLuffyDelegate()Lgbsdk/common/host/abuc;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    return-object v0
.end method

.method public getNpthDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/NpthDelegate;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "892039d0999f99d007bd441a2b75cf8e"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/NpthDelegate;

    return-object v0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->getNpthDelegate()Lgbsdk/common/host/abtw;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/NpthDelegate;

    return-object v0
.end method

.method public getPerformanceDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/PerformanceDelegate;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "111cb383c8e80929bd7e0f5d4e887406"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/PerformanceDelegate;

    return-object v0

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->getPerformanceDelegate()Lgbsdk/common/host/abtt;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/PerformanceDelegate;

    return-object v0
.end method

.method public getSalvageLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/SalvageLogDelegate;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d56680a2e0cf5a27fe31bd6d98b44840"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/SalvageLogDelegate;

    return-object v0

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->getSalvageLogDelegate()Lgbsdk/common/host/abup;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/SalvageLogDelegate;

    return-object v0
.end method

.method public getTTNetDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/TTNetDelegate;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "44219282bab6c244add0b8167f3413ce"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/TTNetDelegate;

    return-object v0

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/impl/TobHostService;->getTtnetDelegate()Lgbsdk/common/host/abus;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/TTNetDelegate;

    return-object v0
.end method

.method public isHostToB()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
