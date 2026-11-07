.class public final Lgbsdk/common/host/abge;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/content/Context; = null

.field public static ap:Landroid/app/Application; = null

.field public static c:J = 0x0L

.field public static cX:Z = false

.field public static cZ:Z = false

.field public static d:Ljava/lang/String; = "default"

.field public static e:Z

.field public static ec:Lcom/apm/insight/runtime/d;

.field public static ed:Lcom/apm/insight/runtime/ConfigManager;

.field public static ee:Lgbsdk/common/host/abci;

.field private static ef:Lcom/apm/insight/runtime/u;

.field public static eg:Lcom/apm/applog/network/INetworkClient;

.field public static eh:Ljava/lang/String;

.field public static volatile i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile k:Ljava/lang/String;

.field private static l:Ljava/lang/Object;

.field public static volatile m:I

.field public static volatile n:Ljava/lang/String;

.field public static o:I

.field public static q:I

.field public static r:Z

.field public static s:Z

.field public static t:Z

.field public static u:Z

.field public static v:Z

.field public static x:Z

.field public static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/apm/insight/runtime/ConfigManager;

    invoke-direct {v0}, Lcom/apm/insight/runtime/ConfigManager;-><init>()V

    sput-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v0, Lgbsdk/common/host/abci;

    invoke-direct {v0}, Lgbsdk/common/host/abci;-><init>()V

    sput-object v0, Lgbsdk/common/host/abge;->ee:Lgbsdk/common/host/abci;

    const/4 v0, 0x0

    sput-object v0, Lgbsdk/common/host/abge;->ef:Lcom/apm/insight/runtime/u;

    sput-object v0, Lgbsdk/common/host/abge;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lgbsdk/common/host/abge;->l:Ljava/lang/Object;

    const/4 v1, 0x0

    sput v1, Lgbsdk/common/host/abge;->m:I

    sput v1, Lgbsdk/common/host/abge;->o:I

    sput-object v0, Lgbsdk/common/host/abge;->eg:Lcom/apm/applog/network/INetworkClient;

    sget-object v2, Lcom/apm/insight/ExitType;->NONE:Lcom/apm/insight/ExitType;

    iget v2, v2, Lcom/apm/insight/ExitType;->type:I

    sput v2, Lgbsdk/common/host/abge;->q:I

    sput-boolean v1, Lgbsdk/common/host/abge;->r:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_1

    invoke-static {}, Lgbsdk/common/host/abhq;->c()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    sput-boolean v2, Lgbsdk/common/host/abge;->s:Z

    sput-boolean v3, Lgbsdk/common/host/abge;->t:Z

    sput-boolean v3, Lgbsdk/common/host/abge;->u:Z

    sput-boolean v1, Lgbsdk/common/host/abge;->v:Z

    sput-boolean v3, Lgbsdk/common/host/abge;->cX:Z

    sput-boolean v1, Lgbsdk/common/host/abge;->x:Z

    sput-boolean v3, Lgbsdk/common/host/abge;->cZ:Z

    sput-boolean v3, Lgbsdk/common/host/abge;->z:Z

    sput-object v0, Lgbsdk/common/host/abge;->eh:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Lgbsdk/common/host/abez;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lgbsdk/common/host/abez;"
        }
    .end annotation

    sget-object v0, Lgbsdk/common/host/abge;->eg:Lcom/apm/applog/network/INetworkClient;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lgbsdk/common/host/abey;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lgbsdk/common/host/abev;

    invoke-direct {v0, p0, p1, p2, p3}, Lgbsdk/common/host/abev;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lgbsdk/common/host/abew;

    invoke-direct {v0, p0, p1, p2, p3}, Lgbsdk/common/host/abew;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-object v0
.end method

