.class public Lcom/bytedance/ttgame/tob/framework/service/common/ModuleRegister__ch_main;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ttgame/tob/framework/service/common/IModuleRegister;


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLifecycleServices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/framework/service/common/ModuleRegister__ch_main;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "226cd4d3f107187cc23db88fa113d677"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 30
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public registerServices()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;",
            ">;",
            "Lcom/bytedance/ttgame/tob/framework/service/annotation/IServiceConfig<",
            "+",
            "Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/framework/service/common/ModuleRegister__ch_main;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "99e41cd5c00de69c63a63099a3a8c783"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 15
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    :try_start_0
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofitService;

    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofitService__ServiceConfig;

    invoke-direct {v2}, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofitService__ServiceConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :catchall_0
    :try_start_1
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService__ServiceConfig;

    invoke-direct {v2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService__ServiceConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :catchall_1
    :try_start_2
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;

    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService__ServiceConfig;

    invoke-direct {v2}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService__ServiceConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19
    :catchall_2
    :try_start_3
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/framework/service/FWService;

    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/framework/service/FWService__ServiceConfig;

    invoke-direct {v2}, Lcom/bytedance/ttgame/tob/common/host/framework/service/FWService__ServiceConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 20
    :catchall_3
    :try_start_4
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext;

    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext__ServiceConfig;

    invoke-direct {v2}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext__ServiceConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 21
    :catchall_4
    :try_start_5
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService__ServiceConfig;

    invoke-direct {v2}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService__ServiceConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 22
    :catchall_5
    :try_start_6
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/base/api/monitor/IMonitorService;

    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/base/api/monitor/IMonitorService__ServiceConfig;

    invoke-direct {v2}, Lcom/bytedance/ttgame/tob/common/host/base/api/monitor/IMonitorService__ServiceConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 23
    :catchall_6
    :try_start_7
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi__ServiceConfig;

    invoke-direct {v2}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi__ServiceConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 24
    :catchall_7
    :try_start_8
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService;

    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService__ServiceConfig;

    invoke-direct {v2}, Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService__ServiceConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :catchall_8
    return-object v0
.end method
