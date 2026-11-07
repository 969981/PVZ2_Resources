.class public Lcom/popcap/pvz2cthddev/AndroidSplashScreen;
.super Landroid/widget/RelativeLayout;
.source "AndroidSplashScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;,
        Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;
    }
.end annotation


# static fields
.field public static mCurrentDecompressStage:I = 0x0

.field public static mFinishShowProgressBarFlag:Z = false

.field private static mFirstInitBGOffsetY:I = 0x5f

.field private static mFirstInitBarOffsetY:I = 0x41

.field private static mFirstInitTips1OffsetY:I = 0x23

.field private static mFirstInitTips2OffsetY:I = 0x69

.field public static mIsFirstInit:Z = false

.field public static mLeftDecompressTime:I = 0xa

.field public static mStartShowProgressBarFlag:Z


# instance fields
.field public mRemoveSplashSurface:Z

.field private mSplashSurface:Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;

.field private progressBar_widget:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mRemoveSplashSurface:Z

    const/16 v1, 0x10

    .line 85
    invoke-virtual {p0, v1}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->setVerticalGravity(I)V

    const/4 v1, 0x1

    .line 86
    invoke-virtual {p0, v1}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->setHorizontalGravity(I)V

    .line 88
    new-instance v2, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;

    invoke-direct {v2, p0, p1}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;-><init>(Lcom/popcap/pvz2cthddev/AndroidSplashScreen;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mSplashSurface:Lcom/popcap/pvz2cthddev/AndroidSplashScreen$AndroidSplashSurface;

    .line 89
    invoke-virtual {p0, v2}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->addView(Landroid/view/View;)V

    .line 93
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->progressBar_widget:Landroid/widget/ProgressBar;

    .line 94
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 96
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 97
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 99
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->progressBar_widget:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, p1}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    sput-boolean v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mIsFirstInit:Z

    return-void
.end method

.method public static AddCurrentDecompressStage()V
    .locals 3

    .line 47
    sget v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mCurrentDecompressStage:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mCurrentDecompressStage:I

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    .line 48
    :goto_0
    sput v2, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mLeftDecompressTime:I

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 28
    sget v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mFirstInitBarOffsetY:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 28
    sget v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mFirstInitTips1OffsetY:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 28
    sget v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mFirstInitTips2OffsetY:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 28
    sget v0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->mFirstInitBGOffsetY:I

    return v0
.end method

.method static synthetic access$400(Lcom/popcap/pvz2cthddev/AndroidSplashScreen;)Landroid/widget/ProgressBar;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen;->progressBar_widget:Landroid/widget/ProgressBar;

    return-object p0
.end method
