.class final Lcom/talkweb/twOfflineSdk/callback/CallbackManager$3;
.super Ljava/lang/Object;
.source "CallbackManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->payCallBackImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$code:I

.field final synthetic val$orderNumber:Ljava/lang/String;

.field final synthetic val$payResultBean:Lcom/talkweb/twOfflineSdk/bean/PayResultBean;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/bean/PayResultBean;ILjava/lang/String;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$3;->val$payResultBean:Lcom/talkweb/twOfflineSdk/bean/PayResultBean;

    iput p2, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$3;->val$code:I

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$3;->val$orderNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x3

    .line 312
    :try_start_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->access$100()Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$3;->val$payResultBean:Lcom/talkweb/twOfflineSdk/bean/PayResultBean;

    .line 313
    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-interface {v1, v0, v2}, Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;->onResponse(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->access$100()Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"channelId\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$3;->val$payResultBean:Lcom/talkweb/twOfflineSdk/bean/PayResultBean;

    iget-object v3, v3, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->channelId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"code\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$3;->val$code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",\"isOnlinePay\":true,\"msg\":\"unknown\",\"orderId\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$3;->val$orderNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"payType\":\"unknown\",\"tradeId\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$3;->val$orderNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;->onResponse(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
