.class public Lcom/talkweb/twgame/bean/AbTestVo;
.super Ljava/lang/Object;
.source "AbTestVo.java"


# instance fields
.field private bid:Ljava/lang/String;

.field private efftime:Ljava/lang/String;

.field private exptime:Ljava/lang/String;

.field private rate:Ljava/lang/String;

.field private tw_pid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBid()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AbTestVo;->bid:Ljava/lang/String;

    return-object v0
.end method

.method public getEfftime()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AbTestVo;->efftime:Ljava/lang/String;

    return-object v0
.end method

.method public getExptime()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AbTestVo;->exptime:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AbTestVo;->rate:Ljava/lang/String;

    return-object v0
.end method

.method public getTw_pid()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AbTestVo;->tw_pid:Ljava/util/List;

    return-object v0
.end method

.method public setBid(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AbTestVo;->bid:Ljava/lang/String;

    return-void
.end method

.method public setEfftime(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AbTestVo;->efftime:Ljava/lang/String;

    return-void
.end method

.method public setExptime(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AbTestVo;->exptime:Ljava/lang/String;

    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AbTestVo;->rate:Ljava/lang/String;

    return-void
.end method

.method public setTw_pid(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AbTestVo;->tw_pid:Ljava/util/List;

    return-void
.end method
