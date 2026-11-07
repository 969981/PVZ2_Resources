.class public Lcom/popcap/pvz2cthddev/TWPurchase;
.super Lcom/popcap/pvz2cthddev/ThirdpartyPurchaseDriver;
.source "TWPurchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popcap/pvz2cthddev/TWPurchase$RedeemInfo;
    }
.end annotation


# static fields
.field public static final INIT_RESULT_FAILED:I = 0x1

.field public static final INIT_RESULT_SUCCESS:I = 0x0

.field public static final LOGIN_RESULT_FAILED:I = 0x1

.field public static final LOGIN_RESULT_SUCCESS:I = 0x0

.field public static final QUERY_ORDER_RESULT_INIT_FAILED:I = 0x2

.field public static final QUERY_ORDER_RESULT_NO_INTERNET:I = 0x3

.field public static final QUERY_ORDER_RESULT_NO_ORDER:I = 0x1

.field public static final QUERY_ORDER_RESULT_QUERY_FAILED:I = 0x4

.field public static final QUERY_ORDER_RESULT_SUCCESS:I = 0x0

.field private static volatile mDebugDeviceID:Ljava/lang/String; = null

.field private static final mDebugLatch:Ljava/util/concurrent/CountDownLatch;

.field private static final mDialogPosted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static m_defaultDeviceId:Ljava/lang/String; = null

.field public static m_initSuccess:Z = true

.field public static m_sdkSuccess:Z = true

.field private static sPurchase:Lcom/popcap/pvz2cthddev/TWPurchase;


# instance fields
.field mAppId:Ljava/lang/String;

.field mCheckedRedeemOrders:Z

.field mNeedChannelActivity:Z

.field mNeedWhite:Z

.field mPurchaseCode:Ljava/lang/String;

.field mRedeemOrders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/popcap/pvz2cthddev/TWPurchase$RedeemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRequestWhiteBlack:Z

.field mUniqueID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/popcap/pvz2cthddev/TWPurchase;->mDialogPosted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/TWPurchase;->mDebugLatch:Ljava/util/concurrent/CountDownLatch;

    .line 98
    const-string v0, "abcdefg"

    sput-object v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_defaultDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/popcap/pvz2cthddev/ThirdpartyPurchaseDriver;-><init>(J)V

    .line 125
    const-string p1, ""

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase;->mPurchaseCode:Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase;->mAppId:Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase;->mUniqueID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase;->mRequestWhiteBlack:Z

    const/4 p2, 0x1

    .line 130
    iput-boolean p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase;->mNeedWhite:Z

    .line 131
    iput-boolean p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase;->mNeedChannelActivity:Z

    .line 132
    iput-boolean p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase;->mCheckedRedeemOrders:Z

    .line 134
    sput-object p0, Lcom/popcap/pvz2cthddev/TWPurchase;->sPurchase:Lcom/popcap/pvz2cthddev/TWPurchase;

    return-void
.end method

