.class public final Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;
.super Ljava/lang/Object;
.source "PopupManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PopupWindowWrapper"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;",
        "",
        "id",
        "",
        "type",
        "window",
        "Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$IPopupWindow;",
        "(IILcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$IPopupWindow;)V",
        "getId",
        "()I",
        "getType",
        "getWindow",
        "()Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$IPopupWindow;",
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


# instance fields
.field private final id:I

.field private final type:I

.field private final window:Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$IPopupWindow;


# direct methods
.method public constructor <init>(IILcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$IPopupWindow;)V
    .locals 1

    const-string v0, "window"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->id:I

    .line 80
    iput p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->type:I

    .line 81
    iput-object p3, p0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->window:Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$IPopupWindow;

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->id:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->type:I

    return v0
.end method

.method public final getWindow()Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$IPopupWindow;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$PopupWindowWrapper;->window:Lcom/bytedance/ttgame/tob/common/host/framework/popup/PopupManager$IPopupWindow;

    return-object v0
.end method
