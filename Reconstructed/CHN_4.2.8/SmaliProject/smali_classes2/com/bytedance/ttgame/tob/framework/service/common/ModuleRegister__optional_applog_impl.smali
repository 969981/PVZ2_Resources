.class public Lcom/bytedance/ttgame/tob/framework/service/common/ModuleRegister__optional_applog_impl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ttgame/tob/framework/service/common/IModuleRegister;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLifecycleServices()Ljava/util/List;
    .locals 2
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

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :try_start_0
    const-class v1, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public registerServices()Ljava/util/Map;
    .locals 3
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

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    :try_start_0
    const-class v1, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService;

    new-instance v2, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService__ServiceConfig;

    invoke-direct {v2}, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService__ServiceConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method
