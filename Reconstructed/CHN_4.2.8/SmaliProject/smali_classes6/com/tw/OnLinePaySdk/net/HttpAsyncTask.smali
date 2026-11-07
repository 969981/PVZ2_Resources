.class public Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;
.super Landroid/os/AsyncTask;
.source "HttpAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private data:Lorg/json/JSONObject;

.field private mCallBack:Lcom/tw/OnLinePaySdk/callback/MyCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/MyCallBack;Lorg/json/JSONObject;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;->mCallBack:Lcom/tw/OnLinePaySdk/callback/MyCallBack;

    .line 20
    iput-object p3, p0, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;->data:Lorg/json/JSONObject;

    .line 21
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 2

    .line 27
    new-instance v0, Lcom/tw/OnLinePaySdk/server/TalkwebServer;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/server/TalkwebServer;-><init>()V

    const/4 v1, 0x0

    .line 29
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 v1, 0x7f010000

    if-eq p1, v1, :cond_3

    const/high16 v1, 0x7f020000

    if-eq p1, v1, :cond_2

    const/high16 v1, 0x7f030000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x7f040000

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lcom/tw/OnLinePaySdk/server/TalkwebServer;->queryResultPay(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lcom/tw/OnLinePaySdk/server/TalkwebServer;->pay(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 35
    :cond_2
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lcom/tw/OnLinePaySdk/server/TalkwebServer;->sendUserInfo(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lcom/tw/OnLinePaySdk/server/TalkwebServer;->loginTalkweb(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;->mCallBack:Lcom/tw/OnLinePaySdk/callback/MyCallBack;

    invoke-interface {v0, p1}, Lcom/tw/OnLinePaySdk/callback/MyCallBack;->responseData(Ljava/lang/Object;)V

    return-void
.end method
