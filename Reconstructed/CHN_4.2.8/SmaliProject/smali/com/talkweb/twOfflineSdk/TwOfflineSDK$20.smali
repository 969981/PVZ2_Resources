.class final Lcom/talkweb/twOfflineSdk/TwOfflineSDK$20;
.super Ljava/lang/Object;
.source "TwOfflineSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->pay(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$orderNumber:Ljava/lang/String;

.field final synthetic val$payCode:Ljava/lang/String;

.field final synthetic val$payType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 1109
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$20;->val$payCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$20;->val$orderNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$20;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$20;->val$payType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1113
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$20;->val$payCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$20;->val$orderNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$20;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$20;->val$payType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->doPay(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
