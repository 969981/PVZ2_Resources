.class Lcom/popcap/util/SortByPeriod;
.super Ljava/lang/Object;
.source "TimeStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 94
    check-cast p1, Lcom/popcap/util/TimePeriodTarget;

    .line 95
    check-cast p2, Lcom/popcap/util/TimePeriodTarget;

    .line 96
    iget-wide v0, p1, Lcom/popcap/util/TimePeriodTarget;->period:J

    iget-wide p1, p2, Lcom/popcap/util/TimePeriodTarget;->period:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
