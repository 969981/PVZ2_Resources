.class public Lcom/tw/OnLinePaySdk/tools/QueryOrderResult;
.super Ljava/lang/Object;
.source "QueryOrderResult.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrderInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/MyCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 20
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "appOrderCode"

    .line 21
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    new-instance p1, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;

    invoke-direct {p1, p0, p3, p2}, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;-><init>(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/MyCallBack;Lorg/json/JSONObject;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Integer;

    const/high16 p2, 0x7f040000

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p0, p3

    invoke-virtual {p1, p0}, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
