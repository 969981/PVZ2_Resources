.class public interface abstract Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofitService;
.super Ljava/lang/Object;
.source "IRetrofitService.java"

# interfaces
.implements Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;


# virtual methods
.method public abstract addInterceptor(Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory<",
            "+",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addInterceptorNotTTNetGlobal(Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory<",
            "+",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract clearRetrofitCache()V
.end method

.method public abstract getRetrofit(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;
.end method

.method public abstract getRetrofitAllowUpdate(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;
.end method
