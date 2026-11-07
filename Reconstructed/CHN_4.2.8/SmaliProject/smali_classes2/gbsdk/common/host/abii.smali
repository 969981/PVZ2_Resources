.class public Lgbsdk/common/host/abii;
.super Ljava/lang/Object;
.source "OkHttp3AppMonitor.java"

# interfaces
.implements Lgbsdk/common/host/abll$ab;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mj:Lgbsdk/common/host/abll;

.field private mk:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lgbsdk/common/host/abii;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abii;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lgbsdk/common/host/abll;

    invoke-direct {v0}, Lgbsdk/common/host/abll;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abii;->mj:Lgbsdk/common/host/abll;

    .line 18
    new-instance v0, Lgbsdk/common/host/abii$1;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abii$1;-><init>(Lgbsdk/common/host/abii;)V

    iput-object v0, p0, Lgbsdk/common/host/abii;->mk:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private F(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lgbsdk/common/host/abii;->mk:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    sget-object p1, Lgbsdk/common/host/abii;->TAG:Ljava/lang/String;

    const-string v0, "register network state changed completed"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private G(Landroid/content/Context;)V
    .locals 2

    .line 55
    sget-object v0, Lgbsdk/common/host/abii;->TAG:Ljava/lang/String;

    const-string v1, "register activity forground and background switch Callback"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 57
    check-cast p1, Landroid/app/Application;

    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lgbsdk/common/host/abii;->mj:Lgbsdk/common/host/abll;

    iput-object p0, v0, Lgbsdk/common/host/abll;->qy:Lgbsdk/common/host/abll$ab;

    .line 60
    iget-object v0, p0, Lgbsdk/common/host/abii;->mj:Lgbsdk/common/host/abll;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public E(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lgbsdk/common/host/abii;->F(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0, p1}, Lgbsdk/common/host/abii;->G(Landroid/content/Context;)V

    return-void
.end method

.method public aN()V
    .locals 1

    .line 33
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/ablz;->onResume()V

    return-void
.end method

.method public aO()V
    .locals 0

    return-void
.end method
