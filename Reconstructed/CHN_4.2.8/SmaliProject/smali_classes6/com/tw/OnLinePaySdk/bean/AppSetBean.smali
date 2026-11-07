.class public Lcom/tw/OnLinePaySdk/bean/AppSetBean;
.super Ljava/lang/Object;
.source "AppSetBean.java"


# static fields
.field private static channelAppId:Ljava/lang/String;

.field private static channelAppKey:Ljava/lang/String;

.field private static channelId:Ljava/lang/String;

.field private static channelParamExtMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static channelSdkVersion:Ljava/lang/String;

.field private static channelToolsClass:Ljava/lang/String;

.field private static rePaySwitch:Ljava/lang/String;

.field private static twAppId:Ljava/lang/String;

.field private static twAppKey:Ljava/lang/String;

.field private static twAppVersion:Ljava/lang/String;

.field private static twNotifyUrl:Ljava/lang/String;

.field private static twSdkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->channelParamExtMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChannelParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 116
    sget-object v0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->channelParamExtMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static buildHead()Ljava/lang/String;
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"appId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->twAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"appVersion\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    sget-object v2, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->twAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"channelId\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"channelSdkVersion\":\""

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->channelSdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"talkwebSdkVersion\":\""

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->twSdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelAppId()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->channelAppId:Ljava/lang/String;

    return-object v0
.end method

.method public static getChannelAppKey()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->channelAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getChannelId()Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public static getChannelParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 120
    sget-object v0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->channelParamExtMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getChannelParamExtMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    sget-object v0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->channelParamExtMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getChannelSdkVersion()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->channelSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getChannelToolsClass()Ljava/lang/String;
    .locals 1

    .line 86
    sget-object v0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->channelToolsClass:Ljava/lang/String;

    return-object v0
.end method

.method public static getRePaySwitch()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->rePaySwitch:Ljava/lang/String;

    return-object v0
.end method

.method public static getTwAppId()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->twAppId:Ljava/lang/String;

    return-object v0
.end method

.method public static getTwAppKey()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->twAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getTwAppVersion()Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->twAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getTwNotifyUrl()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->twNotifyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getTwSdkVersion()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->twSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static setChannelAppId(Ljava/lang/String;)V
    .locals 0

    .line 42
    sput-object p0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->channelAppId:Ljava/lang/String;

    return-void
.end method

.method public static setChannelAppKey(Ljava/lang/String;)V
    .locals 0

    .line 58
    sput-object p0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->channelAppKey:Ljava/lang/String;

    return-void
.end method

.method public static setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 106
    sput-object p0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->channelId:Ljava/lang/String;

    return-void
.end method

.method public static setChannelSdkVersion(Ljava/lang/String;)V
    .locals 0

    .line 82
    sput-object p0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->channelSdkVersion:Ljava/lang/String;

    return-void
.end method

.method public static setChannelToolsClass(Ljava/lang/String;)V
    .locals 0

    .line 90
    sput-object p0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->channelToolsClass:Ljava/lang/String;

    return-void
.end method

.method public static setRePaySwitch(Ljava/lang/String;)V
    .locals 0

    .line 26
    sput-object p0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->rePaySwitch:Ljava/lang/String;

    return-void
.end method

.method public static setTwAppId(Ljava/lang/String;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->twAppId:Ljava/lang/String;

    return-void
.end method

.method public static setTwAppKey(Ljava/lang/String;)V
    .locals 0

    .line 50
    sput-object p0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->twAppKey:Ljava/lang/String;

    return-void
.end method

.method public static setTwAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 98
    sput-object p0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->twAppVersion:Ljava/lang/String;

    return-void
.end method

.method public static setTwNotifyUrl(Ljava/lang/String;)V
    .locals 0

    .line 66
    sput-object p0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->twNotifyUrl:Ljava/lang/String;

    return-void
.end method

.method public static setTwSdkVersion(Ljava/lang/String;)V
    .locals 0

    .line 74
    sput-object p0, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->twSdkVersion:Ljava/lang/String;

    return-void
.end method
