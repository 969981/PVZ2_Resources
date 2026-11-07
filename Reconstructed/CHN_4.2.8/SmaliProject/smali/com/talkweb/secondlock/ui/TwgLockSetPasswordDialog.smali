.class public Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;
.super Ljava/lang/Object;
.source "TwgLockSetPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$SimpleTextWatcher;,
        Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$OnSetPasswordActionListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private etPwd:Landroid/widget/EditText;

.field private etPwdConfirm:Landroid/widget/EditText;

.field private ivPwdConfirmToggle:Landroid/widget/ImageView;

.field private ivPwdToggle:Landroid/widget/ImageView;

.field private final listener:Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$OnSetPasswordActionListener;

.field private tvError:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$OnSetPasswordActionListener;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$OnSetPasswordActionListener;

    return-void
.end method

.method static synthetic access$100(Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->clearError()V

    return-void
.end method

.method private bindToggle(Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 1

    .line 154
    new-instance v0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockSetPasswordDialog$ntqcRXqk1nszlVD6etvATiYcydY;

    invoke-direct {v0, p0, p1, p2}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockSetPasswordDialog$ntqcRXqk1nszlVD6etvATiYcydY;-><init>(Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;Landroid/widget/EditText;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private clearError()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->tvError:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    const-string v1, "twg_lock_iv_close"

    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 123
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_et_pwd"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->etPwd:Landroid/widget/EditText;

    .line 124
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_et_pwd_confirm"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->etPwdConfirm:Landroid/widget/EditText;

    .line 125
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_iv_cancel"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 126
    iget-object v2, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    const-string v3, "twg_lock_iv_confirm"

    invoke-static {v2, v3}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 128
    new-instance v3, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockSetPasswordDialog$Hfa8NKmzq9zF74tS0QR0F5QEiw8;

    invoke-direct {v3, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockSetPasswordDialog$Hfa8NKmzq9zF74tS0QR0F5QEiw8;-><init>(Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;)V

    .line 132
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance v0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockSetPasswordDialog$ckQQxsJzQzJnaC4nRemrmhYFWBo;

    invoke-direct {v0, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockSetPasswordDialog$ckQQxsJzQzJnaC4nRemrmhYFWBo;-><init>(Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    const-string v1, "twg_lock_iv_pwd_toggle"

    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->ivPwdToggle:Landroid/widget/ImageView;

    .line 137
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    const-string v1, "twg_lock_iv_pwd_confirm_toggle"

    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->ivPwdConfirmToggle:Landroid/widget/ImageView;

    .line 138
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    const-string v1, "twg_lock_tv_error"

    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->tvError:Landroid/widget/TextView;

    .line 139
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->etPwd:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->ivPwdToggle:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->bindToggle(Landroid/widget/EditText;Landroid/widget/ImageView;)V

    .line 140
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->etPwdConfirm:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->ivPwdConfirmToggle:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->bindToggle(Landroid/widget/EditText;Landroid/widget/ImageView;)V

    .line 142
    new-instance p1, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$1;

    invoke-direct {p1, p0}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$1;-><init>(Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;)V

    .line 148
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->etPwdConfirm:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private onConfirmClicked()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->etPwdConfirm:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-static {v0}, Lcom/talkweb/secondlock/SecondLockUtil;->isValidPassword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "\u5bc6\u7801\u987b\u4e3a 6 \u4f4d\u6570\u5b57"

    .line 175
    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->showError(Ljava/lang/String;)V

    return-void

    .line 178
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "\u4e24\u6b21\u5bc6\u7801\u9700\u8981\u4e00\u81f4"

    .line 179
    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->showError(Ljava/lang/String;)V

    return-void

    .line 182
    :cond_2
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->clearError()V

    .line 183
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$OnSetPasswordActionListener;

    invoke-interface {v1, p0, v0}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$OnSetPasswordActionListener;->onSetPassword(Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    .line 171
    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->showError(Ljava/lang/String;)V

    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->tvError:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->tvError:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$bindToggle$3$TwgLockSetPasswordDialog(Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 1

    .line 155
    invoke-virtual {p1}, Landroid/widget/EditText;->getInputType()I

    move-result p3

    and-int/lit8 p3, p3, 0x10

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    const/4 p3, 0x2

    .line 157
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 158
    iget-object p3, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    const-string v0, "twg_lock_visibility"

    invoke-static {p3, v0}, Lcom/talkweb/twutil/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const/16 p3, 0x12

    .line 160
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 161
    iget-object p3, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    const-string v0, "twg_lock_visibility_off"

    invoke-static {p3, v0}, Lcom/talkweb/twutil/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    :goto_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public synthetic lambda$initViews$1$TwgLockSetPasswordDialog(Landroid/view/View;)V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->dismiss()V

    .line 130
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$OnSetPasswordActionListener;

    invoke-interface {p1, p0}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$OnSetPasswordActionListener;->onClose(Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;)V

    return-void
.end method

.method public synthetic lambda$initViews$2$TwgLockSetPasswordDialog(Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->onConfirmClicked()V

    return-void
.end method

.method public synthetic lambda$show$0$TwgLockSetPasswordDialog(Landroid/content/DialogInterface;)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$OnSetPasswordActionListener;

    invoke-interface {p1, p0}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$OnSetPasswordActionListener;->onClose(Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;)V

    return-void
.end method

.method public onSetResult(ZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 112
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p2, "\u8bbe\u7f6e\u6210\u529f"

    :cond_2
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 118
    invoke-virtual {p0}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/talkweb/secondlock/ui/TwgLockUiUtils;->applyFixedConfiguration(Landroid/content/Context;)V

    .line 64
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 67
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_set_password"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 70
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 72
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    const-string v4, "TRANSPARENT"

    invoke-static {v3, v4}, Lcom/talkweb/twutil/Resource;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v2, -0x3

    .line 74
    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    const/16 v2, 0x11

    .line 75
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 78
    iget-object v2, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 79
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x43f00000    # 480.0f

    .line 81
    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    const/high16 v5, 0x43aa0000    # 340.0f

    .line 82
    iget v6, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v5

    float-to-int v5, v6

    if-le v3, v4, :cond_1

    move v3, v4

    :cond_1
    if-ge v3, v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    .line 86
    :goto_0
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x44070000    # 540.0f

    .line 88
    iget v6, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v4

    float-to-int v4, v6

    const/high16 v6, 0x438c0000    # 280.0f

    .line 89
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

    .line 92
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecondLockMock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v1, v5, v2}, Landroid/view/Window;->setLayout(II)V

    .line 96
    :cond_5
    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->initViews(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 99
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockSetPasswordDialog$W0-AaxcTnuYDD4Qw-T_wtWmQDv8;

    invoke-direct {v1, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockSetPasswordDialog$W0-AaxcTnuYDD4Qw-T_wtWmQDv8;-><init>(Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 100
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
