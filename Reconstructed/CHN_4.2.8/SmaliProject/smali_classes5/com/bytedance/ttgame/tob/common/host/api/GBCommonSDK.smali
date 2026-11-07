.class public Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;
.super Ljava/lang/Object;
.source "GBCommonSDK.java"


# static fields
.field private static final NODEX_PROCESS_SUFFIX:Ljava/lang/String; = ":nodex"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static isExecuteOnCreate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApkAttribution()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "7c3d89dd620f01181fb4752cf787997b"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 92
    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;->getApkAttribution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApkAttributionEx()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "331322972c7c5ee3ca7208b52a600a03"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 104
    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;->getApkAttributionEx()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHumeChannel()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "4885ab17556fe262fd994f5e28f3713f"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 100
    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;->getHumeChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHumeSDKVersion()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "5c49e544c0a6fa4632765f8ef4ce451e"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 96
    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;->getHumeSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenExtraInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public static getPackageChannel()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "d518fed5076c74ecaf389884ee63e16c"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 88
    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;->getPackageChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;
    .locals 5
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

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "2662bcbe8f8abe8b492f9a5219d0b8dc"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    return-object p0

    .line 79
    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-interface {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object p0

    return-object p0
.end method

.method public static handleOpenURL(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "8fe4763445bc6e4d4ffffb731f528150"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 119
    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-interface {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;->handleOpenURL(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "8ce6151edabb4d8e1eeb8ed20caa09ac"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {p0, p1, v3}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;)V

    return-void
.end method

.method public static init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "1bf737259820cddf0cf0a3ffabc2bcf3"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    sget-boolean v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->isExecuteOnCreate:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, -0x2

    const-string p2, "onCreate(...) must be called first"

    .line 39
    invoke-interface {p1, p0, p2}, Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;->onFailed(ILjava/lang/String;)V

    :cond_1
    return-void

    .line 44
    :cond_2
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;->init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;)V

    return-void
.end method

.method public static isInited()Z
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "2dd6c598ba3aed15badf8e5daab31208"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 69
    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;->isInited()Z

    move-result v0

    return v0
.end method

.method public static isNoDexProcess(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "9cac0557555afb932164ad397988ae7e"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 83
    :cond_0
    invoke-static {p0}, Lcom/bytedance/ttgame/tob/gradle/compliance/ProcessUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, ":nodex"

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRunningCloud()Z
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "b1a1549f636350710245d2d353ed772f"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 115
    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;->isRunningCloud()Z

    move-result v0

    return v0
.end method

.method public static isStarted()Z
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "95245bf3e4c20ccad85cc82c88073734"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 74
    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;->isStarted()Z

    move-result v0

    return v0
.end method

.method public static onCreate(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "69648f9c819862cdbea94cabae26d0b5"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-static {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/ProcessUtils;->isInMainProcess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 25
    :cond_1
    invoke-static {p0}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->isNoDexProcess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->isExecuteOnCreate:Z

    if-nez v1, :cond_2

    .line 26
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-interface {v1, p0}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;->prepare(Landroid/content/Context;)V

    .line 27
    sput-boolean v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->isExecuteOnCreate:Z

    :cond_2
    return-void
.end method

.method public static setGameActivity(Landroid/app/Activity;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "1debdebb10da03eeb6f49412ac539654"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-interface {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;->setGameActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-interface {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public static start(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/StartCallBack;Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "51569af63d99ddcfd87bdba26a24dc50"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    sget-boolean v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->isExecuteOnCreate:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, -0x2

    const-string p2, "onCreate(...) must be called first"

    .line 51
    invoke-interface {p1, p0, p2}, Lcom/bytedance/ttgame/tob/common/host/api/callback/StartCallBack;->onFailed(ILjava/lang/String;)V

    :cond_1
    return-void

    .line 56
    :cond_2
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;->start(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/StartCallBack;Lcom/bytedance/ttgame/tob/common/host/api/config/StartConfig;)V

    return-void
.end method
