.class Lcom/tw/pay/sdk/util/TwPayUtil$5;
.super Ljava/lang/Object;
.source "TwPayUtil.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/TwPayUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwPayUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwPayUtil;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/Object;)V
    .locals 4

    .line 241
    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPayType param:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->d(Ljava/lang/String;)V

    const-string v0, "02"

    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/ReturnObject;->getResultCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    :try_start_0
    new-instance v2, Lcom/talkweb/sdk/vo/AppPayWay;

    invoke-direct {v2}, Lcom/talkweb/sdk/vo/AppPayWay;-><init>()V

    .line 247
    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/ReturnObject;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/talkweb/sdk/util/Des;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {v2, v3}, Lcom/talkweb/sdk/vo/AppPayWay;->formJson(Ljava/lang/String;)Lcom/talkweb/sdk/vo/BaseVO;

    move-result-object v2

    check-cast v2, Lcom/talkweb/sdk/vo/AppPayWay;

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/ReturnObject;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/sdk/util/Des;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->d(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v2}, Lcom/talkweb/sdk/vo/AppPayWay;->getAppInfo()Lcom/talkweb/sdk/orm/model/AppInfo;

    move-result-object p1

    .line 250
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-virtual {p1}, Lcom/talkweb/sdk/orm/model/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$400(Lcom/tw/pay/sdk/util/TwPayUtil;Ljava/lang/String;)V

    .line 251
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    invoke-virtual {v2}, Lcom/talkweb/sdk/vo/AppPayWay;->getPaywayInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/talkweb/sdk/orm/model/PaywayInfo;

    .line 253
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v1, p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$500(Lcom/tw/pay/sdk/util/TwPayUtil;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 258
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$200(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/bean/PayResultBean;

    move-result-object p1

    iput-object v0, p1, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    goto :goto_1

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$5;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$200(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/bean/PayResultBean;

    move-result-object p1

    iput-object v0, p1, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    :goto_1
    return-void
.end method
