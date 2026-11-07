.class public Lcom/talkweb/sdk/vo/VerifySMS;
.super Lcom/talkweb/sdk/vo/BaseVO;
.source "VerifySMS.java"


# instance fields
.field private phone:Ljava/lang/String;

.field private smsType:Lcom/talkweb/sdk/vo/VerifySMSType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/talkweb/sdk/vo/VerifySMS;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsType()Lcom/talkweb/sdk/vo/VerifySMSType;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/talkweb/sdk/vo/VerifySMS;->smsType:Lcom/talkweb/sdk/vo/VerifySMSType;

    return-object v0
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/talkweb/sdk/vo/VerifySMS;->phone:Ljava/lang/String;

    return-void
.end method

.method public setSmsType(Lcom/talkweb/sdk/vo/VerifySMSType;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/talkweb/sdk/vo/VerifySMS;->smsType:Lcom/talkweb/sdk/vo/VerifySMSType;

    return-void
.end method
