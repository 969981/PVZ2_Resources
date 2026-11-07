.class public Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;
.super Ljava/lang/Object;
.source "TwgLockVerificationPhoneDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$OnVerifyPhoneActionListener;,
        Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$SimpleTextWatcher;
    }
.end annotation


# static fields
.field private static final CODE_MIN_LENGTH:I = 0x4

.field private static final COUNT_DOWN_SECONDS:J = 0x3cL


# instance fields
.field private btnSendCode:Landroid/widget/Button;

.field private final context:Landroid/content/Context;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private currentAreaCode:Ljava/lang/String;

.field private dialog:Landroid/app/Dialog;

.field private etCode:Landroid/widget/EditText;

.field private ivConfirm:Landroid/widget/ImageView;

.field private final listener:Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$OnVerifyPhoneActionListener;

.field private final maskedPhone:Ljava/lang/String;

.field private final realPhone:Ljava/lang/String;

.field private tvCode:Landroid/widget/TextView;

.field private tvError:Landroid/widget/TextView;

.field private tvPhone:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$OnVerifyPhoneActionListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->context:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$OnVerifyPhoneActionListener;

    .line 88
    iput-object p3, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->currentAreaCode:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->maskedPhone:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->realPhone:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->clearError()V

    return-void
.end method

.method static synthetic access$200(Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;)Landroid/widget/Button;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->btnSendCode:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->resetSendCodeButton()V

    return-void
.end method

.method private bindEvents()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->btnSendCode:Landroid/widget/Button;

    new-instance v1, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerificationPhoneDialog$s6FDCB31ETNhdAks7xSAg02BTUc;

    invoke-direct {v1, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerificationPhoneDialog$s6FDCB31ETNhdAks7xSAg02BTUc;-><init>(Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->ivConfirm:Landroid/widget/ImageView;

    new-instance v1, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerificationPhoneDialog$TTnviXTONs0q-cI8RIH2Cr5TMfs;

    invoke-direct {v1, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerificationPhoneDialog$TTnviXTONs0q-cI8RIH2Cr5TMfs;-><init>(Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private cancelCountDown()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->countDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private clearError()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->tvError:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 267
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->context:Landroid/content/Context;

    const-string v1, "twg_lock_iv_close"

    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 148
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_tv_code"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->tvCode:Landroid/widget/TextView;

    .line 149
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_tv_phone"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->tvPhone:Landroid/widget/TextView;

    .line 150
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_et_code"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->etCode:Landroid/widget/EditText;

    .line 151
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_tv_error"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->tvError:Landroid/widget/TextView;

    .line 152
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_btn_send_code"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->btnSendCode:Landroid/widget/Button;

    .line 153
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_iv_confirm"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->ivConfirm:Landroid/widget/ImageView;

    .line 155
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->tvCode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->currentAreaCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->tvPhone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->maskedPhone:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    new-instance p1, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerificationPhoneDialog$MjnuU2NHfkLTUn3Klte78En1pEw;

    invoke-direct {p1, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerificationPhoneDialog$MjnuU2NHfkLTUn3Klte78En1pEw;-><init>(Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->etCode:Landroid/widget/EditText;

    new-instance v0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$1;

    invoke-direct {v0, p0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$1;-><init>(Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private onSendCodeClicked()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$OnVerifyPhoneActionListener;

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->currentAreaCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->realPhone:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$OnVerifyPhoneActionListener;->onSendCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->startCountDown()V

    return-void
.end method

.method private onVerifyClicked()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->etCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->context:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 189
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 190
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->context:Landroid/content/Context;

    const-string v1, "\u9a8c\u8bc1\u7801\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$OnVerifyPhoneActionListener;

    iget-object v2, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->currentAreaCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->realPhone:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$OnVerifyPhoneActionListener;->onVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resetSendCodeButton()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->btnSendCode:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->btnSendCode:Landroid/widget/Button;

    const-string v1, "\u53d1\u9001\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->tvError:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->tvError:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private startCountDown()V
    .locals 8

    .line 197
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->cancelCountDown()V

    .line 198
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->btnSendCode:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 199
    new-instance v0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$2;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$2;-><init>(Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;JJ)V

    .line 209
    invoke-virtual {v0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->cancelCountDown()V

    .line 141
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$bindEvents$2$TwgLockVerificationPhoneDialog(Landroid/view/View;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->onSendCodeClicked()V

    return-void
.end method

.method public synthetic lambda$bindEvents$3$TwgLockVerificationPhoneDialog(Landroid/view/View;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->onVerifyClicked()V

    return-void
.end method

.method public synthetic lambda$initViews$1$TwgLockVerificationPhoneDialog(Landroid/view/View;)V
    .locals 0

    .line 159
    invoke-virtual {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->dismiss()V

    .line 160
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$OnVerifyPhoneActionListener;

    invoke-interface {p1}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$OnVerifyPhoneActionListener;->onClose()V

    return-void
.end method

.method public synthetic lambda$show$0$TwgLockVerificationPhoneDialog(Landroid/content/DialogInterface;)V
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$OnVerifyPhoneActionListener;

    invoke-interface {p1}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$OnVerifyPhoneActionListener;->onClose()V

    return-void
.end method

.method public onSmsSent(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->clearError()V

    goto :goto_0

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->cancelCountDown()V

    .line 235
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->resetSendCodeButton()V

    .line 236
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 237
    invoke-direct {p0, p2}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->showError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVerifyResult(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->dismiss()V

    goto :goto_0

    .line 252
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p2, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    :cond_1
    invoke-direct {p0, p2}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->showError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 8

    .line 95
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/talkweb/secondlock/ui/TwgLockUiUtils;->applyFixedConfiguration(Landroid/content/Context;)V

    .line 99
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 100
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 102
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_verification_phone"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 105
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 107
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->context:Landroid/content/Context;

    const-string v4, "TRANSPARENT"

    invoke-static {v3, v4}, Lcom/talkweb/twutil/Resource;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v2, -0x3

    .line 109
    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    const/16 v2, 0x11

    .line 110
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 113
    iget-object v2, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 114
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v4, 0x3f75c28f    # 0.96f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x44110000    # 580.0f

    .line 116
    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    .line 117
    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x43a00000    # 320.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-le v3, v4, :cond_1

    move v3, v4

    :cond_1
    if-ge v3, v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    .line 121
    :goto_0
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x440c0000    # 560.0f

    .line 123
    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v4

    float-to-int v4, v7

    .line 124
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    if-le v3, v4, :cond_3

    move v3, v4

    :cond_3
    if-ge v3, v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    .line 127
    :goto_1
    invoke-virtual {v1, v5, v2}, Landroid/view/Window;->setLayout(II)V

    .line 130
    :cond_5
    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->initViews(Landroid/view/View;)V

    .line 131
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->bindEvents()V

    .line 133
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 134
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerificationPhoneDialog$lHZCwdPr8XKrEEQXv2blaXiBhRs;

    invoke-direct {v1, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerificationPhoneDialog$lHZCwdPr8XKrEEQXv2blaXiBhRs;-><init>(Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 135
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
