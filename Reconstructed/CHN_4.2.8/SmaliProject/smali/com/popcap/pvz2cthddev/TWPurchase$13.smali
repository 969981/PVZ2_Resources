.class Lcom/popcap/pvz2cthddev/TWPurchase$13;
.super Ljava/lang/Object;
.source "TWPurchase.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwGameDeeplinkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWPurchase;->GetGameCenterUrl()Ljava/lang/String;
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

    .line 978
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$13;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resultGameDeeplink(Ljava/lang/String;)V
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWPurchase$13;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    invoke-virtual {v0, p1}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_GetGameCenterUrl(Ljava/lang/String;)V

    return-void
.end method
