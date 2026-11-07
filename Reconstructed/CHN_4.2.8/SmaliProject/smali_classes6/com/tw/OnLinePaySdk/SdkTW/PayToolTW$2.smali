.class Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$2;
.super Ljava/lang/Object;
.source "PayToolTW.java"

# interfaces
.implements Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->loginSDK(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

.field final synthetic val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$2;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    iput-object p2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$2;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 7

    const-string v0, "\u767b\u5f55\u53d6\u6d88"

    .line 102
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$2;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    invoke-static {v0}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$100(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$2;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    const-string v1, "05"

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    invoke-static/range {v1 .. v6}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->loginCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 6

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u767b\u5f55\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$2;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    invoke-static {p1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$100(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$2;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    const-string v0, "02"

    const-string v1, ""

    const-string v3, ""

    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->loginCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method

.method public onSuccess(Lcom/tw/gamesdk/bean/SimpleUserData;)V
    .locals 9

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u767b\u5f55\u6210\u529f userInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$2;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    invoke-static {v0}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$100(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "208"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getIsNew()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    invoke-static {}, Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService;->getInstance()Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService;->onGameActive()Z

    move-result v0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8c03\u7528\u6296\u97f3\u6fc0\u6d3b \u8c03\u7528\u7ed3\u679conGameActive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const-string v0, "talkweb"

    .line 86
    invoke-static {v0, v1}, Lcom/bytedance/ads/convert/event/ConvertReportHelper;->onEventRegister(Ljava/lang/String;Z)V

    const-string v0, "\u8c03\u7528ConvertReportHelper\u6ce8\u518c"

    .line 87
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$2;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$202(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$2;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    invoke-static {v1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$200(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$2;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    invoke-static {v0}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$100(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getNickname()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$2;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    const-string v3, "01"

    invoke-static/range {v3 .. v8}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->loginCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method
