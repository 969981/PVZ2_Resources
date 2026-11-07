.class Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$2;
.super Landroid/os/CountDownTimer;
.source "TwgLockVerificationPhoneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->startCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;JJ)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$2;->this$0:Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$2;->this$0:Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    invoke-static {v0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->access$300(Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$2;->this$0:Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    invoke-static {v0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->access$200(Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
