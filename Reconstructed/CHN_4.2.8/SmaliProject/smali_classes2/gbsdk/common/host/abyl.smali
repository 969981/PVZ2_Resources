.class public Lgbsdk/common/host/abyl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile aLJ:Lgbsdk/common/host/abyl;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abyl;->b:Ljava/util/List;

    .line 27
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lgbsdk/common/host/abyl$1;

    invoke-direct {v1, p0}, Lgbsdk/common/host/abyl$1;-><init>(Lgbsdk/common/host/abyl;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/abyl;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lgbsdk/common/host/abyl;->b:Ljava/util/List;

    return-object p0
.end method

.method public static hM()Lgbsdk/common/host/abyl;
    .locals 2

    .line 38
    sget-object v0, Lgbsdk/common/host/abyl;->aLJ:Lgbsdk/common/host/abyl;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lgbsdk/common/host/abyl;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abyl;->aLJ:Lgbsdk/common/host/abyl;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lgbsdk/common/host/abyl;

    invoke-direct {v1}, Lgbsdk/common/host/abyl;-><init>()V

    sput-object v1, Lgbsdk/common/host/abyl;->aLJ:Lgbsdk/common/host/abyl;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abyl;->aLJ:Lgbsdk/common/host/abyl;

    return-object v0
.end method


# virtual methods
.method public final i(Ljava/lang/String;Z)V
    .locals 1

    .line 49
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abxz;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {}, Lcom/volcengine/zeus/GlobalParam;->getInstance()Lcom/volcengine/zeus/GlobalParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/volcengine/zeus/GlobalParam;->autoFetch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lgbsdk/common/host/abyo;->hN()Lgbsdk/common/host/abyo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abyo;->a(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lgbsdk/common/host/abyo;->hN()Lgbsdk/common/host/abyo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgbsdk/common/host/abyo;->i(Ljava/lang/String;Z)V

    .line 57
    iget-object p2, p0, Lgbsdk/common/host/abyl;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 58
    iget-object p2, p0, Lgbsdk/common/host/abyl;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 61
    :cond_0
    invoke-static {}, Lgbsdk/common/host/abyo;->hN()Lgbsdk/common/host/abyo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgbsdk/common/host/abyo;->i(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
