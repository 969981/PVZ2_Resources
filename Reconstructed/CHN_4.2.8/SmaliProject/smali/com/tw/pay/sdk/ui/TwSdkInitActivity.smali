.class public Lcom/tw/pay/sdk/ui/TwSdkInitActivity;
.super Landroid/app/Activity;
.source "TwSdkInitActivity.java"


# static fields
.field public static twInitCallback:Lcom/tw/pay/sdk/callback/TwInitCallback;


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private initSDKResultBean:Lcom/tw/pay/sdk/bean/InitSDKResultBean;

.field private twCallback:Lcom/tw/pay/sdk/callback/TwCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object p0, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->context:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity$1;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/ui/TwSdkInitActivity$1;-><init>(Lcom/tw/pay/sdk/ui/TwSdkInitActivity;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->handler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity$2;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/ui/TwSdkInitActivity$2;-><init>(Lcom/tw/pay/sdk/ui/TwSdkInitActivity;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->twCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    return-void
.end method

.method private getIntentStrAndSetTwPaySetting()V
    .locals 10

    const-string v0, "02"

    .line 68
    invoke-virtual {p0}, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appId"

    const-wide/16 v3, 0x0

    .line 69
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "appKey"

    .line 70
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "channelId"

    .line 71
    invoke-virtual {v1, v7, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 72
    new-instance v1, Lcom/tw/pay/sdk/bean/InitSDKResultBean;

    invoke-direct {v1}, Lcom/tw/pay/sdk/bean/InitSDKResultBean;-><init>()V

    iput-object v1, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->initSDKResultBean:Lcom/tw/pay/sdk/bean/InitSDKResultBean;

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->context:Landroid/content/Context;

    const-string v9, "TWPayUrl.xml"

    invoke-static {v1, v9}, Lcom/tw/pay/sdk/net/HttpUrl;->initSetUrl(Landroid/content/Context;Ljava/lang/String;)V

    cmp-long v1, v5, v3

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const-string v1, ""

    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    cmp-long v1, v7, v3

    if-nez v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    sput-wide v5, Lcom/tw/pay/sdk/TwPaySetting;->appId:J

    .line 80
    sput-object v2, Lcom/tw/pay/sdk/TwPaySetting;->appKey:Ljava/lang/String;

    .line 81
    sput-wide v7, Lcom/tw/pay/sdk/TwPaySetting;->channelId:J

    .line 82
    invoke-static {}, Lcom/tw/pay/sdk/TwPaySetting;->setHead()V

    .line 83
    iget-object v1, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->initSDKResultBean:Lcom/tw/pay/sdk/bean/InitSDKResultBean;

    const-string v2, "01"

    iput-object v2, v1, Lcom/tw/pay/sdk/bean/InitSDKResultBean;->code:Ljava/lang/String;

    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->initSDKResultBean:Lcom/tw/pay/sdk/bean/InitSDKResultBean;

    iput-object v0, v1, Lcom/tw/pay/sdk/bean/InitSDKResultBean;->code:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 87
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    iget-object v1, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->initSDKResultBean:Lcom/tw/pay/sdk/bean/InitSDKResultBean;

    iput-object v0, v1, Lcom/tw/pay/sdk/bean/InitSDKResultBean;->code:Ljava/lang/String;

    .line 90
    :goto_1
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private init()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->getIntentStrAndSetTwPaySetting()V

    .line 62
    invoke-direct {p0}, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->recordTerminal()V

    return-void
.end method

.method private recordTerminal()V
    .locals 5

    .line 96
    new-instance v0, Lcom/talkweb/sdk/orm/model/UserTerminal;

    invoke-direct {v0}, Lcom/talkweb/sdk/orm/model/UserTerminal;-><init>()V

    .line 97
    sget-wide v1, Lcom/tw/pay/sdk/TwPaySetting;->appId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/orm/model/UserTerminal;->setAppId(Ljava/lang/Long;)V

    .line 98
    sget-wide v1, Lcom/tw/pay/sdk/TwPaySetting;->channelId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/orm/model/UserTerminal;->setChannelId(Ljava/lang/Long;)V

    .line 99
    sget-object v1, Lcom/tw/pay/sdk/TwPaySetting;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/orm/model/UserTerminal;->setSdkVersion(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tw/pay/sdk/tool/Tools;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/orm/model/UserTerminal;->setImei(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Lcom/talkweb/sdk/orm/model/UserTerminal;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tw/pay/sdk/TwPaySetting;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tw/pay/sdk/tool/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    :try_start_0
    invoke-static {v0}, Lcom/talkweb/sdk/util/Des;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    .line 109
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 110
    invoke-static {}, Lcom/tw/pay/sdk/TwPaySetting;->getHead()Lcom/talkweb/sdk/vo/Head;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/sdk/vo/Head;->encode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "head"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "userTerminal"

    .line 111
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "md5"

    .line 112
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Lcom/tw/pay/sdk/net/HttpAsyncTask;

    iget-object v1, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->twCallback:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-direct {v0, v1, v2}, Lcom/tw/pay/sdk/net/HttpAsyncTask;-><init>(Lcom/tw/pay/sdk/callback/TwCallback;Ljava/util/HashMap;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tw/pay/sdk/net/HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->context:Landroid/content/Context;

    const-string v0, "activity_init"

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->context:Landroid/content/Context;

    const-string v1, "activity_init_land"

    .line 42
    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 41
    invoke-static {p0, p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->setSDKScreen(Landroid/app/Activity;II)V

    const/4 p1, 0x0

    .line 43
    sput-boolean p1, Lcom/tw/pay/sdk/TwPay;->isInit:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 131
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->initSDKResultBean:Lcom/tw/pay/sdk/bean/InitSDKResultBean;

    iget-object v0, v0, Lcom/tw/pay/sdk/bean/InitSDKResultBean;->code:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 132
    sput-boolean v0, Lcom/tw/pay/sdk/TwPay;->isInit:Z

    .line 134
    :cond_0
    sget-object v0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->twInitCallback:Lcom/tw/pay/sdk/callback/TwInitCallback;

    iget-object v1, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->initSDKResultBean:Lcom/tw/pay/sdk/bean/InitSDKResultBean;

    invoke-static {v1}, Lcom/tw/pay/sdk/tool/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tw/pay/sdk/callback/TwInitCallback;->responseData(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 124
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 56
    invoke-direct {p0}, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->init()V

    return-void
.end method
