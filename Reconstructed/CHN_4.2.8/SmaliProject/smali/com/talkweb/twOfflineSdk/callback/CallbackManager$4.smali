.class final Lcom/talkweb/twOfflineSdk/callback/CallbackManager$4;
.super Ljava/lang/Object;
.source "CallbackManager.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->getLoginUserId(Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$loginResultBean:Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$4;->val$loginResultBean:Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 2

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USER_OPENID response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 449
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/JsonStrTool;->toMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "resultCode"

    .line 450
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "0000"

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "content"

    .line 452
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 453
    sput-object p1, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->userId:Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$4;->val$loginResultBean:Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;

    iput-object p1, v0, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    .line 455
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loginCallBack onResponse:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$4;->val$loginResultBean:Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 456
    invoke-static {}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->access$200()Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;

    move-result-object p1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/callback/CallbackManager$4;->val$loginResultBean:Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;

    .line 457
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-interface {p1, v0, v1}, Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;->onResponse(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 458
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->access$302(Z)Z

    :cond_0
    return-void
.end method
