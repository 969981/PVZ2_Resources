.class Lcom/tw/pay/sdk/util/PopupWindowUtil$4;
.super Ljava/lang/Object;
.source "PopupWindowUtil.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/PopupWindowUtil;->hidePopupViewAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$4;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 251
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$4;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$2100(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
