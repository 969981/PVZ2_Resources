.class public final Lgbsdk/common/host/abun$ae;
.super Lkotlin/jvm/internal/Lambda;
.source "SdkInitHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abun;->a(Landroid/app/Activity;JLcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
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
.field final synthetic EU:J

.field final synthetic aAh:Landroid/app/Application;

.field final synthetic aAi:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;


# direct methods
.method constructor <init>(JLandroid/app/Application;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
    .locals 0

    iput-wide p1, p0, Lgbsdk/common/host/abun$ae;->EU:J

    iput-object p3, p0, Lgbsdk/common/host/abun$ae;->aAh:Landroid/app/Application;

    iput-object p4, p0, Lgbsdk/common/host/abun$ae;->aAi:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final eW()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abun$ae;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "cb9f36bf13f1e0aaf029c5f50db4e95f"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lgbsdk/common/host/abun$ae;->EU:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "osdk_monitor_init_cost"

    const-string v3, "step_channel_init"

    invoke-static {v2, v0, v1, v3}, Lcom/bytedance/ttgame/tob/common/host/base/api/monitor/GBSDKMonitor;->monitorInitEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/String;)V

    const-string v0, "SdkInitHelper"

    const-string v1, "[osdk_init]channel init success"

    .line 268
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lgbsdk/common/host/abun$ae;->aAh:Landroid/app/Application;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/ProcessUtils;->isInMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;->getFrankieDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/FrankieDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/FrankieDelegate;->fetchRemotePatch()V

    .line 272
    :cond_1
    sget-object v0, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAF:Lgbsdk/common/host/abui$ac;

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abui;->b(Lgbsdk/common/host/abui$ac;)V

    .line 273
    iget-object v0, p0, Lgbsdk/common/host/abun$ae;->aAi:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;->onSuccess()V

    :cond_2
    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abun$ae;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "cb9f36bf13f1e0aaf029c5f50db4e95f"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Object;

    return-object v0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lgbsdk/common/host/abun$ae;->eW()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
