.class public Lcom/talkweb/twgame/bean/Psets;
.super Ljava/lang/Object;
.source "Psets.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private displaytime:Ljava/lang/String;

.field private pidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tw_pids:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplaytime()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/talkweb/twgame/bean/Psets;->displaytime:Ljava/lang/String;

    return-object v0
.end method

.method public getPidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/talkweb/twgame/bean/Psets;->pidList:Ljava/util/List;

    return-object v0
.end method

.method public getTw_pids()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/talkweb/twgame/bean/Psets;->tw_pids:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplaytime(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/talkweb/twgame/bean/Psets;->displaytime:Ljava/lang/String;

    return-void
.end method

.method public setPidList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/talkweb/twgame/bean/Psets;->pidList:Ljava/util/List;

    return-void
.end method

.method public setTw_pids(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/talkweb/twgame/bean/Psets;->tw_pids:Ljava/lang/String;

    return-void
.end method
