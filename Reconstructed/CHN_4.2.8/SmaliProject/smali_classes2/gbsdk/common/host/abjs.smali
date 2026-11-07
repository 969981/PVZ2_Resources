.class public Lgbsdk/common/host/abjs;
.super Ljava/io/InputStream;
.source "InputStreamWrap.java"


# instance fields
.field private hw:Ljava/io/InputStream;

.field private hx:Lcom/bytedance/retrofit2/client/SsCall;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/bytedance/retrofit2/client/SsCall;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 14
    iput-object p1, p0, Lgbsdk/common/host/abjs;->hw:Ljava/io/InputStream;

    .line 15
    iput-object p2, p0, Lgbsdk/common/host/abjs;->hx:Lcom/bytedance/retrofit2/client/SsCall;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 48
    iget-object v0, p0, Lgbsdk/common/host/abjs;->hw:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    .line 51
    :cond_0
    invoke-super {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 91
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abjs;->hw:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lgbsdk/common/host/abjs;->hw:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 94
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abjs;->hx:Lcom/bytedance/retrofit2/client/SsCall;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lgbsdk/common/host/abjs;->hx:Lcom/bytedance/retrofit2/client/SsCall;

    invoke-interface {v0}, Lcom/bytedance/retrofit2/client/SsCall;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abjs;->hw:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lgbsdk/common/host/abjs;->hw:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-super {p0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lgbsdk/common/host/abjs;->hw:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0

    .line 77
    :cond_0
    invoke-super {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1

    .line 82
    iget-object v0, p0, Lgbsdk/common/host/abjs;->hw:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .locals 1

    .line 24
    iget-object v0, p0, Lgbsdk/common/host/abjs;->hw:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1

    .line 27
    :cond_0
    invoke-super {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    .line 32
    iget-object v0, p0, Lgbsdk/common/host/abjs;->hw:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    .line 35
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abjs;->hw:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lgbsdk/common/host/abjs;->hw:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 68
    :cond_0
    invoke-super {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 1

    .line 40
    iget-object v0, p0, Lgbsdk/common/host/abjs;->hw:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1

    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
