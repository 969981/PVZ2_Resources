.class public final Lgbsdk/common/host/abun$ad;
.super Lkotlin/jvm/internal/Lambda;
.source "SdkInitHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abun;->init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "",
        "msg",
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
.field final synthetic EU:J

.field final synthetic aAd:Landroid/app/Activity;

.field final synthetic aAf:Z

.field final synthetic aAg:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;


# direct methods
.method constructor <init>(ZJLcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;Landroid/app/Activity;)V
    .locals 0

    iput-boolean p1, p0, Lgbsdk/common/host/abun$ad;->aAf:Z

    iput-wide p2, p0, Lgbsdk/common/host/abun$ad;->EU:J

    iput-object p4, p0, Lgbsdk/common/host/abun$ad;->aAg:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    iput-object p5, p0, Lgbsdk/common/host/abun$ad;->aAd:Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(ZLjava/lang/String;)V
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    sget-object v4, Lgbsdk/common/host/abun$ad;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v5, "6522d862dbe311daf43fbc0eb9d7163e"

    invoke-static {v1, p0, v4, v3, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-array v1, v0, [Lkotlin/Pair;

    .line 126
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "status"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v1, v3

    .line 127
    iget-boolean v4, p0, Lgbsdk/common/host/abun$ad;->aAf:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v6, "recursion"

    invoke-static {v6, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v1, v2

    .line 125
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lgbsdk/common/host/abun$ad;->EU:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "osdk_monitor_init_cost"

    const-string v8, "step_pre_init"

    .line 123
    invoke-static {v7, v1, v4, v8}, Lcom/bytedance/ttgame/tob/common/host/base/api/monitor/GBSDKMonitor;->monitorInitEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/String;)V

    const-string v1, "SdkInitHelper"

    if-nez p1, :cond_1

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[osdk_init]Init was interrupted due to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lgbsdk/common/host/abun$ad;->aAg:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    const/4 v0, -0x2

    invoke-interface {p1, v0, p2}, Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;->onFailed(ILjava/lang/String;)V

    return-void

    .line 141
    :cond_1
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->needRequestDataLinkSwitch()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->isNeedInitOnPrivacyAgreed()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 142
    :cond_2
    sget-object p2, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    invoke-virtual {p2}, Lgbsdk/common/host/absw;->onPrivacyAgreed()V

    .line 146
    :cond_3
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->isNeedInitOnPrivacyAgreed()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "[osdk_init]privacy protocol is first agreed"

    .line 147
    invoke-static {v1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->setPrivacyAgreed(Z)V

    .line 150
    const-class p2, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    invoke-static {p2}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object p2

    check-cast p2, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    if-eqz p2, :cond_5

    iget-object v1, p0, Lgbsdk/common/host/abun$ad;->aAd:Landroid/app/Activity;

    .line 151
    invoke-interface {p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;->getNpthDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/NpthDelegate;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object v8, v1

    check-cast v8, Landroid/content/Context;

    invoke-interface {v4, v8}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/NpthDelegate;->initNpth(Landroid/content/Context;)V

    .line 152
    :cond_4
    invoke-interface {p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;->getSalvageLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/SalvageLogDelegate;

    move-result-object p2

    if-eqz p2, :cond_5

    check-cast v1, Landroid/content/Context;

    invoke-interface {p2, v1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/SalvageLogDelegate;->initSalvageLog(Landroid/content/Context;)V

    :cond_5
    new-array p2, v0, [Lkotlin/Pair;

    .line 157
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, p2, v3

    .line 158
    iget-boolean p1, p0, Lgbsdk/common/host/abun$ad;->aAf:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, p2, v2

    .line 156
    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lgbsdk/common/host/abun$ad;->EU:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "step_privacy_agreed"

    .line 154
    invoke-static {v7, p1, p2, v0}, Lcom/bytedance/ttgame/tob/common/host/base/api/monitor/GBSDKMonitor;->monitorInitEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/String;)V

    .line 165
    :cond_6
    const-class p1, Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService;

    invoke-static {p1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService;

    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService;->getDid()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 167
    sget-object p1, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    sget-object p2, Lgbsdk/common/host/abui$ac;->aAD:Lgbsdk/common/host/abui$ac;

    invoke-virtual {p1, p2}, Lgbsdk/common/host/abui;->b(Lgbsdk/common/host/abui$ac;)V

    .line 168
    sget-object p1, Lgbsdk/common/host/abun;->azY:Lgbsdk/common/host/abun;

    iget-object p2, p0, Lgbsdk/common/host/abun$ad;->aAd:Landroid/app/Activity;

    iget-object v0, p0, Lgbsdk/common/host/abun$ad;->aAg:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    iget-wide v1, p0, Lgbsdk/common/host/abun$ad;->EU:J

    invoke-virtual {p1, p2, v0, v1, v2}, Lgbsdk/common/host/abun;->b(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;J)V

    goto :goto_0

    .line 170
    :cond_7
    sget-object p1, Lgbsdk/common/host/abun;->azY:Lgbsdk/common/host/abun;

    iget-object p2, p0, Lgbsdk/common/host/abun$ad;->aAd:Landroid/app/Activity;

    iget-object v0, p0, Lgbsdk/common/host/abun$ad;->aAg:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    iget-wide v1, p0, Lgbsdk/common/host/abun$ad;->EU:J

    invoke-virtual {p1, p2, v0, v1, v2}, Lgbsdk/common/host/abun;->a(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;J)V

    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abun$ad;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "bdb1929bf762bed292371b9bb778bbae"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Object;

    return-object p1

    .line 121
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lgbsdk/common/host/abun$ad;->c(ZLjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
