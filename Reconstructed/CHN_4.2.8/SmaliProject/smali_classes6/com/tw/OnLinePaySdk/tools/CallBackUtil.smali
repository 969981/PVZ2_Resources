.class public Lcom/tw/OnLinePaySdk/tools/CallBackUtil;
.super Ljava/lang/Object;
.source "CallBackUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppVersionCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    .line 124
    new-instance v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;-><init>()V

    .line 125
    iput-object p0, v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;->code:Ljava/lang/String;

    .line 126
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xb

    invoke-interface {p1, v0, p0}, Lcom/tw/OnLinePaySdk/callback/TWCallback;->responseData(ILjava/lang/String;)V

    return-void
.end method

.method public static destroyCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    .line 75
    new-instance v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;-><init>()V

    .line 76
    iput-object p0, v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;->code:Ljava/lang/String;

    .line 77
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    invoke-interface {p1, v0, p0}, Lcom/tw/OnLinePaySdk/callback/TWCallback;->responseData(ILjava/lang/String;)V

    return-void
.end method

.method public static initCallBack(Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    .line 17
    new-instance v0, Lcom/tw/OnLinePaySdk/bean/InitResultBean;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/bean/InitResultBean;-><init>()V

    .line 18
    iput-object p0, v0, Lcom/tw/OnLinePaySdk/bean/InitResultBean;->code:Ljava/lang/String;

    .line 19
    iput-object p1, v0, Lcom/tw/OnLinePaySdk/bean/InitResultBean;->channelId:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p2, p1, p0}, Lcom/tw/OnLinePaySdk/callback/TWCallback;->responseData(ILjava/lang/String;)V

    return-void
.end method

.method public static loginCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/ChannelSpecialCallback;)V
    .locals 1

    .line 40
    new-instance v0, Lcom/tw/OnLinePaySdk/bean/LoginResultBean;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/bean/LoginResultBean;-><init>()V

    .line 41
    iput-object p0, v0, Lcom/tw/OnLinePaySdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 42
    iput-object p2, v0, Lcom/tw/OnLinePaySdk/bean/LoginResultBean;->channelId:Ljava/lang/String;

    .line 43
    iput-object p3, v0, Lcom/tw/OnLinePaySdk/bean/LoginResultBean;->sessionId:Ljava/lang/String;

    .line 44
    iput-object p1, v0, Lcom/tw/OnLinePaySdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    .line 45
    iput-object p4, v0, Lcom/tw/OnLinePaySdk/bean/LoginResultBean;->userName:Ljava/lang/String;

    .line 46
    sput-object p1, Lcom/tw/OnLinePaySdk/PayInterFace;->userId:Ljava/lang/String;

    .line 47
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p5, p2, p1}, Lcom/tw/OnLinePaySdk/callback/ChannelSpecialCallback;->switchAccount(ILjava/lang/String;)V

    const-string p1, "01"

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 49
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tw/OnLinePaySdk/tools/Tools;->saveLoginStrToFile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static loginCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    .line 25
    new-instance v0, Lcom/tw/OnLinePaySdk/bean/LoginResultBean;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/bean/LoginResultBean;-><init>()V

    .line 26
    iput-object p0, v0, Lcom/tw/OnLinePaySdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 27
    iput-object p2, v0, Lcom/tw/OnLinePaySdk/bean/LoginResultBean;->channelId:Ljava/lang/String;

    .line 28
    iput-object p3, v0, Lcom/tw/OnLinePaySdk/bean/LoginResultBean;->sessionId:Ljava/lang/String;

    .line 29
    iput-object p1, v0, Lcom/tw/OnLinePaySdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    .line 30
    iput-object p4, v0, Lcom/tw/OnLinePaySdk/bean/LoginResultBean;->userName:Ljava/lang/String;

    .line 31
    sput-object p1, Lcom/tw/OnLinePaySdk/PayInterFace;->userId:Ljava/lang/String;

    .line 32
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p5, p2, p1}, Lcom/tw/OnLinePaySdk/callback/TWCallback;->responseData(ILjava/lang/String;)V

    const-string p1, "01"

    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 34
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tw/OnLinePaySdk/tools/Tools;->saveLoginStrToFile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logoutCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    .line 117
    new-instance v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;-><init>()V

    .line 118
    iput-object p0, v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;->code:Ljava/lang/String;

    .line 119
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xd

    invoke-interface {p1, v0, p0}, Lcom/tw/OnLinePaySdk/callback/TWCallback;->responseData(ILjava/lang/String;)V

    return-void
