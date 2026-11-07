.class public Lcom/talkweb/twgame/bean/AbTestResponseVo;
.super Ljava/lang/Object;
.source "AbTestResponseVo.java"


# instance fields
.field private active:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private code:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/AbTestVo;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActive()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AbTestResponseVo;->active:Ljava/util/Map;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AbTestResponseVo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/AbTestVo;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AbTestResponseVo;->data:Ljava/util/List;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AbTestResponseVo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setActive(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AbTestResponseVo;->active:Ljava/util/Map;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AbTestResponseVo;->code:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/AbTestVo;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AbTestResponseVo;->data:Ljava/util/List;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AbTestResponseVo;->msg:Ljava/lang/String;

    return-void
.end method
