.class Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2$1;
.super Ljava/lang/Object;
.source "TwOfflineSDK.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/SyncTwpayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2$1;->this$0:Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncFinished()V
    .locals 4

    .line 173
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->twOfflineSDK:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2$1;->this$0:Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;

    iget-object v1, v1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;->val$context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2$1;->this$0:Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;

    iget-object v2, v2, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;->val$appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2$1;->this$0:Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;

    iget-object v3, v3, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$2;->val$callback:Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->doInit(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method
