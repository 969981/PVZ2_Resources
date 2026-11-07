.class final Lcom/popcap/pvz2cthddev/DetailMemorySampler;
.super Ljava/lang/Object;
.source "DetailMemorySampler.java"


# static fields
.field private static final INTERVAL_MS:J = 0x7d0L


# instance fields
.field private lastRequestMs:J

.field private pending:Z

.field private volatile snapshot:[J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 12
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/DetailMemorySampler;->snapshot:[J

    const-wide/16 v0, -0x7d0

    .line 13
    iput-wide v0, p0, Lcom/popcap/pvz2cthddev/DetailMemorySampler;->lastRequestMs:J

    return-void

    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
    .end array-data
.end method

.method private sample(Landroid/content/Context;)V
    .locals 10

    const/4 v0, 0x5

    .line 36
    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    const/4 v4, 0x1

    aput-wide v2, v0, v4

    const/4 v5, 0x2

    aput-wide v2, v0, v5

    const/4 v6, 0x3

    aput-wide v2, v0, v6

    const-wide/16 v2, 0x0

    const/4 v7, 0x4

    aput-wide v2, v0, v7

    .line 39
    :try_start_0
    new-instance v2, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v2}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 40
    invoke-static {v2}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 41
    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v8, 0x400

    mul-long/2addr v2, v8

    aput-wide v2, v0, v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 45
    :catch_0
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    aput-wide v2, v0, v4

    .line 46
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    sub-long/2addr v3, v8

    aput-wide v3, v0, v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_0

    .line 51
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 52
    invoke-virtual {p1, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 53
    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    aput-wide v2, v0, v6
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :catch_1
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, v7

    .line 61
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/DetailMemorySampler;->snapshot:[J

    .line 62
    monitor-enter p0

    .line 63
    :try_start_3
    iput-boolean v1, p0, Lcom/popcap/pvz2cthddev/DetailMemorySampler;->pending:Z

    .line 64
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 60
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, v7

    .line 61
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/DetailMemorySampler;->snapshot:[J

    .line 62
    monitor-enter p0

    .line 63
    :try_start_4
    iput-boolean v1, p0, Lcom/popcap/pvz2cthddev/DetailMemorySampler;->pending:Z

    .line 64
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 65
    throw p1

    :catchall_2
    move-exception p1

    .line 64
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    .line 60
    :catch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, v7

    .line 61
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/DetailMemorySampler;->snapshot:[J

    .line 62
    monitor-enter p0

    .line 63
    :try_start_6
    iput-boolean v1, p0, Lcom/popcap/pvz2cthddev/DetailMemorySampler;->pending:Z

    .line 64
    monitor-exit p0

    :goto_2
    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1
.end method


# virtual methods
.method synthetic lambda$read$0$com-popcap-pvz2cthddev-DetailMemorySampler(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/popcap/pvz2cthddev/DetailMemorySampler;->sample(Landroid/content/Context;)V

    return-void
.end method

.method declared-synchronized read(Landroid/content/Context;)[J
    .locals 21

    move-object/from16 v1, p0

    monitor-enter p0

    .line 17
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 18
    iget-boolean v0, v1, Lcom/popcap/pvz2cthddev/DetailMemorySampler;->pending:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    iget-wide v6, v1, Lcom/popcap/pvz2cthddev/DetailMemorySampler;->lastRequestMs:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x7d0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_0

    .line 19
    iput-boolean v5, v1, Lcom/popcap/pvz2cthddev/DetailMemorySampler;->pending:Z

    .line 20
    iput-wide v2, v1, Lcom/popcap/pvz2cthddev/DetailMemorySampler;->lastRequestMs:J

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/popcap/pvz2cthddev/DetailMemorySampler$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1, v0}, Lcom/popcap/pvz2cthddev/DetailMemorySampler$$ExternalSyntheticLambda0;-><init>(Lcom/popcap/pvz2cthddev/DetailMemorySampler;Landroid/content/Context;)V

    const-string v0, "DetailMemoryInfo"

    invoke-direct {v6, v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v6, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 25
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 27
    :catch_0
    :try_start_2
    iput-boolean v4, v1, Lcom/popcap/pvz2cthddev/DetailMemorySampler;->pending:Z

    .line 30
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/popcap/pvz2cthddev/DetailMemorySampler;->snapshot:[J

    .line 31
    aget-wide v6, v0, v4

    aget-wide v8, v0, v5

    const/4 v10, 0x2

    aget-wide v11, v0, v10

    const/4 v13, 0x3

    aget-wide v14, v0, v13

    const/16 v16, 0x4

    aget-wide v17, v0, v16

    move-wide/from16 v19, v14

    const-wide/16 v13, 0x0

    cmp-long v0, v17, v13

    if-nez v0, :cond_1

    const-wide/16 v2, -0x1

    goto :goto_1

    :cond_1
    sub-long v2, v2, v17

    .line 32
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_1
    const/4 v0, 0x6

    new-array v0, v0, [J

    aput-wide v6, v0, v4

    aput-wide v8, v0, v5

    aput-wide v11, v0, v10

    const/4 v4, 0x3

    aput-wide v19, v0, v4

    aput-wide v17, v0, v16

    const/4 v4, 0x5

    aput-wide v2, v0, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
