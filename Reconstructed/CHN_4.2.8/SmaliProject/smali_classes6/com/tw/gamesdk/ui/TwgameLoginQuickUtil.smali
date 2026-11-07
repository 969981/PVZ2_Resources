.class public Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;
.super Lcom/tw/gamesdk/core/TwGameBaseDialog;
.source "TwgameLoginQuickUtil.java"


# instance fields
.field private btnSwitchAccount:Landroid/widget/TextView;

.field private cbAgreement:Landroid/widget/CheckBox;

.field private context:Landroid/content/Context;

.field private forgotAccount:Landroid/widget/TextView;

.field private isDropdownOpen:Z

.field private ivArrow:Landroid/widget/ImageView;

.field private layoutPhoneSelector:Landroid/widget/LinearLayout;

.field private loginView:Landroid/view/View;

.field private mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private phoneAdapter:Lcom/tw/gamesdk/adapter/PhoneAdapter;

.field private phoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tw/gamesdk/bean/SimpleUserData;",
            ">;"
        }
    .end annotation
.end field

.field private popupWindow:Landroid/widget/PopupWindow;

.field private simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

.field private tvPrivacyPolicy:Landroid/widget/TextView;

.field private tvUserAgreement:Landroid/widget/TextView;

.field private twgameLoginquickBtn:Landroid/widget/Button;

.field private twgameLoginquickPhone:Landroid/widget/TextView;

.field private twgameQuickOtherLogin:Landroid/widget/Button;

.field private twgameTopBack:Landroid/widget/ImageView;

.field private twgameTopClose:Landroid/widget/ImageView;

.field private userAgreementDialog:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/tw/gamesdk/core/TwGameBaseDialog;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->phoneList:Ljava/util/List;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->isDropdownOpen:Z

    .line 84
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->togglePhoneDropdown()V

    return-void
.end method