.end method

.method public static openBbsCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    .line 96
    new-instance v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;-><init>()V

    .line 97
    iput-object p0, v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;->code:Ljava/lang/String;

    .line 98
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x7

    invoke-interface {p1, v0, p0}, Lcom/tw/OnLinePaySdk/callback/TWCallback;->responseData(ILjava/lang/String;)V

    return-void
.end method

.method public static openFloatCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    .line 103
    new-instance v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;-><init>()V

    .line 104
    iput-object p0, v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;->code:Ljava/lang/String;

    .line 105
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x8

    invoke-interface {p1, v0, p0}, Lcom/tw/OnLinePaySdk/callback/TWCallback;->responseData(ILjava/lang/String;)V

    return-void
.end method

.method public static openUserCenterCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    .line 89
    new-instance v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;-><init>()V

    .line 90
    iput-object p0, v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;->code:Ljava/lang/String;

    .line 91
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    invoke-interface {p1, v0, p0}, Lcom/tw/OnLinePaySdk/callback/TWCallback;->responseData(ILjava/lang/String;)V

    return-void
.end method

.method public static payCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 55
    sput-boolean v0, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->ISPAYOK:Z

    .line 56
    new-instance v0, Lcom/tw/OnLinePaySdk/bean/PayResultBean;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/bean/PayResultBean;-><init>()V

    .line 57
    iput-object p0, v0, Lcom/tw/OnLinePaySdk/bean/PayResultBean;->code:Ljava/lang/String;

    .line 58
    iput-object p2, v0, Lcom/tw/OnLinePaySdk/bean/PayResultBean;->channelId:Ljava/lang/String;

    .line 59
    iput-object p3, v0, Lcom/tw/OnLinePaySdk/bean/PayResultBean;->orderId:Ljava/lang/String;

    .line 60
    iput-object p1, v0, Lcom/tw/OnLinePaySdk/bean/PayResultBean;->userId:Ljava/lang/String;

    .line 61
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p4, p1, p0}, Lcom/tw/OnLinePaySdk/callback/TWCallback;->responseData(ILjava/lang/String;)V

    return-void
.end method

.method public static payQueryResultCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    .line 65
    new-instance v0, Lcom/tw/OnLinePaySdk/bean/PayQueryResultBean;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/bean/PayQueryResultBean;-><init>()V

    .line 66
    iput-object p0, v0, Lcom/tw/OnLinePaySdk/bean/PayQueryResultBean;->code:Ljava/lang/String;

    .line 67
    iput-object p2, v0, Lcom/tw/OnLinePaySdk/bean/PayQueryResultBean;->channelId:Ljava/lang/String;

    .line 68
    iput-object p3, v0, Lcom/tw/OnLinePaySdk/bean/PayQueryResultBean;->orderId:Ljava/lang/String;

    .line 69
    iput-object p1, v0, Lcom/tw/OnLinePaySdk/bean/PayQueryResultBean;->userId:Ljava/lang/String;

    .line 70
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p4, p1, p0}, Lcom/tw/OnLinePaySdk/callback/TWCallback;->responseData(ILjava/lang/String;)V

    return-void
.end method

.method public static redeemGiftPackCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    .line 110
    new-instance v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;-><init>()V

    .line 111
    iput-object p0, v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;->code:Ljava/lang/String;

    .line 112
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-interface {p1, v0, p0}, Lcom/tw/OnLinePaySdk/callback/TWCallback;->responseData(ILjava/lang/String;)V

    return-void
.end method

.method public static sendUserInfoCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    .line 82
    new-instance v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;-><init>()V

    .line 83
    iput-object p0, v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;->code:Ljava/lang/String;

    .line 84
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    invoke-interface {p1, v0, p0}, Lcom/tw/OnLinePaySdk/callback/TWCallback;->responseData(ILjava/lang/String;)V

    return-void
.end method

.method public static updateAppCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 1

    .line 131
    new-instance v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;

    invoke-direct {v0}, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;-><init>()V

    .line 132
    iput-object p0, v0, Lcom/tw/OnLinePaySdk/bean/CodeResultBean;->code:Ljava/lang/String;

    .line 133
    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xc

    invoke-interface {p1, v0, p0}, Lcom/tw/OnLinePaySdk/callback/TWCallback;->responseData(ILjava/lang/String;)V

    return-void
.end method
