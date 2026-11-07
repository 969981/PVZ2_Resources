.class public Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;
.super Lcom/tw/gamesdk/core/TwGameBaseDialog;
.source "TwgameUsercenterResetPhoneUtil.java"


# static fields
.field private static final INTERVAL:J = 0x3e8L

.field private static final TOTAL_TIME:J = 0xea60L


# instance fields
.field private context:Landroid/content/Context;

.field private loginView:Landroid/view/View;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mIsCountingDown:Z

.field private simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

.field private twgameChangeBindPhoneGetCode:Landroid/widget/TextView;

.field private twgameUsercenterBind:Landroid/widget/Button;

.field private twgameUsercenterClose:Landroid/widget/ImageView;

.field private twgameUsercenterPhone:Landroid/widget/EditText;

.field private twgameUsercenterResetPhoneCode:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/tw/gamesdk/core/TwGameBaseDialog;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->mIsCountingDown:Z

    .line 58
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->startCountDown()V

    return-void
.end method

.method static synthetic access$100(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;)Lcom/tw/gamesdk/bean/SimpleUserData;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    return-object p0
.end method

.method static synthetic access$102(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;Lcom/tw/gamesdk/bean/SimpleUserData;)Lcom/tw/gamesdk/bean/SimpleUserData;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->changePhone(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->twgameChangeBindPhoneGetCode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->mIsCountingDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->updateGetCodeButtonState()V

    return-void
.end method

.method static synthetic access$700(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->sendSMS(Ljava/lang/String;)V

    return-void
.end method

.method private bindAccountSub()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->twgameUsercenterResetPhoneCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->twgameUsercenterPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-direct {p0, v1}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidPhoneNumber phone:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->activity:Landroid/app/Activity;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7"

    invoke-static {v1, v0}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->activity:Landroid/app/Activity;

    const-string v1, "\u8bf7\u7ed1\u5b9a\u4e0d\u540c\u7684\u624b\u673a\u53f7"

    invoke-static {v1, v0}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 181
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 185
    :cond_2
    invoke-static {v1}, Lcom/tw/pay/sdk/tool/Tools;->checkPhone(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 186
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->context:Landroid/content/Context;

    const-string v1, "error_phone"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 189
    :cond_3
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tw/gamesdk/core/GameSDK;->checkTokenExpires()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    new-instance v2, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$4;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tw/gamesdk/core/TokenUtils;->refreshToken(Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;)V

    goto :goto_0

    .line 218
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->changePhone(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 182
    :cond_5
    :goto_1
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->activity:Landroid/app/Activity;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-static {v1, v0}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method private changePhone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5;

    invoke-direct {v2, p0, p2}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$5;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, v1, v2}, Lcom/tw/gamesdk/net/RequestUtils;->changePhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public static getTwgameUsercenterResetPhoneUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;
    .locals 1

    .line 54
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initData()V
    .locals 1

    .line 260
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDK;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_change_bind_phone_get_code"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->twgameChangeBindPhoneGetCode:Landroid/widget/TextView;

    .line 265
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_reset_phone_close"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->twgameUsercenterClose:Landroid/widget/ImageView;

    .line 266
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_phone"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->twgameUsercenterPhone:Landroid/widget/EditText;

    .line 267
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_reset_phone_code"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->twgameUsercenterResetPhoneCode:Landroid/widget/EditText;

    .line 268
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_bind"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->twgameUsercenterBind:Landroid/widget/Button;

    return-void
.end method

.method private isValidPhoneNumber(Ljava/lang/String;)Z
    .locals 0

    .line 309
    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->checkPhone(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$setupListeners$0(Landroid/view/View;)V
    .locals 0

    .line 81
    sget-object p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private sendSMS(Ljava/lang/String;)V
    .locals 4

    .line 135
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$2;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$2;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 141
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$3;

    invoke-direct {v2, p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$3;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;)V

    const-string v3, "verifyNewPhone"

    invoke-static {v0, v1, v3, p1, v2}, Lcom/tw/gamesdk/net/RequestUtils;->sendCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method private setupListeners()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->twgameUsercenterClose:Landroid/widget/ImageView;

    sget-object v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterResetPhoneUtil$YCqN5jHkwo_2fdQM46o8_pA4AWA;->INSTANCE:Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterResetPhoneUtil$YCqN5jHkwo_2fdQM46o8_pA4AWA;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->twgameChangeBindPhoneGetCode:Landroid/widget/TextView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterResetPhoneUtil$N0znvqXDy-UoubN-msepKkmE0gE;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterResetPhoneUtil$N0znvqXDy-UoubN-msepKkmE0gE;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->twgameUsercenterBind:Landroid/widget/Button;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterResetPhoneUtil$6FBAod407O_WQQeHMy6ck7fRUAU;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameUsercenterResetPhoneUtil$6FBAod407O_WQQeHMy6ck7fRUAU;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startCountDown()V
    .locals 8

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->mIsCountingDown:Z

    .line 275
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->twgameChangeBindPhoneGetCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 277
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$6;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$6;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;JJ)V

    .line 291
    invoke-virtual {v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private updateGetCodeButtonState()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->twgameUsercenterPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-direct {p0, v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->mIsCountingDown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 301
    :goto_0
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->twgameChangeBindPhoneGetCode:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 302
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->twgameChangeBindPhoneGetCode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->context:Landroid/content/Context;

    const-string v3, "twgame_color_link_blue_pressed"

    goto :goto_1

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->context:Landroid/content/Context;

    const-string v3, "twgame_color_text_hint"

    :goto_1
    invoke-static {v0, v3}, Lcom/tw/pay/sdk/tool/Resource;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 302
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public doTwgameUsercenterResetPhoneDialog()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->baseDialog:Landroid/app/Dialog;

    .line 63
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_usercenter_change_reset_phone"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->loginView:Landroid/view/View;

    .line 67
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->baseDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->loginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 70
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 72
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->initViews()V

    .line 74
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->initData()V

    .line 76
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->setupListeners()V

    return-void
.end method

.method public synthetic lambda$setupListeners$1$TwgameUsercenterResetPhoneUtil(Landroid/view/View;)V
    .locals 1

    .line 84
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->activity:Landroid/app/Activity;

    const-string v0, "UserCenterBindPhone"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->twgameUsercenterPhone:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->checkPhone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->context:Landroid/content/Context;

    const-string v0, "error_phone"

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_1
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/GameSDK;->checkTokenExpires()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil$1;-><init>(Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tw/gamesdk/core/TokenUtils;->refreshToken(Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;)V

    goto :goto_0

    .line 122
    :cond_2
    invoke-direct {p0, p1}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->sendSMS(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$setupListeners$2$TwgameUsercenterResetPhoneUtil(Landroid/view/View;)V
    .locals 1

    .line 127
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->activity:Landroid/app/Activity;

    const-string v0, "UserCenterBindPhone"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->bindAccountSub()V

    return-void
.end method
