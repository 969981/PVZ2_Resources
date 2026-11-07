.class public Lcom/talkweb/sdk/orm/model/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appContent:Ljava/lang/String;

.field private appId:Ljava/lang/Long;

.field private appKey:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private callbackUrl:Ljava/lang/String;

.field private createTime:Ljava/util/Date;

.field private serverKey:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private validDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppContent()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->appContent:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/Long;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->appId:Ljava/lang/Long;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->callbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getServerKey()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->serverKey:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getValidDate()Ljava/util/Date;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->validDate:Ljava/util/Date;

    return-object v0
.end method

.method public setAppContent(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->appContent:Ljava/lang/String;

    return-void
.end method

.method public setAppId(Ljava/lang/Long;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->appId:Ljava/lang/Long;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public setCallbackUrl(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->callbackUrl:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setServerKey(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->serverKey:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->state:Ljava/lang/String;

    return-void
.end method

.method public setValidDate(Ljava/util/Date;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/AppInfo;->validDate:Ljava/util/Date;

    return-void
.end method
