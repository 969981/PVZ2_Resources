.class public Lcom/apm/insight/runtime/p;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Lcom/apm/insight/runtime/c;

.field private static volatile g:Z

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/apm/insight/runtime/c;

    invoke-direct {v0}, Lcom/apm/insight/runtime/c;-><init>()V

    sput-object v0, Lcom/apm/insight/runtime/p;->f:Lcom/apm/insight/runtime/c;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/apm/insight/runtime/p;->g:Z

    sput-boolean v0, Lcom/apm/insight/runtime/p;->h:Z

    return-void
.end method

.method public static a()Lcom/apm/insight/runtime/c;
    .locals 1

    sget-object v0, Lcom/apm/insight/runtime/p;->f:Lcom/apm/insight/runtime/c;

    return-object v0
.end method

.method public static a(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/apm/insight/nativecrash/NativeImpl;->a(J)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Application;Landroid/content/Context;ZZZZJ)V
    .locals 3

    const-class p6, Lcom/apm/insight/runtime/p;

    monitor-enter p6

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-boolean p7, Lcom/apm/insight/runtime/p;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p7, :cond_0

    monitor-exit p6

    return-void

    :cond_0
    const/4 p7, 0x1

    :try_start_1
    sput-boolean p7, Lcom/apm/insight/runtime/p;->a:Z

    if-eqz p1, :cond_9

    if-eqz p0, :cond_9

    invoke-static {p0, p1}, Lgbsdk/common/host/abge;->a(Landroid/app/Application;Landroid/content/Context;)V

    sget-boolean v2, Lgbsdk/common/host/abge;->v:Z

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/apm/insight/runtime/p;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/apm/insight/runtime/p;->b(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/apm/insight/runtime/p;->r()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const-string p0, "apminsight"

    const-string p1, "Inner npth checked."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p6

    return-void

    :cond_2
    if-nez p2, :cond_3

    if-eqz p3, :cond_6

    :cond_3
    :try_start_2
    invoke-static {}, Lgbsdk/common/host/abfy;->ao()Lgbsdk/common/host/abfy;

    move-result-object p0

    if-eqz p3, :cond_4

    new-instance p3, Lgbsdk/common/host/abel;

    invoke-direct {p3, p1}, Lgbsdk/common/host/abel;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lgbsdk/common/host/abfy;->el:Lgbsdk/common/host/abfu;

    :cond_4
    if-eqz p2, :cond_5

    new-instance p2, Lgbsdk/common/host/abfx;

    invoke-direct {p2, p1}, Lgbsdk/common/host/abfx;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lgbsdk/common/host/abfy;->em:Lgbsdk/common/host/abfu;

    :cond_5
    sput-boolean p7, Lcom/apm/insight/runtime/p;->b:Z

    :cond_6
    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->a()Z

    if-eqz p4, :cond_7

    invoke-static {p1}, Lcom/apm/insight/nativecrash/NativeImpl;->a(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/apm/insight/runtime/p;->d:Z

    if-nez p0, :cond_7

    sput-boolean p7, Lcom/apm/insight/runtime/p;->e:Z

    :cond_7
    if-eqz p5, :cond_8

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-ne p0, p1, :cond_8

    sput-boolean p7, Lcom/apm/insight/runtime/p;->g:Z

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->h()V

    :cond_8
    invoke-static {p5}, Lcom/apm/insight/runtime/p;->g(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Npth.init takes "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgbsdk/common/host/abia;->i(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p6

    return-void

    :cond_9
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context or Application must be not null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit p6

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;ZZZZJ)V
    .locals 9

    const-class v0, Lcom/apm/insight/runtime/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgbsdk/common/host/abge;->ap:Landroid/app/Application;

    if-eqz v1, :cond_1

    sget-object v1, Lgbsdk/common/host/abge;->ap:Landroid/app/Application;

    :cond_0
    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_1
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u521d\u59cb\u5316\u65f6\u4f20\u5165\u7684Application\u8fd8\u672aattach, \u8bf7\u5728init\u65f6\u4f20\u5165attachBaseContext\u7684\u53c2\u6570, \u5e76\u5728init\u4e4b\u524d\u624b\u52a8\u8c03\u7528Npth.setApplication(Application)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :goto_1
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-static/range {v1 .. v8}, Lcom/apm/insight/runtime/p;->a(Landroid/app/Application;Landroid/content/Context;ZZZZJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :cond_4
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u521d\u59cb\u5316\u65f6\u4f20\u5165\u4e86baseContext, \u5bfc\u81f4\u65e0\u6cd5\u83b7\u53d6Application\u5b9e\u4f8b, \u8bf7\u5728init\u4e4b\u524d\u624b\u52a8\u8c03\u7528Npth.setApplication(Application)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u521d\u59cb\u5316\u65f6\u4f20\u5165\u4e86baseContext, \u5bfc\u81f4\u65e0\u6cd5\u83b7\u53d6Application\u5b9e\u4f8b, \u8bf7\u5728init\u4e4b\u524d\u624b\u52a8\u8c03\u7528Npth.setApplication(Application)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Lcom/apm/insight/CrashInfoCallback;)V
    .locals 1

    invoke-static {}, Lcom/apm/insight/runtime/p;->a()Lcom/apm/insight/runtime/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apm/insight/runtime/c;->a(Lcom/apm/insight/CrashInfoCallback;)V

    return-void
.end method

.method public static a(Lcom/apm/insight/ICrashCallback;Lcom/apm/insight/CrashType;)V
    .locals 1

    invoke-static {}, Lcom/apm/insight/runtime/p;->a()Lcom/apm/insight/runtime/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/apm/insight/runtime/c;->a(Lcom/apm/insight/ICrashCallback;Lcom/apm/insight/CrashType;)V

    return-void
.end method

.method public static a(Lcom/apm/insight/IOOMCallback;)V
    .locals 1

    invoke-static {}, Lcom/apm/insight/runtime/p;->a()Lcom/apm/insight/runtime/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apm/insight/runtime/c;->a(Lcom/apm/insight/IOOMCallback;)V

    return-void
.end method

.method public static a(Lcom/apm/insight/IOOMCallback;Lcom/apm/insight/CrashType;)V
    .locals 0

    invoke-static {}, Lcom/apm/insight/runtime/p;->a()Lcom/apm/insight/runtime/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/apm/insight/runtime/c;->b(Lcom/apm/insight/IOOMCallback;)V

    return-void
.end method

.method public static a(Lcom/apm/insight/runtime/k;)V
    .locals 0

    invoke-static {p0}, Lcom/apm/insight/runtime/l;->a(Lcom/apm/insight/runtime/k;)V

    return-void
.end method

.method public static a(Lgbsdk/common/host/abeu;)V
    .locals 0

    sput-object p0, Lgbsdk/common/host/abfd;->fd:Lgbsdk/common/host/abeu;

    return-void
.end method

.method public static a(Lgbsdk/common/host/abft;)V
    .locals 1

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    invoke-virtual {v0, p0}, Lcom/apm/insight/runtime/ConfigManager;->setEncryptImpl(Lgbsdk/common/host/abft;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lgbsdk/common/host/abfs;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lgbsdk/common/host/abcc;Lgbsdk/common/host/abcb;)V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Lgbsdk/common/host/abfn;)V
    .locals 2

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    new-instance v1, Lcom/apm/insight/runtime/p$1;

    invoke-direct {v1, p0, p1}, Lcom/apm/insight/runtime/p$1;-><init>(Ljava/lang/String;Lgbsdk/common/host/abfn;)V

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/apm/insight/IUploadCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/apm/insight/IUploadCallback;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lgbsdk/common/host/abfs;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/apm/insight/IUploadCallback;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/apm/insight/IUploadCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/apm/insight/IUploadCallback;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lgbsdk/common/host/abfs;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/apm/insight/IUploadCallback;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isReportErrorEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lgbsdk/common/host/abfy;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lgbsdk/common/host/abge;->t:Z

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lgbsdk/common/host/abif;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "npth"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/apm/insight/nativecrash/NativeImpl;->b(J)V

    return-void
.end method

.method public static b(Lcom/apm/insight/ICrashCallback;Lcom/apm/insight/CrashType;)V
    .locals 1

    invoke-static {}, Lcom/apm/insight/runtime/p;->a()Lcom/apm/insight/runtime/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/apm/insight/runtime/c;->b(Lcom/apm/insight/ICrashCallback;Lcom/apm/insight/CrashType;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isReportErrorEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lgbsdk/common/host/abfy;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lgbsdk/common/host/abge;->u:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/apm/insight/runtime/p;->b:Z

    return v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v1, "libnpth.so"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/apm/insight/nativecrash/NativeImpl;->c(J)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/apm/insight/nativecrash/NativeImpl;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lgbsdk/common/host/abge;->v:Z

    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/apm/insight/runtime/p;->c:Z

    return v0
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lgbsdk/common/host/abge;->cX:Z

    return-void
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/apm/insight/runtime/p;->d:Z

    return v0
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/apm/insight/runtime/p;->a:Z

    return v0
.end method

.method static synthetic e(Z)Z
    .locals 0

    sput-boolean p0, Lcom/apm/insight/runtime/p;->g:Z

    return p0
.end method

.method public static f()V
    .locals 3

    sget-boolean v0, Lcom/apm/insight/runtime/p;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/apm/insight/runtime/p;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {}, Lgbsdk/common/host/abfy;->ao()Lgbsdk/common/host/abfy;

    move-result-object v1

    new-instance v2, Lgbsdk/common/host/abel;

    invoke-direct {v2, v0}, Lgbsdk/common/host/abel;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lgbsdk/common/host/abfy;->el:Lgbsdk/common/host/abfu;

    new-instance v2, Lgbsdk/common/host/abfx;

    invoke-direct {v2, v0}, Lgbsdk/common/host/abfx;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lgbsdk/common/host/abfy;->em:Lgbsdk/common/host/abfu;

    :cond_0
    return-void
.end method

.method static synthetic f(Z)V
    .locals 0

    invoke-static {p0}, Lcom/apm/insight/runtime/p;->h(Z)V

    return-void
.end method

.method public static g()V
    .locals 1

    sget-boolean v0, Lcom/apm/insight/runtime/p;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abcy;->m(Landroid/content/Context;)Lgbsdk/common/host/abcy;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abcy;->a()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/apm/insight/runtime/p;->c:Z

    :cond_0
    return-void
.end method

.method private static g(Z)V
    .locals 4

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    new-instance v1, Lcom/apm/insight/runtime/p$2;

    invoke-direct {v1, p0}, Lcom/apm/insight/runtime/p$2;-><init>(Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static h(Z)V
    .locals 3

    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {}, Lcom/apm/insight/runtime/a/f;->a()Lcom/apm/insight/runtime/a/f;

    invoke-static {}, Lcom/apm/insight/runtime/n;->a()Lcom/apm/insight/MonitorCrash;

    const-string v1, "Npth.initAsync-createCallbackThread"

    invoke-static {v1}, Lgbsdk/common/host/abeq;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->b()I

    move-result v1

    invoke-static {}, Lgbsdk/common/host/abeq;->a()V

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->c()V

    sget-boolean v2, Lcom/apm/insight/runtime/p;->e:Z

    if-eqz v2, :cond_0

    sget-object v1, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v2, "NativeLibraryLoad faild"

    :goto_0
    invoke-virtual {v1, v2}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-gez v1, :cond_1

    sget-object v1, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v2, "createCallbackThread faild"

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "Npth.initAsync-NpthDataManager"

    invoke-static {v1}, Lgbsdk/common/host/abeq;->a(Ljava/lang/String;)V

    invoke-static {}, Lgbsdk/common/host/abfm;->ab()Lgbsdk/common/host/abfm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgbsdk/common/host/abfm;->n(Landroid/content/Context;)V

    invoke-static {}, Lgbsdk/common/host/abeq;->a()V

    sget-object v1, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v1, "Npth.initAsync-LaunchScanner"

    invoke-static {v1}, Lgbsdk/common/host/abeq;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lgbsdk/common/host/abet;->n(Landroid/content/Context;)V

    invoke-static {}, Lgbsdk/common/host/abeq;->a()V

    if-eqz p0, :cond_2

    const-string v1, "Npth.initAsync-CrashANRHandler"

    invoke-static {v1}, Lgbsdk/common/host/abeq;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lgbsdk/common/host/abcy;->m(Landroid/content/Context;)Lgbsdk/common/host/abcy;

    move-result-object v1

    invoke-virtual {v1}, Lgbsdk/common/host/abcy;->a()V

    invoke-static {}, Lgbsdk/common/host/abeq;->a()V

    sput-boolean p0, Lcom/apm/insight/runtime/p;->c:Z

    :cond_2
    const-string v1, "Npth.initAsync-EventUploadQueue"

    invoke-static {v1}, Lgbsdk/common/host/abeq;->a(Ljava/lang/String;)V

    invoke-static {}, Lgbsdk/common/host/abex;->av()Lgbsdk/common/host/abex;

    move-result-object v1

    invoke-virtual {v1}, Lgbsdk/common/host/abex;->b()V

    invoke-static {}, Lgbsdk/common/host/abeq;->a()V

    const-string v1, "Npth.initAsync-BlockMonitor"

    invoke-static {v1}, Lgbsdk/common/host/abeq;->a(Ljava/lang/String;)V

    invoke-static {}, Lgbsdk/common/host/abeq;->a()V

    const-string v1, "Npth.initAsync-OriginExceptionMonitor"

    invoke-static {v1}, Lgbsdk/common/host/abeq;->a(Ljava/lang/String;)V

    invoke-static {}, Lgbsdk/common/host/abeq;->a()V

    invoke-static {}, Lgbsdk/common/host/abfz;->a()V

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->f()V

    :try_start_0
    const-string p0, "fastbot"

    invoke-virtual {v0, p0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abhp;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/apm/insight/runtime/p$3;

    invoke-direct {v0}, Lcom/apm/insight/runtime/p$3;-><init>()V

    invoke-static {p0, v0}, Lgbsdk/common/host/abcz;->a(Ljava/lang/String;Lgbsdk/common/host/abfn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    :cond_3
    :goto_2
    invoke-static {}, Lgbsdk/common/host/abht;->F()V

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->j()V

    const-string p0, "afterNpthInitAsync"

    const-string v0, "noValue"

    invoke-static {p0, v0}, Lcom/apm/insight/runtime/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lgbsdk/common/host/abge;->x:Z

    if-eqz p0, :cond_6

    :try_start_1
    invoke-static {}, Lgbsdk/common/host/abfg;->w()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-static {p0}, Lcom/apm/insight/runtime/a;->g(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    return-void

    :cond_5
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_6

    sget-object p0, Lgbsdk/common/host/abge;->ap:Landroid/app/Application;

    invoke-static {p0}, Lgbsdk/common/host/abeo;->a(Landroid/app/Application;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_6
    return-void
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lcom/apm/insight/runtime/p;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/apm/insight/runtime/p;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/apm/insight/nativecrash/NativeImpl;->a(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/apm/insight/runtime/p;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/apm/insight/runtime/p;->e:Z

    :cond_0
    sget-boolean v0, Lcom/apm/insight/runtime/p;->d:Z

    return v0
.end method

.method public static i()Z
    .locals 1

    invoke-static {}, Lgbsdk/common/host/abda;->c()Z

    move-result v0

    return v0
.end method

.method public static j()V
    .locals 1

    sget-boolean v0, Lcom/apm/insight/runtime/p;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abcy;->m(Landroid/content/Context;)Lgbsdk/common/host/abcy;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abcy;->b()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/apm/insight/runtime/p;->c:Z

    :cond_0
    return-void
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Lgbsdk/common/host/abfy;->i:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static l()Z
    .locals 1

    invoke-static {}, Lgbsdk/common/host/abfy;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static m()Z
    .locals 1

    sget-boolean v0, Lgbsdk/common/host/abfy;->i:Z

    return v0
.end method

.method public static n()Z
    .locals 1

    sget-boolean v0, Lcom/apm/insight/runtime/p;->h:Z

    return v0
.end method

.method public static o()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/apm/insight/runtime/p;->h:Z

    return-void
.end method

.method public static p()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lgbsdk/common/host/abge;->z:Z

    return-void
.end method

.method static synthetic q()Z
    .locals 1

    sget-boolean v0, Lcom/apm/insight/runtime/p;->g:Z

    return v0
.end method

.method private static r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
