.class public final Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$onPopupWindowDismiss$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PopupManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;->onPopupWindowDismiss(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;",
        "invoke",
        "(Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic $id:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$onPopupWindowDismiss$1;->$id:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;)Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$onPopupWindowDismiss$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "bf80d5ae81ec201a09bd1cc585f5cd1e"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->getId()I

    move-result p1

    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$onPopupWindowDismiss$1;->$id:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$onPopupWindowDismiss$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a9a4bc128d9e1075f669babca35de7be"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Object;

    return-object p1

    .line 57
    :cond_0
    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;

    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$onPopupWindowDismiss$1;->invoke(Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
