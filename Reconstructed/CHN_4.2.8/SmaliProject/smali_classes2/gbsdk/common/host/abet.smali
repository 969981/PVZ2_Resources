.class public final Lgbsdk/common/host/abet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/abet;->a:Landroid/content/Context;

    return-void
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, Lgbsdk/common/host/abef;->at()Lgbsdk/common/host/abef;

    move-result-object v0

    iget-boolean v0, v0, Lgbsdk/common/host/abef;->h:Z

    if-nez v0, :cond_1

    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abhp;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

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

.method public static b(Landroid/content/Context;I)V
    .locals 2

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    new-instance v1, Lgbsdk/common/host/abet;

    invoke-direct {v1, p0}, Lgbsdk/common/host/abet;-><init>(Landroid/content/Context;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgbsdk/common/host/abet;->b(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lgbsdk/common/host/abcy;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    iget-object v0, p0, Lgbsdk/common/host/abet;->a:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abhp;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lgbsdk/common/host/abef;->at()Lgbsdk/common/host/abef;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abet;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/apm/common/utility/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abef;->a(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    invoke-static {}, Lcom/apm/insight/runtime/t;->a()Lcom/apm/insight/runtime/t;

    move-result-object v0

    invoke-static {}, Lgbsdk/common/host/abge;->ag()Lcom/apm/insight/runtime/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/d;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lgbsdk/common/host/abfk;->ae()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/apm/insight/runtime/t;->a(Ljava/util/Map;Lorg/json/JSONArray;)V

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/v;->a()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    if-eqz v0, :cond_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lgbsdk/common/host/abia;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {}, Lcom/apm/insight/runtime/t;->a()Lcom/apm/insight/runtime/t;

    move-result-object v0

    invoke-static {}, Lgbsdk/common/host/abge;->ag()Lcom/apm/insight/runtime/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/d;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lgbsdk/common/host/abfk;->ae()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/apm/insight/runtime/t;->a(Ljava/util/Map;Lorg/json/JSONArray;)V

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/v;->a()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/v;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abet;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lgbsdk/common/host/abee;->a(Landroid/os/Handler;Landroid/content/Context;)Lgbsdk/common/host/abee;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abee;->a()V

    :cond_1
    return-void

    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/apm/insight/runtime/t;->a()Lcom/apm/insight/runtime/t;

    move-result-object v1

    invoke-static {}, Lgbsdk/common/host/abge;->ag()Lcom/apm/insight/runtime/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apm/insight/runtime/d;->b()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lgbsdk/common/host/abfk;->ae()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/apm/insight/runtime/t;->a(Ljava/util/Map;Lorg/json/JSONArray;)V

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/v;->a()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/v;->a()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lgbsdk/common/host/abet;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lgbsdk/common/host/abee;->a(Landroid/os/Handler;Landroid/content/Context;)Lgbsdk/common/host/abee;

    move-result-object v1

    invoke-virtual {v1}, Lgbsdk/common/host/abee;->a()V

    :cond_2
    throw v0
.end method
