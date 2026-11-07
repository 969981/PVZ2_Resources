.class public Lgbsdk/common/host/abel;
.super Ljava/lang/Object;

# interfaces
.implements Lgbsdk/common/host/abfu;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/abel;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/abel;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lgbsdk/common/host/abel;->a:Landroid/content/Context;

    return-object p0
.end method

.method private declared-synchronized b(JLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v12, p0

    monitor-enter p0

    :try_start_0
    new-instance v11, Ljava/io/File;

    iget-object v0, v12, Lgbsdk/common/host/abel;->a:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abif;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    move-object/from16 v10, p5

    invoke-direct {v11, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lgbsdk/common/host/abfy;->ao()Lgbsdk/common/host/abfy;

    move-result-object v0

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abfy;->a(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    invoke-static {v11}, Lgbsdk/common/host/abhg;->i(Ljava/io/File;)V

    invoke-static/range {p4 .. p4}, Lgbsdk/common/host/abhz;->e(Ljava/lang/Throwable;)Z

    move-result v4

    invoke-static {}, Lcom/apm/insight/runtime/a/f;->a()Lcom/apm/insight/runtime/a/f;

    move-result-object v0

    sget-object v13, Lcom/apm/insight/CrashType;->LAUNCH:Lcom/apm/insight/CrashType;

    const/4 v14, 0x0

    new-instance v15, Lgbsdk/common/host/abel$1;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-wide/from16 v5, p1

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v11}, Lgbsdk/common/host/abel$1;-><init>(Lgbsdk/common/host/abel;Ljava/lang/Throwable;ZJLjava/lang/String;ZLjava/lang/Thread;Ljava/lang/String;Ljava/io/File;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/apm/insight/runtime/a/f;->a(Lcom/apm/insight/CrashType;Lgbsdk/common/host/abfl;Lcom/apm/insight/runtime/a/c$a;Z)Lgbsdk/common/host/abfl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-long v1, v1, p1

    :try_start_1
    const-string v3, "crash_type"

    const-string v4, "normal"

    invoke-virtual {v0, v3, v4}, Lgbsdk/common/host/abfl;->l(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;

    const-string v3, "crash_cost"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lgbsdk/common/host/abfl;->m(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;

    const-string v3, "crash_cost"

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lgbsdk/common/host/abfl;->l(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v1, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v2, "NPTH_CATCH"

    invoke-virtual {v1, v2, v0}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x4

    invoke-static {v0}, Lgbsdk/common/host/abic;->g(I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    invoke-static {}, Lcom/apm/insight/Npth;->isStopUpload()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x800

    invoke-static {v0}, Lgbsdk/common/host/abic;->g(I)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(JLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lgbsdk/common/host/abel;->b(JLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
