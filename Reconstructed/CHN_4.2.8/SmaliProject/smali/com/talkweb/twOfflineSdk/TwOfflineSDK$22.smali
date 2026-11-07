.class final Lcom/talkweb/twOfflineSdk/TwOfflineSDK$22;
.super Ljava/lang/Object;
.source "TwOfflineSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->setSecondLock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1557
    invoke-static {}, Lcom/talkweb/secondlock/SecondLockUtil;->getInstance()Lcom/talkweb/secondlock/SecondLockUtil;

    move-result-object v0

    sget-object v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/talkweb/secondlock/SecondLockUtil;->setSecondLock(Landroid/app/Activity;)V

    return-void
.end method
