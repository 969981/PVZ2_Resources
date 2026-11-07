.class public Lcom/talkweb/sdk/vo/LoginResultInfo;
.super Lcom/talkweb/sdk/vo/BaseVO;
.source "LoginResultInfo.java"


# instance fields
.field private phone:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private userId:Ljava/lang/Long;

.field private userNick:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    .line 54
    new-instance p0, Lcom/talkweb/sdk/vo/LoginResultInfo;

    invoke-direct {p0}, Lcom/talkweb/sdk/vo/LoginResultInfo;-><init>()V

    const-wide/32 v0, 0x112333

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/talkweb/sdk/vo/LoginResultInfo;->setUserId(Ljava/lang/Long;)V

    .line 56
    invoke-virtual {p0}, Lcom/talkweb/sdk/vo/LoginResultInfo;->encode()Ljava/lang/String;

    move-result-object v0

    .line 57
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lcom/talkweb/sdk/util/Des;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    :goto_0
    invoke-virtual {p0, v0}, Lcom/talkweb/sdk/vo/LoginResultInfo;->decode(Ljava/lang/String;)Lcom/talkweb/sdk/vo/BaseVO;

    move-result-object p0

    check-cast p0, Lcom/talkweb/sdk/vo/LoginResultInfo;

    .line 64
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/talkweb/sdk/vo/LoginResultInfo;->getUserId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/talkweb/sdk/vo/LoginResultInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/talkweb/sdk/vo/LoginResultInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/talkweb/sdk/vo/LoginResultInfo;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public getUserNick()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/talkweb/sdk/vo/LoginResultInfo;->userNick:Ljava/lang/String;

    return-object v0
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/talkweb/sdk/vo/LoginResultInfo;->phone:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/talkweb/sdk/vo/LoginResultInfo;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/talkweb/sdk/vo/LoginResultInfo;->userId:Ljava/lang/Long;

    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/talkweb/sdk/vo/LoginResultInfo;->userNick:Ljava/lang/String;

    return-void
.end method
