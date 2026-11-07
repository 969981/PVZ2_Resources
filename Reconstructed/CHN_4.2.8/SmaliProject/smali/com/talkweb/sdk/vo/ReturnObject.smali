.class public Lcom/talkweb/sdk/vo/ReturnObject;
.super Lcom/talkweb/sdk/vo/BaseVO;
.source "ReturnObject.java"


# instance fields
.field public content:Ljava/lang/String;

.field public resultCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    const-string v0, "0000"

    .line 8
    iput-object v0, p0, Lcom/talkweb/sdk/vo/ReturnObject;->resultCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/talkweb/sdk/vo/ReturnObject;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/talkweb/sdk/vo/ReturnObject;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/talkweb/sdk/vo/ReturnObject;->content:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 1

    .line 17
    iput-object p1, p0, Lcom/talkweb/sdk/vo/ReturnObject;->resultCode:Ljava/lang/String;

    const-string v0, "0000"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    invoke-static {p1}, Lcom/talkweb/sdk/util/ErrorCodeUtil;->getDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/talkweb/sdk/vo/ReturnObject;->setContent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
