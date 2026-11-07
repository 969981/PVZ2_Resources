.class Lcom/tw/pay/sdk/util/PopupWindowUtil$3;
.super Ljava/lang/Object;
.source "PopupWindowUtil.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/PopupWindowUtil;->setUpView()Landroid/view/View;
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

    .line 164
    iput-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1002(Lcom/tw/pay/sdk/util/PopupWindowUtil;F)F

    .line 170
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1102(Lcom/tw/pay/sdk/util/PopupWindowUtil;F)F

    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1700(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V

    goto/16 :goto_2

    .line 187
    :cond_1
    iget-object p2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {p2}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1000(Lcom/tw/pay/sdk/util/PopupWindowUtil;)F

    move-result p2

    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1500(Lcom/tw/pay/sdk/util/PopupWindowUtil;)F

    move-result v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float p2, p2, v0

    if-gtz p2, :cond_3

    iget-object p2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    .line 188
    invoke-static {p2}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1100(Lcom/tw/pay/sdk/util/PopupWindowUtil;)F

    move-result p2

    iget-object v2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {v2}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1600(Lcom/tw/pay/sdk/util/PopupWindowUtil;)F

    move-result v2

    sub-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    goto :goto_0

    .line 193
    :cond_2
    iget-object p2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {p2}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1900(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 189
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1800(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V

    .line 190
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1700(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V

    .line 191
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1402(Lcom/tw/pay/sdk/util/PopupWindowUtil;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1302(Lcom/tw/pay/sdk/util/PopupWindowUtil;F)F

    .line 195
    :goto_1
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$208(Lcom/tw/pay/sdk/util/PopupWindowUtil;)I

    .line 196
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$2000(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {p2}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$200(Lcom/tw/pay/sdk/util/PopupWindowUtil;)I

    move-result p2

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 173
    :cond_4
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$000(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 174
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1200(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V

    .line 175
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$002(Lcom/tw/pay/sdk/util/PopupWindowUtil;Z)Z

    .line 177
    :cond_5
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1302(Lcom/tw/pay/sdk/util/PopupWindowUtil;F)F

    .line 178
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1402(Lcom/tw/pay/sdk/util/PopupWindowUtil;F)F

    .line 179
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1000(Lcom/tw/pay/sdk/util/PopupWindowUtil;)F

    move-result p2

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1502(Lcom/tw/pay/sdk/util/PopupWindowUtil;F)F

    .line 180
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$3;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1100(Lcom/tw/pay/sdk/util/PopupWindowUtil;)F

    move-result p2

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$1602(Lcom/tw/pay/sdk/util/PopupWindowUtil;F)F

    :goto_2
    return v1
.end method
