.class public Lcom/talkweb/sdk/vo/Login;
.super Lcom/talkweb/sdk/vo/BaseVO;
.source "Login.java"


# instance fields
.field private indentifyCode:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private userId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndentifyCode()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/talkweb/sdk/vo/Login;->indentifyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/talkweb/sdk/vo/Login;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/talkweb/sdk/vo/Login;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/talkweb/sdk/vo/Login;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/talkweb/sdk/vo/Login;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/talkweb/sdk/vo/Login;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public setIndentifyCode(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/talkweb/sdk/vo/Login;->indentifyCode:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/talkweb/sdk/vo/Login;->password:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/talkweb/sdk/vo/Login;->phone:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/talkweb/sdk/vo/Login;->token:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/talkweb/sdk/vo/Login;->type:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/talkweb/sdk/vo/Login;->userId:Ljava/lang/Long;

    return-void
.end method
