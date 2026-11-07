.class public Lcom/popcap/util/TimeStrategy;
.super Ljava/lang/Object;
.source "TimeStrategy.java"


# static fields
.field public static m_sTimeStrategy:Lcom/popcap/util/TimeStrategy;


# instance fields
.field mTimePerTargetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/popcap/util/TimePeriodTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/popcap/util/TimeStrategy;->mTimePerTargetList:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popcap/util/TimeStrategy;->mTimePerTargetList:Ljava/util/ArrayList;

    return-void
.end method

.method public static Instance()Lcom/popcap/util/TimeStrategy;
    .locals 1

    .line 29
    sget-object v0, Lcom/popcap/util/TimeStrategy;->m_sTimeStrategy:Lcom/popcap/util/TimeStrategy;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/popcap/util/TimeStrategy;

    invoke-direct {v0}, Lcom/popcap/util/TimeStrategy;-><init>()V

    sput-object v0, Lcom/popcap/util/TimeStrategy;->m_sTimeStrategy:Lcom/popcap/util/TimeStrategy;

    .line 31
    :cond_0
    sget-object v0, Lcom/popcap/util/TimeStrategy;->m_sTimeStrategy:Lcom/popcap/util/TimeStrategy;

    return-object v0
.end method


# virtual methods
.method public GetNotficationSkedulTime(J)J
    .locals 5

    const/4 v0, 0x0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/popcap/util/TimeStrategy;->mTimePerTargetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    .line 77
    iget-object p1, p0, Lcom/popcap/util/TimeStrategy;->mTimePerTargetList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/popcap/util/TimeStrategy;->mTimePerTargetList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/popcap/util/TimePeriodTarget;

    iget-wide p1, p1, Lcom/popcap/util/TimePeriodTarget;->target:J

    return-wide p1

    :cond_1
    const-wide/32 p1, 0x1b77400

    return-wide p1

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/popcap/util/TimeStrategy;->mTimePerTargetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/popcap/util/TimePeriodTarget;

    .line 73
    iget-object v2, p0, Lcom/popcap/util/TimeStrategy;->mTimePerTargetList:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/popcap/util/TimePeriodTarget;

    .line 74
    iget-wide v3, v1, Lcom/popcap/util/TimePeriodTarget;->period:J

    cmp-long v3, v3, p1

    if-gtz v3, :cond_0

    iget-wide v2, v2, Lcom/popcap/util/TimePeriodTarget;->period:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 75
    iget-wide p1, v1, Lcom/popcap/util/TimePeriodTarget;->target:J

    return-wide p1
.end method

.method public GetRewardSkudualTime()J
    .locals 4

    .line 62
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 63
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0xa

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#####  rand = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/32 v2, 0x240c8400

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public GetSkuSkeduTime()J
    .locals 2

    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public LoadServerTimeStrage(Lorg/json/JSONArray;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/popcap/util/TimeStrategy;->mTimePerTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 40
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v1, :cond_1

    .line 53
    iget-object p1, p0, Lcom/popcap/util/TimeStrategy;->mTimePerTargetList:Ljava/util/ArrayList;

    new-instance v0, Lcom/popcap/util/SortByPeriod;

    invoke-direct {v0}, Lcom/popcap/util/SortByPeriod;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    .line 41
    :cond_1
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 42
    new-instance v2, Lcom/popcap/util/TimePeriodTarget;

    invoke-direct {v2}, Lcom/popcap/util/TimePeriodTarget;-><init>()V

    .line 43
    const-string v3, "l"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/popcap/util/TimePeriodTarget;->period:J

    .line 44
    iget-wide v3, v2, Lcom/popcap/util/TimePeriodTarget;->period:J

    const-wide/32 v5, 0x36ee80

    mul-long/2addr v3, v5

    iput-wide v3, v2, Lcom/popcap/util/TimePeriodTarget;->period:J

    .line 45
    const-string v3, "d"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, v2, Lcom/popcap/util/TimePeriodTarget;->target:J

    .line 46
    iget-wide v3, v2, Lcom/popcap/util/TimePeriodTarget;->target:J

    mul-long/2addr v3, v5

    iput-wide v3, v2, Lcom/popcap/util/TimePeriodTarget;->target:J

    .line 47
    iget-object v1, p0, Lcom/popcap/util/TimeStrategy;->mTimePerTargetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
