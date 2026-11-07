.class Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask$1;
.super Ljava/lang/Object;
.source "TwRegUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask$1;->this$1:Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask$1;->this$1:Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;

    iget-object v0, v0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$1110(Lcom/tw/pay/sdk/util/TwRegUtil;)I

    .line 452
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask$1;->this$1:Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;

    iget-object v0, v0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$1000(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask$1;->this$1:Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;

    iget-object v2, v2, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {v2}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$1100(Lcom/tw/pay/sdk/util/TwRegUtil;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask$1;->this$1:Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;

    iget-object v2, v2, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    .line 453
    invoke-static {v2}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$100(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "waitVerifyCode"

    invoke-static {v2, v3}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask$1;->this$1:Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;

    iget-object v0, v0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$1100(Lcom/tw/pay/sdk/util/TwRegUtil;)I

    move-result v0

    if-gez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask$1;->this$1:Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;

    iget-object v0, v0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$1000(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 457
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask$1;->this$1:Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;

    iget-object v0, v0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$1000(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask$1;->this$1:Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;

    iget-object v1, v1, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    .line 458
    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$100(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "reg_btn_bg_hui"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 457
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 459
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask$1;->this$1:Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;

    iget-object v0, v0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$1000(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask$1;->this$1:Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;

    iget-object v1, v1, Lcom/tw/pay/sdk/util/TwRegUtil$MyTimerTask;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$100(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "getVerifyCode"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
