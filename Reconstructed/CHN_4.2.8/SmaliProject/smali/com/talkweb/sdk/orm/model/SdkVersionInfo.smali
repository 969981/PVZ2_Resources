.class public Lcom/talkweb/sdk/orm/model/SdkVersionInfo;
.super Ljava/lang/Object;
.source "SdkVersionInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private sdkId:Ljava/lang/Long;

.field private sdkVersion:Ljava/lang/String;

.field private versionState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSdkId()Ljava/lang/Long;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/SdkVersionInfo;->sdkId:Ljava/lang/Long;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/SdkVersionInfo;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionState()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/SdkVersionInfo;->versionState:Ljava/lang/String;

    return-object v0
.end method

.method public setSdkId(Ljava/lang/Long;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/SdkVersionInfo;->sdkId:Ljava/lang/Long;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/SdkVersionInfo;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setVersionState(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/SdkVersionInfo;->versionState:Ljava/lang/String;

    return-void
.end method
