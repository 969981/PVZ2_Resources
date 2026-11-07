.class public Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager;
.super Ljava/lang/Object;
.source "TTAppStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sAppDelayState:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

.field private static volatile sAppStartState:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager;->TAG:Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ia:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager;->sAppStartState:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    .line 11
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ig:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager;->sAppDelayState:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppDelayState()Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;
    .locals 1

    .line 39
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager;->sAppDelayState:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    return-object v0
.end method

.method public static getAppStartUpState()I
    .locals 1

    .line 35
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager;->sAppStartState:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    iget v0, v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->state:I

    return v0
.end method

.method public static setAppDelayState(Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;)V
    .locals 0

    .line 61
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager;->sAppDelayState:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    return-void
.end method

.method public static setAppStartUpState(Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;)V
    .locals 6

    .line 45
    :try_start_0
    sput-object p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager;->sAppStartState:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    .line 46
    iget v0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->state:I

    invoke-static {v0}, Lgbsdk/common/host/abhc;->n(I)V

    .line 47
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->getCronetClient()Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget p0, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->state:I

    .line 50
    sget-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set app start-up state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p0, :cond_0

    const/4 v1, 0x2

    if-gt p0, v1, :cond_0

    .line 52
    invoke-static {v0}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v1, "setAppStartUpState"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v3, v2}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
