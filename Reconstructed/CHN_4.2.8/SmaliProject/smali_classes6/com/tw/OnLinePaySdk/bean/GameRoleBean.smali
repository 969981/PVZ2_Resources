.class public Lcom/tw/OnLinePaySdk/bean/GameRoleBean;
.super Ljava/lang/Object;
.source "GameRoleBean.java"


# instance fields
.field private balance:Ljava/lang/String;

.field private partyId:Ljava/lang/String;

.field private partyName:Ljava/lang/String;

.field private roleCreateTime:Ljava/lang/String;

.field private roleId:Ljava/lang/String;

.field private roleLevel:Ljava/lang/String;

.field private roleLevelTime:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private vipLevel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "serverId"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->serverId:Ljava/lang/String;

    const-string v0, "serverName"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->serverName:Ljava/lang/String;

    const-string v0, "roleId"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleId:Ljava/lang/String;

    const-string v0, "roleName"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleName:Ljava/lang/String;

    const-string v0, "roleLevel"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleLevel:Ljava/lang/String;

    const-string v0, "balance"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->balance:Ljava/lang/String;

    const-string v0, "partyId"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->partyId:Ljava/lang/String;

    const-string v0, "partyName"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->partyName:Ljava/lang/String;

    const-string v0, "vipLevel"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->vipLevel:Ljava/lang/String;

    const-string v0, "roleCreateTime"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleCreateTime:Ljava/lang/String;

    const-string v0, "roleLevelTime"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleLevelTime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->serverId:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->serverName:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleId:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleName:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleLevel:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->balance:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->partyId:Ljava/lang/String;

    .line 62
    iput-object p8, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->partyName:Ljava/lang/String;

    .line 63
    iput-object p9, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->vipLevel:Ljava/lang/String;

    .line 64
    iput-object p10, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleCreateTime:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleLevelTime:Ljava/lang/String;

    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleLevelTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBalance()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public getPartyId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->partyId:Ljava/lang/String;

    return-object v0
.end method

.method public getPartyName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->partyName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleCreateTime()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleCreateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevelTime()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleLevelTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getVipLevel()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->vipLevel:Ljava/lang/String;

    return-object v0
.end method

.method public setBalance(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->balance:Ljava/lang/String;

    return-void
.end method

.method public setPartyId(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->partyId:Ljava/lang/String;

    return-void
.end method

.method public setPartyName(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->partyName:Ljava/lang/String;

    return-void
.end method

.method public setRoleCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleCreateTime:Ljava/lang/String;

    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleId:Ljava/lang/String;

    return-void
.end method

.method public setRoleLevel(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleLevel:Ljava/lang/String;

    return-void
.end method

.method public setRoleLevelTime(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleLevelTime:Ljava/lang/String;

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->roleName:Ljava/lang/String;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->serverId:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setVipLevel(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/bean/GameRoleBean;->vipLevel:Ljava/lang/String;

    return-void
.end method
