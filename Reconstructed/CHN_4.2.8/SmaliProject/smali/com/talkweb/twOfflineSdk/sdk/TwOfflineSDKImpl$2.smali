.class Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;
.super Ljava/lang/Object;
.source "TwOfflineSDKImpl.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->doInit(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;->this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;->val$cId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFinished(Z)V
    .locals 4

    if-eqz p1, :cond_1

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doInitinitFinished success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "twSetting.xml"

    const-string v1, "serviceNote"

    .line 312
    invoke-static {p1, v0, v1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 316
    new-instance p1, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2$1;

    invoke-direct {p1, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2$1;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;)V

    const/16 v0, 0x5dc

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dellayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    int-to-long v2, v0

    .line 328
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const/16 p1, 0xfa0

    .line 332
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;->val$cId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onInitCallBack(ILjava/lang/String;)V

    .line 333
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x0

    const-string v1, "10"

    invoke-static {p1, v1, v0}, Lcom/talkweb/twutil/TgaPointUtil;->BuryingPoin(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/network/ApiCallback;)V

    const-string p1, "doInit success"

    .line 334
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xfa1

    .line 337
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;->val$cId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onInitCallBack(ILjava/lang/String;)V

    const-string p1, "doInit failed"

    .line 338
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
