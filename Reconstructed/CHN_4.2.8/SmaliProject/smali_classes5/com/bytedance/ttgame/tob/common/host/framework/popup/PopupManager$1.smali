.class public final Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$1;
.super Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleAdapter;
.source "PopupManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$1",
        "Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleAdapter;",
        "enterForeground",
        "",
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
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public enterForeground()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "333156bfc2f7111f85692c19d06df458"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mWaitingWrapperBackground:Ljava/util/LinkedList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 18
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mWaitingWrapperBackground:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;

    .line 19
    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;

    const-string v3, "wrapper"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->addPopupWindowActual(Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;)V

    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mWaitingWrapperBackground:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_2
    return-void
.end method
