.class final Lcom/talkweb/twOfflineSdk/TwOfflineSDK$12;
.super Ljava/lang/Object;
.source "TwOfflineSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->checkOrder(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$12;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$12;->val$callback:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 553
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$12;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$12;->val$callback:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    invoke-virtual {v0, v1, v2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->doCheckOrder(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method
