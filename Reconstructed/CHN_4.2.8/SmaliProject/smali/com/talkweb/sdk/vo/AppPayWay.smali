.class public Lcom/talkweb/sdk/vo/AppPayWay;
.super Lcom/talkweb/sdk/vo/BaseVO;
.source "AppPayWay.java"


# instance fields
.field private appInfo:Lcom/talkweb/sdk/orm/model/AppInfo;

.field private paywayInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/talkweb/sdk/orm/model/PaywayInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .line 41
    new-instance p0, Lcom/talkweb/sdk/vo/AppPayWay;

    invoke-direct {p0}, Lcom/talkweb/sdk/vo/AppPayWay;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    new-instance v1, Lcom/talkweb/sdk/orm/model/PaywayInfo;

    invoke-direct {v1}, Lcom/talkweb/sdk/orm/model/PaywayInfo;-><init>()V

    .line 44
    new-instance v2, Lcom/talkweb/sdk/orm/model/PaywayInfo;

    invoke-direct {v2}, Lcom/talkweb/sdk/orm/model/PaywayInfo;-><init>()V

    const-string v3, "\u652f\u4ed8\u5b9d"

    .line 45
    invoke-virtual {v1, v3}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->setPayWayName(Ljava/lang/String;)V

    const-string v3, "1"

    .line 46
    invoke-virtual {v1, v3}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->setPayWayId(Ljava/lang/String;)V

    const-string v3, "\u94f6\u8054"

    .line 48
    invoke-virtual {v2, v3}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->setPayWayName(Ljava/lang/String;)V

    const-string v3, "2"

    .line 49
    invoke-virtual {v2, v3}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->setPayWayId(Ljava/lang/String;)V

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lcom/talkweb/sdk/orm/model/AppInfo;

    invoke-direct {v1}, Lcom/talkweb/sdk/orm/model/AppInfo;-><init>()V

    const-string v2, "\u7f8e\u5c11\u5973\u68a6\u5de5\u5382"

    .line 55
    invoke-virtual {v1, v2}, Lcom/talkweb/sdk/orm/model/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/talkweb/sdk/vo/AppPayWay;->setPaywayInfos(Ljava/util/List;)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/talkweb/sdk/vo/AppPayWay;->setAppInfo(Lcom/talkweb/sdk/orm/model/AppInfo;)V

    .line 60
    invoke-virtual {p0}, Lcom/talkweb/sdk/vo/AppPayWay;->toJson()Ljava/lang/String;

    move-result-object p0

    .line 62
    new-instance v0, Lcom/talkweb/sdk/vo/AppPayWay;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/AppPayWay;-><init>()V

    invoke-virtual {v0, p0}, Lcom/talkweb/sdk/vo/AppPayWay;->formJson(Ljava/lang/String;)Lcom/talkweb/sdk/vo/BaseVO;

    move-result-object p0

    check-cast p0, Lcom/talkweb/sdk/vo/AppPayWay;

    .line 63
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/talkweb/sdk/vo/AppPayWay;->getPaywayInfos()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/talkweb/sdk/orm/model/PaywayInfo;

    invoke-virtual {p0}, Lcom/talkweb/sdk/orm/model/PaywayInfo;->getPayWayId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAppInfo()Lcom/talkweb/sdk/orm/model/AppInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/talkweb/sdk/vo/AppPayWay;->appInfo:Lcom/talkweb/sdk/orm/model/AppInfo;

    return-object v0
.end method

.method public getPaywayInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/talkweb/sdk/orm/model/PaywayInfo;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/talkweb/sdk/vo/AppPayWay;->paywayInfos:Ljava/util/List;

    return-object v0
.end method

.method public setAppInfo(Lcom/talkweb/sdk/orm/model/AppInfo;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/talkweb/sdk/vo/AppPayWay;->appInfo:Lcom/talkweb/sdk/orm/model/AppInfo;

    return-void
.end method

.method public setPaywayInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/talkweb/sdk/orm/model/PaywayInfo;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/talkweb/sdk/vo/AppPayWay;->paywayInfos:Ljava/util/List;

    return-void
.end method
