.class public final Lcom/talkweb/secondlock/SecondLockUtil;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;,
        Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;,
        Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;,
        Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/talkweb/secondlock/SecondLockUtil;

.field private static sReportActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApi:Lcom/talkweb/secondlock/core/SecondLockApi;

.field private mAppContext:Landroid/content/Context;

.field private mCachedState:Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

.field private mChannelId:I

.field private mChannelUid:Ljava/lang/String;

.field private mCommonParams:Lcom/talkweb/secondlock/core/UspCommonParams;

.field private mHead:Ljava/lang/String;

.field private mLastState:Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

.field private mLoginInfo:Ljava/lang/String;

.field private mMd5:Ljava/lang/String;

.field private mPlayerId:Ljava/lang/String;

.field private mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

.field private mSecret:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "default"

    .line 90
    iput-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPlayerId:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/talkweb/secondlock/core/MockSecondLockApi;

    invoke-direct {v0}, Lcom/talkweb/secondlock/core/MockSecondLockApi;-><init>()V

    iput-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mApi:Lcom/talkweb/secondlock/core/SecondLockApi;

    return-void
.end method

.method static synthetic access$000(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mApi:Lcom/talkweb/secondlock/core/SecondLockApi;

    return-object p0
.end method

.method static synthetic access$100(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/talkweb/secondlock/SecondLockUtil;->promptNewPassword(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;ZLcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/talkweb/secondlock/SecondLockUtil;->startSetPasswordFlow(Landroid/app/Activity;ZLcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;)Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->recoveryCallback(Landroid/app/Activity;)Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->startChangePhoneFlow(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->showRebindNewDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->backToManageDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;ZLcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/talkweb/secondlock/SecondLockUtil;->promptSetPassword(Landroid/app/Activity;ZLcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/talkweb/secondlock/SecondLockUtil;->decideAndVerify(Landroid/app/Activity;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/talkweb/secondlock/SecondLockUtil;->verifyPasswordWithDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/talkweb/secondlock/SecondLockUtil;->showVerifyDialog(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-static {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->formatLockMessage(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mCachedState:Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    return-object p0
.end method

.method static synthetic access$202(Lcom/talkweb/secondlock/SecondLockUtil;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mCachedState:Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    return-object p1
.end method

.method static synthetic access$300(ILjava/lang/String;)V
    .locals 0

    .line 55
    invoke-static {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->reportSecondLock(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockPrefs;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    return-object p0
.end method

.method static synthetic access$502(Lcom/talkweb/secondlock/SecondLockUtil;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mLastState:Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    return-object p1
.end method

.method static synthetic access$600(Lcom/talkweb/secondlock/SecondLockUtil;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->syncStateToPrefs(Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V

    return-void
.end method

.method static synthetic access$700(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/talkweb/secondlock/SecondLockUtil;->showManageDialog(Landroid/app/Activity;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V

    return-void
.end method

.method static synthetic access$800(Lcom/talkweb/secondlock/SecondLockUtil;)I
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/talkweb/secondlock/SecondLockUtil;->getLocalLockRemainSec()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/talkweb/secondlock/SecondLockUtil;->showVerifyToTurnOffDialog(Landroid/app/Activity;Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V

    return-void
.end method

.method private backToManageDialog(Landroid/app/Activity;)V
    .locals 1

    .line 966
    new-instance v0, Lcom/talkweb/secondlock/SecondLockUtil$14;

    invoke-direct {v0, p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$14;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->queryState(Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;)V

    return-void
.end method

.method private decideAndVerify(Landroid/app/Activity;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p2, "sl_verify_error_network"

    .line 1186
    invoke-static {p1, p2}, Lcom/talkweb/twutil/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;->onResult(ZLjava/lang/String;)V

    return-void

    .line 1190
    :cond_0
    iget-boolean v1, p2, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->spEnabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p2, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->hasPassword:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 1192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "protectionOn:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasPassword="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p2, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->hasPassword:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", spEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p2, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->spEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "decideAndVerify"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-interface {p3, v2, v3}, Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;->onResult(ZLjava/lang/String;)V

    return-void

    .line 1198
    :cond_2
    invoke-static {}, Lcom/talkweb/secondlock/core/SessionState;->isVerifiedThisLogin()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isVerifiedThisLogin :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/talkweb/secondlock/core/SessionState;->isVerifiedThisLogin()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "isVerifiedThisLogin"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    invoke-interface {p3, v2, v3}, Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;->onResult(ZLjava/lang/String;)V

    return-void

    .line 1208
    :cond_3
    invoke-direct {p0}, Lcom/talkweb/secondlock/SecondLockUtil;->getLocalLockRemainSec()I

    move-result p2

    if-lez p2, :cond_4

    .line 1210
    invoke-static {p1, p2}, Lcom/talkweb/secondlock/SecondLockUtil;->formatLockMessage(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;->onResult(ZLjava/lang/String;)V

    return-void

    .line 1214
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/talkweb/secondlock/SecondLockUtil;->showVerifyDialog(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V

    return-void
.end method

.method private static describeLock(I)Ljava/lang/String;
    .locals 2

    .line 656
    sget-object v0, Lcom/talkweb/secondlock/SecondLockUtil;->sReportActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 659
    invoke-static {v0, p0}, Lcom/talkweb/secondlock/ui/TwgLockUiUtils;->formatVerifyLockMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 661
    :cond_1
    div-int/lit16 v0, p0, 0xe10

    const-string v1, "\u9501\u5b9a"

    if-lez v0, :cond_2

    .line 662
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u5c0f\u65f6"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u79d2"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static dp2px(Landroid/content/Context;I)I
    .locals 0

    int-to-float p1, p1

    .line 1361
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private ensureInit(Landroid/app/Activity;)Z
    .locals 0

    .line 1353
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mAppContext:Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private static formatLockMessage(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 0

    .line 493
    invoke-static {p0, p1}, Lcom/talkweb/secondlock/ui/TwgLockUiUtils;->formatVerifyLockMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static fromHex(Ljava/lang/String;)[B
    .locals 5

    .line 1391
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1392
    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 1394
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static generateSalt()[B
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1367
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public static getInstance()Lcom/talkweb/secondlock/SecondLockUtil;
    .locals 2

    .line 109
    sget-object v0, Lcom/talkweb/secondlock/SecondLockUtil;->sInstance:Lcom/talkweb/secondlock/SecondLockUtil;

    if-nez v0, :cond_1

    .line 110
    const-class v0, Lcom/talkweb/secondlock/SecondLockUtil;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/talkweb/secondlock/SecondLockUtil;->sInstance:Lcom/talkweb/secondlock/SecondLockUtil;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-direct {v1}, Lcom/talkweb/secondlock/SecondLockUtil;-><init>()V

    sput-object v1, Lcom/talkweb/secondlock/SecondLockUtil;->sInstance:Lcom/talkweb/secondlock/SecondLockUtil;

    .line 114
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 116
    :cond_1
    :goto_0
    sget-object v0, Lcom/talkweb/secondlock/SecondLockUtil;->sInstance:Lcom/talkweb/secondlock/SecondLockUtil;

    return-object v0
.end method

.method private getLocalLockRemainSec()I
    .locals 6

    .line 621
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 624
    :cond_0
    invoke-virtual {v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->getLockUntil()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const-wide/16 v0, 0x3e8

    .line 625
    div-long/2addr v2, v0

    long-to-int v1, v2

    :cond_1
    return v1
.end method

.method private static hashPassword(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "SHA-256"

    .line 1373
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1374
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    const-string p1, "UTF-8"

    .line 1375
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1376
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/secondlock/SecondLockUtil;->toHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1378
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "hash password failed"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static isValidPassword(Ljava/lang/String;)Z
    .locals 2

    .line 1349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const-string v0, "\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private promptNewPassword(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
    .locals 2

    .line 263
    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->trackActivity(Landroid/app/Activity;)V

    .line 264
    new-instance v0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;

    new-instance v1, Lcom/talkweb/secondlock/SecondLockUtil$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/talkweb/secondlock/SecondLockUtil$2;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;Ljava/lang/String;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$OnResetPasswordActionListener;)V

    .line 297
    invoke-virtual {v0}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->show()V

    return-void
.end method

.method private promptSetPassword(Landroid/app/Activity;ZLcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
    .locals 1

    .line 1100
    new-instance p2, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;

    new-instance v0, Lcom/talkweb/secondlock/SecondLockUtil$18;

    invoke-direct {v0, p0, p3, p1}, Lcom/talkweb/secondlock/SecondLockUtil$18;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;Landroid/app/Activity;)V

    invoke-direct {p2, p1, v0}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;-><init>(Landroid/content/Context;Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$OnSetPasswordActionListener;)V

    .line 1140
    invoke-virtual {p2}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->show()V

    return-void
.end method

.method private recoveryCallback(Landroid/app/Activity;)Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;
    .locals 1

    .line 946
    new-instance v0, Lcom/talkweb/secondlock/SecondLockUtil$13;

    invoke-direct {v0, p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$13;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;)V

    return-object v0
.end method

.method private static reportSecondLock(ILjava/lang/String;)V
    .locals 1

    .line 685
    sget-object v0, Lcom/talkweb/secondlock/SecondLockUtil;->sReportActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string p0, "SecondLockUtil"

    const-string p1, "TGA \u57cb\u70b9\u8df3\u8fc7\uff1a\u65e0\u53ef\u7528 Activity"

    .line 688
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 691
    :cond_1
    invoke-static {v0, p0, p1}, Lcom/talkweb/twutil/TgaPointUtil;->secondLockFormTga(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method private showBindDialog(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
    .locals 3

    .line 301
    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->trackActivity(Landroid/app/Activity;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;

    .line 303
    new-instance v1, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;

    new-instance v2, Lcom/talkweb/secondlock/SecondLockUtil$3;

    invoke-direct {v2, p0, v0, p2}, Lcom/talkweb/secondlock/SecondLockUtil$3;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;[Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    invoke-direct {v1, p1, v2}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;-><init>(Landroid/content/Context;Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$OnBindPhoneActionListener;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 345
    invoke-virtual {v1}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->show()V

    return-void
.end method

.method private showManageDialog(Landroid/app/Activity;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V
    .locals 2

    .line 736
    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->trackActivity(Landroid/app/Activity;)V

    .line 737
    new-instance v0, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;

    new-instance v1, Lcom/talkweb/secondlock/SecondLockUtil$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/talkweb/secondlock/SecondLockUtil$10;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;Landroid/app/Activity;)V

    invoke-direct {v0, p1, v1}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;-><init>(Landroid/content/Context;Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;)V

    .line 805
    iget-boolean p1, p2, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->spEnabled:Z

    invoke-virtual {v0, p1}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->setProtectEnabled(Z)V

    .line 806
    iget-boolean p1, p2, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->hasPassword:Z

    invoke-virtual {v0, p1}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->setHasPassword(Z)V

    .line 809
    iget-boolean p1, p2, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->phoneBound:Z

    iget-object p2, p2, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->phoneMasked:Ljava/lang/String;

    invoke-static {p2}, Lcom/talkweb/secondlock/core/PhoneMask;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->setBoundPhone(ZLjava/lang/String;)V

    .line 810
    invoke-virtual {v0}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->show()V

    return-void
.end method

.method private showRebindNewDialog(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;

    .line 891
    new-instance v1, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;

    new-instance v2, Lcom/talkweb/secondlock/SecondLockUtil$12;

    invoke-direct {v2, p0, v0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$12;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;[Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;Landroid/app/Activity;)V

    invoke-direct {v1, p1, v2}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;-><init>(Landroid/content/Context;Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$OnBindPhoneActionListener;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 941
    invoke-virtual {v1}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->show()V

    return-void
.end method

.method private showRebindOldVerifyDialog(Landroid/app/Activity;)V
    .locals 9

    .line 832
    invoke-virtual {p0}, Lcom/talkweb/secondlock/SecondLockUtil;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    .line 833
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->getBoundPhone()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 834
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    const-string v0, "\u672a\u7ed1\u5b9a\u624b\u673a\u53f7"

    .line 835
    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v7, v0, [Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    .line 839
    new-instance v8, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    new-instance v2, Lcom/talkweb/secondlock/SecondLockUtil$11;

    invoke-direct {v2, p0, v7, p1}, Lcom/talkweb/secondlock/SecondLockUtil$11;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;[Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;Landroid/app/Activity;)V

    .line 880
    invoke-virtual {p0}, Lcom/talkweb/secondlock/SecondLockUtil;->getMaskedPhone()Ljava/lang/String;

    move-result-object v4

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;-><init>(Landroid/content/Context;Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$OnVerifyPhoneActionListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v7, v6

    .line 882
    invoke-virtual {v8}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->show()V

    return-void
.end method

.method private showResetCodeDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
    .locals 8

    .line 213
    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->trackActivity(Landroid/app/Activity;)V

    .line 214
    invoke-virtual {p0}, Lcom/talkweb/secondlock/SecondLockUtil;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v6, v0, [Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    .line 216
    new-instance v7, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    new-instance v2, Lcom/talkweb/secondlock/SecondLockUtil$1;

    invoke-direct {v2, p0, v6, p1, p4}, Lcom/talkweb/secondlock/SecondLockUtil$1;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;[Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    move-object v0, v7

    move-object v1, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;-><init>(Landroid/content/Context;Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$OnVerifyPhoneActionListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v7, v6, p1

    .line 258
    invoke-virtual {v7}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->show()V

    return-void
.end method

.method private showSetPasswordVerifyDialog(Landroid/app/Activity;ZLcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
    .locals 15

    .line 1045
    invoke-virtual {p0}, Lcom/talkweb/secondlock/SecondLockUtil;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    move-object v10, p0

    .line 1046
    iget-object v0, v10, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->getBoundPhone()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v11, v0

    .line 1047
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_1

    const-string v0, "\u672a\u7ed1\u5b9a\u624b\u673a\u53f7"

    move-object/from16 v1, p1

    .line 1048
    invoke-static {v1, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    move-object/from16 v1, p1

    const/4 v0, 0x1

    new-array v13, v0, [Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    .line 1052
    new-instance v14, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    new-instance v2, Lcom/talkweb/secondlock/SecondLockUtil$17;

    move-object v4, v2

    move-object v5, p0

    move-object v6, v13

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/talkweb/secondlock/SecondLockUtil$17;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;[Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;Landroid/app/Activity;ZLcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    .line 1092
    invoke-virtual {p0}, Lcom/talkweb/secondlock/SecondLockUtil;->getMaskedPhone()Ljava/lang/String;

    move-result-object v4

    move-object v0, v14

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;-><init>(Landroid/content/Context;Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$OnVerifyPhoneActionListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v13, v12

    .line 1094
    invoke-virtual {v14}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->show()V

    return-void
.end method

.method private showVerifyDialog(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V
    .locals 2

    .line 1219
    new-instance v0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;

    new-instance v1, Lcom/talkweb/secondlock/SecondLockUtil$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/talkweb/secondlock/SecondLockUtil$20;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V

    invoke-direct {v0, p1, v1}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;-><init>(Landroid/content/Context;Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;)V

    .line 1260
    invoke-virtual {v0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->show()V

    return-void
.end method

.method private showVerifyToTurnOffDialog(Landroid/app/Activity;Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V
    .locals 2

    .line 1272
    new-instance v0, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;

    new-instance v1, Lcom/talkweb/secondlock/SecondLockUtil$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/talkweb/secondlock/SecondLockUtil$21;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V

    invoke-direct {v0, p1, v1}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;-><init>(Landroid/content/Context;Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;)V

    .line 1337
    invoke-virtual {v0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->show()V

    return-void
.end method

.method private startChangePhoneFlow(Landroid/app/Activity;)V
    .locals 0

    .line 823
    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->trackActivity(Landroid/app/Activity;)V

    .line 824
    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->showRebindOldVerifyDialog(Landroid/app/Activity;)V

    return-void
.end method

.method private startSetPasswordFlow(Landroid/app/Activity;ZLcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V
    .locals 1

    .line 997
    new-instance v0, Lcom/talkweb/secondlock/SecondLockUtil$15;

    invoke-direct {v0, p0, p2, p1}, Lcom/talkweb/secondlock/SecondLockUtil$15;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;ZLandroid/app/Activity;)V

    .line 1016
    iget-boolean p3, p3, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->phoneBound:Z

    if-nez p3, :cond_0

    .line 1018
    new-instance p3, Lcom/talkweb/secondlock/SecondLockUtil$16;

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/talkweb/secondlock/SecondLockUtil$16;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;ZLcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    invoke-virtual {p0, p1, p3}, Lcom/talkweb/secondlock/SecondLockUtil;->startPhoneBinding(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    return-void

    .line 1039
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->showSetPasswordVerifyDialog(Landroid/app/Activity;ZLcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    return-void
.end method

.method private syncStateToPrefs(Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V
    .locals 7

    .line 377
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    if-nez v0, :cond_0

    return-void

    .line 380
    :cond_0
    iget-boolean v1, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->phoneBound:Z

    invoke-virtual {v0, v1}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setServerPhoneBound(Z)V

    .line 382
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    iget-object v1, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->phoneMasked:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setBoundPhone(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    iget-boolean v1, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->hasPassword:Z

    invoke-virtual {v0, v1}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setServerHasPassword(Z)V

    .line 384
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    iget v1, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->lockedRemainSec:I

    invoke-virtual {v0, v1}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setServerLockedRemainSec(I)V

    .line 385
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    iget-boolean v1, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->spEnabled:Z

    invoke-virtual {v0, v1}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setEnabled(Z)V

    .line 387
    iget v0, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->lockedRemainSec:I

    if-lez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->lockedRemainSec:I

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setLockUntil(J)V

    goto :goto_0

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setLockUntil(J)V

    .line 392
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setFailCount(I)V

    .line 396
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncState: phoneBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->phoneBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->phoneMasked:Ljava/lang/String;

    .line 397
    invoke-static {v1}, Lcom/talkweb/secondlock/core/PhoneMask;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->hasPassword:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lockedRemainSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->lockedRemainSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->spEnabled:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecondLockUtil"

    .line 396
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 7

    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1384
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    .line 1385
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, "%02x"

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1387
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static trackActivity(Landroid/app/Activity;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 674
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/talkweb/secondlock/SecondLockUtil;->sReportActivity:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method private verifyPasswordWithDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V
    .locals 1

    .line 461
    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->trackActivity(Landroid/app/Activity;)V

    .line 462
    invoke-static {p2}, Lcom/talkweb/secondlock/SecondLockUtil;->isValidPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "sl_verify_error_format"

    .line 463
    invoke-static {p1, p2}, Lcom/talkweb/twutil/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p4, -0x1

    .line 464
    invoke-virtual {p3, p2, p1, p4, p4}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->onVerifyResult(ZLjava/lang/String;II)V

    return-void

    .line 467
    :cond_0
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mApi:Lcom/talkweb/secondlock/core/SecondLockApi;

    new-instance v0, Lcom/talkweb/secondlock/SecondLockUtil$7;

    invoke-direct {v0, p0, p3, p4}, Lcom/talkweb/secondlock/SecondLockUtil$7;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V

    invoke-interface {p1, p2, v0}, Lcom/talkweb/secondlock/core/SecondLockApi;->verifyPassword(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;)Z
    .locals 6

    .line 564
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/talkweb/secondlock/SecondLockUtil;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    invoke-virtual {v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->getPasswordHash()Ljava/lang/String;

    move-result-object v0

    .line 568
    iget-object v2, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    invoke-virtual {v2}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->getSalt()Ljava/lang/String;

    move-result-object v2

    .line 569
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 572
    :cond_1
    invoke-static {v2}, Lcom/talkweb/secondlock/SecondLockUtil;->fromHex(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p1, v2}, Lcom/talkweb/secondlock/SecondLockUtil;->hashPassword(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 574
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    invoke-virtual {p1, v1}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setFailCount(I)V

    .line 575
    invoke-static {v0}, Lcom/talkweb/secondlock/core/SessionState;->setVerifiedThisLogin(Z)V

    return v0

    .line 578
    :cond_2
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    invoke-virtual {p1}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->getFailCount()I

    move-result p1

    add-int/2addr p1, v0

    .line 579
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    invoke-virtual {v0, p1}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setFailCount(I)V

    const/4 v0, 0x5

    if-lt p1, v0, :cond_3

    .line 581
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setLockUntil(J)V

    :cond_3
    :goto_0
    return v1
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    .line 543
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "+86"

    :cond_1
    return-object v0
.end method

.method public getMaskedPhone()Ljava/lang/String;
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->getBoundPhone()Ljava/lang/String;

    move-result-object v0

    .line 534
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 535
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->getBoundPhone()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v0, v1

    .line 537
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, ""

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lcom/talkweb/secondlock/core/PhoneMask;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mAppContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p2, "userid"

    .line 134
    invoke-static {p2, p1}, Lcom/talkweb/twutil/SharedPreferencesUtil;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v6, p2

    .line 135
    iput-object v6, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPlayerId:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mLoginInfo:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mChannelUid:Ljava/lang/String;

    .line 138
    iput-object p5, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mHead:Ljava/lang/String;

    .line 139
    iput-object p6, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mMd5:Ljava/lang/String;

    .line 140
    iput p7, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mChannelId:I

    .line 141
    iput-object p8, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mSecret:Ljava/lang/String;

    .line 142
    new-instance p1, Lcom/talkweb/secondlock/core/SecondLockPrefs;

    iget-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, p2, v6}, Lcom/talkweb/secondlock/core/SecondLockPrefs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mCachedState:Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    .line 146
    new-instance p1, Lcom/talkweb/secondlock/core/MockSecondLockApi;

    new-instance p2, Lcom/talkweb/network/config/NetworkConfig$Builder;

    invoke-direct {p2}, Lcom/talkweb/network/config/NetworkConfig$Builder;-><init>()V

    const-string v0, "https://pvzu.ditwan.cn"

    invoke-virtual {p2, v0}, Lcom/talkweb/network/config/NetworkConfig$Builder;->baseUrl(Ljava/lang/String;)Lcom/talkweb/network/config/NetworkConfig$Builder;

    move-result-object p2

    invoke-virtual {p2, p8}, Lcom/talkweb/network/config/NetworkConfig$Builder;->secret(Ljava/lang/String;)Lcom/talkweb/network/config/NetworkConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/talkweb/network/config/NetworkConfig$Builder;->build()Lcom/talkweb/network/config/NetworkConfig;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/talkweb/secondlock/core/MockSecondLockApi;-><init>(Lcom/talkweb/network/config/NetworkConfig;)V

    invoke-virtual {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->setApi(Lcom/talkweb/secondlock/core/SecondLockApi;)V

    .line 147
    new-instance p1, Lcom/talkweb/secondlock/core/UspCommonParams;

    move-object v0, p1

    move-object v1, p5

    move-object v2, p3

    move-object v3, p6

    move v4, p7

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/talkweb/secondlock/core/UspCommonParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->setUspCommonParams(Lcom/talkweb/secondlock/core/UspCommonParams;)V

    return-void
.end method

.method public isLocked()Z
    .locals 6

    .line 612
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 615
    :cond_0
    invoke-virtual {v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->getLockUntil()J

    move-result-wide v2

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isPasswordEnabled()Z
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/talkweb/secondlock/SecondLockUtil;->isPasswordSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPasswordSet()Z
    .locals 4

    .line 587
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->getPasswordHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 588
    :goto_0
    iget-object v3, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->isServerHasPassword()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public isPhoneBound()Z
    .locals 4

    .line 526
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->getBoundPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 527
    :goto_0
    iget-object v3, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->isServerPhoneBound()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public lockForVerifyFail()V
    .locals 5

    .line 638
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 639
    invoke-virtual {v0, v1}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setFailCount(I)V

    .line 640
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setLockUntil(J)V

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mCachedState:Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    const v1, 0x15180

    if-eqz v0, :cond_1

    .line 643
    iput v1, v0, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->lockedRemainSec:I

    :cond_1
    const/4 v0, 0x7

    .line 647
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/talkweb/secondlock/SecondLockUtil;->reportSecondLock(ILjava/lang/String;)V

    return-void
.end method

.method public needVerify()Z
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/talkweb/secondlock/SecondLockUtil;->isPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/talkweb/secondlock/core/SessionState;->isVerifiedThisLogin()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/talkweb/secondlock/SecondLockUtil;->isLocked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onLogout()V
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->clearSession()V

    .line 699
    :cond_0
    invoke-static {}, Lcom/talkweb/secondlock/core/SessionState;->reset()V

    const/4 v0, 0x0

    .line 700
    iput-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mCachedState:Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    return-void
.end method

.method public queryState(Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;)V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mApi:Lcom/talkweb/secondlock/core/SecondLockApi;

    if-nez v0, :cond_0

    const-string v0, "\u672a\u521d\u59cb\u5316"

    .line 353
    invoke-interface {p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;->onError(Ljava/lang/String;)V

    return-void

    .line 356
    :cond_0
    new-instance v1, Lcom/talkweb/secondlock/SecondLockUtil$4;

    invoke-direct {v1, p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$4;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;)V

    invoke-interface {v0, v1}, Lcom/talkweb/secondlock/core/SecondLockApi;->queryState(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void
.end method

.method public setApi(Lcom/talkweb/secondlock/core/SecondLockApi;)V
    .locals 1

    .line 152
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mApi:Lcom/talkweb/secondlock/core/SecondLockApi;

    .line 153
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mCommonParams:Lcom/talkweb/secondlock/core/UspCommonParams;

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {p1, v0}, Lcom/talkweb/secondlock/core/SecondLockApi;->setCommonParams(Lcom/talkweb/secondlock/core/UspCommonParams;)V

    :cond_0
    return-void
.end method

.method public setNetworkConfig(Lcom/talkweb/network/config/NetworkConfig;)V
    .locals 1

    .line 160
    new-instance v0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    invoke-direct {v0, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi;-><init>(Lcom/talkweb/network/config/NetworkConfig;)V

    iput-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mApi:Lcom/talkweb/secondlock/core/SecondLockApi;

    .line 161
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mCommonParams:Lcom/talkweb/secondlock/core/UspCommonParams;

    if-eqz p1, :cond_0

    .line 162
    invoke-interface {v0, p1}, Lcom/talkweb/secondlock/core/SecondLockApi;->setCommonParams(Lcom/talkweb/secondlock/core/UspCommonParams;)V

    :cond_0
    return-void
.end method

.method setPassword(Ljava/lang/String;)Z
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->isValidPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    invoke-static {}, Lcom/talkweb/secondlock/SecondLockUtil;->generateSalt()[B

    move-result-object v0

    .line 554
    invoke-static {p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->hashPassword(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 555
    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    invoke-static {v0}, Lcom/talkweb/secondlock/SecondLockUtil;->toHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setEnabled(Z)V

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPasswordEnabled(Z)V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {v0, p1}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setSecondLock(Landroid/app/Activity;)V
    .locals 2

    .line 713
    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->ensureInit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->trackActivity(Landroid/app/Activity;)V

    .line 716
    new-instance v0, Lcom/talkweb/secondlock/SecondLockUtil$9;

    invoke-direct {v0, p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$9;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->queryState(Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    const-string v1, "Init fail"

    .line 730
    invoke-static {v0, v1}, Lcom/talkweb/secondlock/SecondLockUtil;->reportSecondLock(ILjava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25"

    .line 731
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method setServerPassword(Ljava/lang/String;Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;)V
    .locals 2

    .line 405
    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->isValidPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "\u5bc6\u7801\u987b\u4e3a 6 \u4f4d\u6570\u5b57"

    .line 406
    invoke-interface {p2, p1}, Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;->onError(Ljava/lang/String;)V

    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mApi:Lcom/talkweb/secondlock/core/SecondLockApi;

    new-instance v1, Lcom/talkweb/secondlock/SecondLockUtil$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/talkweb/secondlock/SecondLockUtil$5;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;Ljava/lang/String;Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/talkweb/secondlock/core/SecondLockApi;->setPassword(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void
.end method

.method public setUspCommonParams(Lcom/talkweb/secondlock/core/UspCommonParams;)V
    .locals 1

    .line 168
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mCommonParams:Lcom/talkweb/secondlock/core/UspCommonParams;

    .line 169
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mApi:Lcom/talkweb/secondlock/core/SecondLockApi;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0, p1}, Lcom/talkweb/secondlock/core/SecondLockApi;->setCommonParams(Lcom/talkweb/secondlock/core/UspCommonParams;)V

    :cond_0
    return-void
.end method

.method public startPhoneBinding(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
    .locals 1

    .line 182
    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->ensureInit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/talkweb/secondlock/SecondLockUtil;->showBindDialog(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u672a\u521d\u59cb\u5316"

    .line 186
    invoke-interface {p2, p1}, Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startRecovery(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
    .locals 4

    .line 191
    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->ensureInit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->getBoundPhone()Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_0
    iget-object v2, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->getBoundPhone()Ljava/lang/String;

    move-result-object v1

    .line 195
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    const-string v1, "\u672a\u68c0\u6d4b\u5230\u7ed1\u5b9a\u624b\u673a\u53f7\uff0c\u8bf7\u5148\u7ed1\u5b9a"

    .line 196
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "\u672a\u7ed1\u5b9a\u624b\u673a\u53f7"

    .line 197
    invoke-interface {p2, p1}, Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;->onError(Ljava/lang/String;)V

    return-void

    .line 202
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 203
    :cond_3
    invoke-static {v0}, Lcom/talkweb/secondlock/core/PhoneMask;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u627e\u56de\u5bc6\u7801\uff1arealPhone(masked)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecondLockUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/talkweb/secondlock/SecondLockUtil;->showResetCodeDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    goto :goto_2

    :cond_4
    const-string p1, "\u672a\u521d\u59cb\u5316"

    .line 207
    invoke-interface {p2, p1}, Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;->onError(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public toggleServerPassword(ZLcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;)V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mApi:Lcom/talkweb/secondlock/core/SecondLockApi;

    new-instance v1, Lcom/talkweb/secondlock/SecondLockUtil$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/talkweb/secondlock/SecondLockUtil$8;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;ZLcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/talkweb/secondlock/core/SecondLockApi;->togglePassword(ZLcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void
.end method

.method public unlock()V
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 631
    invoke-virtual {v0, v1, v2}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setLockUntil(J)V

    .line 632
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mPrefs:Lcom/talkweb/secondlock/core/SecondLockPrefs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setFailCount(I)V

    :cond_0
    return-void
.end method

.method public verifyPassword(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V
    .locals 0

    .line 1342
    invoke-virtual {p0, p1, p2}, Lcom/talkweb/secondlock/SecondLockUtil;->verifySecondLock(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V

    return-void
.end method

.method public verifySecondLock(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V
    .locals 1

    .line 1152
    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->ensureInit(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    new-instance v0, Lcom/talkweb/secondlock/SecondLockUtil$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/talkweb/secondlock/SecondLockUtil$19;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V

    invoke-virtual {p0, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->queryState(Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    const-string v0, "Init fail"

    .line 1175
    invoke-static {p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->reportSecondLock(ILjava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "\u672a\u521d\u59cb\u5316"

    .line 1176
    invoke-interface {p2, p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;->onResult(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public verifyServerPassword(Ljava/lang/String;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V
    .locals 2

    .line 433
    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->isValidPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const-string v0, "\u5bc6\u7801\u987b\u4e3a 6 \u4f4d\u6570\u5b57"

    .line 434
    invoke-interface {p2, p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;->onResult(ZLjava/lang/String;)V

    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil;->mApi:Lcom/talkweb/secondlock/core/SecondLockApi;

    new-instance v1, Lcom/talkweb/secondlock/SecondLockUtil$6;

    invoke-direct {v1, p0, p2}, Lcom/talkweb/secondlock/SecondLockUtil$6;-><init>(Lcom/talkweb/secondlock/SecondLockUtil;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/talkweb/secondlock/core/SecondLockApi;->verifyPassword(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void
.end method
