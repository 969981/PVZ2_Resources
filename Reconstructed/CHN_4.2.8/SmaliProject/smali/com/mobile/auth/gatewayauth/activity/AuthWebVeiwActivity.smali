.class public Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# instance fields
.field private mName:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReturnBtn:Landroid/widget/ImageButton;

.field private mTitleRL:Landroid/widget/RelativeLayout;

.field private mTitleTV:Landroid/widget/TextView;

.field private mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)Landroid/widget/ProgressBar;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mProgressBar:Landroid/widget/ProgressBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$100(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)Landroid/widget/TextView;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mTitleTV:Landroid/widget/TextView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$200(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$300(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
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


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "id"

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ui_manager_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/d;->a(I)Lcom/mobile/auth/gatewayauth/d;

    move-result-object v2

    const/4 v4, 0x1

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mobile/auth/o/a;->a(Landroid/content/Context;)Lcom/mobile/auth/o/a;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "UIManager is null!|ID:"

    aput-object v7, v6, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-virtual {v5, v6}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    sget-object v1, Lcom/mobile/auth/gatewayauth/d;->a:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    :goto_0
    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/d;->r()Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "orientation"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->setRequestedOrientation(I)V

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/d;->i()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "style"

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "authsdk_app_theme_light"

    invoke-static {p0, v1, v5}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->setTheme(I)V

    goto :goto_3

    :cond_1
    const-string v1, "authsdk_app_theme_day"

    invoke-static {p0, v1, v5}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :goto_3
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    :cond_2
    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/d;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebViewStatusBarColor()I

    move-result p1

    sget v1, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_WEB_STATUS_BAR_COLOR:I

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebNavColor()I

    move-result p1

    :cond_4
    const-string v1, "authsdk_dialog_layout"

    const-string v5, "layout"

    invoke-static {p0, v1, v5}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->setContentView(I)V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-static {v1, p1, p0}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/AuthUIConfig;ILandroid/app/Activity;)V

    const-string p1, "authsdk_title_tv"

    invoke-static {p0, p1, v0}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mTitleTV:Landroid/widget/TextView;

    const-string p1, "authsdk_title_rl"

    invoke-static {p0, p1, v0}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mTitleRL:Landroid/widget/RelativeLayout;

    const-string p1, "authsdk_back_btn"

    invoke-static {p0, p1, v0}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mReturnBtn:Landroid/widget/ImageButton;

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mTitleRL:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebNavColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mTitleTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebNavTextColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebNavTextSize()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mTitleTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebNavTextSize()I

    move-result v5

    :goto_4
    invoke-virtual {p1, v1, v5}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->setTextSize(Landroid/widget/TextView;I)V

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mTitleTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getNavTextSize()I

    move-result v5

    goto :goto_4

    :goto_5
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mReturnBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mReturnBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getNavReturnScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mReturnBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebNavReturnImgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebNavReturnImgPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mobile/auth/gatewayauth/utils/l;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_6
    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getNavReturnImgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_7
    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getNavReturnImgPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "authsdk_return_bg"

    invoke-static {p0, p1, v1}, Lcom/mobile/auth/gatewayauth/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_8
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mReturnBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mReturnBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getNavReturnImgWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/nirvana/tools/core/AppUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getNavReturnImgHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/nirvana/tools/core/AppUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mReturnBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$1;

    invoke-direct {v1, p0}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$1;-><init>(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/d;->b()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v1, 0xc02

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isStatusBarHidden()Z

    :cond_9
    const-string p1, "authsdk_progressBar"

    invoke-static {p0, p1, v0}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isWebHiddeProgress()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_6
    const-string p1, "authsdk_webview"

    invoke-static {p0, p1, v0}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mWebView:Landroid/webkit/WebView;

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getBottomNavBarColor()I

    move-result p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/m;->a(I)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mTitleRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mTitleRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setY(F)V

    :cond_b
    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/d;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isStatusBarHidden()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mTitleRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setY(F)V

    :cond_c
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$2;

    invoke-direct {v0, p0}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$2;-><init>(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$3;

    invoke-direct {v0, p0}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$3;-><init>(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isWebSupportedJavascript()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebCacheMode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mWebView:Landroid/webkit/WebView;

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebViewStatusBarColor()I

    move-result v0

    sget v1, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->DEFAULT_WEB_STATUS_BAR_COLOR:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getWebNavColor()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->mUIConfig:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-static {v1, v0, p0}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/AuthUIConfig;ILandroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
