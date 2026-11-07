.class public Lcom/talkweb/twgame/bean/AggregationAdListPosition;
.super Ljava/lang/Object;
.source "AggregationAdListPosition.java"


# instance fields
.field private adlocation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/AggregationAdListPositionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdlocation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/AggregationAdListPositionData;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/talkweb/twgame/bean/AggregationAdListPosition;->adlocation:Ljava/util/List;

    return-object v0
.end method

.method public setAdlocation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/talkweb/twgame/bean/AggregationAdListPositionData;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/talkweb/twgame/bean/AggregationAdListPosition;->adlocation:Ljava/util/List;

    return-void
.end method
