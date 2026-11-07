.class public Lcom/talkweb/twOfflineSdk/bean/AchievementPersonalBean;
.super Ljava/lang/Object;
.source "AchievementPersonalBean.java"


# instance fields
.field private achievementTotal:I

.field private percentage:D

.field private setupAchievement:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/AchievementBean;",
            ">;"
        }
    .end annotation
.end field

.field private setupNum:I

.field private unlockedNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAchievementTotal()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementPersonalBean;->achievementTotal:I

    return v0
.end method

.method public getPercentage()D
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementPersonalBean;->percentage:D

    return-wide v0
.end method

.method public getSetupAchievement()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/AchievementBean;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementPersonalBean;->setupAchievement:Ljava/util/List;

    return-object v0
.end method

.method public getSetupNum()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementPersonalBean;->setupNum:I

    return v0
.end method

.method public getUnlockedNum()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementPersonalBean;->unlockedNum:I

    return v0
.end method

.method public setAchievementTotal(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementPersonalBean;->achievementTotal:I

    return-void
.end method

.method public setPercentage(D)V
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementPersonalBean;->percentage:D

    return-void
.end method

.method public setSetupAchievement(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/AchievementBean;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementPersonalBean;->setupAchievement:Ljava/util/List;

    return-void
.end method

.method public setSetupNum(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementPersonalBean;->setupNum:I

    return-void
.end method

.method public setUnlockedNum(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementPersonalBean;->unlockedNum:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AchievementPersonalBean{unlockedNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementPersonalBean;->unlockedNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", achievementTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementPersonalBean;->achievementTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", percentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementPersonalBean;->percentage:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", setupAchievement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementPersonalBean;->setupAchievement:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", setupNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/talkweb/twOfflineSdk/bean/AchievementPersonalBean;->setupNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
