.class public Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService;
.super Ljava/lang/Object;
.source "DataLinkReportService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DataLinkReportService"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private isPending:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService;->isPending:Z

    return-void
.end method

.method public static getInstance()Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService;
    .locals 1

    .line 17
    sget-object v0, Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService$InstanceHolder;->instance:Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService;

    return-object v0
.end method


# virtual methods
.method public getAndSetPending()Z
    .locals 2

    .line 37
    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService;->isPending:Z

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService;->isPending:Z

    return v0
.end method

.method public onGameActive()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "493bfaeb90797d1c15180e74dc257fd1"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 26
    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/optional/datalink/api/IDataLinkService;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    const-string v1, "DataLinkReportService"

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService;->isPending:Z

    const-string v2, "[initSwitch]onGameActive isPending"

    .line 28
    invoke-static {v1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const-string v0, "[initSwitch]onGameActive ServiceManager.getService isPrepared"

    .line 31
    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-class v0, Lcom/bytedance/ttgame/tob/optional/datalink/api/IDataLinkService;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/optional/datalink/api/IDataLinkService;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/optional/datalink/api/IDataLinkService;->onGameActive()Z

    move-result v0

    return v0
.end method
