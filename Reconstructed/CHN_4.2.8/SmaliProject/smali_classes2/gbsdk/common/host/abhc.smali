.class public Lgbsdk/common/host/abhc;
.super Ljava/lang/Object;
.source "TTDelayStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abhc$ab;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static volatile ga:Lgbsdk/common/host/abhc$ab;

.field private static final gb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final gc:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final gd:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final ge:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final gf:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    const-class v0, Lgbsdk/common/host/abhc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abhc;->TAG:Ljava/lang/String;

    .line 12
    sget-object v0, Lgbsdk/common/host/abhc$ab;->gh:Lgbsdk/common/host/abhc$ab;

    sput-object v0, Lgbsdk/common/host/abhc;->ga:Lgbsdk/common/host/abhc$ab;

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lgbsdk/common/host/abhc;->gb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lgbsdk/common/host/abhc;->gc:Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lgbsdk/common/host/abhc;->gd:Ljava/util/concurrent/atomic/AtomicLong;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lgbsdk/common/host/abhc;->ge:Ljava/util/concurrent/atomic/AtomicLong;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lgbsdk/common/host/abhc;->gf:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aP()Lgbsdk/common/host/abhc$ab;
    .locals 4

    .line 38
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lgbsdk/common/host/abhc;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get coldDuration hostDuration warmDuration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lgbsdk/common/host/abhc;->gd:Ljava/util/concurrent/atomic/AtomicLong;

    .line 40
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v2, Lgbsdk/common/host/abhc;->ge:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v2, Lgbsdk/common/host/abhc;->gf:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    sget-object v0, Lgbsdk/common/host/abhc$1;->gg:[I

    sget-object v1, Lgbsdk/common/host/abhc;->ga:Lgbsdk/common/host/abhc$ab;

    invoke-virtual {v1}, Lgbsdk/common/host/abhc$ab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 59
    sget-object v0, Lgbsdk/common/host/abhc;->ga:Lgbsdk/common/host/abhc$ab;

    return-object v0

    .line 54
    :cond_1
    sget-object v0, Lgbsdk/common/host/abhc;->gc:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    sget-object v2, Lgbsdk/common/host/abhc;->gf:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgbsdk/common/host/abhc;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    sget-object v0, Lgbsdk/common/host/abhc$ab;->gh:Lgbsdk/common/host/abhc$ab;

    sput-object v0, Lgbsdk/common/host/abhc;->ga:Lgbsdk/common/host/abhc$ab;

    .line 57
    :cond_2
    sget-object v0, Lgbsdk/common/host/abhc;->ga:Lgbsdk/common/host/abhc$ab;

    return-object v0

    .line 49
    :cond_3
    sget-object v0, Lgbsdk/common/host/abhc;->gc:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    sget-object v2, Lgbsdk/common/host/abhc;->ge:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgbsdk/common/host/abhc;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    sget-object v0, Lgbsdk/common/host/abhc$ab;->gh:Lgbsdk/common/host/abhc$ab;

    sput-object v0, Lgbsdk/common/host/abhc;->ga:Lgbsdk/common/host/abhc$ab;

    .line 52
    :cond_4
    sget-object v0, Lgbsdk/common/host/abhc;->ga:Lgbsdk/common/host/abhc$ab;

    return-object v0

    .line 44
    :cond_5
    sget-object v0, Lgbsdk/common/host/abhc;->gc:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    sget-object v2, Lgbsdk/common/host/abhc;->gd:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgbsdk/common/host/abhc;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45
    sget-object v0, Lgbsdk/common/host/abhc$ab;->gh:Lgbsdk/common/host/abhc$ab;

    sput-object v0, Lgbsdk/common/host/abhc;->ga:Lgbsdk/common/host/abhc$ab;

    .line 47
    :cond_6
    sget-object v0, Lgbsdk/common/host/abhc;->ga:Lgbsdk/common/host/abhc$ab;

    return-object v0
.end method

.method public static aQ()Z
    .locals 1

    .line 68
    sget-object v0, Lgbsdk/common/host/abhc;->gb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static c(JJ)Z
    .locals 4

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long/2addr v0, p0

    cmp-long p0, v0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static n(I)V
    .locals 5

    .line 89
    sget-object v0, Lgbsdk/common/host/abhc;->gc:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 101
    sget-object p0, Lgbsdk/common/host/abhc$ab;->gh:Lgbsdk/common/host/abhc$ab;

    sput-object p0, Lgbsdk/common/host/abhc;->ga:Lgbsdk/common/host/abhc$ab;

    goto :goto_0

    .line 98
    :cond_0
    sget-object p0, Lgbsdk/common/host/abhc$ab;->gk:Lgbsdk/common/host/abhc$ab;

    sput-object p0, Lgbsdk/common/host/abhc;->ga:Lgbsdk/common/host/abhc$ab;

    goto :goto_0

    .line 95
    :cond_1
    sget-object p0, Lgbsdk/common/host/abhc$ab;->gj:Lgbsdk/common/host/abhc$ab;

    sput-object p0, Lgbsdk/common/host/abhc;->ga:Lgbsdk/common/host/abhc$ab;

    goto :goto_0

    .line 92
    :cond_2
    sget-object p0, Lgbsdk/common/host/abhc$ab;->gi:Lgbsdk/common/host/abhc$ab;

    sput-object p0, Lgbsdk/common/host/abhc;->ga:Lgbsdk/common/host/abhc$ab;

    :goto_0
    return-void
.end method

.method public static s(Lorg/json/JSONObject;)V
    .locals 3

    .line 77
    sget-object v0, Lgbsdk/common/host/abhc;->gb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "request_tag_enabled"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 78
    sget-object v0, Lgbsdk/common/host/abhc;->gd:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v1, "cold_start_seconds"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 79
    sget-object v0, Lgbsdk/common/host/abhc;->ge:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v1, "hot_start_seconds"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 80
    sget-object v0, Lgbsdk/common/host/abhc;->gf:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v1, "warm_start_seconds"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 81
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 82
    sget-object p0, Lgbsdk/common/host/abhc;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set coldDuration hostDuration warmDuration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lgbsdk/common/host/abhc;->gd:Ljava/util/concurrent/atomic/AtomicLong;

    .line 83
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v1, Lgbsdk/common/host/abhc;->ge:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v1, Lgbsdk/common/host/abhc;->gf:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {p0, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
