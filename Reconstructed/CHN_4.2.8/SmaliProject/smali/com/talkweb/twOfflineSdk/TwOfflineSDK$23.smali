.class final Lcom/talkweb/twOfflineSdk/TwOfflineSDK$23;
.super Ljava/lang/Object;
.source "TwOfflineSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->verifySecondLock(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    .line 1577
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$23;->val$callback:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1580
    invoke-static {}, Lcom/talkweb/secondlock/SecondLockUtil;->getInstance()Lcom/talkweb/secondlock/SecondLockUtil;

    move-result-object v0

    sget-object v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    new-instance v2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$23$1;

    invoke-direct {v2, p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$23$1;-><init>(Lcom/talkweb/twOfflineSdk/TwOfflineSDK$23;)V

    invoke-virtual {v0, v1, v2}, Lcom/talkweb/secondlock/SecondLockUtil;->verifySecondLock(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V

    return-void
.end method
