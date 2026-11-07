.class public Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;
.super Lcom/tw/gamesdk/core/TwGameBaseDialog;
.source "TwgameUsercenterChangeResetPwdUtil.java"


# instance fields
.field private context:Landroid/content/Context;

.field private isPasswordVisible:Z

.field private isPasswordVisibleConfirm:Z

.field private loginView:Landroid/view/View;

.field private simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

.field private twgameIconVisibility:Landroid/widget/ImageView;

.field private twgameIconVisibilityConfirm:Landroid/widget/ImageView;

.field private twgameUsercenterClose:Landroid/widget/ImageView;

.field private twgameUsercenterConfirmPwd:Landroid/widget/EditText;

.field private twgameUsercenterNewPwd:Landroid/widget/EditText;

.field private twgameUsercenterPerformBind:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/tw/gamesdk/core/TwGameBaseDialog;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->isPasswordVisible:Z

    .line 52
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->isPasswordVisibleConfirm:Z

    .line 59
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;Lcom/tw/gamesdk/bean/SimpleUserData;)Lcom/tw/gamesdk/bean/SimpleUserData;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->updatePassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static getTwgameUsercenterChangeResetPwdUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;
    .locals 1

    .line 55
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initData()V
    .locals 1

    .line 175
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDK;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_close"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterClose:Landroid/widget/ImageView;

    .line 180
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_perform_bind"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterPerformBind:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_new_pwd"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterNewPwd:Landroid/widget/EditText;

    .line 182
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_confirm_pwd"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterConfirmPwd:Landroid/widget/EditText;

    .line 183
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_icon_visibility"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameIconVisibility:Landroid/widget/ImageView;

    .line 184
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_icon_visibility_confirm"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameIconVisibilityConfirm:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic lambda$setupListeners$0(Landroid/view/View;)V
    .locals 0

    .line 82
    sget-object p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private selectPassword()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterNewPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterConfirmPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->activity:Landroid/app/Activity;

    const-string v1, "\u4e24\u6b21\u8f93\u5165\u7684\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-static {v1, v0}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {v0}, Lcom/tw/pay/sdk/tool/PasswordValidator;->isValidPassword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    const-string v1, "pwdToRule"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    .line 105
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    const-string v1, "pwdToShort"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->checkTokenExpires()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    new-instance v1, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil$1;

    invoke-direct {v1, p0, v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil$1;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tw/gamesdk/core/TokenUtils;->refreshToken(Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;)V

    goto :goto_0

    .line 137
    :cond_3
    invoke-direct {p0, v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->updatePassword(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setupListeners()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterClose:Landroid/widget/ImageView;

    sget-object v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterChangeResetPwdUtil$fjdN5W8NyWfzoSgqmfjH1ACWL78;->INSTANCE:Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterChangeResetPwdUtil$fjdN5W8NyWfzoSgqmfjH1ACWL78;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterPerformBind:Landroid/widget/Button;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterChangeResetPwdUtil$6cxYM40JiMK10F8r9ygF6aHNHhs;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterChangeResetPwdUtil$6cxYM40JiMK10F8r9ygF6aHNHhs;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameIconVisibility:Landroid/widget/ImageView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterChangeResetPwdUtil$UBQx5sewClkw8IqcO9ewssk_vfg;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterChangeResetPwdUtil$UBQx5sewClkw8IqcO9ewssk_vfg;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameIconVisibilityConfirm:Landroid/widget/ImageView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterChangeResetPwdUtil$1EORucrIm_RPDch9wo6DI4SFIzQ;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterChangeResetPwdUtil$1EORucrIm_RPDch9wo6DI4SFIzQ;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private togglePasswordVisibility()V
    .locals 3

    .line 187
    iget-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->isPasswordVisible:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterNewPwd:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 191
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterNewPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 192
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameIconVisibility:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_visibility_off"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterNewPwd:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 197
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterNewPwd:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 198
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameIconVisibility:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_visibility"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterNewPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 204
    iget-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->isPasswordVisible:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->isPasswordVisible:Z

    return-void
.end method

.method private togglePasswordVisibilityConfirm()V
    .locals 3

    .line 207
    iget-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->isPasswordVisibleConfirm:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterConfirmPwd:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 211
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterConfirmPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 212
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameIconVisibilityConfirm:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_visibility_off"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterConfirmPwd:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 217
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterConfirmPwd:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 218
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameIconVisibilityConfirm:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_visibility"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->twgameUsercenterConfirmPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 224
    iget-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->isPasswordVisibleConfirm:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->isPasswordVisibleConfirm:Z

    return-void
.end method

.method private updatePassword(Ljava/lang/String;)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil$2;

    invoke-direct {v2, p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil$2;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;)V

    invoke-static {v0, p1, v1, v2}, Lcom/tw/gamesdk/net/RequestUtils;->changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method


# virtual methods
.method public doTwgameUsercenterChangeResetPwdDialog()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->baseDialog:Landroid/app/Dialog;

    .line 64
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_change_reset_pwd"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->loginView:Landroid/view/View;

    .line 68
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->baseDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->loginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 71
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 73
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->initViews()V

    .line 75
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->initData()V

    .line 77
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->setupListeners()V

    return-void
.end method

.method public synthetic lambda$setupListeners$1$TwgameUsercenterChangeResetPwdUtil(Landroid/view/View;)V
    .locals 1

    .line 85
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->activity:Landroid/app/Activity;

    const-string v0, "UserCenterPasswordPerform"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->selectPassword()V

    return-void
.end method

.method public synthetic lambda$setupListeners$2$TwgameUsercenterChangeResetPwdUtil(Landroid/view/View;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->togglePasswordVisibility()V

    return-void
.end method

.method public synthetic lambda$setupListeners$3$TwgameUsercenterChangeResetPwdUtil(Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterChangeResetPwdUtil;->togglePasswordVisibilityConfirm()V

    return-void
.end method
