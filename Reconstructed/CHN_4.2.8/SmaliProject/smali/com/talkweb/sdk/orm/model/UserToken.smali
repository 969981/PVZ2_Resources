.class public Lcom/talkweb/sdk/orm/model/UserToken;
.super Ljava/lang/Object;
.source "UserToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private createTime:Ljava/util/Date;

.field private token:Ljava/lang/String;

.field private userId:Ljava/lang/Long;

.field private validDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserToken;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserToken;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public getValidDate()Ljava/util/Date;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserToken;->validDate:Ljava/util/Date;

    return-object v0
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserToken;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserToken;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserToken;->userId:Ljava/lang/Long;

    return-void
.end method

.method public setValidDate(Ljava/util/Date;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserToken;->validDate:Ljava/util/Date;

    return-void
.end method
