.class public Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;
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
.field private callback:Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;

.field private mapParam:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stringParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->stringParam:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->callback:Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->mapParam:Ljava/util/HashMap;

    .line 46
    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->callback:Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpAsyncTask is doInBackground:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getApplicationId()Ljava/lang/String;

    .line 53
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p1, "\u6ca1\u6709\u6b64\u8bf7\u6c42\uff01"

    .line 113
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 111
    :pswitch_1
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->mapParam:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->queryOrder(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 109
    :pswitch_2
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->stringParam:Ljava/lang/String;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->updateOrderInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :pswitch_3
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->stringParam:Ljava/lang/String;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->toLogTga(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 104
    :pswitch_4
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->mapParam:Ljava/util/HashMap;

    const-string v0, "http://cert.talkyun.com.cn/ad-api/cert/abtest"

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->uploadDevice(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 101
    :pswitch_5
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->mapParam:Ljava/util/HashMap;

    const-string v0, "http://cert.talkyun.com.cn/ad-api/cert/updateuserinfo"

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->uploadDevice(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 99
    :pswitch_6
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->mapParam:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->getOrderQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 97
    :pswitch_7
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->stringParam:Ljava/lang/String;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->getUserOpenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 95
    :pswitch_8
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->mapParam:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->sendPhoneNumber(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 80
    :pswitch_9
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->mapParam:Ljava/util/HashMap;

    const-string v0, "http://cert.talkyun.com.cn/ad-api/cert/updatebehaviorCert"

    invoke-static {v0, p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->sendToServer(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string p1, ""

    return-object p1

    .line 77
    :pswitch_a
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->mapParam:Ljava/util/HashMap;

    const-string v0, "http://cert.talkyun.com.cn/ad-api/cert/sendCert"

    invoke-static {v0, p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->getNewVerify(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 87
    :pswitch_b
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->mapParam:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->getQueryAuthentication(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 85
    :pswitch_c
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->stringParam:Ljava/lang/String;

    const-string v0, "https://pvz2androidtga.talkyun.com.cn/pvz2h5logs/tologs"

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->uploadInfoTGA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 93
    :pswitch_d
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->stringParam:Ljava/lang/String;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->sendGetRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 89
    :pswitch_e
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->stringParam:Ljava/lang/String;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->getApkVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :pswitch_f
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->mapParam:Ljava/util/HashMap;

    sget-object v0, Lcom/talkweb/twOfflineSdk/net/RequestUrl;->UPLOAD_ABTEST_URL:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->uploadAbtest(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :pswitch_10
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->stringParam:Ljava/lang/String;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->getUploadUInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 74
    :pswitch_11
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->stringParam:Ljava/lang/String;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->getVerify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 69
    :pswitch_12
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->mapParam:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->redeem(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 67
    :pswitch_13
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->mapParam:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->twCacheGet(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_14
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->mapParam:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->twCacheSet(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 63
    :pswitch_15
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->stringParam:Ljava/lang/String;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->getTwpayFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_16
    invoke-static {}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->getTwpayVersion()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_17
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->stringParam:Ljava/lang/String;

    sget-object v0, Lcom/talkweb/twOfflineSdk/net/RequestUrl;->UPLOAD_RECORD_URL:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/net/HttpUrlConnectionHelper;->uploadRecord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTask;->callback:Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;

    invoke-interface {v0, p1}, Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;->responseData(Ljava/lang/String;)V

    return-void
.end method
