.class public Lcom/tw/pay/sdk/TwPaySetting;
.super Ljava/lang/Object;
.source "TwPaySetting.java"


# static fields
.field public static appId:J

.field public static appKey:Ljava/lang/String;

.field public static channelId:J

.field private static head:Lcom/talkweb/sdk/vo/Head;

.field public static isLandScape:Z

.field private static isQuickRegistration:Z

.field public static newAppId:J

.field public static newSdkVersion:Ljava/lang/String;

.field public static sdkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHead()Lcom/talkweb/sdk/vo/Head;
    .locals 1

    .line 34
    sget-object v0, Lcom/tw/pay/sdk/TwPaySetting;->head:Lcom/talkweb/sdk/vo/Head;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/tw/pay/sdk/TwPaySetting;->setHead()V

    .line 37
    :cond_0
    sget-object v0, Lcom/tw/pay/sdk/TwPaySetting;->head:Lcom/talkweb/sdk/vo/Head;

    return-object v0
.end method

.method public static isIsQuickRegistration()Z
    .locals 1

    .line 19
    sget-boolean v0, Lcom/tw/pay/sdk/TwPaySetting;->isQuickRegistration:Z

    return v0
.end method

.method public static setHead()V
    .locals 3

    .line 27
    new-instance v0, Lcom/talkweb/sdk/vo/Head;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/Head;-><init>()V

    sput-object v0, Lcom/tw/pay/sdk/TwPaySetting;->head:Lcom/talkweb/sdk/vo/Head;

    .line 28
    sget-wide v1, Lcom/tw/pay/sdk/TwPaySetting;->appId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/vo/Head;->setAppId(Ljava/lang/Long;)V

    .line 29
    sget-object v0, Lcom/tw/pay/sdk/TwPaySetting;->head:Lcom/talkweb/sdk/vo/Head;

    sget-wide v1, Lcom/tw/pay/sdk/TwPaySetting;->channelId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/vo/Head;->setChannelId(Ljava/lang/Long;)V

    .line 30
    sget-object v0, Lcom/tw/pay/sdk/TwPaySetting;->head:Lcom/talkweb/sdk/vo/Head;

    sget-object v1, Lcom/tw/pay/sdk/TwPaySetting;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/vo/Head;->setSdkVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static setIsQuickRegistration(Z)V
    .locals 0

    .line 23
    sput-boolean p0, Lcom/tw/pay/sdk/TwPaySetting;->isQuickRegistration:Z

    return-void
.end method
