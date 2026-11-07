.class public Lcom/talkweb/twgame/net/HttpAsyncTask;
.super Landroid/os/AsyncTask;
.source "HttpAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/talkweb/twgame/net/HttpTaskCallback;

.field private mapParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private param:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/talkweb/twgame/net/HttpTaskCallback;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/talkweb/twgame/net/HttpAsyncTask;->param:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/talkweb/twgame/net/HttpAsyncTask;->callback:Lcom/talkweb/twgame/net/HttpTaskCallback;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/talkweb/twgame/net/HttpTaskCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/talkweb/twgame/net/HttpTaskCallback;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/talkweb/twgame/net/HttpAsyncTask;->mapParam:Ljava/util/Map;

    .line 41
    iput-object p2, p0, Lcom/talkweb/twgame/net/HttpAsyncTask;->callback:Lcom/talkweb/twgame/net/HttpTaskCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/talkweb/twgame/net/HttpAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpAsyncTask is doInBackground:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 47
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p1, "\u6ca1\u6709\u6b64\u8bf7\u6c42\uff01"

    .line 71
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 69
    :pswitch_0
    iget-object p1, p0, Lcom/talkweb/twgame/net/HttpAsyncTask;->param:Ljava/lang/String;

    invoke-static {p1}, Lcom/talkweb/twgame/net/RequestHelper;->uploadLogs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 67
    :pswitch_1
    iget-object p1, p0, Lcom/talkweb/twgame/net/HttpAsyncTask;->mapParam:Ljava/util/Map;

    invoke-static {p1}, Lcom/talkweb/twgame/net/RequestHelper;->getTwgameABTest(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_2
    iget-object p1, p0, Lcom/talkweb/twgame/net/HttpAsyncTask;->param:Ljava/lang/String;

    invoke-static {p1}, Lcom/talkweb/twgame/net/RequestHelper;->getTwgameConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 63
    :pswitch_3
    iget-object p1, p0, Lcom/talkweb/twgame/net/HttpAsyncTask;->mapParam:Ljava/util/Map;

    invoke-static {p1}, Lcom/talkweb/twgame/net/RequestHelper;->getTwgameInfo(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/talkweb/twgame/net/HttpAsyncTask;->param:Ljava/lang/String;

    invoke-static {p1}, Lcom/talkweb/twgame/net/RequestHelper;->getTwgameFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/talkweb/twgame/net/HttpAsyncTask;->param:Ljava/lang/String;

    invoke-static {p1}, Lcom/talkweb/twgame/net/RequestHelper;->getTwgameVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/talkweb/twgame/net/HttpAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/talkweb/twgame/net/HttpAsyncTask;->callback:Lcom/talkweb/twgame/net/HttpTaskCallback;

    invoke-interface {v0, p1}, Lcom/talkweb/twgame/net/HttpTaskCallback;->responseData(Ljava/lang/String;)V

    return-void
.end method
