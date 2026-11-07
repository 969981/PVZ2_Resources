.class public final Lgbsdk/common/host/abvc;
.super Lgbsdk/common/host/abvd;
.source "AlogMessageHandler.java"


# instance fields
.field public aKM:Lgbsdk/common/host/abwl;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lgbsdk/common/host/abvd;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abvc;->c:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lgbsdk/common/host/abvc;->d:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "alog"

    return-object v0
.end method

.method public final declared-synchronized b(Lgbsdk/common/host/abwh;)Z
    .locals 9

    monitor-enter p0

    .line 40
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 1037
    iget-object v1, p1, Lgbsdk/common/host/abwh;->a:Ljava/lang/String;

    .line 40
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lgbsdk/common/host/abvc;->aKM:Lgbsdk/common/host/abwl;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "\u672a\u8bbe\u7f6eLog\u56de\u635e\u5904\u7406\u7ec4\u4ef6"

    .line 43
    iget-object v1, p0, Lgbsdk/common/host/abvc;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lgbsdk/common/host/abuu;->a(Ljava/lang/String;Lgbsdk/common/host/abwh;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return v2

    .line 48
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lgbsdk/common/host/abvc;->d:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x2bf20

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    .line 49
    new-instance v0, Lgbsdk/common/host/abvq;

    iget-object v1, p0, Lgbsdk/common/host/abvc;->a:Ljava/lang/String;

    .line 1098
    iget-object p1, p1, Lgbsdk/common/host/abwh;->c:Ljava/lang/String;

    const/4 v3, 0x0

    .line 49
    invoke-direct {v0, v1, p1, v3}, Lgbsdk/common/host/abvq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 51
    iput v2, v0, Lgbsdk/common/host/abvq;->bd:I

    const-string p1, "3\u5206\u949f\u5185\u4e0d\u91cd\u590d\u6267\u884clog\u56de\u635e"

    .line 52
    iput-object p1, v0, Lgbsdk/common/host/abvq;->m:Ljava/lang/String;

    .line 53
    invoke-static {v0}, Lgbsdk/common/host/abuw;->a(Lgbsdk/common/host/abvq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    monitor-exit p0

    return v2

    .line 57
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lgbsdk/common/host/abvc;->d:J

    const-string v1, "fetch_start_time"

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/16 v7, 0x4650

    sub-long/2addr v3, v7

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v1, "fetch_end_time"

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v5

    invoke-virtual {v0, v1, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 62
    iget-object v5, p0, Lgbsdk/common/host/abvc;->aKM:Lgbsdk/common/host/abwl;

    invoke-interface {v5, v3, v4, v0, v1}, Lgbsdk/common/host/abwl;->g(JJ)Ljava/util/List;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lgbsdk/common/host/abvc;->aKM:Lgbsdk/common/host/abwl;

    invoke-interface {v1}, Lgbsdk/common/host/abwl;->hD()Lgbsdk/common/host/abva;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 66
    :cond_2
    iget-object v4, p0, Lgbsdk/common/host/abvc;->aKM:Lgbsdk/common/host/abwl;

    instance-of v4, v4, Lgbsdk/common/host/abwm;

    if-eqz v4, :cond_3

    .line 67
    iget-object v0, p0, Lgbsdk/common/host/abvc;->aKM:Lgbsdk/common/host/abwl;

    check-cast v0, Lgbsdk/common/host/abwm;

    invoke-interface {v0}, Lgbsdk/common/host/abwm;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "\u515c\u5e95\u7b56\u7565\u6570\u636e"

    .line 2034
    iget-object v1, v1, Lgbsdk/common/host/abva;->aKL:Ljava/util/HashMap;

    .line 69
    invoke-static {v3, v4, v1}, Lgbsdk/common/host/abva;->a(ZLjava/lang/String;Ljava/util/HashMap;)Lgbsdk/common/host/abva;

    move-result-object v1

    :cond_3
    if-eqz v0, :cond_6

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_6

    .line 3026
    iget-boolean v4, v1, Lgbsdk/common/host/abva;->a:Z

    if-eqz v4, :cond_6

    .line 75
    iget-object v4, p0, Lgbsdk/common/host/abvc;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 76
    iget-object v4, p0, Lgbsdk/common/host/abvc;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lgbsdk/common/host/abvc;->a:Ljava/lang/String;

    invoke-static {v5}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v5

    .line 3098
    invoke-virtual {v5}, Lgbsdk/common/host/abut;->b()V

    .line 3099
    iget-object v5, v5, Lgbsdk/common/host/abut;->b:Ljava/io/File;

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4098
    iget-object v7, p1, Lgbsdk/common/host/abwh;->c:Ljava/lang/String;

    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "temp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 79
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 81
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 84
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 5098
    iget-object v7, p1, Lgbsdk/common/host/abwh;->c:Ljava/lang/String;

    .line 84
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-cloudMsg.zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 86
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 88
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    .line 89
    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 90
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lgbsdk/common/host/abvn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Alog\u56de\u635e:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ErrMsg="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6030
    iget-object v0, v1, Lgbsdk/common/host/abva;->b:Ljava/lang/String;

    .line 94
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6034
    iget-object v1, v1, Lgbsdk/common/host/abva;->aKL:Ljava/util/HashMap;

    .line 94
    iget-object v5, p0, Lgbsdk/common/host/abvc;->a:Ljava/lang/String;

    .line 7098
    iget-object v6, p1, Lgbsdk/common/host/abwh;->c:Ljava/lang/String;

    .line 7028
    invoke-static {v5, v6, v0, v2, v1}, Lgbsdk/common/host/abuu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 96
    iget-object v0, p0, Lgbsdk/common/host/abvc;->a:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/common/host/abut;->cK(Ljava/lang/String;)Lgbsdk/common/host/abut;

    move-result-object v0

    const-string v1, "log_agile"

    invoke-virtual {v0, p1, v4, v1}, Lgbsdk/common/host/abut;->a(Lgbsdk/common/host/abwh;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 8026
    :cond_6
    iget-boolean v0, v1, Lgbsdk/common/host/abva;->a:Z

    if-nez v0, :cond_7

    .line 8030
    iget-object v0, v1, Lgbsdk/common/host/abva;->b:Ljava/lang/String;

    .line 8034
    iget-object v1, v1, Lgbsdk/common/host/abva;->aKL:Ljava/util/HashMap;

    .line 98
    invoke-virtual {p0, v0, v1, p1}, Lgbsdk/common/host/abvc;->a(Ljava/lang/String;Ljava/util/HashMap;Lgbsdk/common/host/abwh;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :cond_7
    :goto_0
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
