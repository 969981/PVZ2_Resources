.class public Lcom/talkweb/sdk/vo/InitPassword;
.super Lcom/talkweb/sdk/vo/BaseVO;
.source "InitPassword.java"


# static fields
.field private static final serialVersionUID:J = 0x43d8b53660a7472cL


# instance fields
.field private password:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private userId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/talkweb/sdk/vo/InitPassword;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/talkweb/sdk/vo/InitPassword;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/talkweb/sdk/vo/InitPassword;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/talkweb/sdk/vo/InitPassword;->password:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/talkweb/sdk/vo/InitPassword;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/talkweb/sdk/vo/InitPassword;->userId:Ljava/lang/Long;

    return-void
.end method
