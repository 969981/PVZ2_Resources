.class public final Lgbsdk/common/host/acbm;
.super Lgbsdk/common/host/acbh;
.source "SourceFile"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lgbsdk/common/host/acbh;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 90
    iget-wide v0, p0, Lgbsdk/common/host/acbm;->a:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    long-to-int v1, v0

    return v1

    .line 92
    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The byte count "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " is too large to be converted to an int"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final declared-synchronized a(I)V
    .locals 4

    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 74
    :try_start_0
    iget-wide v0, p0, Lgbsdk/common/host/acbm;->a:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgbsdk/common/host/acbm;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 76
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized skip(J)J
    .locals 2

    monitor-enter p0

    .line 60
    :try_start_0
    invoke-super {p0, p1, p2}, Lgbsdk/common/host/acbh;->skip(J)J

    move-result-wide p1

    .line 61
    iget-wide v0, p0, Lgbsdk/common/host/acbm;->a:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lgbsdk/common/host/acbm;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
