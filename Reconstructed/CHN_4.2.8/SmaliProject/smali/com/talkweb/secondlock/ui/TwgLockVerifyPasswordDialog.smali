.class public Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;
.super Ljava/lang/Object;
.source "TwgLockVerifyPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private etPwd:Landroid/widget/EditText;

.field private ivPwdToggle:Landroid/widget/ImageView;

.field private final listener:Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;

.field private mLockedRemainSec:I

.field private mRemainingAttempts:I

.field private tvError:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 67
    iput v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->mRemainingAttempts:I

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->mLockedRemainSec:I

    .line 73
    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;

    return-void
.end method

.method private bindToggle(Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 1

    .line 286
    new-instance v0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$kpU2h1n0b1CZgskk7jyq_PKtayg;

    invoke-direct {v0, p0, p1, p2}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$kpU2h1n0b1CZgskk7jyq_PKtayg;-><init>(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;Landroid/widget/EditText;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private clearPwdAndNotifyLocked()V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->etPwd:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$2dJt1LqpGAaDUNOacnGZG9XwOHM;

    invoke-direct {v1, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$2dJt1LqpGAaDUNOacnGZG9XwOHM;-><init>(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private formatLockedMessage(I)Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/talkweb/secondlock/ui/TwgLockUiUtils;->formatVerifyLockMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleVerifyFailure(Ljava/lang/String;II)V
    .locals 6

    if-lez p3, :cond_0

    .line 160
    iput p3, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->mLockedRemainSec:I

    .line 161
    invoke-direct {p0, p3}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->formatLockedMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->showError(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->clearPwdAndNotifyLocked()V

    return-void

    :cond_0
    const-string v0, ""

    const v1, 0x15180

    const-string v2, "sl_verify_error_attempts"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz p2, :cond_3

    if-gtz p2, :cond_1

    .line 170
    iput v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->mLockedRemainSec:I

    .line 171
    invoke-direct {p0, v1}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->formatLockedMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->showError(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->clearPwdAndNotifyLocked()V

    goto :goto_0

    .line 174
    :cond_1
    iput p2, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->mRemainingAttempts:I

    .line 175
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v3

    invoke-static {p1, v2, p3}, Lcom/talkweb/twutil/Resource;->getString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->showError(Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->etPwd:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    .line 177
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void

    .line 184
    :cond_3
    iget p2, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->mRemainingAttempts:I

    sub-int/2addr p2, v4

    iput p2, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->mRemainingAttempts:I

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "\u9501\u5b9a"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    move p2, v4

    goto :goto_1

    :cond_4
    move p2, v3

    :goto_1
    if-nez p2, :cond_7

    .line 186
    iget v5, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->mRemainingAttempts:I

    if-gtz v5, :cond_5

    goto :goto_2

    .line 192
    :cond_5
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-static {p1, v2, p2}, Lcom/talkweb/twutil/Resource;->getString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->showError(Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->etPwd:Landroid/widget/EditText;

    if-eqz p1, :cond_6

    .line 194
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void

    :cond_7
    :goto_2
    if-eqz p2, :cond_8

    if-lez p3, :cond_8

    goto :goto_3

    :cond_8
    move p3, v1

    .line 187
    :goto_3
    iput p3, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->mLockedRemainSec:I

    if-eqz p2, :cond_9

    goto :goto_4

    .line 188
    :cond_9
    invoke-direct {p0, p3}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->formatLockedMessage(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->showError(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->clearPwdAndNotifyLocked()V

    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 5

    .line 247
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    const-string v1, "twg_lock_iv_close"

    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 248
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_et_pwd"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->etPwd:Landroid/widget/EditText;

    .line 249
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_tv_forgot"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 250
    iget-object v2, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    const-string v3, "twg_lock_iv_cancel"

    invoke-static {v2, v3}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 251
    iget-object v3, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    const-string v4, "twg_lock_iv_confirm"

    invoke-static {v3, v4}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 253
    new-instance v4, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$d5-K5IQNVIEwzFMgEfsukgB0L9Y;

    invoke-direct {v4, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$d5-K5IQNVIEwzFMgEfsukgB0L9Y;-><init>(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V

    .line 257
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    new-instance v0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$zztgOFvunKNdA3S5G-jyPfCXV80;

    invoke-direct {v0, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$zztgOFvunKNdA3S5G-jyPfCXV80;-><init>(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    new-instance v0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$XU0Ah8HUhs8a6DSmO_VaQsRyYuU;

    invoke-direct {v0, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$XU0Ah8HUhs8a6DSmO_VaQsRyYuU;-><init>(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    const-string v1, "twg_lock_tv_error"

    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->tvError:Landroid/widget/TextView;

    .line 262
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    const-string v1, "twg_lock_iv_pwd_toggle"

    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->ivPwdToggle:Landroid/widget/ImageView;

    .line 263
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->etPwd:Landroid/widget/EditText;

    invoke-direct {p0, v0, p1}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->bindToggle(Landroid/widget/EditText;Landroid/widget/ImageView;)V

    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 239
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :catch_0
    :goto_0
    return v1
.end method

.method private onConfirmClicked()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 272
    :cond_0
    invoke-static {v0}, Lcom/talkweb/secondlock/SecondLockUtil;->isValidPassword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    const-string v1, "sl_verify_error_format"

    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 278
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    const-string v1, "sl_verify_error_network"

    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->showError(Ljava/lang/String;)V

    return-void

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;

    invoke-interface {v1, p0, v0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;->onVerify(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;Ljava/lang/String;)V

    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->tvError:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->tvError:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getLockedRemainSec()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->mLockedRemainSec:I

    return v0
.end method

.method public synthetic lambda$bindToggle$6$TwgLockVerifyPasswordDialog(Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 1

    .line 287
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

    .line 289
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 290
    iget-object p3, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    const-string v0, "twg_lock_visibility"

    invoke-static {p3, v0}, Lcom/talkweb/twutil/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const/16 p3, 0x12

    .line 292
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 293
    iget-object p3, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    const-string v0, "twg_lock_visibility_off"

    invoke-static {p3, v0}, Lcom/talkweb/twutil/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 295
    :goto_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public synthetic lambda$clearPwdAndNotifyLocked$2$TwgLockVerifyPasswordDialog()V
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->dismiss()V

    .line 205
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;

    invoke-interface {v0, p0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;->onLocked(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V

    return-void
.end method

.method public synthetic lambda$initViews$3$TwgLockVerifyPasswordDialog(Landroid/view/View;)V
    .locals 0

    .line 254
    invoke-virtual {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->dismiss()V

    .line 255
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;

    invoke-interface {p1, p0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;->onClose(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V

    return-void
.end method

.method public synthetic lambda$initViews$4$TwgLockVerifyPasswordDialog(Landroid/view/View;)V
    .locals 0

    .line 259
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;

    invoke-interface {p1, p0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;->onForgot(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V

    return-void
.end method

.method public synthetic lambda$initViews$5$TwgLockVerifyPasswordDialog(Landroid/view/View;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->onConfirmClicked()V

    return-void
.end method

.method public synthetic lambda$onVerifyResult$1$TwgLockVerifyPasswordDialog(Ljava/lang/String;II)V
    .locals 0

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->handleVerifyFailure(Ljava/lang/String;II)V

    return-void
.end method

.method public synthetic lambda$show$0$TwgLockVerifyPasswordDialog(Landroid/content/DialogInterface;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;

    invoke-interface {p1, p0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;->onClose(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V

    return-void
.end method

.method public onVerifyResult(ZLjava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 136
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->onVerifyResult(ZLjava/lang/String;II)V

    return-void
.end method

.method public onVerifyResult(ZLjava/lang/String;II)V
    .locals 1

    if-eqz p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    const-string p3, "sl_verify_success"

    .line 149
    invoke-static {p2, p3}, Lcom/talkweb/twutil/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 p3, 0x0

    .line 148
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 150
    invoke-virtual {p0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->dismiss()V

    return-void

    .line 154
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$J7F4wE2XiQLoJMCM2tWCzXfkfWI;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$J7F4wE2XiQLoJMCM2tWCzXfkfWI;-><init>(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;Ljava/lang/String;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public show()V
    .locals 8

    .line 79
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/talkweb/secondlock/ui/TwgLockUiUtils;->applyFixedConfiguration(Landroid/content/Context;)V

    .line 83
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 86
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_verify_password"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 89
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 91
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    const-string v4, "TRANSPARENT"

    invoke-static {v3, v4}, Lcom/talkweb/twutil/Resource;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    .line 92
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v2, -0x3

    .line 93
    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    const/16 v2, 0x11

    .line 94
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 96
    iget-object v2, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 97
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 98
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/high16 v5, 0x44250000    # 660.0f

    .line 100
    iget v6, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v5

    float-to-int v5, v6

    const/high16 v6, 0x43960000    # 300.0f

    .line 101
    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v6

    float-to-int v6, v7

    if-le v3, v5, :cond_1

    move v3, v5

    :cond_1
    if-ge v3, v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v3

    :goto_0
    int-to-float v3, v4

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x43b40000    # 360.0f

    .line 105
    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    const/high16 v5, 0x438c0000    # 280.0f

    .line 106
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    if-le v3, v4, :cond_3

    move v3, v4

    :cond_3
    if-ge v3, v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    .line 109
    :goto_1
    invoke-virtual {v1, v6, v2}, Landroid/view/Window;->setLayout(II)V

    const/16 v2, 0x20

    .line 110
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 113
    :cond_5
    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->initViews(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 116
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$N1UHy5TetGcHjm9gqjFLm2U53lY;

    invoke-direct {v1, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$N1UHy5TetGcHjm9gqjFLm2U53lY;-><init>(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 117
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
