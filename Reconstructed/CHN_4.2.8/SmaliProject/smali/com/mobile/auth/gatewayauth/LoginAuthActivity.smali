.class public Lcom/mobile/auth/gatewayauth/LoginAuthActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DP_MODE:I = 0x40000000

.field public static final EXIST:Ljava/lang/String; = "exist"

.field private static final MODE_MASK:I = -0x40000000

.field private static final MODE_SHIFT:I = 0x1e

.field public static final STOP_LOADING:Ljava/lang/String; = "stop_loading"


# instance fields
.field private keyboardHeight:I

.field private mAccessCode:Ljava/lang/String;

.field private mBeginProtocol:Ljava/lang/String;

.field private mBodyDYVRL:Landroid/widget/RelativeLayout;

.field private mBodyRL:Landroid/widget/RelativeLayout;

.field private mIsDialog:Z

.field private mLoginRL:Landroid/widget/RelativeLayout;

.field private mLoginTV:Landroid/widget/TextView;

.field private mLogoIV:Landroid/widget/ImageView;

.field private mMainRelativeLayout:Landroid/widget/RelativeLayout;

.field private mMaskNumberTV:Landroid/widget/TextView;

.field private mNumberDYVRL:Landroid/widget/RelativeLayout;

.field private mNumberPhone:Ljava/lang/String;

.field private mNumberRL:Landroid/widget/RelativeLayout;

.field private mPnsLogger:Lcom/mobile/auth/o/a;

.field private mProgressDialog:Lcom/mobile/auth/y/a;

.field private mProtocol:Ljava/lang/String;

.field private mProtocolCbContainer:Landroid/widget/FrameLayout;

.field private mProtocolConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mobile/auth/gatewayauth/ui/b;",
            ">;"
        }
    .end annotation
.end field

.field private mProtocolRL:Landroid/widget/RelativeLayout;

.field private mProtocolSelectCB:Landroid/widget/CheckBox;

.field private mProtocolTV:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/RelativeLayout;

.field private mSlogan:Ljava/lang/String;

.field private mSloganTV:Landroid/widget/TextView;

.field private mSwitchTV:Landroid/widget/TextView;

.field private mTitleDYVRL:Landroid/widget/RelativeLayout;

.field private mTitleRL:Landroid/widget/RelativeLayout;

.field private mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

.field private mUIManager:Lcom/mobile/auth/gatewayauth/d;

.field private mUIManagerID:I

.field private mVendorClick:Ljava/lang/String;

.field private mVendorKey:Ljava/lang/String;

.field private mVendorProtocol:Ljava/lang/String;

.field private orientationIsLandscape:Z

.field private rootView:Landroid/view/View;

.field private rootViewVisiableHeight:I

