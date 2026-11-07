.class public Lcom/talkweb/sdk/orm/model/AppUserInfo;
.super Ljava/lang/Object;
.source "AppUserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private createTime:Ljava/util/Date;

.field private email:Ljava/lang/String;

.field private isModifiedPassword:Ljava/lang/Boolean;

.field private isOnekeyRegister:Ljava/lang/Boolean;

.field private password:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private registApp:Ljava/lang/Long;

.field private userId:Ljava/lang/Long;

.field private userNick:Ljava/lang/String;


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

    .line 151
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getIsModifiedPassword()Ljava/lang/Boolean;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->isModifiedPassword:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsOnekeyRegister()Ljava/lang/Boolean;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->isOnekeyRegister:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistApp()Ljava/lang/Long;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->registApp:Ljava/lang/Long;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public getUserNick()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->userNick:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public setIsModifiedPassword(Ljava/lang/Boolean;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->isModifiedPassword:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsOnekeyRegister(Ljava/lang/Boolean;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->isOnekeyRegister:Ljava/lang/Boolean;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->password:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->phone:Ljava/lang/String;

    return-void
.end method

.method public setRegistApp(Ljava/lang/Long;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->registApp:Ljava/lang/Long;

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->userId:Ljava/lang/Long;

    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppUserInfo;->userNick:Ljava/lang/String;

    return-void
.end method
