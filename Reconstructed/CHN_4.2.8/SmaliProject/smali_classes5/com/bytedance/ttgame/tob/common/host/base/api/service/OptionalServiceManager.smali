.class public Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager;
.super Ljava/lang/Object;
.source "OptionalServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget;,
        Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceCallback;,
        Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceRunnable;,
        Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$MethodFallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OptionalServiceManager"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOptionalServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ttgame/tob/common/host/base/api/service/IOptionalService;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "fda71f0e73a5b543f14f83a703d736d8"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 19
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-static {}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getServices()Ljava/util/Collection;

    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    .line 22
    instance-of v3, v2, Lcom/bytedance/ttgame/tob/common/host/base/api/service/IOptionalService;

    if-eqz v3, :cond_1

    .line 23
    check-cast v2, Lcom/bytedance/ttgame/tob/common/host/base/api/service/IOptionalService;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getService(Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget;Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;",
            ">(",
            "Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget<",
            "TT;>;",
            "Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceCallback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "865223e00e76f6b040221705d70fcf8d"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-static {p0, p1, v3}, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager;->getService(Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget;Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceCallback;Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$MethodFallback;)V

    return-void
.end method

.method public static getService(Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget;Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceCallback;Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$MethodFallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;",
            ">(",
            "Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget<",
            "TT;>;",
            "Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceCallback<",
            "TT;>;",
            "Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$MethodFallback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v3, 0x2

    aput-object p2, v0, v3

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "466be37dcebc470df036aa54efc15acd"

    invoke-static {v0, v4, v3, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget;->get()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Class;

    invoke-interface {p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget;->get()Ljava/lang/Class;

    move-result-object p0

    aput-object p0, v2, v1

    new-instance p0, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$2;

    invoke-direct {p0, v0, p2}, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$2;-><init>(Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$MethodFallback;)V

    invoke-static {v3, v2, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    .line 96
    invoke-interface {p1, p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p2, "OptionalServiceManager"

    const-string v0, "Failed to get optional service"

    .line 99
    invoke-static {p2, v0, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    invoke-interface {p1, p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceCallback;->onFailed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getService(Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget;Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceRunnable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;",
            ">(",
            "Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget<",
            "TT;>;",
            "Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceRunnable<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "00621ed630d12fd8480237eae89b821a"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$1;

    invoke-direct {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceRunnable;)V

    invoke-static {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager;->getService(Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget;Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceCallback;)V

    return-void
.end method

.method public static hasService(Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;",
            ">(",
            "Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "901c53d3a3b4cb23ae31fdf6945e26be"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 31
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget;->get()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :catchall_0
    move-exception p0

    const-string v0, "OptionalServiceManager"

    const-string v1, "Failed to get optional service"

    .line 34
    invoke-static {v0, v1, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method
