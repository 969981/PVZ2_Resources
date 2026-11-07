.class public Lcom/tw/pay/sdk/bean/UserBean;
.super Ljava/lang/Object;
.source "UserBean.java"


# instance fields
.field public phone:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public userNick:Ljava/lang/String;

.field public userPwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tw/pay/sdk/bean/UserBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tw/pay/sdk/bean/UserBean;->userId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/tw/pay/sdk/bean/UserBean;->token:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/tw/pay/sdk/bean/UserBean;->userPwd:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/tw/pay/sdk/bean/UserBean;->userNick:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/tw/pay/sdk/bean/UserBean;->phone:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toBean(Ljava/lang/String;)Lcom/tw/pay/sdk/bean/UserBean;
    .locals 2

    .line 36
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tw/pay/sdk/bean/UserBean;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 32
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
