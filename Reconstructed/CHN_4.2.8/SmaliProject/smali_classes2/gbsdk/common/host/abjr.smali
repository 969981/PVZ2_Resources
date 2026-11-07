.class public Lgbsdk/common/host/abjr;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Lgbsdk/common/host/abjx;


# static fields
.field private static volatile gL:Lgbsdk/common/host/abjr; = null

.field public static volatile hg:Z = true

.field private static final hh:I = 0x8

.field private static final hi:I = 0x8

.field private static volatile hj:Lgbsdk/common/host/abjq;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    .line 76
    invoke-direct {p0, v0, v0}, Lgbsdk/common/host/abjr;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    sget-object p1, Lgbsdk/common/host/abjr;->hj:Lgbsdk/common/host/abjq;

    if-nez p1, :cond_0

    .line 88
    invoke-static {}, Lgbsdk/common/host/abjq;->br()Lgbsdk/common/host/abjq$ab;

    move-result-object p1

    const/16 p2, 0x8

    .line 89
    invoke-virtual {p1, p2, p2}, Lgbsdk/common/host/abjq$ab;->b(II)Lgbsdk/common/host/abjq$ab;

    move-result-object p1

    .line 90
    invoke-virtual {p1, p2, p2}, Lgbsdk/common/host/abjq$ab;->c(II)Lgbsdk/common/host/abjq$ab;

    move-result-object p1

    const-wide/16 v0, 0x1e

    .line 91
    invoke-virtual {p1, v0, v1}, Lgbsdk/common/host/abjq$ab;->m(J)Lgbsdk/common/host/abjq$ab;

    move-result-object p1

    const-wide/16 v0, 0xa

    .line 92
    invoke-virtual {p1, v0, v1}, Lgbsdk/common/host/abjq$ab;->o(J)Lgbsdk/common/host/abjq$ab;

    move-result-object p1

    .line 93
    invoke-virtual {p1, v0, v1}, Lgbsdk/common/host/abjq$ab;->n(J)Lgbsdk/common/host/abjq$ab;

    move-result-object p1

    const/4 p2, 0x1

    .line 94
    invoke-virtual {p1, p2}, Lgbsdk/common/host/abjq$ab;->m(Z)Lgbsdk/common/host/abjq$ab;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lgbsdk/common/host/abjq$ab;->bs()Lgbsdk/common/host/abjq;

    move-result-object p1

    sput-object p1, Lgbsdk/common/host/abjr;->hj:Lgbsdk/common/host/abjq;

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Lgbsdk/common/host/abjq;)V
    .locals 2

    const-class v0, Lgbsdk/common/host/abjr;

    monitor-enter v0

    .line 27
    :try_start_0
    sput-object p0, Lgbsdk/common/host/abjr;->hj:Lgbsdk/common/host/abjq;

    .line 28
    sget-object p0, Lgbsdk/common/host/abjr;->hj:Lgbsdk/common/host/abjq;

    sget-boolean v1, Lgbsdk/common/host/abjr;->hg:Z

    iput-boolean v1, p0, Lgbsdk/common/host/abjq;->hv:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized bl()Lgbsdk/common/host/abjq;
    .locals 4

    const-class v0, Lgbsdk/common/host/abjr;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abjr;->hj:Lgbsdk/common/host/abjq;

    if-nez v1, :cond_0

    .line 39
    invoke-static {}, Lgbsdk/common/host/abjq;->br()Lgbsdk/common/host/abjq$ab;

    move-result-object v1

    const/16 v2, 0x8

    .line 40
    invoke-virtual {v1, v2, v2}, Lgbsdk/common/host/abjq$ab;->b(II)Lgbsdk/common/host/abjq$ab;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v2, v2}, Lgbsdk/common/host/abjq$ab;->c(II)Lgbsdk/common/host/abjq$ab;

    move-result-object v1

    const-wide/16 v2, 0x1e

    .line 42
    invoke-virtual {v1, v2, v3}, Lgbsdk/common/host/abjq$ab;->m(J)Lgbsdk/common/host/abjq$ab;

    move-result-object v1

    const-wide/16 v2, 0xa

    .line 43
    invoke-virtual {v1, v2, v3}, Lgbsdk/common/host/abjq$ab;->o(J)Lgbsdk/common/host/abjq$ab;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v2, v3}, Lgbsdk/common/host/abjq$ab;->n(J)Lgbsdk/common/host/abjq$ab;

    move-result-object v1

    const/4 v2, 0x1

    .line 45
    invoke-virtual {v1, v2}, Lgbsdk/common/host/abjq$ab;->m(Z)Lgbsdk/common/host/abjq$ab;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lgbsdk/common/host/abjq$ab;->bs()Lgbsdk/common/host/abjq;

    move-result-object v1

    sput-object v1, Lgbsdk/common/host/abjr;->hj:Lgbsdk/common/host/abjq;

    .line 48
    :cond_0
    sget-object v1, Lgbsdk/common/host/abjr;->hj:Lgbsdk/common/host/abjq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static bq()Lgbsdk/common/host/abjr;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    sget-object v0, Lgbsdk/common/host/abjr;->gL:Lgbsdk/common/host/abjr;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Lgbsdk/common/host/abjr;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abjr;->gL:Lgbsdk/common/host/abjr;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lgbsdk/common/host/abjr;

    invoke-direct {v1}, Lgbsdk/common/host/abjr;-><init>()V

    sput-object v1, Lgbsdk/common/host/abjr;->gL:Lgbsdk/common/host/abjr;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abjr;->gL:Lgbsdk/common/host/abjr;

    return-object v0
.end method

.method public static declared-synchronized l(Z)V
    .locals 2

    const-class v0, Lgbsdk/common/host/abjr;

    monitor-enter v0

    .line 20
    :try_start_0
    sput-boolean p0, Lgbsdk/common/host/abjr;->hg:Z

    .line 21
    sget-object p0, Lgbsdk/common/host/abjr;->hj:Lgbsdk/common/host/abjq;

    if-eqz p0, :cond_0

    .line 22
    sget-object p0, Lgbsdk/common/host/abjr;->hj:Lgbsdk/common/host/abjq;

    sget-boolean v1, Lgbsdk/common/host/abjr;->hg:Z

    iput-boolean v1, p0, Lgbsdk/common/host/abjq;->hv:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized a(Lgbsdk/common/host/abgy;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 114
    :try_start_0
    sget-object v0, Lgbsdk/common/host/abjw;->hb:Lgbsdk/common/host/abjw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abjw;->c(Lgbsdk/common/host/abjv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 116
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lgbsdk/common/host/abjv;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 107
    :try_start_0
    sget-object v0, Lgbsdk/common/host/abjw;->hb:Lgbsdk/common/host/abjw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abjw;->c(Lgbsdk/common/host/abjv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 109
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lgbsdk/common/host/abgy;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 133
    :try_start_0
    sget-object v0, Lgbsdk/common/host/abjw;->hb:Lgbsdk/common/host/abjw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abjw;->d(Lgbsdk/common/host/abjv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 135
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lgbsdk/common/host/abjv;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 126
    :try_start_0
    sget-object v0, Lgbsdk/common/host/abjw;->hb:Lgbsdk/common/host/abjw;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abjw;->d(Lgbsdk/common/host/abjv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 128
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
