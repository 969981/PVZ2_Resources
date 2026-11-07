.class public final Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;
.super Ljava/lang/Object;
.source "TTRetrofitFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TTRetrofitFactory"

.field private static appVersion:Ljava/lang/String;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static packageName:Ljava/lang/String;

.field private static final sGson:Lcom/google/gson/Gson;

.field private static final sInterceptorFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory<",
            "+",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sPreInterceptorFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory<",
            "+",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->sPreInterceptorFactories:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->sInterceptorFactories:Ljava/util/List;

    .line 32
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->sGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInterceptorFactory(Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory;Z)V
    .locals 5
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

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "9afbb036f62cd384b9a34e319a4e7568"

    invoke-static {v0, v3, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 67
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->sPreInterceptorFactories:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_1
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->sInterceptorFactories:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static createCompatibleRetrofit(Ljava/lang/String;)Lcom/bytedance/retrofit2/Retrofit;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "7dcbe6a7b4298217961cd3a446e7562e"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/bytedance/retrofit2/Retrofit;

    return-object p0

    .line 36
    :cond_0
    new-instance v0, Lcom/bytedance/retrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lcom/bytedance/retrofit2/Retrofit$Builder;-><init>()V

    .line 38
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->sGson:Lcom/google/gson/Gson;

    invoke-static {v1}, Lgbsdk/common/host/abkn;->a(Lcom/google/gson/Gson;)Lgbsdk/common/host/abkn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/retrofit2/Retrofit$Builder;->addConverterFactory(Lcom/bytedance/retrofit2/Converter$Factory;)Lcom/bytedance/retrofit2/Retrofit$Builder;

    move-result-object v1

    .line 39
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataAdapterFactory;->create()Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataAdapterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/retrofit2/Retrofit$Builder;->addCallAdapterFactory(Lcom/bytedance/retrofit2/CallAdapter$Factory;)Lcom/bytedance/retrofit2/Retrofit$Builder;

    .line 41
    new-instance v1, Lgbsdk/common/host/abko;

    invoke-direct {v1}, Lgbsdk/common/host/abko;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/retrofit2/Retrofit$Builder;->httpExecutor(Ljava/util/concurrent/Executor;)Lcom/bytedance/retrofit2/Retrofit$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v1, p0}, Lcom/bytedance/retrofit2/Retrofit$Builder;->setEndpoint(Ljava/lang/String;)Lcom/bytedance/retrofit2/Retrofit$Builder;

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sPreInterceptorFactories size = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->sPreInterceptorFactories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , sInterceptorFactories size = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->sInterceptorFactories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TTRetrofitFactory"

    invoke-static {v1, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->sPreInterceptorFactories:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory;

    .line 46
    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/retrofit2/intercept/Interceptor;

    invoke-virtual {v0, v1}, Lcom/bytedance/retrofit2/Retrofit$Builder;->addInterceptor(Lcom/bytedance/retrofit2/intercept/Interceptor;)Lcom/bytedance/retrofit2/Retrofit$Builder;

    goto :goto_0

    .line 48
    :cond_1
    new-instance p0, Lgbsdk/common/host/abws;

    invoke-direct {p0}, Lgbsdk/common/host/abws;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bytedance/retrofit2/Retrofit$Builder;->addInterceptor(Lcom/bytedance/retrofit2/intercept/Interceptor;)Lcom/bytedance/retrofit2/Retrofit$Builder;

    move-result-object p0

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/UserAgentInterceptor;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->appVersion:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/UserAgentInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v1}, Lcom/bytedance/retrofit2/Retrofit$Builder;->addInterceptor(Lcom/bytedance/retrofit2/intercept/Interceptor;)Lcom/bytedance/retrofit2/Retrofit$Builder;

    .line 51
    sget-object p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->sInterceptorFactories:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory;

    .line 52
    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/retrofit2/intercept/Interceptor;

    invoke-virtual {v0, v1}, Lcom/bytedance/retrofit2/Retrofit$Builder;->addInterceptor(Lcom/bytedance/retrofit2/intercept/Interceptor;)Lcom/bytedance/retrofit2/Retrofit$Builder;

    goto :goto_1

    .line 55
    :cond_2
    new-instance p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory$1;

    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory$1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bytedance/retrofit2/Retrofit$Builder;->client(Lcom/bytedance/retrofit2/client/Client$Provider;)Lcom/bytedance/retrofit2/Retrofit$Builder;

    .line 62
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/Retrofit$Builder;->build()Lcom/bytedance/retrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    sput-object p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->packageName:Ljava/lang/String;

    .line 29
    sput-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTRetrofitFactory;->appVersion:Ljava/lang/String;

    return-void
.end method
