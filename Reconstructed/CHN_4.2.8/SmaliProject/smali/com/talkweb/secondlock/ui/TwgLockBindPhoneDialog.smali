.class public Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;
.super Ljava/lang/Object;
.source "TwgLockBindPhoneDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$OnBindPhoneActionListener;
    }
.end annotation


# static fields
.field private static final AREA_CODES:[[Ljava/lang/String;

.field private static final CODE_MIN_LENGTH:I = 0x4

.field private static final COUNT_DOWN_SECONDS:J = 0x3cL


# instance fields
.field private btnClear:Landroid/widget/ImageButton;

.field private btnSendCode:Landroid/widget/Button;

.field private final context:Landroid/content/Context;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private currentAreaCode:Ljava/lang/String;

.field private dialog:Landroid/app/Dialog;

.field private etCode:Landroid/widget/EditText;

.field private etPhone:Landroid/widget/EditText;

.field private ivConfirm:Landroid/widget/ImageView;

.field private final listener:Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$OnBindPhoneActionListener;

.field private tvCode:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "+86"

    const-string v2, "\u4e2d\u56fd\u5927\u9646"

    .line 55
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "+852"

    const-string v2, "\u4e2d\u56fd\u9999\u6e2f"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "+853"

    const-string v2, "\u4e2d\u56fd\u6fb3\u95e8"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "+886"

    const-string v2, "\u4e2d\u56fd\u53f0\u6e7e"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "+1"

    const-string v2, "\u7f8e\u56fd"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "+81"

    const-string v2, "\u65e5\u672c"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "+82"

    const-string v2, "\u97e9\u56fd"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->AREA_CODES:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$OnBindPhoneActionListener;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "+86"

    .line 78
    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->currentAreaCode:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$OnBindPhoneActionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;)Landroid/widget/Button;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->btnSendCode:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->resetSendCodeButton()V

    return-void
.end method

.method private bindEvents()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->btnClear:Landroid/widget/ImageButton;

    new-instance v1, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockBindPhoneDialog$X4jhvJ85h8yT_mp5NXMuRHaou1o;

    invoke-direct {v1, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockBindPhoneDialog$X4jhvJ85h8yT_mp5NXMuRHaou1o;-><init>(Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->etPhone:Landroid/widget/EditText;

    new-instance v1, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$1;

    invoke-direct {v1, p0}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$1;-><init>(Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->btnSendCode:Landroid/widget/Button;

    new-instance v1, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockBindPhoneDialog$xo0tGvX0sMdmjzYJT9gcUjG83Q4;

    invoke-direct {v1, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockBindPhoneDialog$xo0tGvX0sMdmjzYJT9gcUjG83Q4;-><init>(Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->ivConfirm:Landroid/widget/ImageView;

    new-instance v1, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockBindPhoneDialog$1fOXDvLWzDSwKfFvLN9cV9g2nws;

    invoke-direct {v1, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockBindPhoneDialog$1fOXDvLWzDSwKfFvLN9cV9g2nws;-><init>(Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private cancelCountDown()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->countDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    const-string v1, "twg_lock_iv_close"

    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 132
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_tv_code"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->tvCode:Landroid/widget/TextView;

    .line 133
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_et_phone"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->etPhone:Landroid/widget/EditText;

    .line 134
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_btn_clear"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->btnClear:Landroid/widget/ImageButton;

    .line 135
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_et_code"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->etCode:Landroid/widget/EditText;

    .line 136
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_btn_send_code"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->btnSendCode:Landroid/widget/Button;

    .line 137
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_iv_confirm"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->ivConfirm:Landroid/widget/ImageView;

    .line 139
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->tvCode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->currentAreaCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    new-instance p1, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockBindPhoneDialog$6vbsIiXMpe9auwmHCWwssIWSY04;

    invoke-direct {p1, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockBindPhoneDialog$6vbsIiXMpe9auwmHCWwssIWSY04;-><init>(Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onConfirmClicked()V
    .locals 5

    .line 199
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->etPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->etCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 202
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 205
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 209
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    if-ge v2, v4, :cond_2

    .line 210
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    const-string v1, "\u9a8c\u8bc1\u7801\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$OnBindPhoneActionListener;

    iget-object v3, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->currentAreaCode:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$OnBindPhoneActionListener;->onBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onSendCodeClicked()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->etPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$OnBindPhoneActionListener;

    iget-object v2, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->currentAreaCode:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$OnBindPhoneActionListener;->onSendCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->startCountDown()V

    return-void
.end method

.method private resetSendCodeButton()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->btnSendCode:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->btnSendCode:Landroid/widget/Button;

    const-string v1, "\u53d1\u9001\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showAreaCodePicker()V
    .locals 6

    .line 174
    sget-object v0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->AREA_CODES:[[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 175
    :goto_0
    sget-object v3, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->AREA_CODES:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->AREA_CODES:[[Ljava/lang/String;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->AREA_CODES:[[Ljava/lang/String;

    aget-object v4, v4, v2

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u9009\u62e9\u533a\u53f7"

    .line 179
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockBindPhoneDialog$x_s38TfHo_2xoCijT8S3CV3DW_I;

    invoke-direct {v2, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockBindPhoneDialog$x_s38TfHo_2xoCijT8S3CV3DW_I;-><init>(Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;)V

    .line 180
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u53d6\u6d88"

    .line 184
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private startCountDown()V
    .locals 8

    .line 217
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->cancelCountDown()V

    .line 218
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->btnSendCode:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    new-instance v0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$2;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$2;-><init>(Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;JJ)V

    .line 229
    invoke-virtual {v0}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 124
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->cancelCountDown()V

    .line 125
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$bindEvents$2$TwgLockBindPhoneDialog(Landroid/view/View;)V
    .locals 1

    .line 150
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->etPhone:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$bindEvents$3$TwgLockBindPhoneDialog(Landroid/view/View;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->onSendCodeClicked()V

    return-void
.end method

.method public synthetic lambda$bindEvents$4$TwgLockBindPhoneDialog(Landroid/view/View;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->onConfirmClicked()V

    return-void
.end method

.method public synthetic lambda$initViews$1$TwgLockBindPhoneDialog(Landroid/view/View;)V
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->dismiss()V

    .line 144
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$OnBindPhoneActionListener;

    invoke-interface {p1}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$OnBindPhoneActionListener;->onClose()V

    return-void
.end method

.method public synthetic lambda$show$0$TwgLockBindPhoneDialog(Landroid/content/DialogInterface;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$OnBindPhoneActionListener;

    invoke-interface {p1}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$OnBindPhoneActionListener;->onClose()V

    return-void
.end method

.method public synthetic lambda$showAreaCodePicker$5$TwgLockBindPhoneDialog(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 181
    sget-object p1, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->AREA_CODES:[[Ljava/lang/String;

    aget-object p1, p1, p2

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->currentAreaCode:Ljava/lang/String;

    .line 182
    iget-object p2, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->tvCode:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBindResult(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->dismiss()V

    goto :goto_0

    .line 269
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSmsSent(ZLjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->cancelCountDown()V

    .line 253
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->resetSendCodeButton()V

    .line 254
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/talkweb/secondlock/ui/TwgLockUiUtils;->applyFixedConfiguration(Landroid/content/Context;)V

    .line 97
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 100
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_bind_phone"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 103
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 105
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->context:Landroid/content/Context;

    const-string v4, "TRANSPARENT"

    invoke-static {v3, v4}, Lcom/talkweb/twutil/Resource;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    .line 106
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v2, -0x3

    .line 107
    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    const/16 v2, 0x11

    .line 108
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    const/4 v2, -0x2

    .line 109
    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    const/16 v2, 0x20

    .line 110
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 113
    :cond_1
    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->initViews(Landroid/view/View;)V

    .line 114
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->bindEvents()V

    .line 116
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 117
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockBindPhoneDialog$8KNyFhyRx1wo9tTtiUtwQ5DMgfI;

    invoke-direct {v1, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockBindPhoneDialog$8KNyFhyRx1wo9tTtiUtwQ5DMgfI;-><init>(Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 118
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
