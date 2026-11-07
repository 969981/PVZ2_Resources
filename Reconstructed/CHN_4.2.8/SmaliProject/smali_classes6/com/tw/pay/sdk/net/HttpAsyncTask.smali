.class public Lcom/tw/pay/sdk/net/HttpAsyncTask;
.super Landroid/os/AsyncTask;
.source "HttpAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lcom/talkweb/sdk/vo/ReturnObject;",
        ">;"
    }
.end annotation


# instance fields
.field private param:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private twCallback:Lcom/tw/pay/sdk/callback/TwCallback;


# direct methods
.method public constructor <init>(Lcom/tw/pay/sdk/callback/TwCallback;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tw/pay/sdk/callback/TwCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/tw/pay/sdk/net/HttpAsyncTask;->twCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 17
    iput-object p2, p0, Lcom/tw/pay/sdk/net/HttpAsyncTask;->param:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Lcom/talkweb/sdk/vo/ReturnObject;
    .locals 2

    .line 23
    new-instance v0, Lcom/tw/pay/sdk/net/HttpDataNet;

    invoke-direct {v0}, Lcom/tw/pay/sdk/net/HttpDataNet;-><init>()V

    const/4 v1, 0x0

    .line 25
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 53
    :pswitch_0
    iget-object p1, p0, Lcom/tw/pay/sdk/net/HttpAsyncTask;->param:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->registerPhone(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;

    move-result-object p1

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object p1, p0, Lcom/tw/pay/sdk/net/HttpAsyncTask;->param:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->payRequset(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;

    move-result-object p1

    goto :goto_0

    .line 46
    :pswitch_2
    iget-object p1, p0, Lcom/tw/pay/sdk/net/HttpAsyncTask;->param:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->getPayType(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;

    move-result-object p1

    goto :goto_0

    .line 42
    :pswitch_3
    iget-object p1, p0, Lcom/tw/pay/sdk/net/HttpAsyncTask;->param:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->verifyCode(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;

    move-result-object p1

    goto :goto_0

    .line 38
    :pswitch_4
    iget-object p1, p0, Lcom/tw/pay/sdk/net/HttpAsyncTask;->param:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->oneKeyRegister(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;

    move-result-object p1

    goto :goto_0

    .line 35
    :pswitch_5
    iget-object p1, p0, Lcom/tw/pay/sdk/net/HttpAsyncTask;->param:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->register(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;

    move-result-object p1

    goto :goto_0

    .line 31
    :pswitch_6
    iget-object p1, p0, Lcom/tw/pay/sdk/net/HttpAsyncTask;->param:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->Login(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;

    move-result-object p1

    goto :goto_0

    .line 27
    :pswitch_7
    iget-object p1, p0, Lcom/tw/pay/sdk/net/HttpAsyncTask;->param:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Lcom/tw/pay/sdk/net/HttpDataNet;->recordTerminal(Ljava/util/HashMap;)Lcom/talkweb/sdk/vo/ReturnObject;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/tw/pay/sdk/net/HttpAsyncTask;->doInBackground([Ljava/lang/Integer;)Lcom/talkweb/sdk/vo/ReturnObject;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/talkweb/sdk/vo/ReturnObject;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/tw/pay/sdk/net/HttpAsyncTask;->twCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-interface {v0, p1}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;

    invoke-virtual {p0, p1}, Lcom/tw/pay/sdk/net/HttpAsyncTask;->onPostExecute(Lcom/talkweb/sdk/vo/ReturnObject;)V

    return-void
.end method
