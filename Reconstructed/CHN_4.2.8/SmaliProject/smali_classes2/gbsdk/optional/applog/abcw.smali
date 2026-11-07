.class public Lgbsdk/optional/applog/abcw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lgbsdk/optional/applog/abct;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abct;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abcw;->a:Lgbsdk/optional/applog/abct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lgbsdk/optional/applog/abcw;->a:Lgbsdk/optional/applog/abct;

    .line 1
    iget-object v2, v2, Lgbsdk/optional/applog/abct;->a:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x6

    const-string v3, "openudid"

    const-string v4, "clientudid"

    const-string v5, "serial_number"

    const-string v6, "sim_serial_number"

    const-string v7, "udid"

    const-string v8, "device_id"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_0

    aget-object v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v6, p0, Lgbsdk/optional/applog/abcw;->a:Lgbsdk/optional/applog/abct;

    iget-object v7, p0, Lgbsdk/optional/applog/abcw;->a:Lgbsdk/optional/applog/abct;

    .line 3
    iget-object v7, v7, Lgbsdk/optional/applog/abct;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5
    invoke-virtual {v6, v7, v5}, Lgbsdk/optional/applog/abct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 6
    :try_start_2
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v7, "DeprecatedFileCleaner execute failed"

    :try_start_3
    new-array v8, v0, [Ljava/lang/Object;

    invoke-interface {v6, v7, v5, v8}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    :cond_1
    return-void
.end method
