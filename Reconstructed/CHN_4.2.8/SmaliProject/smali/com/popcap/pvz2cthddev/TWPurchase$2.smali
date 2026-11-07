.class Lcom/popcap/pvz2cthddev/TWPurchase$2;
.super Ljava/lang/Object;
.source "TWPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWPurchase;->OnExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/TWPurchase;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWPurchase;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$2;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 224
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    new-instance v1, Lcom/popcap/pvz2cthddev/TWPurchase$2$1;

    invoke-direct {v1, p0}, Lcom/popcap/pvz2cthddev/TWPurchase$2$1;-><init>(Lcom/popcap/pvz2cthddev/TWPurchase$2;)V

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->destory(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method
