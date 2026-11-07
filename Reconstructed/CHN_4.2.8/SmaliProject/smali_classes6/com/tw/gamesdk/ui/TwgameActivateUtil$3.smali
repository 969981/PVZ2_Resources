.class Lcom/tw/gamesdk/ui/TwgameActivateUtil$3;
.super Landroid/os/CountDownTimer;
.source "TwgameActivateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameActivateUtil;->startCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameActivateUtil;JJ)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$3;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$3;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$502(Lcom/tw/gamesdk/ui/TwgameActivateUtil;Z)Z

    .line 192
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$3;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$600(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$3;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$400(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 185
    div-long/2addr p1, v0

    .line 186
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$3;->this$0:Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->access$400(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Landroid/widget/Button;

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
