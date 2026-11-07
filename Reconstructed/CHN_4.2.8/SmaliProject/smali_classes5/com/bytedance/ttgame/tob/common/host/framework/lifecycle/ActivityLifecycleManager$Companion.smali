.class public final Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager$Companion;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager$Companion;",
        "",
        "()V",
        "sInstance",
        "Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;",
        "getInstance",
        "ch_framework_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager$Companion;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ea2ec9b700aeb50267b272098ddfd058"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;

    return-object v0

    .line 20
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;

    if-nez v0, :cond_2

    const-class v0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;

    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;

    if-nez v1, :cond_1

    .line 23
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager$Companion;

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/FrameworkInit;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/FrameworkInit;

    invoke-virtual {v2}, Lcom/bytedance/ttgame/tob/common/host/framework/FrameworkInit;->getApp()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;-><init>(Landroid/app/Application;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;

    .line 25
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 27
    :cond_2
    :goto_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/ActivityLifecycleManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
