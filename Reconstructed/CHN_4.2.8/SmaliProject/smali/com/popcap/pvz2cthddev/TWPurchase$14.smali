.class Lcom/popcap/pvz2cthddev/TWPurchase$14;
.super Ljava/lang/Object;
.source "TWPurchase.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWPurchase;->DoSetAchievement(Ljava/lang/String;)V
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

    .line 994
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWPurchase$14;->this$0:Lcom/popcap/pvz2cthddev/TWPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 0

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 1002
    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;->instance()Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1004
    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;->instance()Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;->OnSetAchievementCallback(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    .line 1009
    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;->instance()Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1011
    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;->instance()Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;->OnSetAchievementCallback(Z)V

    :cond_1
    :goto_0
    return-void
.end method
