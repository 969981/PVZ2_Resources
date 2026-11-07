.class public Lcom/tw/gamesdk/bean/SimpleUserData;
.super Ljava/lang/Object;
.source "SimpleUserData.java"


# instance fields
.field private expireIn:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expire_in"
    .end annotation
.end field

.field private isActive:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_active"
    .end annotation
.end field

.field private isNew:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_new"
    .end annotation
.end field

.field private nickname:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_token"
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->expireIn:I

    .line 36
    iput-object p2, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->nickname:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->token:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->refreshToken:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->uid:Ljava/lang/String;

    return-void
.end method

.method private maskToken(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "****"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public getExpireIn()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->expireIn:I

    return v0
.end method

.method public getIsActive()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->isActive:I

    return v0
.end method

.method public getIsNew()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->isNew:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTokenExpireTimestamp()J
    .locals 4

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenExpireTimestamp()J
    .locals 6

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->expireIn:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTokenSummary()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->token:Ljava/lang/String;

    const/16 v2, 0x8

    .line 112
    invoke-direct {p0, v1, v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->maskToken(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->refreshToken:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->maskToken(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->expireIn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Access Token: %s, Refresh Token: %s, Expires in: %d\u79d2"

    .line 111
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSummary()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->uid:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->nickname:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->nickname:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "\u672a\u8bbe\u7f6e"

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "UID: %s, Nickname: %s"

    .line 105
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRefreshTokenValid()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->refreshToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTokenValid()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setExpireIn(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->expireIn:I

    return-void
.end method

.method public setIsActive(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->isActive:I

    return-void
.end method

.method public setIsNew(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->isNew:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->phone:Ljava/lang/String;

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->uid:Ljava/lang/String;

    return-void
.end method

.method public shouldRefreshToken()Z
    .locals 5

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 81
    invoke-virtual {p0}, Lcom/tw/gamesdk/bean/SimpleUserData;->getTokenExpireTimestamp()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x1b7740

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toSafeString()Ljava/lang/String;
    .locals 4

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleUserData{expireIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->expireIn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nickname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", token=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->token:Ljava/lang/String;

    const/16 v3, 0x8

    .line 134
    invoke-direct {p0, v2, v3}, Lcom/tw/gamesdk/bean/SimpleUserData;->maskToken(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", refreshToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->refreshToken:Ljava/lang/String;

    .line 135
    invoke-direct {p0, v2, v3}, Lcom/tw/gamesdk/bean/SimpleUserData;->maskToken(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleUserData{expireIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->expireIn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nickname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", token=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", refreshToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isNew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->isNew:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tw/gamesdk/bean/SimpleUserData;->isActive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
