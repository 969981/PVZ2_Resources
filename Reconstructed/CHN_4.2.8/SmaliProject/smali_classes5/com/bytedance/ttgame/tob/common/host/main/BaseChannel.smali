.class public final Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;
.super Ljava/lang/Object;
.source "BaseChannel.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;
.implements Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ab;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 ?2\u00020\u00012\u00020\u0002:\u0001?B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0014\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00110\u0010H\u0016J\u0008\u0010\u0012\u001a\u00020\rH\u0016J\u0008\u0010\u0013\u001a\u00020\rH\u0016J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\rH\u0016J\u0008\u0010\u0017\u001a\u00020\rH\u0016J\'\u0010\u0018\u001a\u0004\u0018\u0001H\u0019\"\u0008\u0008\u0000\u0010\u0019*\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002H\u00190\u001cH\u0016\u00a2\u0006\u0002\u0010\u001dJ\u0012\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J$\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0016J\u0008\u0010(\u001a\u00020\u001fH\u0016J\u0008\u0010)\u001a\u00020\u001fH\u0016J\u0008\u0010*\u001a\u00020\u001fH\u0016J\u0010\u0010+\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u001c\u0010,\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u00192\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002H\u00190\u001cH\u0002J\u0010\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020/H\u0016J\u0018\u00100\u001a\u00020\u00072\u0006\u0010.\u001a\u00020/2\u0006\u00101\u001a\u00020\u0011H\u0016J\u001c\u00102\u001a\u00020\u00072\u0008\u00103\u001a\u0004\u0018\u00010\r2\u0008\u00104\u001a\u0004\u0018\u000105H\u0016J\u0012\u00106\u001a\u00020\u00072\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0010\u00107\u001a\u00020\u00072\u0006\u00108\u001a\u00020\rH\u0016J$\u0010\n\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u0001092\u0008\u0010:\u001a\u0004\u0018\u00010;H\u0016J\u001c\u0010<\u001a\u0004\u0018\u00010\u00052\u0006\u0010=\u001a\u00020\r2\u0008\u0008\u0002\u0010>\u001a\u00020\u001fH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;",
        "Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext;",
        "()V",
        "realChannel",
        "Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;",
        "changeStateToPrepared",
        "",
        "context",
        "Landroid/content/Context;",
        "start",
        "",
        "getApkAttribution",
        "",
        "getApkAttributionEx",
        "getChannelVersion",
        "Landroid/util/Pair;",
        "",
        "getHumeChannel",
        "getHumeSDKVersion",
        "getNetUtils",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext$NetUtils;",
        "getOpenExtraInfo",
        "getPackageChannel",
        "getService",
        "T",
        "Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;",
        "clazz",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;",
        "handleOpenURL",
        "",
        "url",
        "init",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;",
        "initConfig",
        "Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;",
        "isInited",
        "isRunningCloud",
        "isStarted",
        "prepare",
        "recordWhenFail",
        "registerInitInterceptor",
        "interceptor",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor;",
        "registerInitInterceptorWithPriority",
        "priority",
        "sendLog",
        "event",
        "eventParams",
        "Lorg/json/JSONObject;",
        "setGameActivity",
        "setUserId",
        "userId",
        "Lcom/bytedance/ttgame/tob/common/host/api/callback/StartCallBack;",
        "startConfig",
        "Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;",
        "tryReLoadRealChannel",
        "methodName",
        "shouldInit",
        "Companion",
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
.field public static final Companion:Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ab;

