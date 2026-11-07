.class Lcom/tw/gamesdk/ui/TwGameLoginUtil$6;
.super Landroid/os/CountDownTimer;
.source "TwGameLoginUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwGameLoginUtil;->startCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;JJ)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$6;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$6;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$402(Lcom/tw/gamesdk/ui/TwGameLoginUtil;Z)Z

    .line 403
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$6;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$300(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 404
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$6;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$300(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$6;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-static {v1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$500(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "twgame_btn_get_code_text"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$6;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$000(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 396
    div-long/2addr p1, v0

    .line 397
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$6;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$300(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "%ds"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
