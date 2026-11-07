.class public Lcom/tw/gamesdk/ui/TwgameActivateUtil;
.super Lcom/tw/gamesdk/core/TwGameBaseDialog;
.source "TwgameActivateUtil.java"


# static fields
.field private static final INTERVAL:J = 0x3e8L

.field private static final TOTAL_TIME:J = 0xea60L

.field private static mCount:I


# instance fields
.field private btnSmallConfirm:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private loginView:Landroid/view/View;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mIsCountingDown:Z

.field private mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

.field private twgameActivateAccount:Landroid/widget/EditText;

.field private twgameActivateCode:Landroid/widget/EditText;

.field private twgameActivateConfirm:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/tw/gamesdk/core/TwGameBaseDialog;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->mIsCountingDown:Z

    .line 62
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->startCountDown()V

    return-void
.end method

.method static synthetic access$100(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Lcom/tw/pay/sdk/callback/TwCallback;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Lcom/tw/gamesdk/bean/SimpleUserData;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Landroid/widget/Button;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->btnSmallConfirm:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$502(Lcom/tw/gamesdk/ui/TwgameActivateUtil;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->mIsCountingDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)Landroid/widget/Button;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->twgameActivateConfirm:Landroid/widget/Button;

    return-object p0
.end method

.method private getLoginParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "account"

    .line 172
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "active_code"

    .line 174
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getTwgameActivateUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameActivateUtil;
    .locals 1

    .line 57
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initData()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->twgameActivateAccount:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_activate_confirm"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->twgameActivateConfirm:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_activate_account"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->twgameActivateAccount:Landroid/widget/EditText;

    .line 105
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_activate_code"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->twgameActivateCode:Landroid/widget/EditText;

    .line 106
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->context:Landroid/content/Context;

    const-string v2, "btn_small_confirm"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->btnSmallConfirm:Landroid/widget/Button;

    return-void
.end method

.method private performLogin()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->twgameActivateCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->activity:Landroid/app/Activity;

    const-string v1, "\u8bf7\u8f93\u5165\u6fc0\u6d3b\u7801"

    invoke-static {v1, v0}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 115
    :cond_0
    sget v1, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->mCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 116
    sget-object v1, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/tw/gamesdk/ui/TwgameActivateUtil$1;

    invoke-direct {v2, p0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil$1;-><init>(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCountDown mCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 125
    :cond_1
    sget v1, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->mCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->mCount:I

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->getLoginParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;

    invoke-direct {v2, p0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil$2;-><init>(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)V

    invoke-static {v0, v1, v2}, Lcom/tw/gamesdk/net/RequestUtils;->twgameActivate(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method private setupListeners()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->twgameActivateConfirm:Landroid/widget/Button;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameActivateUtil$2d7bi9sSIOV8QpAiWd1zhLiS50Q;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameActivateUtil$2d7bi9sSIOV8QpAiWd1zhLiS50Q;-><init>(Lcom/tw/gamesdk/ui/TwgameActivateUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startCountDown()V
    .locals 8

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->mIsCountingDown:Z

    .line 180
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->twgameActivateConfirm:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameActivateUtil$3;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/tw/gamesdk/ui/TwgameActivateUtil$3;-><init>(Lcom/tw/gamesdk/ui/TwgameActivateUtil;JJ)V

    .line 195
    invoke-virtual {v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public doActivateDialog(Lcom/tw/pay/sdk/callback/TwCallback;Lcom/tw/gamesdk/bean/SimpleUserData;)V
    .locals 2

    .line 66
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 67
    iput-object p2, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    .line 68
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->context:Landroid/content/Context;

    const-string v0, "TwGameDialogTheme"

    invoke-virtual {p0, p2, v0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->getOtherDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p2

    sput-object p2, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->baseOtherDialog:Landroid/app/Dialog;

    .line 72
    iget-object p2, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->context:Landroid/content/Context;

    const-string v0, "twgame_activate_code"

    invoke-static {p2, v0}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->loginView:Landroid/view/View;

    .line 74
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->baseOtherDialog:Landroid/app/Dialog;

    iget-object p2, p0, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->loginView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 76
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->baseOtherDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 79
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->initViews()V

    .line 82
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->setupListeners()V

    .line 85
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->initData()V

    return-void
.end method

.method public synthetic lambda$setupListeners$0$TwgameActivateUtil(Landroid/view/View;)V
    .locals 1

    .line 95
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->activity:Landroid/app/Activity;

    const-string v0, "ActivateCode"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->performLogin()V

    return-void
.end method