.field private static final TAG:Ljava/lang/String; = "BaseChannel"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private volatile realChannel:Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ab;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ab;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->Companion:Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ab;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final recordWhenFail(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "4d16fba427d2eb3a3dd3c81626ebb4cd"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    .line 162
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "service"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v1, v2

    .line 163
    sget-object p1, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    invoke-virtual {p1}, Lgbsdk/common/host/abui;->fg()Lgbsdk/common/host/abui$ac;

    move-result-object p1

    iget-object p1, p1, Lgbsdk/common/host/abui$ac;->aAw:Ljava/lang/String;

    const-string v2, "state"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x2

    .line 164
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->appId:Ljava/lang/String;

    const-string v2, "app"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, p1

    .line 161
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "osdk_monitor_get_service_fail"

    .line 159
    invoke-static/range {v2 .. v7}, Lcom/bytedance/ttgame/tob/common/host/base/api/monitor/GBSDKMonitor;->monitorInitEvent$default(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final tryReLoadRealChannel(Ljava/lang/String;Z)Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "218602c3e76b11fbd1a1045f34692072"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 238
    sget-object p2, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    invoke-virtual {p2}, Lgbsdk/common/host/abui;->fm()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "BaseChannel"

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[osdk_init]Sdk has not init, please make sure init sdk successfully, now invoke "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", current state: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    sget-object p1, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    invoke-virtual {p1}, Lgbsdk/common/host/abui;->fg()Lgbsdk/common/host/abui$ac;

    move-result-object p1

    iget-object p1, p1, Lgbsdk/common/host/abui$ac;->aAw:Ljava/lang/String;

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-static {p2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 245
    :cond_1
    iget-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->realChannel:Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    if-nez p2, :cond_3

    .line 246
    monitor-enter p0

    .line 247
    :try_start_0
    iget-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->realChannel:Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    if-nez p2, :cond_2

    .line 248
    const-class p2, Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    invoke-static {p2}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object p2

    check-cast p2, Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->realChannel:Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    .line 249
    iget-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->realChannel:Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    if-nez p2, :cond_2

    const-string p2, "BaseChannel"

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[osdk_init]realChannel is still none, please check plugin state, now invoke "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 255
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->realChannel:Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    return-object p1
.end method

.method static synthetic tryReLoadRealChannel$default(Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;Ljava/lang/String;ZILjava/lang/Object;)Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x3

    aput-object v3, v0, v5

    const/4 v3, 0x4

    aput-object p4, v0, v3

    sget-object p4, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v5, "8439e846379e560a057cbdd98c737ecd"

    invoke-static {v0, v3, p4, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p0, p4, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    return-object p0

    :cond_0
    and-int/2addr p3, v4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 237
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->tryReLoadRealChannel(Ljava/lang/String;Z)Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final changeStateToPrepared(Landroid/content/Context;J)V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v5, "22fbdd9e9712d75f668066e924cc4bb3"

    invoke-static {v1, p0, v3, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[osdk_init]change state to prepared begin, cost: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, p2

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BaseChannel"

    invoke-static {v3, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "prepare_ready"

    .line 100
    invoke-static {p1, v1, v4}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->dispatchLifecycle(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 101
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInitSwitchData()Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->enableOsdkInit()Z

    move-result v1

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x0

    if-eqz v1, :cond_4

    .line 105
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;->getFrankieDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/FrankieDelegate;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/ProcessUtils;->isInMainProcess(Landroid/content/Context;)Z

    move-result v6

    invoke-interface {v1, p1, v6}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/FrankieDelegate;->init(Landroid/content/Context;Z)Z

    move-result v1

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    .line 106
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;->getFrankieDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/FrankieDelegate;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/FrankieDelegate;->loadLocalPatch()V

    :cond_3
    const-string v1, "onPrepareSuccess"

    .line 109
    invoke-static {p0, v1, v2, v0, v5}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->tryReLoadRealChannel$default(Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;Ljava/lang/String;ZILjava/lang/Object;)Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;->onPrepareSuccess(Landroid/content/Context;)V

    .line 111
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "osdk_monitor_prepare_cost"

    const-string v1, "step_prepare_completed"

    invoke-static {v0, v5, p1, v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/monitor/GBSDKMonitor;->monitorInitEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/String;)V

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[osdk_init]change state to prepared end, cost: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getApkAttribution()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6522f3385552db49aa3f0a210dd59e82"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    .line 184
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getApkAttribution()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApkAttribution return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseChannel"

    invoke-static {v2, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "result"

    .line 186
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getApkAttributionEx()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a57b6487fbe8f22218c8f2e3f0595a19"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    .line 200
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getApkAttributionEx()Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApkAttributionEx: return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseChannel"

    invoke-static {v2, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "result"

    .line 202
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getChannelVersion()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c337d3aff128032013f4862de3309d59"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    return-object v0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "getChannelVersion"

    .line 170
    invoke-static {p0, v3, v0, v1, v2}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->tryReLoadRealChannel$default(Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;Ljava/lang/String;ZILjava/lang/Object;)Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;->getChannelVersion()Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method public getHumeChannel()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c55705a4b66ec316d91af32b16391f73"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    .line 194
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getHumeChannel()Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHumeChannel return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseChannel"

    invoke-static {v2, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "result"

    .line 196
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getHumeSDKVersion()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3f90ee389c673737935bd7ccd7c62b85"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 190
    :cond_0
    invoke-static {}, Lgbsdk/common/host/aboo;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getVersion()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNetUtils()Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext$NetUtils;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "0c771383824aa72000b9ee7d9912d18d"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext$NetUtils;

    return-object v0

    :cond_0
    const/4 v1, 0x2

    const-string v2, "getNetUtils"

    const/4 v3, 0x0

    .line 174
    invoke-static {p0, v2, v0, v1, v3}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->tryReLoadRealChannel$default(Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;Ljava/lang/String;ZILjava/lang/Object;)Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;->getNetUtils()Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext$NetUtils;

    move-result-object v3

    :cond_1
    return-object v3
.end method

.method public getOpenExtraInfo()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "417150ba355b9b250a081fe5ed759685"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    .line 206
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getOpenExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOpenExtraInfo return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseChannel"

    invoke-static {v2, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "result"

    .line 208
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackageChannel()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c6101c2bcd9541d1a51e58c793caaa47"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    .line 178
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getPackageChannel()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackageChannel return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseChannel"

    invoke-static {v2, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "result"

    .line 180
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e5cf67cf7b9f9d8d61f1ce9b6d2f35eb"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    return-object p1

    :cond_0
    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/base/api/service/Public;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/base/api/service/Public;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 151
    :cond_1
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    if-nez v0, :cond_2

    .line 153
    invoke-direct {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->recordWhenFail(Ljava/lang/Class;)V

    :cond_2
    return-object v0
.end method

.method public handleOpenURL(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "047bd14e7720089564c9d6076381dd21"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 221
    :cond_0
    sget-object v0, Lgbsdk/common/host/abuo;->Fx:Lgbsdk/common/host/abuo;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abuo;->cf(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6ceee6337ecf0f5b5d44197a613c80af"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "5e4a55c0ab50b83d4e0691f59006dad9"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/ProcessUtils;->isInMainProcess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, -0x4

    const-string p3, "init is only allowed to use in main process"

    .line 121
    invoke-interface {p2, p1, p3}, Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;->onFailed(ILjava/lang/String;)V

    :cond_1
    return-void

    .line 125
    :cond_2
    sget-object v1, Lgbsdk/common/host/abug;->aBT:Lgbsdk/common/host/abug;

    invoke-virtual {v1, v0}, Lgbsdk/common/host/abug;->init(Landroid/content/Context;)V

    .line 126
    sget-object v0, Lgbsdk/common/host/abun;->azY:Lgbsdk/common/host/abun;

    invoke-virtual {v0, p1, p2, p3}, Lgbsdk/common/host/abun;->init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;)V

    return-void
.end method

.method public isInited()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "7bc77c10843540e102913c0d4701a781"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 142
    :cond_0
    sget-object v0, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    invoke-virtual {v0}, Lgbsdk/common/host/abui;->fm()Z

    move-result v0

    return v0
.end method

.method public isRunningCloud()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "468741e9be15c09a31ab83992414cd65"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    .line 215
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->isRunningCloud()Z

    move-result v0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRunningCloud return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseChannel"

    invoke-static {v2, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isStarted()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "162a3f5c4f268cf777a09efaf7e2b77d"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 146
    :cond_0
    sget-object v0, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    invoke-virtual {v0}, Lgbsdk/common/host/abui;->fm()Z

    move-result v0

    return v0
.end method

.method public prepare(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3f7855e75a0a888d16fbfd187f0b4f37"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/FrameworkInit;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/FrameworkInit;

    invoke-virtual {v2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/FrameworkInit;->init(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->init(Landroid/content/Context;)V

    .line 47
    sget-object v2, Lgbsdk/common/host/abug;->aBT:Lgbsdk/common/host/abug;

    invoke-virtual {v2}, Lgbsdk/common/host/abug;->fF()V

    .line 48
    const-class v2, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    invoke-static {v2}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    if-eqz v2, :cond_1

    .line 49
    invoke-interface {v2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;->getALoggerDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/ALoggerDelegate;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/ALoggerDelegate;->initALogger(Landroid/content/Context;)V

    :cond_1
    const-string v2, "BaseChannel"

    const-string v3, "[osdk_init]prepare"

    .line 51
    invoke-static {v2, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "osdk_monitor_prepare_cost"

    const/4 v5, 0x0

    const-string v6, "step_before_zeus"

    invoke-static {v4, v5, v3, v6}, Lcom/bytedance/ttgame/tob/common/host/base/api/monitor/GBSDKMonitor;->monitorInitEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/String;)V

    .line 54
    sget-object v3, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    new-instance v6, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ac;

    invoke-direct {v6, p0, p1, v0, v1}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ac;-><init>(Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;Landroid/content/Context;J)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, p1, v6}, Lgbsdk/common/host/absw;->c(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v6, "step_before_switch_request"

    invoke-static {v4, v5, v3, v6}, Lcom/bytedance/ttgame/tob/common/host/base/api/monitor/GBSDKMonitor;->monitorInitEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/String;)V

    .line 62
    sget-object v3, Lgbsdk/common/host/abul;->EX:Lgbsdk/common/host/abul$ab;

    invoke-virtual {v3}, Lgbsdk/common/host/abul$ab;->fb()Lgbsdk/common/host/abul;

    move-result-object v3

    new-instance v6, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;

    invoke-direct {v6, v0, v1, p1, p0}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;-><init>(JLandroid/content/Context;Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, p1, v6}, Lgbsdk/common/host/abul;->a(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v3, "step_prepare_sync"

    invoke-static {v4, v5, p1, v3}, Lcom/bytedance/ttgame/tob/common/host/base/api/monitor/GBSDKMonitor;->monitorInitEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/String;)V

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[osdk_init]prepare sync end, cost: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerInitInterceptor(Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "281e712cbd010157fc683afa546db6c4"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "registerInitInterceptor"

    .line 230
    invoke-static {p0, v3, v1, v0, v2}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->tryReLoadRealChannel$default(Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;Ljava/lang/String;ZILjava/lang/Object;)Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;->registerInitInterceptor(Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor;)V

    :cond_1
    return-void
.end method

.method public registerInitInterceptorWithPriority(Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor;I)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "2c5c0187bf01c43881441da2782bf9ed"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "interceptor"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v3, "registerInitInterceptorWithPriority"

    .line 234
    invoke-static {p0, v3, v2, v0, v1}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->tryReLoadRealChannel$default(Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;Ljava/lang/String;ZILjava/lang/Object;)Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;->registerInitInterceptorWithPriority(Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor;I)V

    :cond_1
    return-void
.end method

.method public sendLog(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "46bab2c119854b33fdc52e1dc35b0dff"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    .line 225
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->sendLog(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public setGameActivity(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b60f3715955702877bdd2208eff74e38"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->setGameActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1df2bf0c35c2f06eb06468c26336ac1a"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public start(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/StartCallBack;Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b5f13220484a43cf4c27af721be601d1"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    check-cast p2, Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    check-cast p3, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;)V

    return-void
.end method
