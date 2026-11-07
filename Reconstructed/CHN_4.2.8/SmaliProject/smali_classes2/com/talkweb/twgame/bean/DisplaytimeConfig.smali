.class public Lcom/talkweb/twgame/bean/DisplaytimeConfig;
.super Ljava/lang/Object;
.source "DisplaytimeConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x62da81b7e2f707a6L


# instance fields
.field public defaultTime:Ljava/lang/String;

.field public psets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/Psets;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultTime()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/talkweb/twgame/bean/DisplaytimeConfig;->defaultTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPsets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/Psets;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/talkweb/twgame/bean/DisplaytimeConfig;->psets:Ljava/util/List;

    return-object v0
.end method

.method public setDefaultTime(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/talkweb/twgame/bean/DisplaytimeConfig;->defaultTime:Ljava/lang/String;

    return-void
.end method

.method public setPsets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/Psets;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/talkweb/twgame/bean/DisplaytimeConfig;->psets:Ljava/util/List;

    return-void
.end method
