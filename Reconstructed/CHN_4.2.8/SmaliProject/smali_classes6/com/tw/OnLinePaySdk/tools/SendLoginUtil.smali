.class public Lcom/tw/OnLinePaySdk/tools/SendLoginUtil;
.super Ljava/lang/Object;
.source "SendLoginUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendLoginInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/MyCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "channelParam"

    .line 17
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    invoke-static {}, Lcom/tw/OnLinePaySdk/tools/Tools;->genarateUUID()Ljava/lang/String;

    move-result-object p3

    const-string v1, "idfa"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    invoke-static {p0}, Lcom/tw/OnLinePaySdk/tools/MoblieSignTools;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "imei"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "userId"

    .line 20
    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-static {}, Lcom/tw/OnLinePaySdk/tools/MoblieSignTools;->getLocalIpAddress()Ljava/lang/String;

    move-result-object p1

    const-string p3, "requestIp"

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "oauthKey"

    .line 22
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    new-instance p1, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;

    invoke-direct {p1, p0, p4, v0}, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;-><init>(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/MyCallBack;Lorg/json/JSONObject;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Integer;

    const/high16 p2, 0x7f010000

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p0, p3

    invoke-virtual {p1, p0}, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
