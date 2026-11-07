.class public Lcom/talkweb/twgame/Param/GameSetting;
.super Ljava/lang/Object;
.source "GameSetting.java"


# instance fields
.field private screenChance:Ljava/lang/String;

.field private screenOrder:Ljava/lang/String;

.field private screenSwitch:Ljava/lang/String;

.field private videoSwitch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScreenChance()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/talkweb/twgame/Param/GameSetting;->screenChance:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenOrder()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/talkweb/twgame/Param/GameSetting;->screenOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSwitch()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/talkweb/twgame/Param/GameSetting;->screenSwitch:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSwitch()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/talkweb/twgame/Param/GameSetting;->videoSwitch:Ljava/lang/String;

    return-object v0
.end method

.method public setScreenChance(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/talkweb/twgame/Param/GameSetting;->screenChance:Ljava/lang/String;

    return-void
.end method

.method public setScreenOrder(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/talkweb/twgame/Param/GameSetting;->screenOrder:Ljava/lang/String;

    return-void
.end method

.method public setScreenSwitch(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/talkweb/twgame/Param/GameSetting;->screenSwitch:Ljava/lang/String;

    return-void
.end method

.method public setVideoSwitch(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/talkweb/twgame/Param/GameSetting;->videoSwitch:Ljava/lang/String;

    return-void
.end method
