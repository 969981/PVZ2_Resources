.class public Lcom/bytedance/ttgame/tob/common/host/framework/network/RetrofitService;
.super Ljava/lang/Object;
.source "RetrofitService.java"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofitService;


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final mRetrofitMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/RetrofitService;->mRetrofitMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addInterceptor(Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory<",
            "+",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/RetrofitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4406f46179b404cddfb9689e62a831f2"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory;->create()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/retrofit2/intercept/Interceptor;

    invoke-static {p1}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->addInterceptor(Lcom/bytedance/retrofit2/intercept/Interceptor;)V

    return-void
.end method

.method public addInterceptorNotTTNetGlobal(Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory<",
            "+",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/RetrofitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3f795c6205a7944bdc8bb05f026bb240"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-static {p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->addInterceptorFactory(Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory;Z)V

    return-void
.end method

.method public clearRetrofitCache()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/RetrofitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6c725665551d2ab777b89ea82303dee9"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/RetrofitService;->mRetrofitMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getRetrofit(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/RetrofitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6b41db0f1676d948a916c3d71b657d93"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;

    return-object p1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/RetrofitService;->mRetrofitMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;

    if-nez v0, :cond_1

    .line 25
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofit;

    invoke-direct {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofit;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/RetrofitService;->mRetrofitMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getRetrofitAllowUpdate(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/RetrofitService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "af73f27368035e2c2e95cf65c67c40e4"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;

    return-object p1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/RetrofitService;->mRetrofitMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;

    .line 34
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    if-nez v0, :cond_2

    .line 35
    :cond_1
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofit;

    invoke-direct {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofit;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/RetrofitService;->mRetrofitMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method
