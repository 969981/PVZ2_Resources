.class public Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;
.super Ljava/lang/Object;
.source "TwgLockResetPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$SimpleTextWatcher;,
        Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$OnResetPasswordActionListener;
    }
.end annotation


# instance fields
.field private final code:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private etPwd:Landroid/widget/EditText;

.field private etPwdConfirm:Landroid/widget/EditText;

.field private ivPwdConfirmToggle:Landroid/widget/ImageView;

.field private ivPwdToggle:Landroid/widget/ImageView;

.field private final listener:Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$OnResetPasswordActionListener;

.field private tvError:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$OnResetPasswordActionListener;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->code:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$OnResetPasswordActionListener;

    return-void
.end method

.method static synthetic access$100(Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->clearError()V

    return-void
.end method

.method private bindToggle(Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 1

    .line 171
    new-instance v0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockResetPasswordDialog$W_aWWQKhDSdmvNvsq7iExLNYGAc;

    invoke-direct {v0, p0, p1, p2}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockResetPasswordDialog$W_aWWQKhDSdmvNvsq7iExLNYGAc;-><init>(Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;Landroid/widget/EditText;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private clearError()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->tvError:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    const-string v1, "twg_lock_iv_close"

    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 139
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_et_pwd"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->etPwd:Landroid/widget/EditText;

    .line 140
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_et_pwd_confirm"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->etPwdConfirm:Landroid/widget/EditText;

    .line 141
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_iv_cancel"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 142
    iget-object v2, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    const-string v3, "twg_lock_iv_confirm"

    invoke-static {v2, v3}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 144
    new-instance v3, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockResetPasswordDialog$9OVjsE2ufPjm84x5JYeVR3PR06Y;

    invoke-direct {v3, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockResetPasswordDialog$9OVjsE2ufPjm84x5JYeVR3PR06Y;-><init>(Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;)V

    .line 148
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    new-instance v0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockResetPasswordDialog$wLeDDZQLezf9B66AxZAnKO80uA4;

    invoke-direct {v0, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockResetPasswordDialog$wLeDDZQLezf9B66AxZAnKO80uA4;-><init>(Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    const-string v1, "twg_lock_iv_pwd_toggle"

    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->ivPwdToggle:Landroid/widget/ImageView;

    .line 154
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    const-string v1, "twg_lock_iv_pwd_confirm_toggle"

    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->ivPwdConfirmToggle:Landroid/widget/ImageView;

    .line 155
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    const-string v1, "twg_lock_tv_error"

    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->tvError:Landroid/widget/TextView;

    .line 156
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->etPwd:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->ivPwdToggle:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->bindToggle(Landroid/widget/EditText;Landroid/widget/ImageView;)V

    .line 157
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->etPwdConfirm:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->ivPwdConfirmToggle:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->bindToggle(Landroid/widget/EditText;Landroid/widget/ImageView;)V

    .line 159
    new-instance p1, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$1;

    invoke-direct {p1, p0}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$1;-><init>(Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;)V

    .line 165
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->etPwdConfirm:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private onConfirmClicked()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->etPwdConfirm:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {v0}, Lcom/talkweb/secondlock/SecondLockUtil;->isValidPassword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "\u5bc6\u7801\u987b\u4e3a 6 \u4f4d\u6570\u5b57"

    .line 192
    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->showError(Ljava/lang/String;)V

    return-void

    .line 195
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "\u4e24\u6b21\u5bc6\u7801\u9700\u8981\u4e00\u81f4"

    .line 196
    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->showError(Ljava/lang/String;)V

    return-void

    .line 199
    :cond_2
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->clearError()V

    .line 200
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$OnResetPasswordActionListener;

    invoke-interface {v1, p0, v0}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$OnResetPasswordActionListener;->onReset(Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    .line 188
    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->showError(Ljava/lang/String;)V

    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->tvError:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->tvError:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->code:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$bindToggle$3$TwgLockResetPasswordDialog(Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 1

    .line 172
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

    .line 174
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 175
    iget-object p3, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    const-string v0, "twg_lock_visibility"

    invoke-static {p3, v0}, Lcom/talkweb/twutil/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const/16 p3, 0x12

    .line 177
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 178
    iget-object p3, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    const-string v0, "twg_lock_visibility_off"

    invoke-static {p3, v0}, Lcom/talkweb/twutil/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    :goto_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public synthetic lambda$initViews$1$TwgLockResetPasswordDialog(Landroid/view/View;)V
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->dismiss()V

    .line 146
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$OnResetPasswordActionListener;

    invoke-interface {p1, p0}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$OnResetPasswordActionListener;->onClose(Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;)V

    return-void
.end method

.method public synthetic lambda$initViews$2$TwgLockResetPasswordDialog(Landroid/view/View;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->onConfirmClicked()V

    return-void
.end method

.method public synthetic lambda$show$0$TwgLockResetPasswordDialog(Landroid/content/DialogInterface;)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$OnResetPasswordActionListener;

    invoke-interface {p1, p0}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$OnResetPasswordActionListener;->onClose(Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;)V

    return-void
.end method

.method public onResetResult(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 121
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    .line 126
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 127
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 8

    .line 68
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/talkweb/secondlock/ui/TwgLockUiUtils;->applyFixedConfiguration(Landroid/content/Context;)V

    .line 72
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 75
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_set_password"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 79
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 81
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    const-string v4, "TRANSPARENT"

    invoke-static {v3, v4}, Lcom/talkweb/twutil/Resource;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v2, -0x3

    .line 83
    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    const/16 v2, 0x11

    .line 84
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 87
    iget-object v2, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 88
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v4, 0x3f75c28f    # 0.96f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x44110000    # 580.0f

    .line 90
    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    .line 91
    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x43aa0000    # 340.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-le v3, v4, :cond_1

    move v3, v4

    :cond_1
    if-ge v3, v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    .line 95
    :goto_0
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x44200000    # 640.0f

    .line 97
    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v4

    float-to-int v4, v7

    .line 98
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

    .line 101
    :goto_1
    invoke-virtual {v1, v5, v2}, Landroid/view/Window;->setLayout(II)V

    .line 104
    :cond_5
    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->initViews(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 107
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockResetPasswordDialog$WYR1VbTwGYskRME0hPV5-QKxCAY;

    invoke-direct {v1, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockResetPasswordDialog$WYR1VbTwGYskRME0hPV5-QKxCAY;-><init>(Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 108
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