.method static synthetic access$100(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Landroid/widget/CheckBox;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->cbAgreement:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->closeDropdown()V

    return-void
.end method

.method static synthetic access$400(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Lcom/tw/pay/sdk/callback/TwCallback;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)Lcom/tw/gamesdk/bean/SimpleUserData;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    return-object p0
.end method

.method static synthetic access$502(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;Lcom/tw/gamesdk/bean/SimpleUserData;)Lcom/tw/gamesdk/bean/SimpleUserData;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->refreshToken()V

    return-void
.end method

.method static synthetic access$700(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->switchLogin()V

    return-void
.end method

.method private closeDropdown()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->ivArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_arrow_drop_down"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->isDropdownOpen:Z

    return-void
.end method

.method private getLoginParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 339
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "account"

    .line 340
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "phone"

    const-string v1, "-1"

    .line 341
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "login_type"

    invoke-virtual {v0, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p1, "token"

    .line 343
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "code"

    .line 344
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "password"

    .line 345
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getTwLoginQuickUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;
    .locals 1

    .line 81
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initData()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/gamesdk/core/UserDataManager;->getInstance(Landroid/content/Context;)Lcom/tw/gamesdk/core/UserDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/UserDataManager;->getAllUsers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->phoneList:Ljava/util/List;

    .line 112
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->twgameLoginquickPhone:Landroid/widget/TextView;

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tw/gamesdk/utils/DataMaskingUtil;->maskPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    new-instance v0, Lcom/tw/gamesdk/adapter/PhoneAdapter;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->phoneList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/tw/gamesdk/adapter/PhoneAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->phoneAdapter:Lcom/tw/gamesdk/adapter/PhoneAdapter;

    .line 116
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/gamesdk/core/UserDataManager;->getInstance(Landroid/content/Context;)Lcom/tw/gamesdk/core/UserDataManager;

    move-result-object v0

    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/core/UserDataManager;->setCurrentUser(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->twgameTopBack:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->twgameTopClose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_quick_selector"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->layoutPhoneSelector:Landroid/widget/LinearLayout;

    .line 190
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_quick_dropdown"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->ivArrow:Landroid/widget/ImageView;

    .line 191
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_quick_phone"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->twgameLoginquickPhone:Landroid/widget/TextView;

    .line 192
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_top_close"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->twgameTopClose:Landroid/widget/ImageView;

    .line 193
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_quick_btn"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->twgameLoginquickBtn:Landroid/widget/Button;

    .line 194
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_top_back"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->twgameTopBack:Landroid/widget/ImageView;

    .line 195
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_quick_other_login"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->twgameQuickOtherLogin:Landroid/widget/Button;

    .line 196
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_forgot_account"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->forgotAccount:Landroid/widget/TextView;

    .line 197
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    const-string v2, "tv_user_agreement"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->tvUserAgreement:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    const-string v2, "tv_privacy_policy"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->tvPrivacyPolicy:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    const-string v2, "cb_agreement"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->cbAgreement:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic lambda$setupListeners$0(Landroid/view/View;)V
    .locals 0

    .line 130
    sget-object p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private openDropdown()V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->phoneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    const-string v1, "twgame_dropdown_phone_list"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    const-string v2, "lv_phone_list"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 228
    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->phoneAdapter:Lcom/tw/gamesdk/adapter/PhoneAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->layoutPhoneSelector:Landroid/widget/LinearLayout;

    .line 231
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->popupWindow:Landroid/widget/PopupWindow;

    .line 236
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->popupWindow:Landroid/widget/PopupWindow;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 240
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->layoutPhoneSelector:Landroid/widget/LinearLayout;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 243
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->ivArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    const-string v2, "abc_ic_arrow_drop_right_black_24dp"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iput-boolean v4, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->isDropdownOpen:Z

    .line 248
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$4;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$4;-><init>(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private refreshToken()V
    .locals 1

    const-string v0, "\u5237\u65b0token begin"

    .line 349
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 350
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$6;-><init>(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V

    invoke-static {v0}, Lcom/tw/gamesdk/core/TokenUtils;->refreshToken(Lcom/tw/gamesdk/callback/GameSDKCallback$TokenCallback;)V

    return-void
.end method

.method private setupListeners()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->layoutPhoneSelector:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$1;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$1;-><init>(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->twgameTopClose:Landroid/widget/ImageView;

    sget-object v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameLoginQuickUtil$7cmDzsOUwq5Rk5B-Op4OrI0LlKQ;->INSTANCE:Lcom/tw/gamesdk/ui/-$$Lambda$TwgameLoginQuickUtil$7cmDzsOUwq5Rk5B-Op4OrI0LlKQ;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->phoneAdapter:Lcom/tw/gamesdk/adapter/PhoneAdapter;

    new-instance v1, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$2;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$2;-><init>(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/adapter/PhoneAdapter;->setOnPhoneItemClickListener(Lcom/tw/gamesdk/adapter/PhoneAdapter$OnPhoneItemClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->twgameLoginquickBtn:Landroid/widget/Button;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameLoginQuickUtil$o5CYcIoxU4qkdkKg87O5MFQuhKc;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameLoginQuickUtil$o5CYcIoxU4qkdkKg87O5MFQuhKc;-><init>(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->twgameQuickOtherLogin:Landroid/widget/Button;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameLoginQuickUtil$a0fmWS75NVd5t2VseO_dpx-wGok;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameLoginQuickUtil$a0fmWS75NVd5t2VseO_dpx-wGok;-><init>(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->forgotAccount:Landroid/widget/TextView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameLoginQuickUtil$ONKl3JDqmDEE28gFTxUej7USFAE;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameLoginQuickUtil$ONKl3JDqmDEE28gFTxUej7USFAE;-><init>(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->tvUserAgreement:Landroid/widget/TextView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameLoginQuickUtil$K40M3EDPAjqgN6xvRhYJnSlWcO4;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameLoginQuickUtil$K40M3EDPAjqgN6xvRhYJnSlWcO4;-><init>(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->tvPrivacyPolicy:Landroid/widget/TextView;

    new-instance v1, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameLoginQuickUtil$BkRVhbOj7G9VBqDbfRzUSQJQyF4;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/-$$Lambda$TwgameLoginQuickUtil$BkRVhbOj7G9VBqDbfRzUSQJQyF4;-><init>(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showAgreementDialog()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->getTwgameAgreementUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameAgreementUtil;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->doTwgameAgreementDialog()V

    .line 211
    new-instance v1, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$3;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$3;-><init>(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->setOnButtonClickListener(Lcom/tw/gamesdk/ui/TwgameAgreementUtil$OnButtonClickListener;)V

    return-void
.end method

.method private switchLogin()V
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tw/gamesdk/core/UserDataManager;->getInstance(Landroid/content/Context;)Lcom/tw/gamesdk/core/UserDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/UserDataManager;->getAllUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/gamesdk/core/UserDataManager;->getInstance(Landroid/content/Context;)Lcom/tw/gamesdk/core/UserDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/UserDataManager;->getAllUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 285
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "\u8d85\u65f6 \u2192 \u81ea\u52a8\u56de\u9000\u9a8c\u8bc1\u7801\u767b\u5f55 switchLogin"

    .line 286
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->getTwPayLoginUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->cbAgreement:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u8bf7\u9605\u8bfb\u5e76\u540c\u610f\u534f\u8bae"

    .line 291
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 292
    sget-object v1, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 293
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->showAgreementDialog()V

    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/gamesdk/core/UserDataManager;->getInstance(Landroid/content/Context;)Lcom/tw/gamesdk/core/UserDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/gamesdk/core/UserDataManager;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    if-eqz v0, :cond_3

    .line 297
    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->simpleUserData:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->getLoginParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$5;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil$5;-><init>(Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;)V

    invoke-static {v0, v1}, Lcom/tw/gamesdk/net/RequestUtils;->twgameLogin(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void

    .line 298
    :cond_3
    :goto_0
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->activity:Landroid/app/Activity;

    const-string v1, "\u5feb\u901f\u767b\u5f55\u5f02\u5e38"

    invoke-static {v1, v0}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method private togglePhoneDropdown()V
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->isDropdownOpen:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->closeDropdown()V

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->openDropdown()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addPhoneToList(Lcom/tw/gamesdk/bean/SimpleUserData;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->phoneList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->phoneList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 274
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->phoneAdapter:Lcom/tw/gamesdk/adapter/PhoneAdapter;

    invoke-virtual {p1}, Lcom/tw/gamesdk/adapter/PhoneAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public doLoginQuickDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 3

    .line 88
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 90
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    sput-object p1, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->baseDialog:Landroid/app/Dialog;

    .line 92
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    const-string v1, "twgame_login_quick_view"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->loginView:Landroid/view/View;

    .line 96
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->baseDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->loginView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 99
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 101
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->initViews()V

    .line 103
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->initData()V

    .line 105
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->setupListeners()V

    return-void
.end method

.method public synthetic lambda$setupListeners$1$TwgameLoginQuickUtil(Landroid/view/View;)V
    .locals 1

    .line 156
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->activity:Landroid/app/Activity;

    const-string v0, "QuickLogin"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->switchLogin()V

    return-void
.end method

.method public synthetic lambda$setupListeners$2$TwgameLoginQuickUtil(Landroid/view/View;)V
    .locals 1

    .line 162
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->activity:Landroid/app/Activity;

    const-string v0, "QuickLogin"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const-string p1, "\u8d85\u65f6 \u2192 \u81ea\u52a8\u56de\u9000\u9a8c\u8bc1\u7801\u767b\u5f55 twgameQuickOtherLogin"

    .line 166
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->getTwPayLoginUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->mTwCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-virtual {p1, v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method

.method public synthetic lambda$setupListeners$3$TwgameLoginQuickUtil(Landroid/view/View;)V
    .locals 1

    .line 170
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->activity:Landroid/app/Activity;

    const-string v0, "QuickLogin"

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/ClickUtil;->canClick(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 173
    :cond_0
    sget-object p1, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->baseDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 174
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->getTwGameChangeAccountUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tw/gamesdk/ui/TwgameChangeAccountUtil;->doChangeAccoutDialog(Z)V

    return-void
.end method

.method public synthetic lambda$setupListeners$4$TwgameLoginQuickUtil(Landroid/view/View;)V
    .locals 0

    const-string p1, "\u70b9\u51fb\u7528\u6237\u534f\u8bae"

    .line 177
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 178
    sget-object p1, Lcom/tw/gamesdk/net/RequestUtils;->USER_AGREEMENT_URL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->openWebView(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setupListeners$5$TwgameLoginQuickUtil(Landroid/view/View;)V
    .locals 0

    const-string p1, "\u70b9\u51fb\u9690\u79c1\u653f\u7b56"

    .line 183
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 184
    sget-object p1, Lcom/tw/gamesdk/net/RequestUtils;->PRIVACY_POLICY_URL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->openWebView(Ljava/lang/String;)V

    return-void
.end method

.method public onPhoneSelected(Ljava/lang/String;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->twgameLoginquickPhone:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->closeDropdown()V

    return-void
.end method

.method public updatePhoneList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tw/gamesdk/bean/SimpleUserData;",
            ">;)V"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->phoneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 279
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->phoneList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 280
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameLoginQuickUtil;->phoneAdapter:Lcom/tw/gamesdk/adapter/PhoneAdapter;

    invoke-virtual {p1}, Lcom/tw/gamesdk/adapter/PhoneAdapter;->notifyDataSetChanged()V

    return-void
.end method
