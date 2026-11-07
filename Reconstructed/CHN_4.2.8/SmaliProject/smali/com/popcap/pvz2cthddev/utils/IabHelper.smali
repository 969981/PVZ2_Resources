.class public Lcom/popcap/pvz2cthddev/utils/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;,
        Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;,
        Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;,
        Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeMultiFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mPurchaseListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;

.field mRequestCode:I

.field mService:Lcom/popcap/pvz2cthddev/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mDebugLog:Z

    .line 90
    const-string v1, "IabHelper"

    iput-object v1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 93
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mSetupDone:Z

    .line 97
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mAsyncInProgress:Z

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mContext:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 169
    const-string p1, "IAB helper created."

    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 3

    .line 650
    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 651
    const-string v2, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error"

    .line 658
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    rsub-int v0, p0, -0x3e8

    if-ltz v0, :cond_0

    .line 662
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object p0, v1, v0

    return-object p0

    .line 663
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ":Unknown IAB Helper Error"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ltz p0, :cond_3

    .line 665
    array-length v1, v0

    if-lt p0, v1, :cond_2

    goto :goto_0

    .line 668
    :cond_2
    aget-object p0, v0, p0

    return-object p0

    .line 666
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ":Unknown"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3

    .line 674
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    return-void

    .line 675
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    .line 676
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consume(Lcom/popcap/pvz2cthddev/utils/Purchase;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/popcap/pvz2cthddev/utils/IabException;
        }
    .end annotation

    const-string v0, "Error consuming sku "

    const-string v1, "Successfully consumed sku: "

    const-string v2, "Error consuming consuming sku "

    const-string v3, "PurchaseInfo is missing token for sku: "

    const-string v4, "Consuming sku: "

    const-string v5, "Can\'t consume "

    .line 562
    const-string v6, "consume"

    invoke-virtual {p0, v6}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 564
    :try_start_0
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/utils/Purchase;->getToken()Ljava/lang/String;

    move-result-object v6

    .line 565
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/utils/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_1

    .line 566
    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 573
    iget-object v3, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mService:Lcom/popcap/pvz2cthddev/vending/billing/IInAppBillingService;

    iget-object v4, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v3, v5, v4, v6}, Lcom/popcap/pvz2cthddev/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void

    .line 578
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 579
    new-instance v1, Lcom/popcap/pvz2cthddev/utils/IabException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/popcap/pvz2cthddev/utils/IabException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 567
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". No token."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    .line 568
    new-instance v0, Lcom/popcap/pvz2cthddev/utils/IabException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x3ef

    invoke-direct {v0, v2, v1}, Lcom/popcap/pvz2cthddev/utils/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 583
    new-instance v1, Lcom/popcap/pvz2cthddev/utils/IabException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Remote exception while consuming. PurchaseInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, -0x3e9

    invoke-direct {v1, v2, p1, v0}, Lcom/popcap/pvz2cthddev/utils/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public consumeAsync(Lcom/popcap/pvz2cthddev/utils/Purchase;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;)V
    .locals 1

    .line 623
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 625
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 626
    invoke-virtual {p0, v0, p2, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/popcap/pvz2cthddev/utils/Purchase;",
            ">;",
            "Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .line 635
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 636
    invoke-virtual {p0, p1, v0, p2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/popcap/pvz2cthddev/utils/Purchase;",
            ">;",
            "Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;",
            "Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .line 834
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 835
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 836
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/popcap/pvz2cthddev/utils/IabHelper$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/popcap/pvz2cthddev/utils/IabHelper$3;-><init>(Lcom/popcap/pvz2cthddev/utils/IabHelper;Ljava/util/List;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 865
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 258
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mSetupDone:Z

    .line 260
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 261
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 264
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mService:Lcom/popcap/pvz2cthddev/vending/billing/IInAppBillingService;

    .line 265
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mPurchaseListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;

    :cond_1
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mDebugLog:Z

    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mDebugLog:Z

    .line 177
    iput-object p2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mDebugTag:Ljava/lang/String;

    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 722
    const-string v0, ""

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 723
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mAsyncInProgress:Z

    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3

    .line 713
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mAsyncInProgress:Z

    if-nez v0, :cond_0

    .line 715
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x1

    .line 716
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mAsyncInProgress:Z

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void

    .line 713
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") because another async operation("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") is in progress."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 3

    .line 682
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 684
    const-string p1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 687
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 688
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    .line 690
    :cond_2
    const-string v0, "Unexpected type for bundle response code."

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    .line 692
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected type for bundle response code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 3

    .line 698
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 700
    const-string p1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 703
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 704
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    .line 706
    :cond_2
    const-string v0, "Unexpected type for intent response code."

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    .line 708
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected type for intent response code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 9

    const-string v0, "Signature verification failed for sku "

    const-string v1, "Purchase signature verification FAILED for sku "

    .line 373
    iget v2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mRequestCode:I

    const/4 v3, 0x0

    if-eq p1, v2, :cond_0

    return v3

    .line 375
    :cond_0
    const-string p1, "handleActivityResult"

    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->flagEndAsync()V

    const/16 p1, -0x3ea

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_2

    .line 381
    const-string p2, "Null data in IAB activity result."

    invoke-virtual {p0, p2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    .line 382
    new-instance p2, Lcom/popcap/pvz2cthddev/utils/IabResult;

    const-string p3, "Null data in IAB result"

    invoke-direct {p2, p1, p3}, Lcom/popcap/pvz2cthddev/utils/IabResult;-><init>(ILjava/lang/String;)V

    .line 383
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mPurchaseListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2, v4}, Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Purchase;)V

    :cond_1
    return v2

    .line 387
    :cond_2
    invoke-virtual {p0, p3}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 388
    const-string v6, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 389
    const-string v7, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    if-ne p2, v8, :cond_9

    if-nez v5, :cond_9

    .line 392
    const-string p2, "Successful resultcode from purchase activity."

    invoke-virtual {p0, p2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 393
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v5, "Purchase data: "

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 394
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v5, "Data signature: "

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 395
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v5, "Extras: "

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v6, :cond_7

    if-nez v7, :cond_3

    goto :goto_0

    .line 407
    :cond_3
    :try_start_0
    new-instance p2, Lcom/popcap/pvz2cthddev/utils/Purchase;

    invoke-direct {p2, v6, v7}, Lcom/popcap/pvz2cthddev/utils/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Lcom/popcap/pvz2cthddev/utils/Purchase;->getSku()Ljava/lang/String;

    move-result-object p3

    .line 411
    iget-object v5, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/popcap/pvz2cthddev/utils/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    .line 413
    new-instance v1, Lcom/popcap/pvz2cthddev/utils/IabResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v0, -0x3eb

    invoke-direct {v1, v0, p3}, Lcom/popcap/pvz2cthddev/utils/IabResult;-><init>(ILjava/lang/String;)V

    .line 414
    iget-object p3, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mPurchaseListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p3, :cond_4

    invoke-interface {p3, v1, p2}, Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Purchase;)V

    :cond_4
    return v2

    .line 417
    :cond_5
    const-string p3, "Purchase signature successfully verified."

    invoke-virtual {p0, p3}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mPurchaseListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_c

    .line 428
    new-instance p3, Lcom/popcap/pvz2cthddev/utils/IabResult;

    const-string v0, "Success"

    invoke-direct {p3, v3, v0}, Lcom/popcap/pvz2cthddev/utils/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p3, p2}, Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Purchase;)V

    goto/16 :goto_1

    :catch_0
    move-exception p2

    .line 420
    const-string p3, "Failed to parse purchase data."

    invoke-virtual {p0, p3}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 422
    new-instance p2, Lcom/popcap/pvz2cthddev/utils/IabResult;

    invoke-direct {p2, p1, p3}, Lcom/popcap/pvz2cthddev/utils/IabResult;-><init>(ILjava/lang/String;)V

    .line 423
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mPurchaseListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_6

    invoke-interface {p1, p2, v4}, Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Purchase;)V

    :cond_6
    return v2

    .line 398
    :cond_7
    :goto_0
    const-string p1, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    .line 399
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 400
    new-instance p1, Lcom/popcap/pvz2cthddev/utils/IabResult;

    const/16 p2, -0x3f0

    const-string p3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {p1, p2, p3}, Lcom/popcap/pvz2cthddev/utils/IabResult;-><init>(ILjava/lang/String;)V

    .line 401
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mPurchaseListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_8

    invoke-interface {p2, p1, v4}, Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Purchase;)V

    :cond_8
    return v2

    :cond_9
    if-ne p2, v8, :cond_a

    .line 433
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 434
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mPurchaseListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_c

    .line 435
    new-instance p1, Lcom/popcap/pvz2cthddev/utils/IabResult;

    const-string p2, "Problem purchashing item."

    invoke-direct {p1, v5, p2}, Lcom/popcap/pvz2cthddev/utils/IabResult;-><init>(ILjava/lang/String;)V

    .line 436
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mPurchaseListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v4}, Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Purchase;)V

    goto :goto_1

    :cond_a
    if-nez p2, :cond_b

    .line 440
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Purchase canceled - Response: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 441
    new-instance p1, Lcom/popcap/pvz2cthddev/utils/IabResult;

    const/16 p2, -0x3ed

    const-string p3, "User canceled."

    invoke-direct {p1, p2, p3}, Lcom/popcap/pvz2cthddev/utils/IabResult;-><init>(ILjava/lang/String;)V

    .line 442
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mPurchaseListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_c

    invoke-interface {p2, p1, v4}, Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Purchase;)V

    goto :goto_1

    .line 445
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Purchase failed. Result code: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 446
    invoke-static {v5}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 445
    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    .line 447
    new-instance p1, Lcom/popcap/pvz2cthddev/utils/IabResult;

    const/16 p2, -0x3ee

    const-string p3, "Unknown purchase response."

    invoke-direct {p1, p2, p3}, Lcom/popcap/pvz2cthddev/utils/IabResult;-><init>(ILjava/lang/String;)V

    .line 448
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mPurchaseListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_c

    invoke-interface {p2, p1, v4}, Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Purchase;)V

    :cond_c
    :goto_1
    return v2
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6

    .line 295
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v0, p3

    move-object/from16 v15, p4

    const-string v9, "Launching buy intent for "

    const-string v10, "Unable to buy item, Error response: "

    const-string v2, "Constructing buy intent for "

    .line 316
    const-string v3, "launchPurchaseFlow"

    invoke-virtual {v1, v3}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1, v3}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 321
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 322
    iget-object v2, v1, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mService:Lcom/popcap/pvz2cthddev/vending/billing/IInAppBillingService;

    iget-object v3, v1, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "inapp"

    const/4 v3, 0x3

    move-object/from16 v5, p2

    move-object/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/popcap/pvz2cthddev/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 323
    invoke-virtual {v1, v2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    .line 327
    new-instance v0, Lcom/popcap/pvz2cthddev/utils/IabResult;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v3, v2}, Lcom/popcap/pvz2cthddev/utils/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v15, :cond_0

    .line 328
    invoke-interface {v15, v0, v14}, Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Purchase;)V

    .line 329
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->flagEndAsync()V

    return-void

    .line 333
    :cond_1
    const-string v3, "BUY_INTENT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Request code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 335
    iput v0, v1, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mRequestCode:I

    .line 336
    iput-object v15, v1, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mPurchaseListener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;

    .line 337
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v10

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    .line 339
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 340
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v9, p1

    move/from16 v11, p3

    move-object v4, v14

    move v14, v3

    move-object v3, v15

    move v15, v2

    .line 337
    :try_start_1
    invoke-virtual/range {v9 .. v15}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v4, v14

    move-object v3, v15

    .line 350
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "RemoteException while launching purchase flow for sku "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 353
    new-instance v0, Lcom/popcap/pvz2cthddev/utils/IabResult;

    const/16 v2, -0x3e9

    const-string v5, "Remote exception while starting purchase flow"

    invoke-direct {v0, v2, v5}, Lcom/popcap/pvz2cthddev/utils/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v3, :cond_2

    .line 354
    invoke-interface {v3, v0, v4}, Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Purchase;)V

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v4, v14

    move-object v3, v15

    .line 343
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 346
    new-instance v0, Lcom/popcap/pvz2cthddev/utils/IabResult;

    const/16 v2, -0x3ec

    const-string v5, "Failed to send intent."

    invoke-direct {v0, v2, v5}, Lcom/popcap/pvz2cthddev/utils/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v3, :cond_2

    .line 347
    invoke-interface {v3, v0, v4}, Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;Lcom/popcap/pvz2cthddev/utils/Purchase;)V

    :cond_2
    :goto_2
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1

    .line 869
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3

    .line 873
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3

    .line 877
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing warning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/popcap/pvz2cthddev/utils/Inventory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/popcap/pvz2cthddev/utils/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/popcap/pvz2cthddev/utils/IabException;
        }
    .end annotation

    .line 465
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 467
    :try_start_0
    new-instance v0, Lcom/popcap/pvz2cthddev/utils/Inventory;

    invoke-direct {v0}, Lcom/popcap/pvz2cthddev/utils/Inventory;-><init>()V

    .line 468
    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->queryPurchases(Lcom/popcap/pvz2cthddev/utils/Inventory;)I

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    .line 474
    invoke-virtual {p0, v0, p2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->querySkuDetails(Lcom/popcap/pvz2cthddev/utils/Inventory;Ljava/util/List;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    new-instance p2, Lcom/popcap/pvz2cthddev/utils/IabException;

    const-string v0, "Error refreshing inventory (querying prices of items)."

    invoke-direct {p2, p1, v0}, Lcom/popcap/pvz2cthddev/utils/IabException;-><init>(ILjava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-object v0

    .line 470
    :cond_2
    new-instance p1, Lcom/popcap/pvz2cthddev/utils/IabException;

    const-string p2, "Error refreshing inventory (querying owned items)."

    invoke-direct {p1, v1, p2}, Lcom/popcap/pvz2cthddev/utils/IabException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 485
    new-instance p2, Lcom/popcap/pvz2cthddev/utils/IabException;

    const/16 v0, -0x3ea

    const-string v1, "Error parsing JSON response while refreshing inventory."

    invoke-direct {p2, v0, v1, p1}, Lcom/popcap/pvz2cthddev/utils/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 482
    new-instance p2, Lcom/popcap/pvz2cthddev/utils/IabException;

    const/16 v0, -0x3e9

    const-string v1, "Remote exception while refreshing inventory."

    invoke-direct {p2, v0, v1, p1}, Lcom/popcap/pvz2cthddev/utils/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public queryInventoryAsync(Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 544
    invoke-virtual {p0, v0, v1, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method public queryInventoryAsync(ZLcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 548
    invoke-virtual {p0, p1, v0, p2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .line 516
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 517
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 518
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 519
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/popcap/pvz2cthddev/utils/IabHelper$2;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/popcap/pvz2cthddev/utils/IabHelper$2;-><init>(Lcom/popcap/pvz2cthddev/utils/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/popcap/pvz2cthddev/utils/IabHelper$QueryInventoryFinishedListener;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 540
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method queryPurchases(Lcom/popcap/pvz2cthddev/utils/Inventory;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    const-string v0, "Querying owned items..."

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 736
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 737
    iget-object v3, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mService:Lcom/popcap/pvz2cthddev/vending/billing/IInAppBillingService;

    iget-object v4, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "inapp"

    const/4 v6, 0x3

    invoke-interface {v3, v6, v4, v5, v1}, Lcom/popcap/pvz2cthddev/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 740
    invoke-virtual {p0, v1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v3

    .line 741
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Owned items response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 743
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getPurchases() failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    return v3

    .line 746
    :cond_1
    const-string v3, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 747
    const-string v4, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 748
    const-string v5, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 753
    :cond_2
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 755
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 757
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    move v6, v0

    .line 760
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 761
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 762
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 763
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 764
    iget-object v10, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v10, v7, v8}, Lcom/popcap/pvz2cthddev/utils/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 765
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Sku is owned: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 766
    new-instance v9, Lcom/popcap/pvz2cthddev/utils/Purchase;

    invoke-direct {v9, v7, v8}, Lcom/popcap/pvz2cthddev/utils/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual {v9}, Lcom/popcap/pvz2cthddev/utils/Purchase;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 769
    const-string v8, "BUG: empty/null token!"

    invoke-virtual {p0, v8}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 770
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Purchase data: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 774
    :cond_3
    invoke-virtual {p1, v9}, Lcom/popcap/pvz2cthddev/utils/Inventory;->addPurchase(Lcom/popcap/pvz2cthddev/utils/Purchase;)V

    goto :goto_1

    .line 777
    :cond_4
    const-string v2, "Purchase signature verification **FAILED**. Not adding item."

    invoke-virtual {p0, v2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 778
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "   Purchase data: "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 779
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "   Signature: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 784
    :cond_5
    const-string v3, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 785
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Continuation token: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 786
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_6

    const/16 v0, -0x3eb

    :cond_6
    return v0

    .line 749
    :cond_7
    :goto_2
    const-string p1, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1
.end method

.method querySkuDetails(Lcom/popcap/pvz2cthddev/utils/Inventory;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/popcap/pvz2cthddev/utils/Inventory;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 792
    const-string v0, "Querying SKU details."

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 794
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/utils/Inventory;->getAllOwnedSkus()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_0

    .line 795
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 797
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 798
    const-string p1, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    return v1

    .line 802
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 803
    const-string v2, "ITEM_ID_LIST"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 804
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mService:Lcom/popcap/pvz2cthddev/vending/billing/IInAppBillingService;

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inapp"

    const/4 v4, 0x3

    invoke-interface {v0, v4, v2, v3, p2}, Lcom/popcap/pvz2cthddev/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 807
    const-string v0, "DETAILS_LIST"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 808
    invoke-virtual {p0, p2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 810
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getSkuDetails() failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    return p1

    .line 814
    :cond_2
    const-string p1, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1

    .line 819
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 822
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 823
    new-instance v2, Lcom/popcap/pvz2cthddev/utils/SkuDetails;

    invoke-direct {v2, v0}, Lcom/popcap/pvz2cthddev/utils/SkuDetails;-><init>(Ljava/lang/String;)V

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Got sku details: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p1, v2}, Lcom/popcap/pvz2cthddev/utils/Inventory;->addSkuDetails(Lcom/popcap/pvz2cthddev/utils/SkuDetails;)V

    goto :goto_0

    :cond_4
    return v1
.end method

.method public startSetup(Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;)V
    .locals 3

    .line 206
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 209
    const-string v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/popcap/pvz2cthddev/utils/IabHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper$1;-><init>(Lcom/popcap/pvz2cthddev/utils/IabHelper;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 247
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    .line 206
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "IAB helper is already set up."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
