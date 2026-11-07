.class Lcom/tw/pay/sdk/util/PopupWindowUtil$2;
.super Ljava/lang/Object;
.source "PopupWindowUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/PopupWindowUtil;
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

    .line 118
    iput-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$2;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$2;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$400(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/widget/TextView;

    move-result-object v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$2;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$500(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$2;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$700(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/widget/TextView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$2;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$800(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$2;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-virtual {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->hidePopupWindow()V

    .line 136
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$2;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$600(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "popupImg"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 137
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$2;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$900(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V

    :cond_3
    return-void

    .line 123
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$2;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$600(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->getTwGameUserCenterUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/gamesdk/ui/TwgameUserCenterUtil;->doUserCenterDialog()V

    return-void
.end method