.method public static a(JLcom/apm/insight/CrashType;ZZ)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/apm/insight/CrashType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "normal_"

    if-eqz p3, :cond_0

    const-string p2, "oom_"

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p2, Lgbsdk/common/host/abge;->c:J

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    const-string p1, "ignore_"

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "G"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lgbsdk/common/host/abge;->i:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    const-class v0, Lgbsdk/common/host/abge;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgbsdk/common/host/abge;->i:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lgbsdk/common/host/abge;->i:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abge;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/app/Application;Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lgbsdk/common/host/abge;->ap:Landroid/app/Application;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lgbsdk/common/host/abge;->c:J

    sput-object p1, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    sput-object p0, Lgbsdk/common/host/abge;->ap:Landroid/app/Application;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "G"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lgbsdk/common/host/abge;->k:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Application;Landroid/content/Context;Lcom/apm/insight/ICommonParams;)V
    .locals 1

    invoke-static {p0, p1}, Lgbsdk/common/host/abge;->a(Landroid/app/Application;Landroid/content/Context;)V

    new-instance p0, Lcom/apm/insight/runtime/d;

    sget-object p1, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {}, Lgbsdk/common/host/abge;->ag()Lcom/apm/insight/runtime/d;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/apm/insight/runtime/d;-><init>(Landroid/content/Context;Lcom/apm/insight/ICommonParams;Lcom/apm/insight/runtime/d;)V

    sput-object p0, Lgbsdk/common/host/abge;->ec:Lcom/apm/insight/runtime/d;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/apm/insight/ICommonParams;)V
    .locals 3

    const-class v0, Lgbsdk/common/host/abge;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgbsdk/common/host/abge;->ap:Landroid/app/Application;

    if-eqz v1, :cond_0

    sget-object v1, Lgbsdk/common/host/abge;->ap:Landroid/app/Application;

    goto :goto_0

    :cond_0
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u521d\u59cb\u5316\u65f6\u4f20\u5165\u7684Application\u8fd8\u672aattach, \u8bf7\u5728init\u65f6\u4f20\u5165attachBaseContext\u7684\u53c2\u6570, \u5e76\u5728init\u4e4b\u524d\u624b\u52a8\u8c03\u7528Npth.setApplication(Application)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
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

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-static {v1, p0, p1}, Lgbsdk/common/host/abge;->a(Landroid/app/Application;Landroid/content/Context;Lcom/apm/insight/ICommonParams;)V
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

.method public static ag()Lcom/apm/insight/runtime/d;
    .locals 1

    sget-object v0, Lgbsdk/common/host/abge;->ec:Lcom/apm/insight/runtime/d;

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/apm/insight/runtime/j;->a(Landroid/content/Context;)Lcom/apm/insight/runtime/d;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abge;->ec:Lcom/apm/insight/runtime/d;

    :cond_0
    sget-object v0, Lgbsdk/common/host/abge;->ec:Lcom/apm/insight/runtime/d;

    return-object v0
.end method

.method public static ah()Lcom/apm/insight/runtime/u;
    .locals 3

    sget-object v0, Lgbsdk/common/host/abge;->ef:Lcom/apm/insight/runtime/u;

    if-nez v0, :cond_0

    const-class v0, Lgbsdk/common/host/abge;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/apm/insight/runtime/u;

    sget-object v2, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/apm/insight/runtime/u;-><init>(Landroid/content/Context;)V

    sput-object v1, Lgbsdk/common/host/abge;->ef:Lcom/apm/insight/runtime/u;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lgbsdk/common/host/abge;->ef:Lcom/apm/insight/runtime/u;

    return-object v0
.end method

.method public static ai()Lcom/apm/applog/network/INetworkClient;
    .locals 1

    sget-object v0, Lgbsdk/common/host/abge;->eg:Lcom/apm/applog/network/INetworkClient;

    if-nez v0, :cond_0

    new-instance v0, Lgbsdk/common/host/abey;

    invoke-direct {v0}, Lgbsdk/common/host/abey;-><init>()V

    sput-object v0, Lgbsdk/common/host/abge;->eg:Lcom/apm/applog/network/INetworkClient;

    :cond_0
    sget-object v0, Lgbsdk/common/host/abge;->eg:Lcom/apm/applog/network/INetworkClient;

    return-object v0
.end method

.method public static aj()Z
    .locals 1

    invoke-static {}, Lcom/apm/applog/AppLog;->isEnableDeviceModel()Z

    move-result v0

    return v0
.end method

.method public static ak()Z
    .locals 1

    invoke-static {}, Lcom/apm/applog/AppLog;->isEnableDisplay()Z

    move-result v0

    return v0
.end method

.method public static al()Z
    .locals 1

    invoke-static {}, Lcom/apm/applog/AppLog;->isEnableActivityInfo()Z

    move-result v0

    return v0
.end method

.method public static am()Z
    .locals 1

    invoke-static {}, Lcom/apm/applog/AppLog;->isEnableOsVersion()Z

    move-result v0

    return v0
.end method

.method public static an()Z
    .locals 1

    invoke-static {}, Lcom/apm/applog/AppLog;->isEnableLocation()Z

    move-result v0

    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(ILjava/lang/String;)V
    .locals 0

    sput p0, Lgbsdk/common/host/abge;->m:I

    sput-object p1, Lgbsdk/common/host/abge;->n:Ljava/lang/String;

    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 4

    sget-object v0, Lgbsdk/common/host/abge;->k:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lgbsdk/common/host/abge;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgbsdk/common/host/abge;->k:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "U"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lgbsdk/common/host/abge;->k:Ljava/lang/String;

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
    sget-object v0, Lgbsdk/common/host/abge;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static k(Z)V
    .locals 0

    if-eqz p0, :cond_0

    sget-boolean p0, Lgbsdk/common/host/abge;->s:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lgbsdk/common/host/abge;->s:Z

    return-void
.end method
