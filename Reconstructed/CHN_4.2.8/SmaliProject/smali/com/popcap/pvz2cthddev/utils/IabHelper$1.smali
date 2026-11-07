.class Lcom/popcap/pvz2cthddev/utils/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/utils/IabHelper;->startSetup(Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

.field final synthetic val$listener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/utils/IabHelper;Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$1;->this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$1;->val$listener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "In-app billing version 3 supported for "

    .line 219
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$1;->this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    const-string v1, "Billing service connected."

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$1;->this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    invoke-static {p2}, Lcom/popcap/pvz2cthddev/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/popcap/pvz2cthddev/vending/billing/IInAppBillingService;

    move-result-object p2

    iput-object p2, v0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mService:Lcom/popcap/pvz2cthddev/vending/billing/IInAppBillingService;

    .line 221
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$1;->this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    iget-object p2, p2, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$1;->this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    const-string v1, "Checking for in-app billing 3 support."

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$1;->this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    iget-object v0, v0, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mService:Lcom/popcap/pvz2cthddev/vending/billing/IInAppBillingService;

    const-string v1, "inapp"

    const/4 v2, 0x3

    invoke-interface {v0, v2, p2, v1}, Lcom/popcap/pvz2cthddev/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$1;->val$listener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/popcap/pvz2cthddev/utils/IabResult;

    const-string v1, "Error checking for billing v3 support."

    invoke-direct {p2, v0, v1}, Lcom/popcap/pvz2cthddev/utils/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;)V

    :cond_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$1;->this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 231
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$1;->this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mSetupDone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$1;->val$listener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;

    if-eqz p1, :cond_2

    .line 243
    new-instance p2, Lcom/popcap/pvz2cthddev/utils/IabResult;

    const/4 v0, 0x0

    const-string v1, "Setup successful."

    invoke-direct {p2, v0, v1}, Lcom/popcap/pvz2cthddev/utils/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;)V

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 234
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$1;->val$listener:Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;

    if-eqz p2, :cond_3

    .line 235
    new-instance v0, Lcom/popcap/pvz2cthddev/utils/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "RemoteException while setting up in-app billing."

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/utils/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/popcap/pvz2cthddev/utils/IabResult;)V

    .line 238
    :cond_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$1;->this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    const-string v0, "Billing service disconnected."

    invoke-virtual {p1, v0}, Lcom/popcap/pvz2cthddev/utils/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/utils/IabHelper$1;->this$0:Lcom/popcap/pvz2cthddev/utils/IabHelper;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/popcap/pvz2cthddev/utils/IabHelper;->mService:Lcom/popcap/pvz2cthddev/vending/billing/IInAppBillingService;

    return-void
.end method
