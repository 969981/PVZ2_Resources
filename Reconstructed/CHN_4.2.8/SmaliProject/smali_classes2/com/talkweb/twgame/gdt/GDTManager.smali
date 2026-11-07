.class public Lcom/talkweb/twgame/gdt/GDTManager;
.super Ljava/lang/Object;
.source "GDTManager.java"


# static fields
.field private static adLoaded:Z

.field private static closeTime:I

.field private static iad:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

.field private static mActivity:Landroid/app/Activity;

.field private static mAppId:Ljava/lang/String;

.field private static mDialog:Landroid/app/AlertDialog;

.field private static mHandler:Landroid/os/Handler;

.field private static mRewardVideoAD:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

.field private static nativeExpressAD:Lcom/qq/e/ads/nativ/NativeExpressAD;

.field private static nativeExpressADView:Lcom/qq/e/ads/nativ/NativeExpressADView;

.field private static tv_close:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 332
    new-instance v0, Lcom/talkweb/twgame/gdt/GDTManager$4;

    invoke-direct {v0}, Lcom/talkweb/twgame/gdt/GDTManager$4;-><init>()V

    sput-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;
    .locals 1

    .line 37
    sget-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->iad:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .locals 1

    .line 37
    sget-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/qq/e/ads/rewardvideo/RewardVideoAD;
    .locals 1

    .line 37
    sget-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->mRewardVideoAD:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    return-object v0
.end method

.method static synthetic access$400()Lcom/qq/e/ads/nativ/NativeExpressADView;
    .locals 1

    .line 37
    sget-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->nativeExpressADView:Lcom/qq/e/ads/nativ/NativeExpressADView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/qq/e/ads/nativ/NativeExpressADView;)Lcom/qq/e/ads/nativ/NativeExpressADView;
    .locals 0

    .line 37
    sput-object p0, Lcom/talkweb/twgame/gdt/GDTManager;->nativeExpressADView:Lcom/qq/e/ads/nativ/NativeExpressADView;

    return-object p0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 37
    sget v0, Lcom/talkweb/twgame/gdt/GDTManager;->closeTime:I

    return v0
.end method

.method static synthetic access$510()I
    .locals 2

    .line 37
    sget v0, Lcom/talkweb/twgame/gdt/GDTManager;->closeTime:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/talkweb/twgame/gdt/GDTManager;->closeTime:I

    return v0
.end method