.method private RequestOrderSub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 351
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TW_RequestOrder( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TWPurchase"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    new-instance v1, Lcom/popcap/pvz2cthddev/TWPurchase$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/popcap/pvz2cthddev/TWPurchase$5;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private RequestPaySub(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 303
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    new-instance v1, Lcom/popcap/pvz2cthddev/TWPurchase$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/popcap/pvz2cthddev/TWPurchase$4;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    sput-object p0, Lcom/popcap/pvz2cthddev/TWPurchase;->mDebugDeviceID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/popcap/pvz2cthddev/TWPurchase;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/popcap/pvz2cthddev/TWPurchase;->saveDebugAccount(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 59
    sget-object v0, Lcom/popcap/pvz2cthddev/TWPurchase;->mDebugLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/popcap/pvz2cthddev/TWPurchase;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/TWPurchase;->showDebugLoginDialog(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private getOrderType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 405
    const-string p1, ""

    return-object p1
.end method

.method public static instance()Lcom/popcap/pvz2cthddev/TWPurchase;
    .locals 1

    .line 139
    sget-object v0, Lcom/popcap/pvz2cthddev/TWPurchase;->sPurchase:Lcom/popcap/pvz2cthddev/TWPurchase;

    return-object v0
.end method

.method private loadDebugAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 726
    :try_start_0
    const-string v1, "debug_account_prefs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 727
    const-string v1, "debug_account"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 729
    const-string v1, "TWPurchase"

    const-string v2, "loadDebugAccount failed"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private saveDebugAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 716
    const-string v0, "TWPurchase"

    .line 0
    const-string v1, "saveDebugAccount: "

    .line 716
    :try_start_0
    const-string v2, "debug_account_prefs"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 717
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "debug_account"

    invoke-interface {p1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 718
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 720
    const-string p2, "saveDebugAccount failed"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private showDebugLoginDialog(Ljava/util/concurrent/CountDownLatch;)V
    .locals 11

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showDebugLoginDialog: thread="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TWPurchase"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 664
    const-string v0, ""

    sput-object v0, Lcom/popcap/pvz2cthddev/TWPurchase;->mDebugDeviceID:Ljava/lang/String;

    .line 665
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 669
    :cond_0
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 670
    const-string v2, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 671
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 673
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8bf7\u8f93\u5165\u4e34\u65f6\u8d26\u53f7"

    .line 674
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 675
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 676
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u786e\u8ba4"

    const/4 v4, 0x0

    .line 677
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u8bb0\u4f4f\u8d26\u53f7"

    .line 678
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 679
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 680
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    const/4 v2, -0x1

    .line 683
    invoke-virtual {v8, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    new-instance v10, Lcom/popcap/pvz2cthddev/TWPurchase$6;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v1

    move-object v5, v0

    move-object v6, p1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/popcap/pvz2cthddev/TWPurchase$6;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase;Landroid/widget/EditText;Landroid/app/Activity;Ljava/util/concurrent/CountDownLatch;Landroid/app/AlertDialog;)V

    .line 684
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, -0x3

    .line 698
    invoke-virtual {v8, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    new-instance v10, Lcom/popcap/pvz2cthddev/TWPurchase$7;

    move-object v2, v10

    invoke-direct/range {v2 .. v7}, Lcom/popcap/pvz2cthddev/TWPurchase$7;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase;Landroid/widget/EditText;Landroid/app/Activity;Ljava/util/concurrent/CountDownLatch;Landroid/app/AlertDialog;)V

    .line 699
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public CheckGameCenterStatus()V
    .locals 2

    .line 947
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-nez v0, :cond_0

    return-void

    .line 952
    :cond_0
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    new-instance v1, Lcom/popcap/pvz2cthddev/TWPurchase$12;

    invoke-direct {v1, p0}, Lcom/popcap/pvz2cthddev/TWPurchase$12;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase;)V

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->StartGameCenter(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/StartGameCenterCallback;)V

    return-void
.end method

.method public CheckRedeemOrders()V
    .locals 2

    .line 820
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-nez v0, :cond_0

    return-void

    .line 825
    :cond_0
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase;->mCheckedRedeemOrders:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 827
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase;->mCheckedRedeemOrders:Z

    .line 829
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase;->mRedeemOrders:Ljava/util/Map;

    .line 830
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    new-instance v1, Lcom/popcap/pvz2cthddev/TWPurchase$9;

    invoke-direct {v1, p0}, Lcom/popcap/pvz2cthddev/TWPurchase$9;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase;)V

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->checkOrder(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public CheckSpecialRedeem()V
    .locals 2

    .line 922
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-nez v0, :cond_0

    return-void

    .line 927
    :cond_0
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    new-instance v1, Lcom/popcap/pvz2cthddev/TWPurchase$11;

    invoke-direct {v1, p0}, Lcom/popcap/pvz2cthddev/TWPurchase$11;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase;)V

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->checkNumber(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CheckNumberCallback;)V

    return-void
.end method

.method public Consume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 912
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-nez v0, :cond_0

    return-void

    .line 917
    :cond_0
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->consume(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public DoSetAchievement(Ljava/lang/String;)V
    .locals 2

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DoSDKSetAchievement: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidAchievementDriverManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    new-instance v0, Lcom/popcap/pvz2cthddev/TWPurchase$14;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/TWPurchase$14;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase;)V

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->setAchievement(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public native FirePaymentComplete(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method public native FireValidationPaymentComplete(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public GetChannelID()Ljava/lang/String;
    .locals 1

    .line 579
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-nez v0, :cond_0

    .line 581
    const-string v0, ""

    return-object v0

    .line 584
    :cond_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetChannelUpdateUrl()Ljava/lang/String;
    .locals 7

    .line 618
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 623
    :cond_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://verpay.talkyun.com.cn/109/updateurl/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TW_serverURL( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TWPurchase_GetChannelUpdateUrl"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 632
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v5, 0xc8

    if-ne v2, v5, :cond_2

    .line 635
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 639
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 641
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 643
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TWPurchase_GetChannelUpdateUrl( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 649
    :cond_2
    const-string v0, "TW_getStatusCode Error"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 654
    :catch_0
    const-string v0, "TW_getStatusCode Exception"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v1
.end method

.method public GetDeclare()Ljava/lang/String;
    .locals 6

    .line 465
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 471
    :cond_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getDeclareMsg()Ljava/lang/String;

    move-result-object v0

    .line 472
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 474
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 475
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 476
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 477
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 478
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 479
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 485
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method public GetDeviceID()Ljava/lang/String;
    .locals 3

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetDeviceID called: thread="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isUI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 737
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DEBUG=false mDebugDeviceID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/popcap/pvz2cthddev/TWPurchase;->mDebugDeviceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    const-string v1, "TWPurchase"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-nez v0, :cond_1

    .line 743
    const-string v0, ""

    return-object v0

    .line 745
    :cond_1
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetGameCenterUrl()Ljava/lang/String;
    .locals 3

    .line 972
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 977
    :cond_0
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    new-instance v2, Lcom/popcap/pvz2cthddev/TWPurchase$13;

    invoke-direct {v2, p0}, Lcom/popcap/pvz2cthddev/TWPurchase$13;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase;)V

    invoke-static {v0, v2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->GetGameDeeplink(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwGameDeeplinkCallback;)V

    return-object v1
.end method

.method public GetRedeemOrders(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 862
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase;->mCheckedRedeemOrders:Z

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase;->mRedeemOrders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 866
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 868
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/popcap/pvz2cthddev/TWPurchase$RedeemInfo;

    iget-object v2, v2, Lcom/popcap/pvz2cthddev/TWPurchase$RedeemInfo;->payCode:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/popcap/pvz2cthddev/TWPurchase$RedeemInfo;

    iget-object v1, v1, Lcom/popcap/pvz2cthddev/TWPurchase$RedeemInfo;->orderNumber:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 873
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public GetSignature()Ljava/lang/String;
    .locals 1

    .line 814
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetTWRequestHead()Ljava/lang/String;
    .locals 1

    .line 803
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-nez v0, :cond_0

    .line 805
    const-string v0, ""

    return-object v0

    .line 808
    :cond_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getRequestHead()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUniqueCharacterID()Ljava/lang/String;
    .locals 5

    .line 590
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 594
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 596
    aget-char v3, v0, v2

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    .line 598
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUniqueID()Ljava/lang/String;
    .locals 1

    .line 607
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-nez v0, :cond_0

    .line 609
    const-string v0, ""

    return-object v0

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase;->mUniqueID:Ljava/lang/String;

    return-object v0
.end method

.method public InitializeSDK(Ljava/lang/String;)V
    .locals 2

    .line 143
    const-string v0, "TWPurchase"

    const-string v1, "TW_InitializeSDK"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase;->mAppId:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    new-instance v1, Lcom/popcap/pvz2cthddev/TWPurchase$1;

    invoke-direct {v1, p0, p1}, Lcom/popcap/pvz2cthddev/TWPurchase$1;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public native Native_CallCertification(ZZ)V
.end method

.method public native Native_CheckGameCenterStatus(Z)V
.end method

.method public native Native_CheckSpecialRedeem(Z)V
.end method

.method public native Native_ExitGame(J)V
.end method

.method public native Native_GetGameCenterUrl(Ljava/lang/String;)V
.end method

.method public native Native_SDKInitEnd(JI)V
.end method

.method public native Native_SDKInitStart(J)V
.end method

.method public native Native_SDKLoginEnd(JILjava/lang/String;)V
.end method

.method public native Native_SDKLoginStart(J)V
.end method

.method public native Native_SDKQueryOrder(Ljava/lang/String;I)V
.end method

.method public native Native_VerifySecondLock(ZLjava/lang/String;)V
.end method

.method public NeedPurchaseWhite()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public NeedShowChannelActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OnExit()V
    .locals 2

    .line 215
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    const-string v0, "TWPurchase"

    const-string v1, "TW_OnExit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    new-instance v1, Lcom/popcap/pvz2cthddev/TWPurchase$2;

    invoke-direct {v1, p0}, Lcom/popcap/pvz2cthddev/TWPurchase$2;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase;)V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public QueryOrder(Ljava/lang/String;)V
    .locals 4

    .line 248
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x11

    .line 255
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 256
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orderNumber is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v1

    new-instance v2, Lcom/popcap/pvz2cthddev/TWPurchase$3;

    invoke-direct {v2, p0, p1}, Lcom/popcap/pvz2cthddev/TWPurchase$3;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->queryOrder(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method

.method public RequestPay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TW_RequestPay( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TWPurchase"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/TWPurchase;->getOrderType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/popcap/pvz2cthddev/TWPurchase;->RequestPaySub(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "TW_RequestOrder( "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0, p1, v0, p2}, Lcom/popcap/pvz2cthddev/TWPurchase;->RequestOrderSub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public RequestValidationPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 409
    sget-boolean p1, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-nez p1, :cond_0

    return-void

    .line 414
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "TW_RequestPay( "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " )"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TWPurchase"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SetIDs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 883
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-nez v0, :cond_0

    return-void

    .line 888
    :cond_0
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->userInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object p1

    new-instance p2, Lcom/popcap/pvz2cthddev/TWPurchase$10;

    invoke-direct {p2, p0}, Lcom/popcap/pvz2cthddev/TWPurchase$10;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase;)V

    invoke-static {p1, p2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->openCertification(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V

    return-void
.end method

.method public SetSecondLock()V
    .locals 0

    .line 1021
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->setSecondLock()V

    return-void
.end method

.method public ShowGameCommunity()V
    .locals 1

    .line 902
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-nez v0, :cond_0

    return-void

    .line 907
    :cond_0
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->openCommunity(Landroid/app/Activity;)V

    return-void
.end method

.method public VerifySecondLock()V
    .locals 1

    .line 1026
    new-instance v0, Lcom/popcap/pvz2cthddev/TWPurchase$15;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/TWPurchase$15;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase;)V

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->verifySecondLock(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method
