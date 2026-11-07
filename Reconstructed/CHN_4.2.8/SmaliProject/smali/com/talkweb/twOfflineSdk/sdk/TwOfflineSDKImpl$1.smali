.class Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$1;
.super Ljava/lang/Object;
.source "TwOfflineSDKImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->loginTalkweb(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

.field final synthetic val$userInfo:Lcom/talkweb/twOfflineSdk/bean/UserInfo;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Lcom/talkweb/twOfflineSdk/bean/UserInfo;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$1;->this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$1;->val$userInfo:Lcom/talkweb/twOfflineSdk/bean/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$1;->val$userInfo:Lcom/talkweb/twOfflineSdk/bean/UserInfo;

    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->getTalkwebUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$1;->val$userInfo:Lcom/talkweb/twOfflineSdk/bean/UserInfo;

    invoke-virtual {v1}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$1;->val$userInfo:Lcom/talkweb/twOfflineSdk/bean/UserInfo;

    invoke-virtual {v2}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbb8

    invoke-static {v3, v0, v1, v2}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onLoginCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
