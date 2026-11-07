.class public Lcom/apm/insight/log/VLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/apm/insight/log/VLog;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeLevel(I)V
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/apm/insight/log/a;->a(I)V

    return-void
.end method

.method public static createInstance(Lcom/apm/insight/log/VLogConfig;Ljava/lang/String;)Lcom/apm/insight/log/ILog;
    .locals 1

    .line 153
    invoke-static {p1}, Lcom/apm/insight/log/VLog;->getInstance(Ljava/lang/String;)Lcom/apm/insight/log/ILog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 157
    :cond_0
    invoke-static {p1, p0}, Lcom/apm/insight/log/a;->a(Ljava/lang/String;Lcom/apm/insight/log/VLogConfig;)Lcom/apm/insight/log/a$b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lcom/apm/insight/log/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static destroy()V
    .locals 0

    .line 95
    invoke-static {}, Lcom/apm/insight/log/a;->f()V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lcom/apm/insight/log/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static flush()V
    .locals 0

    .line 57
    invoke-static {}, Lcom/apm/insight/log/a;->c()V

    return-void
.end method

.method public static getALogSimpleWriteFuncAddr()J
    .locals 2

    .line 142
    invoke-static {}, Lcom/apm/insight/log/a;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getALogWriteFuncAddr()J
    .locals 2

    .line 130
    invoke-static {}, Lcom/apm/insight/log/a;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAlogNativeFlushV2FuncAddr()J
    .locals 2

    .line 134
    invoke-static {}, Lcom/apm/insight/log/a;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAlogNativeLogStoreDirFuncAddr()J
    .locals 2

    .line 138
    invoke-static {}, Lcom/apm/insight/log/a;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBlockTagSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-static {}, Lcom/apm/insight/log/a;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/apm/insight/log/ILog;
    .locals 0

    .line 161
    invoke-static {p0}, Lcom/apm/insight/log/a;->a(Ljava/lang/String;)Lcom/apm/insight/log/a$b;

    move-result-object p0

    return-object p0
.end method

.method public static getLastFetchErrorInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/apm/insight/log/a;->d()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getLogFiles(JJ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    mul-long p0, p0, v3

    mul-long v5, p2, v3

    move-wide v3, p0

    .line 64
    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/apm/insight/log/a/g;->a(Ljava/lang/String;Ljava/lang/String;JJ)[Ljava/io/File;

    move-result-object p0

    .line 66
    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p3, p0, p2

    .line 67
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static getLogFiles(ZJJI)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJJI)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x3e8

    mul-long v4, p1, v1

    mul-long v6, p3, v1

    move v3, p0

    move v8, p5

    .line 79
    :try_start_0
    invoke-static/range {v3 .. v8}, Lcom/apm/insight/log/a/g;->a(ZJJI)[Ljava/io/File;

    move-result-object p0

    .line 81
    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p3, p0, p2

    .line 82
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static getStatus()Ljava/lang/String;
    .locals 1

    .line 126
    invoke-static {}, Lcom/apm/insight/log/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/apm/insight/log/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 2

    .line 18
    sget-object v0, Lcom/apm/insight/log/VLog;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-boolean v1, Lcom/apm/insight/log/VLog;->a:Z

    if-eqz v1, :cond_0

    .line 20
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 22
    sput-boolean v1, Lcom/apm/insight/log/VLog;->a:Z

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    new-instance v0, Lcom/apm/insight/log/VLogConfig$Builder;

    invoke-direct {v0, p0}, Lcom/apm/insight/log/VLogConfig$Builder;-><init>(Landroid/content/Context;)V

    shl-int/lit8 p0, p1, 0xa

    shl-int/lit8 p0, p0, 0xa

    .line 26
    invoke-virtual {v0, p0}, Lcom/apm/insight/log/VLogConfig$Builder;->setMaxDirSize(I)Lcom/apm/insight/log/VLogConfig$Builder;

    move-result-object p0

    .line 27
    invoke-virtual {p0, v1}, Lcom/apm/insight/log/VLogConfig$Builder;->setOffloadMainThreadWrite(Z)Lcom/apm/insight/log/VLogConfig$Builder;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/apm/insight/log/VLogConfig$Builder;->build()Lcom/apm/insight/log/VLogConfig;

    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/apm/insight/log/a;->a(Lcom/apm/insight/log/VLogConfig;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static isInitSuccess()Z
    .locals 1

    .line 107
    invoke-static {}, Lcom/apm/insight/log/a;->a()Z

    move-result v0

    return v0
.end method

.method public static release()V
    .locals 0

    .line 99
    invoke-static {}, Lcom/apm/insight/log/a;->g()V

    return-void
.end method

.method public static removeObsoleteInstance(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 0

    .line 147
    invoke-static {p0, p1, p2}, Lcom/apm/insight/log/a;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    return-void
.end method

.method public static setBlockTagSet(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-static {p0}, Lcom/apm/insight/log/a;->a(Ljava/util/Set;)V

    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 103
    invoke-static {p0}, Lcom/apm/insight/log/a;->a(Z)V

    return-void
.end method

.method public static setOuterExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 122
    invoke-static {p0}, Lcom/apm/insight/log/a;->a(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/apm/insight/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcom/apm/insight/log/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
