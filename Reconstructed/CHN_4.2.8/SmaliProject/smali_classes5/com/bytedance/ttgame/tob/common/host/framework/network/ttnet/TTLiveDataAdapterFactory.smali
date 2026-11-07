.class public Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataAdapterFactory;
.super Lcom/bytedance/retrofit2/CallAdapter$Factory;
.source "TTLiveDataAdapterFactory.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/bytedance/retrofit2/CallAdapter$Factory;-><init>()V

    return-void
.end method

.method public static create()Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataAdapterFactory;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataAdapterFactory;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "7e805d5fb3e7e58f25f3c46c43cab7e2"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataAdapterFactory;

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataAdapterFactory;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataAdapterFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/bytedance/retrofit2/Retrofit;)Lcom/bytedance/retrofit2/CallAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/bytedance/retrofit2/Retrofit;",
            ")",
            "Lcom/bytedance/retrofit2/CallAdapter<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 p2, 0x2

    aput-object p3, v0, p2

    sget-object p2, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataAdapterFactory;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string p3, "d4a1e2b295e72578bcd28ab8732914ae"

    invoke-static {v0, p0, p2, v1, p3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p1, p2, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/retrofit2/CallAdapter;

    return-object p1

    .line 23
    :cond_0
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lgbsdk/android/arch/lifecycle/LiveData;

    if-eq p2, p3, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 26
    :cond_1
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 28
    const-class p3, Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;

    if-ne p2, p3, :cond_3

    .line 31
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_2

    .line 34
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 36
    new-instance p2, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter;

    invoke-direct {p2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter;-><init>(Ljava/lang/reflect/Type;)V

    return-object p2

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "resource must be parameterized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type must be a resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
