.class public Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;
.super Ljava/lang/Object;
.source "GooglePlayPurchaseDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;,
        Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;,
        Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;,
        Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;,
        Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Billing.Driver"


# instance fields
.field private final RC_REQUEST:I

.field private mIabHelper:Lcom/popcap/pvz2cthddev/utils/IabHelper;

.field private mNativeDriverPtr:J

.field private mOnActivityResultListener:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$OnActivityResultListener;

.field private mOnConsumeFinishedListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;

.field private mOnIabPurchaseFinishedListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;

.field private mOnIabSetupFinishedListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;

.field private mOnSetupInventoryFinishedListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;

.field private mPaymentsStatus:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;

.field private mQueryInventoryFinishedListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;

.field private mUnconsumedPurchases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/popcap/pvz2cthddev/utils/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private pendingOperations:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8ca166

    .line 114
    iput v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->RC_REQUEST:I

    .line 134
    sget-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;->UNKNOWN:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mPaymentsStatus:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mUnconsumedPurchases:Ljava/util/HashMap;

    .line 221
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->pendingOperations:Ljava/util/Queue;

    .line 283
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$2;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$2;-><init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mOnIabSetupFinishedListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;

    .line 310
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$3;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$3;-><init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mOnSetupInventoryFinishedListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;

    .line 364
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$5;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$5;-><init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mQueryInventoryFinishedListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;

    .line 427
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$6;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$6;-><init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mOnActivityResultListener:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$OnActivityResultListener;

    .line 464
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$8;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$8;-><init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mOnIabPurchaseFinishedListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;

    .line 565
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$9;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$9;-><init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mOnConsumeFinishedListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;

    .line 159
    iput-wide p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mNativeDriverPtr:J

    .line 161
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mOnActivityResultListener:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$OnActivityResultListener;

    invoke-virtual {p1, p2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->addOnActivityResultListener(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$OnActivityResultListener;)V

    .line 163
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object p1

    .line 164
    new-instance p2, Lcom/popcap/pvz2cthddev/utils/IabHelper;

    invoke-direct {p2, p1, p3}, Lcom/popcap/pvz2cthddev/utils/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mIabHelper:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    .line 174
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mOnIabSetupFinishedListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;

    invoke-virtual {p2, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->startSetup(Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;)V

    return-void
.end method

.method private CallPaymentCompleteHook(Lcom/popcap/pvz2cthddev/utils/Purchase;)Z
    .locals 4

    .line 520
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/utils/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 522
    const-string v1, "Calling payment complete hook for %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Billing.Driver"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mUnconsumedPurchases:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 534
    const-string v1, "signedData"

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/utils/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    const-string v1, "signature"

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/utils/Purchase;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 544
    :catch_0
    const-string p1, "Failed to build purchase JSON - bad encoding UTF-8"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 540
    :catch_1
    const-string p1, "Failed to build purchase JSON"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic access$000(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Ljava/util/Queue;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->pendingOperations:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$100(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mPaymentsStatus:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;

    return-object p0
.end method

.method static synthetic access$102(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;)Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mPaymentsStatus:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;

    return-object p1
.end method

.method static synthetic access$200(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mOnSetupInventoryFinishedListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Lcom/popcap/pvz2cthddev/utils/IabHelper;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mIabHelper:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Lcom/popcap/pvz2cthddev/utils/Purchase;)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->CallPaymentCompleteHook(Lcom/popcap/pvz2cthddev/utils/Purchase;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mQueryInventoryFinishedListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->finishOperation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mOnIabPurchaseFinishedListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Ljava/util/HashMap;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mUnconsumedPurchases:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;)Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mOnConsumeFinishedListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;

    return-object p0
.end method

.method private finishOperation(Ljava/lang/String;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->pendingOperations:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<none>"

    :goto_0
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "finishOperation: expected [%s] actual [%s]"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Billing.Driver"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->pendingOperations:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;

    if-eqz p1, :cond_1

    .line 270
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;->getOperation()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private startOperation(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    .line 228
    const-string v0, "StartOperation: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Billing.Driver"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    .line 236
    new-instance v1, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$1;-><init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public CanMakePayments()Z
    .locals 2

    .line 399
    const-string v0, "Billing.Driver"

    const-string v1, "CanMakePayments()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mPaymentsStatus:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;->isSupported()Z

    move-result v0

    return v0
.end method

.method public Close()V
    .locals 2

    .line 182
    const-string v0, "Billing.Driver"

    const-string v1, "Close"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mOnActivityResultListener:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$OnActivityResultListener;

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->removeOnActivityResultListener(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$OnActivityResultListener;)V

    return-void
.end method

.method public ConfirmDelivery(Ljava/lang/String;)V
    .locals 2

    .line 592
    const-string v0, "ConfirmDelivery( %s )"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Billing.Driver"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->CanMakePayments()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    const-string v0, "ConfirmDelivery( %s ) - failed, not initialized"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mUnconsumedPurchases:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/popcap/pvz2cthddev/utils/Purchase;

    if-nez v0, :cond_1

    .line 604
    const-string v0, "ConfirmDelivery( %s ): no such receipt pending"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 608
    :cond_1
    new-instance p1, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$10;

    invoke-direct {p1, p0, v0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$10;-><init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Lcom/popcap/pvz2cthddev/utils/Purchase;)V

    const-string v0, "consumeAsync"

    invoke-direct {p0, p1, v0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->startOperation(Ljava/lang/Runnable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public HasUnconfirmedPayments()Z
    .locals 2

    .line 621
    const-string v0, "Billing.Driver"

    const-string v1, "HasUnconfirmedTransactions()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mUnconsumedPurchases:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public ProductTypeIsSupported(I)Z
    .locals 2

    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ProductTypeIsSupported( %d )"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Billing.Driver"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    sget-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$11;->$SwitchMap$com$popcap$pvz2cthddev$GooglePlayPurchaseDriver$ProductType:[I

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->fromOrdinal(I)Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 413
    :cond_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->mPaymentsStatus:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$SupportStatus;->isSupported()Z

    move-result p1

    return p1
.end method

.method public Refresh([Ljava/lang/String;)V
    .locals 2

    .line 345
    const-string v0, "Billing.Driver"

    const-string v1, "Refresh()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->CanMakePayments()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$4;

    invoke-direct {v0, p0, p1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$4;-><init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;[Ljava/lang/String;)V

    const-string p1, "queryInventoryAsync"

    invoke-direct {p0, v0, p1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->startOperation(Ljava/lang/Runnable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public RequestPayment(Ljava/lang/String;)V
    .locals 2

    .line 442
    const-string v0, "RequestPayment( %s )"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Billing.Driver"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->CanMakePayments()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    const-string v0, "RequestPayment( %s ) - cannot make payments"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    :cond_0
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    .line 453
    new-instance v1, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$7;

    invoke-direct {v1, p0, v0, p1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$7;-><init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Landroid/app/Activity;Ljava/lang/String;)V

    const-string p1, "launchPurchaseFlow"

    invoke-direct {p0, v1, p1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;->startOperation(Ljava/lang/Runnable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
