.class Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2$1;
.super Landroid/os/Handler;
.source "TwOfflineSDKImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;->initFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2$1;->this$1:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 320
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 321
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2$1;->this$1:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->getTwServiceNoteDialog(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2$1;->this$1:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;->val$cId:Ljava/lang/String;

    .line 322
    invoke-virtual {p1, v0}, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->showServiceDialog(Ljava/lang/String;)V

    const-string p1, "TwServiceNoteDialog  opened"

    .line 323
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method
