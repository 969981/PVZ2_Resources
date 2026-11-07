.class public final Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseChannel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;->prepare(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic EK:Landroid/content/Context;

.field final synthetic ET:Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;

.field final synthetic EU:J


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;->EU:J

    iput-object p3, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;->EK:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;->ET:Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final eW()V
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1b7d90856fb10d7a68413e5ab82d6427"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[osdk_init]onInitRequestCompleted, initSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInitSwitchData()Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseChannel"

    invoke-static {v2, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;->EU:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "osdk_monitor_prepare_cost"

    const/4 v4, 0x0

    const-string v5, "step_complete_switch_request"

    invoke-static {v3, v4, v1, v5}, Lcom/bytedance/ttgame/tob/common/host/base/api/monitor/GBSDKMonitor;->monitorInitEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInitSwitchData()Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    move-result-object v1

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->enableOsdkInit()Z

    move-result v1

    if-ne v1, v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_6

    .line 66
    invoke-static {}, Lgbsdk/common/host/abrl;->em()V

    .line 67
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->isPrivacyAgreed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;->EK:Landroid/content/Context;

    .line 69
    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;->getNpthDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/NpthDelegate;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6, v1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/NpthDelegate;->initNpth(Landroid/content/Context;)V

    .line 70
    :cond_2
    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;->getSalvageLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/SalvageLogDelegate;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/SalvageLogDelegate;->initSalvageLog(Landroid/content/Context;)V

    goto :goto_0

    .line 74
    :cond_3
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->setNeedInitOnPrivacyAgreed(Z)V

    .line 76
    :cond_4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;->EU:J

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "step_before_performance"

    invoke-static {v3, v4, v0, v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/monitor/GBSDKMonitor;->monitorInitEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/String;)V

    .line 78
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;->EK:Landroid/content/Context;

    .line 79
    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;->getPerformanceDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/PerformanceDelegate;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/PerformanceDelegate;->initPerformanceMonitor(Landroid/content/Context;)V

    .line 82
    :cond_5
    sget-object v0, Lgbsdk/common/host/abun;->azY:Lgbsdk/common/host/abun;

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad$1;

    iget-object v3, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;->ET:Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;

    invoke-direct {v1, v3}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abun;->a(Lkotlin/jvm/functions/Function1;)V

    .line 85
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    const-string v1, "game_launch"

    invoke-virtual {v0, v1, v4}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->sendLog(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 86
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;->EK:Landroid/content/Context;

    const-string v1, "application_create"

    invoke-static {v0, v1, v5}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->dispatchLifecycle(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[osdk_init]prepare async end after init switch on, cost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;->EU:J

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_6
    sget-object v0, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad$2;

    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;->ET:Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;

    iget-object v3, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;->EK:Landroid/content/Context;

    iget-wide v4, p0, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;->EU:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad$2;-><init>(Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;Landroid/content/Context;J)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abui;->e(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1b7d90856fb10d7a68413e5ab82d6427"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Object;

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel$ad;->eW()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
