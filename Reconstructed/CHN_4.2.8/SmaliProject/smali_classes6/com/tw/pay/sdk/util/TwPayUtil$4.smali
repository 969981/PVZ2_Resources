.class Lcom/tw/pay/sdk/util/TwPayUtil$4;
.super Ljava/lang/Object;
.source "TwPayUtil.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwPayUtil;->getPayType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

.field final synthetic val$paywayInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwPayUtil;Ljava/util/List;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    iput-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil$4;->val$paywayInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 6

    .line 198
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    const-string v2, "\u690d\u7269\u5927\u6218\u50f5\u5c382"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$400(Lcom/tw/pay/sdk/util/TwPayUtil;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 200
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 201
    new-instance v2, Lcom/talkweb/sdk/orm/model/PaywayInfo;

    invoke-direct {v2}, Lcom/talkweb/sdk/orm/model/PaywayInfo;-><init>()V

    .line 202
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "payWayId"

    .line 203
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "payType"

    .line 204
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {v2, v3}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->setPayType(Ljava/lang/String;)V

    .line 206
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->setPayWayId(Ljava/lang/String;)V

    const/16 v3, 0x9

    if-eq v4, v3, :cond_0

    const/16 v3, 0xa

    if-eq v4, v3, :cond_0

    const/16 v3, 0xb

    if-eq v4, v3, :cond_0

    const/16 v3, 0xc

    if-eq v4, v3, :cond_0

    const/16 v3, 0xd

    if-ne v4, v3, :cond_1

    .line 208
    :cond_0
    iget-object v3, p0, Lcom/tw/pay/sdk/util/TwPayUtil$4;->val$paywayInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPayType param: eventCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  message:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->d(Ljava/lang/String;)V

    .line 216
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$600(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/tw/pay/sdk/util/TwPayUtil$4$1;

    invoke-direct {p2, p0}, Lcom/tw/pay/sdk/util/TwPayUtil$4$1;-><init>(Lcom/tw/pay/sdk/util/TwPayUtil$4;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception p1

    .line 212
    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p2}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$200(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/bean/PayResultBean;

    move-result-object p2

    const-string v0, "02"

    iput-object v0, p2, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    .line 213
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
