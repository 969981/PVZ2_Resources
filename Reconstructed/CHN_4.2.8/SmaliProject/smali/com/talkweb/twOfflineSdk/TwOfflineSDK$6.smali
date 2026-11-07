.class final Lcom/talkweb/twOfflineSdk/TwOfflineSDK$6;
.super Ljava/lang/Object;
.source "TwOfflineSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->pay(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$orderNumber:Ljava/lang/String;

.field final synthetic val$payCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$6;->val$payCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$6;->val$orderNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 370
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$6;->val$payCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$6;->val$orderNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->doPay(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
