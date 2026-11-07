.class Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;
.super Ljava/lang/Object;
.source "TalkwebProxy.java"

# interfaces
.implements Lcom/tw/OnLinePaySdk/callback/TWCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TalkwebProxy;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

.field final synthetic val$orderNumber:Ljava/lang/String;

.field final synthetic val$price:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/TalkwebProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;->val$orderNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;->val$price:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(ILjava/lang/String;)V
    .locals 6

    const-string v0, "\u652f\u4ed8\u53d6\u6d88"

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    const/16 p1, 0x3e8

    .line 210
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const-string p2, "code"

    .line 215
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    .line 228
    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 229
    iget-object p2, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;->val$orderNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;->val$orderNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;->val$price:Ljava/lang/String;

    invoke-static {p1, v2, p2, v0, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/16 p2, 0x7d0

    .line 224
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;->val$orderNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;->val$orderNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;->val$price:Ljava/lang/String;

    invoke-static {p2, v0, v1, v3, v4}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/16 p2, 0x270f

    .line 219
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;->val$orderNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;->val$orderNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;->val$price:Ljava/lang/String;

    invoke-static {p2, v1, v0, v3, v4}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_0
    iget-object p2, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    sget-object v0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->saveOrderTime:Ljava/lang/String;

    sget-object v1, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, v0, v1}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->cleanOrder(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u652f\u4ed8\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 236
    iget-object p2, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;->val$orderNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;->val$price:Ljava/lang/String;

    invoke-static {p1, v2, p2, p2, v0}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$4;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    sget-object p2, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->saveOrderTime:Ljava/lang/String;

    sget-object v0, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2, v0}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->cleanOrder(Ljava/lang/String;Landroid/content/Context;)V

    :cond_2
    :goto_1
    return-void
.end method
