.class public Lcom/talkweb/twOfflineSdk/bean/AchievementBean;
.super Ljava/lang/Object;
.source "AchievementBean.java"


# instance fields
.field private achievementExplain:Ljava/lang/String;

.field private achievementId:Ljava/lang/String;

.field private achievementName:Ljava/lang/String;

.field private reachNumLimit:I

.field private reachValue:D

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAchievementExplain()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->achievementExplain:Ljava/lang/String;

    return-object v0
.end method

.method public getAchievementId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->achievementId:Ljava/lang/String;

    return-object v0
.end method

.method public getAchievementName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->achievementName:Ljava/lang/String;

    return-object v0
.end method

.method public getReachNumLimit()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->reachNumLimit:I

    return v0
.end method

.method public getReachValue()D
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->reachValue:D

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->type:I

    return v0
.end method

.method public setAchievementExplain(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->achievementExplain:Ljava/lang/String;

    return-void
.end method

.method public setAchievementId(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->achievementId:Ljava/lang/String;

    return-void
.end method

.method public setAchievementName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->achievementName:Ljava/lang/String;

    return-void
.end method

.method public setReachNumLimit(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->reachNumLimit:I

    return-void
.end method

.method public setReachValue(D)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->reachValue:D

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AchievementBean{achievementId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->achievementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", achievementName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->achievementName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", achievementExplain=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->achievementExplain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", reachNumLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->reachNumLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reachValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementBean;->reachValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
