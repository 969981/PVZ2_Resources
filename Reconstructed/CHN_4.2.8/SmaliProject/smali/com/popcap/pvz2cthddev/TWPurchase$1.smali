.class Lcom/popcap/pvz2cthddev/TWPurchase$1;
.super Ljava/lang/Object;
.source "TWPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWPurchase;->InitializeSDK(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

.field final synthetic val$appid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWPurchase;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1;->val$appid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    iget-wide v1, v0, Lcom/popcap/pvz2cthddev/TWPurchase;->mNativeDriverPtr:J

    invoke-virtual {v0, v1, v2}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_SDKInitStart(J)V

    .line 148
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$1;->val$appid:Ljava/lang/String;

    new-instance v2, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;

    invoke-direct {v2, p0}, Lcom/popcap/pvz2cthddev/TWPurchase$1$1;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase$1;)V

    invoke-static {v0, v1, v2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method
