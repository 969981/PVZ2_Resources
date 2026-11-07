.class public Lcom/talkweb/sdk/orm/model/UserApp;
.super Ljava/lang/Object;
.source "UserApp.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appId:Ljava/lang/Long;

.field private createTime:Ljava/util/Date;

.field private id:Ljava/lang/Long;

.field private userId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/Long;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserApp;->appId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserApp;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserApp;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/UserApp;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public setAppId(Ljava/lang/Long;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserApp;->appId:Ljava/lang/Long;

    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserApp;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserApp;->id:Ljava/lang/Long;

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/UserApp;->userId:Ljava/lang/Long;

    return-void
.end method
