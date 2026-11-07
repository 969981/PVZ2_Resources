.class public Lcom/talkweb/sdk/vo/RegisterInfo;
.super Lcom/talkweb/sdk/vo/BaseVO;
.source "RegisterInfo.java"


# instance fields
.field private email:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private registerIdfa:Ljava/lang/String;

.field private registerIdfv:Ljava/lang/String;

.field private registerImei:Ljava/lang/String;

.field private registerTime:Ljava/util/Date;

.field private smsVerifyCode:Ljava/lang/String;

.field private userId:Ljava/lang/Long;

.field private userName:Ljava/lang/String;

.field private userNick:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterIdfa()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->registerIdfa:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterIdfv()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->registerIdfv:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterImei()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->registerImei:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterTime()Ljava/util/Date;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->registerTime:Ljava/util/Date;

    return-object v0
.end method

.method public getSmsVerifyCode()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->smsVerifyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNick()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->userNick:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->password:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->phone:Ljava/lang/String;

    return-void
.end method

.method public setRegisterIdfa(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->registerIdfa:Ljava/lang/String;

    return-void
.end method

.method public setRegisterIdfv(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->registerIdfv:Ljava/lang/String;

    return-void
.end method

.method public setRegisterImei(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->registerImei:Ljava/lang/String;

    return-void
.end method

.method public setRegisterTime(Ljava/util/Date;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->registerTime:Ljava/util/Date;

    return-void
.end method

.method public setSmsVerifyCode(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->smsVerifyCode:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->userId:Ljava/lang/Long;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->userName:Ljava/lang/String;

    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/talkweb/sdk/vo/RegisterInfo;->userNick:Ljava/lang/String;

    return-void
.end method
