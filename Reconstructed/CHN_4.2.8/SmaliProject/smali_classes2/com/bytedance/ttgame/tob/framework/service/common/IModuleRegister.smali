.class public interface abstract Lcom/bytedance/ttgame/tob/framework/service/common/IModuleRegister;
.super Ljava/lang/Object;
.source "IModuleRegister.java"


# virtual methods
.method public abstract getLifecycleServices()Ljava/util/List;
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
.end method

.method public abstract registerServices()Ljava/util/Map;
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
.end method
