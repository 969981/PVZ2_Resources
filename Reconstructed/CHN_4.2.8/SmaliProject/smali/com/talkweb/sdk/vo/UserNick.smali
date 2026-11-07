.class public Lcom/talkweb/sdk/vo/UserNick;
.super Lcom/talkweb/sdk/vo/BaseVO;
.source "UserNick.java"


# instance fields
.field private userNick:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/talkweb/sdk/vo/BaseVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserNick()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/talkweb/sdk/vo/UserNick;->userNick:Ljava/lang/String;

    return-object v0
.end method

.method public setUserNick(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/talkweb/sdk/vo/UserNick;->userNick:Ljava/lang/String;

    return-void
.end method
