.class public Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# static fields
.field private static final DP_MODE:I = 0x40000000

.field public static final EXIST:Ljava/lang/String; = "exist"

.field private static final MODE_MASK:I = -0x40000000

.field private static final MODE_SHIFT:I = 0x1e

.field public static final STOP_LOADING:Ljava/lang/String; = "stop_loading"


# instance fields
.field private dailogWidth:I

.field private mAgreeBtn:Landroid/widget/TextView;

.field private mBodyRL:Landroid/widget/RelativeLayout;

.field private mBtnRL:Landroid/widget/RelativeLayout;

.field private mMainBackground:Landroid/widget/RelativeLayout;

.field private mMainRelativeLayout:Landroid/widget/RelativeLayout;

.field private mPnsLogger:Lcom/mobile/auth/o/a;

.field private mProgressDialog:Lcom/mobile/auth/y/a;

.field private mProtocol:Ljava/lang/String;

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

.field private mProtocolTV:Landroid/widget/TextView;

.field private mTitleRL:Landroid/widget/RelativeLayout;

.field private mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

.field private mUIManager:Lcom/mobile/auth/gatewayauth/d;

.field private mUIManagerID:I

.field private mVendorClick:Ljava/lang/String;

.field private mVendorKey:Ljava/lang/String;

.field private mVendorProtocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pns-2.14.24-LogOnlineStandardCuumRelease_alijtca_plus"

    invoke-static {v0}, Lcom/ali/security/MinosSecurityLoad_16dba14f261cfe105b990854ef30de5f;->SLoad(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mProtocol:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mProtocolConfigs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mVendorKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$100(Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;)Lcom/mobile/auth/gatewayauth/d;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$200(Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->finishAuthPage(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$300(Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
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

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertOperatorColor()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/m;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertOperatorColor()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertContentColor()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertContentColor()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getProtocolOneColor()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mVendorProtocol:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mVendorClick:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->getVendorProtocol(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/style/ClickableSpan;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x22

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobile/auth/gatewayauth/ui/b;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/ui/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/ui/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/ui/b;->d()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->getProtocol(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/style/ClickableSpan;

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

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mVendorProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mVendorProtocol:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mVendorProtocol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {v0, v1, p2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private finishAuthPage(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "HasAgree"

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "code"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "msg"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {p1, p0}, Lcom/mobile/auth/gatewayauth/d;->d(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private native getProtocol(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/style/ClickableSpan;
.end method

.method private getVendorProtocol(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/style/ClickableSpan;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity$8;-><init>(Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private native init()V
.end method

.method private native initBodyView()Landroid/widget/RelativeLayout;
.end method

.method private native initBtnLayoutDynamicView()V
.end method

.method private initBtnLayoutView()Landroid/view/View;
    .locals 8

    :try_start_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mBtnRL:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertPageBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertPageBackgroundPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertCornerRadiusArray()[I

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertCornerRadiusArray()[I

    move-result-object v1

    array-length v1, v1

    const/4 v4, 0x4

    if-lt v1, v4, :cond_1

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v5, 0x8

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v6, v5, v2

    const/4 v7, 0x1

    aput v6, v5, v7

    const/4 v7, 0x2

    aput v6, v5, v7

    aput v6, v5, v3

    iget-object v6, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v6}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertCornerRadiusArray()[I

    move-result-object v6

    aget v6, v6, v7

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->transferCorner(F)F

    move-result v6

    aput v6, v5, v4

    const/4 v4, 0x5

    iget-object v6, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v6}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertCornerRadiusArray()[I

    move-result-object v6

    aget v6, v6, v7

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->transferCorner(F)F

    move-result v6

    aput v6, v5, v4

    const/4 v4, 0x6

    iget-object v6, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v6}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertCornerRadiusArray()[I

    move-result-object v6

    aget v6, v6, v3

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->transferCorner(F)F

    move-result v6

    aput v6, v5, v4

    const/4 v4, 0x7

    iget-object v6, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v6}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertCornerRadiusArray()[I

    move-result-object v6

    aget v6, v6, v3

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->transferCorner(F)F

    move-result v6

    aput v6, v5, v4

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertBackgroundColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mBtnRL:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v4, v1}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mBtnRL:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertBackgroundColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mBodyRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mBtnRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mBtnRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mBtnRL:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->initBtnView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/utils/l;->a(Landroid/view/ViewGroup;Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->initBtnLayoutDynamicView()V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mBtnRL:Landroid/widget/RelativeLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private native initBtnView()Landroid/view/View;
.end method

.method private initContentLayoutDynamicView()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->t()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/d;->E()V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;->getCustomInterface()Lcom/mobile/auth/gatewayauth/CustomInterface;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity$3;

    invoke-direct {v5, p0, v0, v2}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity$3;-><init>(Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;->getRootViewId()I

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2, v4}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->restAllChildViewsByName(Ljava/lang/String;Landroid/view/View;)V

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mProtocolRL:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Lcom/mobile/auth/gatewayauth/utils/l;->a(Landroid/view/ViewGroup;Landroid/view/View;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/Throwable;)V
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

.method private initIntentData()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "vendor"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mVendorKey:Ljava/lang/String;

    const-string v1, "ui_manager_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManagerID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private native initProtocolView()Landroid/widget/RelativeLayout;
.end method

.method private native initTitleLayoutDynamicView()V
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

.method private native removeDynamicXmlView()V
.end method

.method private native restAllChildViews(Landroid/view/View;)V
.end method

.method private restAllChildViewsByName(Ljava/lang/String;Landroid/view/View;)V
    .locals 7

    :try_start_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-static {}, Lcom/mobile/auth/gatewayauth/a;->a()F

    move-result v6

    div-float v6, v5, v6

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v5, p1}, Lcom/mobile/auth/gatewayauth/d;->g(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0, v5, v2}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->makeTextSizeSpec(II)I

    move-result v5

    :goto_1
    invoke-virtual {v6, v4, v5}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->setTextSize(Landroid/widget/TextView;I)V

    goto :goto_3

    :cond_0
    invoke-virtual {p0, v6}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->px2dp(F)I

    move-result v5

    iget-object v6, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v6, p1, v5}, Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0, v5, v2}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->makeTextSizeSpec(II)I

    move-result v5

    goto :goto_1

    :cond_1
    instance-of v5, p2, Landroid/widget/Button;

    if-eqz v5, :cond_3

    move-object v4, p2

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getTextSize()F

    move-result v4

    invoke-static {}, Lcom/mobile/auth/gatewayauth/a;->a()F

    move-result v5

    div-float v5, v4, v5

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v4, p1}, Lcom/mobile/auth/gatewayauth/d;->g(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-object v6, p2

    check-cast v6, Landroid/widget/Button;

    invoke-virtual {p0, v4, v2}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->makeTextSizeSpec(II)I

    move-result v4

    :goto_2
    invoke-virtual {v5, v6, v4}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->setTextSize(Landroid/widget/TextView;I)V

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v5}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->px2dp(F)I

    move-result v4

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v5, p1, v4}, Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-object v6, p2

    check-cast v6, Landroid/widget/Button;

    invoke-virtual {p0, v4, v2}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->makeTextSizeSpec(II)I

    move-result v4

    goto :goto_2

    :cond_3
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->restAllChildViewsByName(Ljava/lang/String;Landroid/view/View;)V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-static {}, Lcom/mobile/auth/gatewayauth/a;->a()F

    move-result v3

    div-float v3, v0, v3

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/d;->g(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->makeTextSizeSpec(II)I

    move-result v0

    :goto_4
    invoke-virtual {p1, p2, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->setTextSize(Landroid/widget/TextView;I)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v3}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->px2dp(F)I

    move-result v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v1, p1, v0}, Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->makeTextSizeSpec(II)I

    move-result v0

    goto :goto_4

    :cond_7
    instance-of v0, p2, Landroid/widget/Button;

    if-eqz v0, :cond_9

    move-object v0, p2

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextSize()F

    move-result v0

    invoke-static {}, Lcom/mobile/auth/gatewayauth/a;->a()F

    move-result v3

    div-float v3, v0, v3

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/d;->g(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    check-cast p2, Landroid/widget/Button;

    invoke-virtual {p0, v0, v2}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->makeTextSizeSpec(II)I

    move-result v0

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v3}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->px2dp(F)I

    move-result v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v1, p1, v0}, Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    check-cast p2, Landroid/widget/Button;

    invoke-virtual {p0, v0, v2}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->makeTextSizeSpec(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
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
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->getWindow()Landroid/view/Window;

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

.method private transferCorner(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/nirvana/tools/core/AppUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float p1, p1

    return p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method


# virtual methods
.method public native cancelPrivacyDialog()V
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isTapPrivacyAlertMaskCloseAlert()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mMainRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2, v0, v1}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->isTouchPointInView(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mVendorKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/d;->f(Ljava/lang/String;)V

    const-string v0, "700007"

    const-string v1, "\u9690\u79c1\u534f\u8bae\u4e8c\u6b21\u5f39\u7a97\u5173\u95ed"

    invoke-direct {p0, v3, v0, v1}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->finishAuthPage(ZLjava/lang/String;Ljava/lang/String;)V

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

.method public getProtroColor(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertContentColor()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getPrivacyAlertContentColor()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1
.end method

.method public getUIManagerID()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManagerID:I
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
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isHiddenLoading()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

    invoke-virtual {v0}, Lcom/mobile/auth/y/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

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

.method public onBackPressed()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mVendorKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/d;->f(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "700007"

    const-string v2, "\u9690\u79c1\u534f\u8bae\u4e8c\u6b21\u5f39\u7a97\u5173\u95ed"

    invoke-direct {p0, v0, v1, v2}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->finishAuthPage(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected native onCreate(Landroid/os/Bundle;)V
.end method

.method protected onDestroy()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->hideLoadingDialog()V

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->removeDynamicXmlView()V

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->removeDynamicView()V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/d;->c(Landroid/app/Activity;)V

    :cond_0
    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

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
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    const-string v0, "vendor"

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mVendorKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ui_manager_id"

    iget v1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManagerID:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

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
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "vendor"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mVendorKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ui_manager_id"

    iget v2, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManagerID:I

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

.method public px2dp(F)I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->getResources()Landroid/content/res/Resources;

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

.method public showLoadingDialog()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isHiddenLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mPnsLogger:Lcom/mobile/auth/o/a;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "PrivacyDialogActivity showLoadingDialog = "

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "; isShowLoadingDialog = true"

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mobile/auth/y/a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mUIManager:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/d;->b()Z

    move-result v4

    invoke-direct {v0, v1, v2, v4}, Lcom/mobile/auth/y/a;-><init>(Ljava/lang/ref/WeakReference;Lcom/mobile/auth/gatewayauth/AuthUIConfig;Z)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

    new-instance v1, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity$5;

    invoke-direct {v1, p0}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity$5;-><init>(Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/mobile/auth/y/a;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_1
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

    invoke-virtual {v0, v3}, Lcom/mobile/auth/y/a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->mProgressDialog:Lcom/mobile/auth/y/a;

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
