.class public Lcom/popcap/pvz2cthddev/AndroidViewContainer;
.super Landroid/widget/RelativeLayout;
.source "AndroidViewContainer.java"


# instance fields
.field private closeBtn:Landroid/widget/ImageButton;

.field private mCurrentViewHeight:I

.field private mCurrentViewWidth:I

.field mHasInit:Z

.field private mHeight:I

.field private mScreenMaxHeight:I

.field private mScreenMaxWidth:I

.field private mViewMaxHeight:I

.field private mViewMaxWidth:I

.field private mWidth:I

.field url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->url:Ljava/lang/String;

    const/16 p2, 0xa00

    .line 43
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mScreenMaxWidth:I

    const/16 p2, 0x6b3

    .line 44
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mScreenMaxHeight:I

    const/4 p2, 0x0

    .line 45
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mViewMaxWidth:I

    .line 46
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mViewMaxHeight:I

    .line 47
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mCurrentViewWidth:I

    .line 48
    iput p2, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mCurrentViewHeight:I

    .line 49
    iput-boolean p2, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mHasInit:Z

    const/16 p2, 0x10

    .line 51
    invoke-virtual {p0, p2}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->setVerticalGravity(I)V

    const/4 p2, 0x1

    .line 52
    invoke-virtual {p0, p2}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->setHorizontalGravity(I)V

    .line 54
    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->CalcAndInitWebView(Landroid/content/Context;)V

    return-void
.end method

.method private CalcAndInitWebView(Landroid/content/Context;)V
    .locals 6

    .line 59
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 60
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 62
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mWidth:I

    .line 63
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mHeight:I

    .line 65
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mWidth:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mHeight:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v2, "ViewContainer"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x74d

    .line 70
    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mViewMaxWidth:I

    const/16 v1, 0x619

    .line 71
    iput v1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mViewMaxHeight:I

    .line 73
    iget v3, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mHeight:I

    mul-int v4, v1, v3

    iget v5, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mScreenMaxHeight:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mCurrentViewHeight:I

    mul-int/2addr v4, v0

    .line 74
    div-int/2addr v4, v1

    .line 76
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mCurrentViewWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    .line 77
    iput v1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mCurrentViewHeight:I

    .line 79
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget v1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->mCurrentViewHeight:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->InitWebView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/popcap/pvz2cthddev/AndroidViewContainer;)Landroid/webkit/WebView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private px2dip(Landroid/content/Context;F)I
    .locals 0

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method


# virtual methods
.method public Destroy()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 211
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    const-string v1, "JavascriptInterface"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 213
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->removeView(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 215
    iput-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method public InitCloseButton(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 140
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->closeBtn:Landroid/widget/ImageButton;

    .line 142
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 143
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->closeBtn:Landroid/widget/ImageButton;

    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidViewContainer$1;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/AndroidViewContainer$1;-><init>(Lcom/popcap/pvz2cthddev/AndroidViewContainer;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->closeBtn:Landroid/widget/ImageButton;

    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidViewContainer$2;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/AndroidViewContainer$2;-><init>(Lcom/popcap/pvz2cthddev/AndroidViewContainer;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->closeBtn:Landroid/widget/ImageButton;

    return-object p1
.end method

.method public InitWebView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 176
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 177
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 178
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 183
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    .line 184
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v2, 0x2

    .line 185
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 186
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/popcap/pvz2cthddev/AndroidForJs;

    invoke-direct {v2, p1}, Lcom/popcap/pvz2cthddev/AndroidForJs;-><init>(Landroid/content/Context;)V

    const-string p1, "JavascriptInterface"

    invoke-virtual {v0, v2, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 189
    const-string p1, "ViewContainer"

    const-string v0, "measure3"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/popcap/pvz2cthddev/AndroidViewContainer$3;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/AndroidViewContainer$3;-><init>(Lcom/popcap/pvz2cthddev/AndroidViewContainer;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 200
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    return-object p1
.end method

.method public PassCallAddPlayTimes(Ljava/lang/String;I)V
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:native_call_js(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\',\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\')"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    const-string p2, "CallAddPlayTimes"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public PassCallConsumeCash(Ljava/lang/String;I)V
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:native_call_js(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\',\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\')"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    const-string p2, "CallConsumeCash"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public PassCallLottery(Ljava/lang/String;III)V
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:native_call_js(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\',\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\')"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    const-string p2, "CallLottery"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public PassCallScoreStoreBuy(Ljava/lang/String;I)V
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:native_call_js(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\',\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\')"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    const-string p2, "CallScoreStoreBuy"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public PassCallScoreStoreInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:native_call_js(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\',\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\')"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    const-string p2, "CallScoreStoreInfo"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public PassCallSettlement(Ljava/lang/String;I)V
    .locals 2

    .line 97
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:native_call_js(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\',\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\')"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    const-string p2, "CallSettlement"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
