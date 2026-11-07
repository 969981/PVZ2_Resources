.class public Lgbsdk/common/host/abfm;
.super Ljava/lang/Object;


# static fields
.field private static volatile dS:Lgbsdk/common/host/abfm;


# instance fields
.field private dT:Lgbsdk/common/host/abfi;

.field private dU:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ab()Lgbsdk/common/host/abfm;
    .locals 2

    sget-object v0, Lgbsdk/common/host/abfm;->dS:Lgbsdk/common/host/abfm;

    if-nez v0, :cond_1

    const-class v0, Lgbsdk/common/host/abfm;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgbsdk/common/host/abfm;->dS:Lgbsdk/common/host/abfm;

    if-nez v1, :cond_0

    new-instance v1, Lgbsdk/common/host/abfm;

    invoke-direct {v1}, Lgbsdk/common/host/abfm;-><init>()V

    sput-object v1, Lgbsdk/common/host/abfm;->dS:Lgbsdk/common/host/abfm;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abfm;->dS:Lgbsdk/common/host/abfm;

    return-object v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lgbsdk/common/host/abfm;->dT:Lgbsdk/common/host/abfi;

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lgbsdk/common/host/abfm;->n(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lgbsdk/common/host/abfp;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lgbsdk/common/host/abfm;->b()V

    iget-object v0, p0, Lgbsdk/common/host/abfm;->dT:Lgbsdk/common/host/abfi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abfm;->dT:Lgbsdk/common/host/abfi;

    iget-object v1, p0, Lgbsdk/common/host/abfm;->dU:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lgbsdk/common/host/abfi;->a(Landroid/database/sqlite/SQLiteDatabase;Lgbsdk/common/host/abfp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lgbsdk/common/host/abfm;->b()V

    iget-object v0, p0, Lgbsdk/common/host/abfm;->dT:Lgbsdk/common/host/abfi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abfm;->dT:Lgbsdk/common/host/abfi;

    iget-object v1, p0, Lgbsdk/common/host/abfm;->dU:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lgbsdk/common/host/abfi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized n(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lgbsdk/common/host/abfo;

    invoke-direct {v0, p1}, Lgbsdk/common/host/abfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lgbsdk/common/host/abfo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abfm;->dU:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lgbsdk/common/host/abia;->c(Ljava/lang/Throwable;)V

    :goto_0
    new-instance p1, Lgbsdk/common/host/abfi;

    invoke-direct {p1}, Lgbsdk/common/host/abfi;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/abfm;->dT:Lgbsdk/common/host/abfi;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
