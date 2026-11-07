.class public Lcom/talkweb/secondlock/ui/TwgLockManageDialog;
.super Ljava/lang/Object;
.source "TwgLockManageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;
    }
.end annotation


# instance fields
.field private btnSetPwd:Landroid/widget/Button;

.field private final context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private ivProtectToggle:Landroid/widget/ImageView;

.field private ivSwitchPhone:Landroid/widget/ImageView;

.field private final listener:Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;

.field private llPhoneRow:Landroid/view/View;

.field private mHasPassword:Z

.field private mPhoneBound:Z

.field private mPhoneMasked:Ljava/lang/String;

.field private mProtectEnabled:Ljava/lang/Boolean;

.field private tvBindPhone:Landroid/widget/TextView;

.field private tvForgotPwd:Landroid/widget/ImageView;

.field private vPhoneDivider:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->mHasPassword:Z

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->mPhoneBound:Z

    .line 73
    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;

    return-void
.end method

.method private applyHasPassword(Z)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->ivProtectToggle:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->ivProtectToggle:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->tvForgotPwd:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    .line 153
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    :cond_3
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->applyPhoneRow()V

    return-void
.end method

.method private applyPhoneRow()V
    .locals 3

    .line 174
    iget-boolean v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->mPhoneBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->llPhoneRow:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 176
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->vPhoneDivider:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :cond_2
    iget-boolean v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->mPhoneBound:Z

    if-nez v0, :cond_3

    return-void

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->tvBindPhone:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 185
    iget-object v2, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->mPhoneMasked:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_4
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->ivSwitchPhone:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private applyProtectEnabled(Z)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->ivProtectToggle:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

    const-string v1, "twg_lock_manage_on"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

    const-string v1, "twg_lock_manage_off"

    :goto_0
    invoke-static {p1, v1}, Lcom/talkweb/twutil/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

    const-string v1, "twg_lock_iv_close"

    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 195
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_iv_protect_toggle"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->ivProtectToggle:Landroid/widget/ImageView;

    .line 196
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_btn_set_pwd"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->btnSetPwd:Landroid/widget/Button;

    .line 197
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_tv_forgot_pwd"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->tvForgotPwd:Landroid/widget/ImageView;

    .line 198
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_ll_phone_row"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->llPhoneRow:Landroid/view/View;

    .line 199
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_v_phone_divider"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->vPhoneDivider:Landroid/view/View;

    .line 200
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_tv_bind_phone"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->tvBindPhone:Landroid/widget/TextView;

    .line 201
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_iv_switch_phone"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->ivSwitchPhone:Landroid/widget/ImageView;

    .line 203
    new-instance p1, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockManageDialog$XQxa43ASlzhZiJKoqZdlkYz5Xqc;

    invoke-direct {p1, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockManageDialog$XQxa43ASlzhZiJKoqZdlkYz5Xqc;-><init>(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->ivProtectToggle:Landroid/widget/ImageView;

    new-instance v0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockManageDialog$QWzZyREqH-H-kFy0wNz-pDDs1K4;

    invoke-direct {v0, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockManageDialog$QWzZyREqH-H-kFy0wNz-pDDs1K4;-><init>(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->btnSetPwd:Landroid/widget/Button;

    new-instance v0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockManageDialog$36cxD9Lt143aqVyU-vW35pzGTdQ;

    invoke-direct {v0, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockManageDialog$36cxD9Lt143aqVyU-vW35pzGTdQ;-><init>(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->tvForgotPwd:Landroid/widget/ImageView;

    new-instance v0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockManageDialog$y4-sOA9Tmb3DMj0spkD2vP8Pf5k;

    invoke-direct {v0, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockManageDialog$y4-sOA9Tmb3DMj0spkD2vP8Pf5k;-><init>(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->ivSwitchPhone:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 221
    new-instance v0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockManageDialog$vDzn3leqXExbQPlfDN30wnHpjxQ;

    invoke-direct {v0, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockManageDialog$vDzn3leqXExbQPlfDN30wnHpjxQ;-><init>(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->mProtectEnabled:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->applyProtectEnabled(Z)V

    .line 227
    :cond_1
    iget-boolean p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->mHasPassword:Z

    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->applyHasPassword(Z)V

    return-void
.end method

.method private isProtectEnabled()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->mProtectEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initViews$1$TwgLockManageDialog(Landroid/view/View;)V
    .locals 0

    .line 204
    invoke-virtual {p0}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->dismiss()V

    .line 205
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;

    invoke-interface {p1, p0}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;->onClose(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V

    return-void
.end method

.method public synthetic lambda$initViews$2$TwgLockManageDialog(Landroid/view/View;)V
    .locals 1

    .line 209
    iget-boolean p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->mHasPassword:Z

    if-nez p1, :cond_0

    return-void

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->mProtectEnabled:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 213
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->mProtectEnabled:Ljava/lang/Boolean;

    .line 214
    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->applyProtectEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;

    invoke-interface {v0, p0, p1}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;->onToggle(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;Z)V

    return-void
.end method

.method public synthetic lambda$initViews$3$TwgLockManageDialog(Landroid/view/View;)V
    .locals 0

    .line 218
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;

    invoke-interface {p1, p0}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;->onSetPassword(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V

    return-void
.end method

.method public synthetic lambda$initViews$4$TwgLockManageDialog(Landroid/view/View;)V
    .locals 0

    .line 219
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;

    invoke-interface {p1, p0}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;->onForgotPassword(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V

    return-void
.end method

.method public synthetic lambda$initViews$5$TwgLockManageDialog(Landroid/view/View;)V
    .locals 0

    .line 221
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;

    invoke-interface {p1, p0}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;->onChangePhone(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V

    return-void
.end method

.method public synthetic lambda$show$0$TwgLockManageDialog(Landroid/content/DialogInterface;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->listener:Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;

    invoke-interface {p1, p0}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;->onClose(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V

    return-void
.end method

.method public setBoundPhone(ZLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 165
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 166
    :goto_1
    iput-boolean v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->mPhoneBound:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    .line 167
    :goto_2
    iput-object p2, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->mPhoneMasked:Ljava/lang/String;

    .line 168
    invoke-direct {p0}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->applyPhoneRow()V

    return-void
.end method

.method public setHasPassword(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->mHasPassword:Z

    .line 144
    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->applyHasPassword(Z)V

    return-void
.end method

.method public setProtectEnabled(Z)V
    .locals 1

    .line 130
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->mProtectEnabled:Ljava/lang/Boolean;

    .line 131
    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->applyProtectEnabled(Z)V

    return-void
.end method

.method public show()V
    .locals 8

    .line 79
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/talkweb/secondlock/ui/TwgLockUiUtils;->applyFixedConfiguration(Landroid/content/Context;)V

    .line 83
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 86
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

    const-string v2, "twg_lock_manage"

    invoke-static {v1, v2}, Lcom/talkweb/twutil/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 89
    iget-object v1, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 91
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

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
    iget-object v2, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 97
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 98
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/high16 v5, 0x440c0000    # 560.0f

    .line 100
    iget v6, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v5

    float-to-int v5, v6

    const/high16 v6, 0x43b40000    # 360.0f

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

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x43e60000    # 460.0f

    .line 105
    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    const/high16 v5, 0x43a00000    # 320.0f

    .line 106
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    if-ge v3, v2, :cond_3

    move v3, v2

    :cond_3
    if-le v3, v4, :cond_4

    goto :goto_1

    :cond_4
    move v4, v3

    .line 109
    :goto_1
    invoke-virtual {v1, v6, v4}, Landroid/view/Window;->setLayout(II)V

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecondLockMock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x20

    .line 111
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 114
    :cond_5
    invoke-direct {p0, v0}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->initViews(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 117
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockManageDialog$PMGZzdHQui16QJXw-7MYsvV8UAE;

    invoke-direct {v1, p0}, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockManageDialog$PMGZzdHQui16QJXw-7MYsvV8UAE;-><init>(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 118
    iget-object v0, p0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