.field private space:F

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pns-2.14.24-LogOnlineStandardCuumRelease_alijtca_plus"

    invoke-static {v0}, Lcom/ali/security/MinosSecurityLoad_16dba14f261cfe105b990854ef30de5f;->SLoad(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mIsDialog:Z

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolConfigs:Ljava/util/List;

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->orientationIsLandscape:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->space:F

    return-void
.end method

.method static synthetic access$000(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)V
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->handleBackPressedLogic()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/view/View;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->rootView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->finishAuthPage(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$1200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Z
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->checkAuthPageUILegal()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$1300(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/o/a;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mPnsLogger:Lcom/mobile/auth/o/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/CheckBox;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolSelectCB:Landroid/widget/CheckBox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;Z)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->showPrivacyDialog(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->rootViewVisiableHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$202(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;I)I
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->rootViewVisiableHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$300(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)I
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->keyboardHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$302(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;I)I
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->keyboardHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$400(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$500(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mMainRelativeLayout:Landroid/widget/RelativeLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$600(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)F
    .locals 0

    :try_start_0
    iget p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->space:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method static synthetic access$602(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;F)F
    .locals 0

    :try_start_0
    iput p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->space:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method static synthetic access$700(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mLoginRL:Landroid/widget/RelativeLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$802(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;Z)Z
    .locals 0

    :try_start_0
    iput-boolean p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->orientationIsLandscape:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$900(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/d;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private checkAuthPageUILegal()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolTV:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/m;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mLoginTV:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/m;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mMaskNumberTV:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/m;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mLoginTV:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mLoginTV:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/m;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolTV:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolTV:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/m;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mMaskNumberTV:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mMaskNumberTV:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/m;->a(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return v0
.end method

.method private dealProtocol(Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannableString;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mobile/auth/gatewayauth/ui/b;",
            ">;)",
            "Landroid/text/SpannableString;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getProtocolOwnColor()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/m;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorProtocol:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorClick:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getProtocolOwnColor()I

    move-result v3

    :goto_0
    invoke-direct {p0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getVendorProtocol(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/style/ClickableSpan;

    move-result-object v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorProtocol:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorClick:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getProtocolOneColor()I

    move-result v3

    goto :goto_0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x22

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobile/auth/gatewayauth/ui/b;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/ui/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/ui/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/ui/b;->d()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getProtocol(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/style/ClickableSpan;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/ui/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/ui/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorProtocol:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorProtocol:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/d;->g()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isCheckboxHidden()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;

    invoke-direct {p2, p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$5;-><init>(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mBeginProtocol:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mBeginProtocol:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mBeginProtocol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {v0, p2, v1, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private finishAuthPage(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/d;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mPnsLogger:Lcom/mobile/auth/o/a;

    const-string p2, "Exception finish!"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->finish()V

    :goto_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getAuthPageActOut()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getActivityIn()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getAuthPageActOut()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/nirvana/tools/core/AppUtils;->getAnimResID(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getActivityIn()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/nirvana/tools/core/AppUtils;->getAnimResID(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->overridePendingTransition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private native getProtocol(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/style/ClickableSpan;
.end method

.method private getResId(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "anim"

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1
.end method

.method private getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p1

    return p1

    :cond_2
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1
.end method

.method private getVendorProtocol(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/style/ClickableSpan;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$3;-><init>(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private handleBackPressedLogic()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const-string v1, "-72931"

    const-string v2, "\u7528\u6237\u53d6\u6d88\u767b\u5f55"

    invoke-direct {p0, v0, v1, v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->finishAuthPage(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/d;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private native init()V
.end method

.method private native initBodyView()Landroid/widget/RelativeLayout;
.end method

.method private native initDynamicView()V
.end method

.method private initIntentData()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mNumberPhone:Ljava/lang/String;

    const-string v1, "vendor"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorKey:Ljava/lang/String;

    const-string v1, "access_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mAccessCode:Ljava/lang/String;

    const-string v1, "startTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->startTime:J

    const-string v1, "ui_manager_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManagerID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private native initLoginRL()Landroid/widget/RelativeLayout;
.end method

.method private native initLogoView()Landroid/widget/ImageView;
.end method

.method private native initMaskNumberDynamicView()V
.end method

.method private native initNumberView()Landroid/widget/RelativeLayout;
.end method

.method private native initProtocolView()Landroid/widget/RelativeLayout;
.end method

.method private native initSloganView()Landroid/widget/TextView;
.end method

.method private native initSwitchView()Landroid/widget/TextView;
.end method

.method private native initTitleView()Landroid/widget/RelativeLayout;
.end method

.method private native initView()V
.end method

.method private native initXMLDynamicView()V
.end method

.method private isTouchPointInView(Landroid/view/View;II)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p1, v1

    if-lt p3, v1, :cond_1

    if-gt p3, p1, :cond_1

    if-lt p2, v2, :cond_1

    if-gt p2, v4, :cond_1

    return v3

    :cond_1
    return v0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return v0
.end method

.method private native removeDynamicView()V
.end method

.method private removeDynamicXmlView()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->u()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthRegisterXmlConfig;->getViewDelegate()Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/ui/AbstractPnsViewDelegate;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mMainRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private native removeNumberView()V
.end method

.method private restAllChildViews(Landroid/view/View;)V
    .locals 6

    :try_start_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-static {}, Lcom/mobile/auth/gatewayauth/a;->a()F

    move-result v5

    div-float v5, v4, v5

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_1

    invoke-virtual {p0, v5}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->px2dp(F)I

    move-result v4

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, v4, v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->makeTextSizeSpec(II)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->setTextSize(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->restAllChildViews(Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-static {}, Lcom/mobile/auth/gatewayauth/a;->a()F

    move-result v3

    div-float v3, v0, v3

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->px2dp(F)I

    move-result v0

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->makeTextSizeSpec(II)I

    move-result v0

    invoke-virtual {v2, p1, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->setTextSize(Landroid/widget/TextView;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setDialogBackGroundAlpha(F)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setDimAmount(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private showPrivacyDialog(Z)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/mobile/auth/gatewayauth/d;->b(Ljava/lang/String;ZZ)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "vendor"

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ui_manager_id"

    iget v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManagerID:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertEntryAnimation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertExitAnimation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertEntryAnimation()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertExitAnimation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, p1, v1, v0, v2}, Lcom/nirvana/tools/core/SupportJarUtils;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v1, v0, v0}, Lcom/nirvana/tools/core/SupportJarUtils;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private updateDialogWithKeyboard()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;

    invoke-direct {v1, p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;-><init>(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private xmlLoadErrorCB()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public animateCheckBox()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getCheckBoxShakePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isCheckboxHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getCheckBoxShakePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nirvana/tools/core/AppUtils;->getAnimResID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolSelectCB:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public animateProtocolTV()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getProtocolShakePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getProtocolShakePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nirvana/tools/core/AppUtils;->getAnimResID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget-boolean v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mIsDialog:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isTapAuthPageMaskClosePage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mMainRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2, v0, v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->isTouchPointInView(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/String;)V

    const-string v0, "-72931"

    const-string v1, "\u7528\u6237\u53d6\u6d88\u767b\u5f55"

    invoke-direct {p0, v3, v0, v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->finishAuthPage(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getUIManagerID()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManagerID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public hideLoadingDialog()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isHiddenLoading()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

    invoke-virtual {v0}, Lcom/mobile/auth/y/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

    invoke-virtual {v0}, Lcom/mobile/auth/y/a;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public makeTextSizeSpec(II)I
    .locals 1

    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr p1, v0

    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    return p1
.end method

.method protected native onActivityResult(IILandroid/content/Intent;)V
.end method

.method public onBackPressed()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    const/4 v0, 0x1

    const-string v1, "-72931"

    const-string v2, "\u7528\u6237\u53d6\u6d88\u767b\u5f55"

    invoke-direct {p0, v0, v1, v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->finishAuthPage(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/d;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected native onCreate(Landroid/os/Bundle;)V
.end method

.method protected onDestroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->E()V

    :cond_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->hideLoadingDialog()V

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->removeDynamicView()V

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->removeNumberView()V

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->removeDynamicXmlView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "protocol_checkbox_state"

    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/d;->d()V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v1, p0}, Lcom/mobile/auth/gatewayauth/d;->a(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolSelectCB:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolSelectCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mLoginRL:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mLoginRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mLoginRL:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getStatusBarColor()I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/AuthUIConfig;ILandroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    const-string v0, "number"

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mNumberPhone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vendor"

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "access_code"

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mAccessCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startTime"

    iget-wide v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->startTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "ui_manager_id"

    iget v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManagerID:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolSelectCB:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isCheckboxHidden()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "protocol_checkbox_state"

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolSelectCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "number"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mNumberPhone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vendor"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mVendorKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "access_code"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mAccessCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->startTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "ui_manager_id"

    iget v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManagerID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public openUserPage(Ljava/lang/Class;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-lez p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public px2dp(F)I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1

    :catch_0
    float-to-int p1, p1

    return p1
.end method

.method public queryCheckBoxIsChecked()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isCheckboxHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolSelectCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setProtocolChecked(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolSelectCB:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProtocolSelectCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public showLoadingDialog()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isHiddenLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mPnsLogger:Lcom/mobile/auth/o/a;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "LoginAuthActivity showLoadingDialog = "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "; isShowLoadingDialog = true"

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mobile/auth/y/a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/d;->b()Z

    move-result v4

    invoke-direct {v0, v1, v2, v4}, Lcom/mobile/auth/y/a;-><init>(Ljava/lang/ref/WeakReference;Lcom/mobile/auth/gatewayauth/AuthUIConfig;Z)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

    new-instance v1, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$7;

    invoke-direct {v1, p0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$7;-><init>(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)V

    invoke-virtual {v0, v1}, Lcom/mobile/auth/y/a;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_1
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

    invoke-virtual {v0, v3}, Lcom/mobile/auth/y/a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

    invoke-virtual {v0, v3}, Lcom/mobile/auth/y/a;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

    invoke-virtual {v0}, Lcom/mobile/auth/y/a;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
