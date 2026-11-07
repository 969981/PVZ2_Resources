.class public Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$2;
.super Ljava/lang/Object;
.source "OptionalServiceManager.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager;->getService(Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget;Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceCallback;Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$MethodFallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic val$fallback:Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$MethodFallback;

.field final synthetic val$service:Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$MethodFallback;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$2;->val$service:Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$2;->val$fallback:Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$MethodFallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 0
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "829abf839c3b2a49eee280669c4ea625"

    invoke-static {v0, p0, p1, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Object;

    return-object p1

    .line 72
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$2;->val$service:Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string p3, "OptionalServiceManager"

    const-string v0, "Failed to invoke optional service method"

    .line 74
    invoke-static {p3, v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    iget-object p3, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$2;->val$fallback:Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$MethodFallback;

    if-eqz p3, :cond_1

    .line 76
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$2;->val$service:Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    invoke-interface {p3, v0, p2, p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$MethodFallback;->onFailed(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Throwable;)V

    .line 79
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, p3, :cond_8

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, p3, :cond_8

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, p3, :cond_2

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p3, :cond_3

    const-wide/16 p1, 0x0

    .line 82
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 83
    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p3, :cond_4

    const/4 p1, 0x0

    .line 84
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 85
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p3, :cond_5

    const-wide/16 p1, 0x0

    .line 86
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 87
    :cond_5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, p3, :cond_6

    return-object v2

    .line 89
    :cond_6
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_7

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1

    :cond_8
    :goto_0
    return-object v2
.end method