.method static synthetic access$600()Landroid/widget/TextView;
    .locals 1

    .line 37
    sget-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->tv_close:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .locals 1

    .line 37
    sget-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Landroid/app/AlertDialog;
    .locals 1

    .line 37
    sget-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static gdtInit(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "appId"
        }
    .end annotation

    .line 51
    sput-object p0, Lcom/talkweb/twgame/gdt/GDTManager;->mActivity:Landroid/app/Activity;

    .line 52
    sput-object p1, Lcom/talkweb/twgame/gdt/GDTManager;->mAppId:Ljava/lang/String;

    .line 53
    invoke-static {p0, p1}, Lcom/qq/e/comm/managers/GDTAdSdk;->initWithoutStart(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static getIAD(Ljava/lang/String;Lcom/talkweb/twgame/callback/ScreenCallback;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "posId",
            "callback"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->iad:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->close()V

    .line 79
    sget-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->iad:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->destroy()V

    const/4 v0, 0x0

    .line 80
    sput-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->iad:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 82
    :cond_0
    sget-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->iad:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    sget-object v1, Lcom/talkweb/twgame/gdt/GDTManager;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/talkweb/twgame/gdt/GDTManager$1;

    invoke-direct {v2, p1}, Lcom/talkweb/twgame/gdt/GDTManager$1;-><init>(Lcom/talkweb/twgame/callback/ScreenCallback;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)V

    sput-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->iad:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 152
    :cond_1
    sget-object p0, Lcom/talkweb/twgame/gdt/GDTManager;->iad:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    return-object p0
.end method

.method public static nativeFlash(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeExpressPosID"
        }
    .end annotation

    .line 269
    new-instance v0, Lcom/qq/e/ads/nativ/NativeExpressAD;

    sget-object v1, Lcom/talkweb/twgame/gdt/GDTManager;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/qq/e/ads/nativ/ADSize;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lcom/qq/e/ads/nativ/ADSize;-><init>(II)V

    new-instance v3, Lcom/talkweb/twgame/gdt/GDTManager$3;

    invoke-direct {v3}, Lcom/talkweb/twgame/gdt/GDTManager$3;-><init>()V

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/qq/e/ads/nativ/NativeExpressAD;-><init>(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V

    sput-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->nativeExpressAD:Lcom/qq/e/ads/nativ/NativeExpressAD;

    const/4 p0, 0x1

    .line 329
    invoke-virtual {v0, p0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->loadAD(I)V

    return-void
.end method

.method public static onCreateFlashDialog(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeExpressADView"
        }
    .end annotation

    const/4 v0, 0x5

    .line 339
    sput v0, Lcom/talkweb/twgame/gdt/GDTManager;->closeTime:I

    .line 340
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/talkweb/twgame/gdt/GDTManager;->mActivity:Landroid/app/Activity;

    const-string v2, "tw_ad_BaseDialog"

    .line 341
    invoke-static {v1, v2}, Lcom/talkweb/twgame/tools/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 343
    sget-object v1, Lcom/talkweb/twgame/gdt/GDTManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/talkweb/twgame/tools/Tools;->isLandScape(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "activity_nativeflash_l"

    if-eqz v1, :cond_0

    .line 344
    sget-object v1, Lcom/talkweb/twgame/gdt/GDTManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/talkweb/twgame/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 346
    :cond_0
    sget-object v1, Lcom/talkweb/twgame/gdt/GDTManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/talkweb/twgame/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 348
    :goto_0
    sget-object v2, Lcom/talkweb/twgame/gdt/GDTManager;->mActivity:Landroid/app/Activity;

    const-string v3, "nativebg"

    invoke-static {v2, v3}, Lcom/talkweb/twgame/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 349
    sget-object v2, Lcom/talkweb/twgame/gdt/GDTManager;->mActivity:Landroid/app/Activity;

    const-string v3, "flaout_imgad"

    invoke-static {v2, v3}, Lcom/talkweb/twgame/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 350
    sget-object v3, Lcom/talkweb/twgame/gdt/GDTManager;->mActivity:Landroid/app/Activity;

    const-string v4, "tv_close"

    invoke-static {v3, v4}, Lcom/talkweb/twgame/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/talkweb/twgame/gdt/GDTManager;->tv_close:Landroid/widget/TextView;

    .line 351
    invoke-virtual {v3}, Landroid/widget/TextView;->bringToFront()V

    .line 352
    sget-object v3, Lcom/talkweb/twgame/gdt/GDTManager;->tv_close:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8df3\u8fc7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/talkweb/twgame/gdt/GDTManager;->closeTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/talkweb/twgame/gdt/GDTManager$5;

    invoke-direct {v4}, Lcom/talkweb/twgame/gdt/GDTManager$5;-><init>()V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 368
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 370
    sget-object v3, Lcom/talkweb/twgame/gdt/GDTManager;->tv_close:Landroid/widget/TextView;

    new-instance v4, Lcom/talkweb/twgame/gdt/GDTManager$6;

    invoke-direct {v4}, Lcom/talkweb/twgame/gdt/GDTManager$6;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 377
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/talkweb/twgame/gdt/GDTManager;->mDialog:Landroid/app/AlertDialog;

    .line 378
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 379
    sget-object p0, Lcom/talkweb/twgame/gdt/GDTManager;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 380
    sget-object p0, Lcom/talkweb/twgame/gdt/GDTManager;->mDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 381
    sget-object p0, Lcom/talkweb/twgame/gdt/GDTManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 382
    sget-object p0, Lcom/talkweb/twgame/gdt/GDTManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/16 v3, 0x11

    .line 383
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 384
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 385
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 386
    sget-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 387
    sget-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 388
    sget-object p0, Lcom/talkweb/twgame/gdt/GDTManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static onDestroy()V
    .locals 0

    return-void
.end method

.method private static setVideoOption()V
    .locals 2

    .line 173
    sget-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->iad:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMinVideoDuration(I)V

    return-void
.end method

.method public static showInterstitialAD(Ljava/lang/String;Lcom/talkweb/twgame/callback/ScreenCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "interteristalPosID",
            "screenCallback"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "11interteristalPosID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 65
    invoke-static {p0, p1}, Lcom/talkweb/twgame/gdt/GDTManager;->getIAD(Ljava/lang/String;Lcom/talkweb/twgame/callback/ScreenCallback;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    move-result-object p0

    sput-object p0, Lcom/talkweb/twgame/gdt/GDTManager;->iad:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 66
    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->setVideoOption()V

    .line 67
    sget-object p0, Lcom/talkweb/twgame/gdt/GDTManager;->iad:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {p0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadAD()V

    return-void
.end method

.method public static showMediaAD(Ljava/lang/String;Lcom/talkweb/twgame/callback/MediaCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "videoId",
            "callback"
        }
    .end annotation

    .line 183
    new-instance v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    sget-object v1, Lcom/talkweb/twgame/gdt/GDTManager;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/talkweb/twgame/gdt/GDTManager$2;

    invoke-direct {v2, p1}, Lcom/talkweb/twgame/gdt/GDTManager$2;-><init>(Lcom/talkweb/twgame/callback/MediaCallback;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;)V

    sput-object v0, Lcom/talkweb/twgame/gdt/GDTManager;->mRewardVideoAD:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 259
    invoke-virtual {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->loadAD()V

    return-void
.end method
