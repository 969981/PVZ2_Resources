.class Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$5;
.super Landroid/os/CountDownTimer;
.source "TwgameChangePwdUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->startCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;JJ)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->access$502(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;Z)Z

    .line 285
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->access$200(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 286
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->access$200(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;

    invoke-static {v1}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->access$000(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "twgame_btn_get_code_text"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->access$600(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 276
    div-long/2addr p1, v0

    .line 277
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->access$200(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)Landroid/widget/TextView;

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

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->access$400(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u77ed\u4fe1\u5df2\u53d1\u9001\u81f3+86 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil$5;->this$0:Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;->access$300(Lcom/tw/gamesdk/ui/TwgameChangePwdUtil;)Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tw/gamesdk/utils/DataMaskingUtil;->maskPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
