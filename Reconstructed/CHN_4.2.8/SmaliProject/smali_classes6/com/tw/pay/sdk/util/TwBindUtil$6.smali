.class Lcom/tw/pay/sdk/util/TwBindUtil$6;
.super Ljava/lang/Object;
.source "TwBindUtil.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/TwBindUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwBindUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwBindUtil;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/Object;)V
    .locals 6

    .line 420
    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;

    const/4 v0, 0x0

    const-string v1, "getVerifyCode"

    const-string v2, "reg_btn_bg_hui"

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 422
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;

    move-result-object p1

    const-string v4, "\u9a8c\u8bc1\u7801\u83b7\u53d6\u5931\u8d25"

    invoke-static {p1, v4}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 423
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$1000(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 424
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$1000(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/widget/Button;

    move-result-object p1

    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwBindUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {v3}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 426
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$1000(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/widget/Button;

    move-result-object p1

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwBindUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    .line 427
    invoke-static {v2}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$1102(Lcom/tw/pay/sdk/util/TwBindUtil;I)I

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/ReturnObject;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 432
    :cond_1
    iget-object v4, p0, Lcom/tw/pay/sdk/util/TwBindUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {v4}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;

    move-result-object v4

    iget-object p1, p1, Lcom/talkweb/sdk/vo/ReturnObject;->content:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 433
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$1000(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 434
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$1000(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/widget/Button;

    move-result-object p1

    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwBindUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {v3}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 436
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$1000(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/widget/Button;

    move-result-object p1

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwBindUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    .line 437
    invoke-static {v2}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$100(Lcom/tw/pay/sdk/util/TwBindUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwBindUtil;

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/util/TwBindUtil;->access$1102(Lcom/tw/pay/sdk/util/TwBindUtil;I)I

    :goto_0
    return-void
.end method
