.class public Lcom/talkweb/sdk/vo/CardValueVo;
.super Ljava/lang/Object;
.source "CardValueVo.java"


# instance fields
.field private channel:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/talkweb/sdk/vo/CardValueVo;->value:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/talkweb/sdk/vo/CardValueVo;->channel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/talkweb/sdk/vo/CardValueVo;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/talkweb/sdk/vo/CardValueVo;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/talkweb/sdk/vo/CardValueVo;->channel:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/talkweb/sdk/vo/CardValueVo;->value:Ljava/lang/String;

    return-void
.end method
