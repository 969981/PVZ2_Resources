.class public final Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;
.super Ljava/lang/Object;
.source "PopupManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$IPopupWindow;,
        Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0016\u0017B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\u0006\u0010\u0013\u001a\u00020\u000bJ\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u000bR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;",
        "",
        "()V",
        "mShowingWindows",
        "Ljava/util/ArrayList;",
        "Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;",
        "Lkotlin/collections/ArrayList;",
        "mWaitingWindows",
        "Ljava/util/LinkedList;",
        "mWaitingWrapperBackground",
        "mWindowIndex",
        "",
        "addPopupWindow",
        "type",
        "window",
        "Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$IPopupWindow;",
        "addPopupWindowActual",
        "",
        "wrapper",
        "getTheLastWindowType",
        "onPopupWindowDismiss",
        "id",
        "IPopupWindow",
        "PopupWindowWrapper",
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
.field public static final INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static final mShowingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static final mWaitingWindows:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public static final mWaitingWrapperBackground:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static mWindowIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;

    const/4 v0, 0x1

    .line 9
    sput v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mWindowIndex:I

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mWaitingWindows:Ljava/util/LinkedList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mShowingWindows:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mWaitingWrapperBackground:Ljava/util/LinkedList;

    .line 15
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;

    move-result-object v0

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$1;

    invoke-direct {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$1;-><init>()V

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleAdapter;

    invoke-virtual {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->registerLifecycleListener(Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleAdapter;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addPopupWindow(ILcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$IPopupWindow;)I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3e9488fa47faccf1f1139623af386bc8"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const-string v0, "window"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;

    sget v1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mWindowIndex:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mWindowIndex:I

    invoke-direct {v0, v1, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;-><init>(IILcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$IPopupWindow;)V

    .line 29
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;->isBackground()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mWaitingWrapperBackground:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->addPopupWindowActual(Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;)V

    .line 34
    :goto_0
    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->getId()I

    move-result p1

    return p1
.end method

.method public final addPopupWindowActual(Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;)V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "cc8cd0f660d9442b28f5a8b07254d2d6"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 38
    :cond_0
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mShowingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->getType()I

    move-result v1

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mShowingWindows:Ljava/util/ArrayList;

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;

    invoke-virtual {v3}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->getType()I

    move-result v3

    if-le v1, v3, :cond_1

    goto :goto_2

    .line 43
    :cond_1
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mWaitingWindows:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;

    .line 44
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->getType()I

    move-result v6

    invoke-virtual {v5}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->getType()I

    move-result v5

    if-le v6, v5, :cond_2

    .line 46
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mWaitingWindows:Ljava/util/LinkedList;

    invoke-virtual {v1, v3, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    .line 51
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mWaitingWindows:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 39
    :cond_4
    :goto_2
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mShowingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->getWindow()Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$IPopupWindow;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$IPopupWindow;->onShow(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final getTheLastWindowType()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2e3b14cc5ad3a867a24f33d1cb2a3604"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 68
    :cond_0
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mShowingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 71
    :cond_1
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mShowingWindows:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->getType()I

    move-result v0

    return v0
.end method

.method public final onPopupWindowDismiss(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "b9e520ec913257c4acfa81d150644c4a"

    invoke-static {v1, p0, v2, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 57
    :cond_0
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mShowingWindows:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$onPopupWindowDismiss$1;

    invoke-direct {v2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$onPopupWindowDismiss$1;-><init>(I)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 58
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mWaitingWindows:Ljava/util/LinkedList;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 59
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mShowingWindows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mWaitingWindows:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->getType()I

    move-result p1

    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mShowingWindows:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->getType()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 60
    :cond_1
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mWaitingWindows:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;

    .line 61
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->mShowingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->getWindow()Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$IPopupWindow;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$IPopupWindow;->onShow(I)V

    :cond_2
    return-void
.end method
