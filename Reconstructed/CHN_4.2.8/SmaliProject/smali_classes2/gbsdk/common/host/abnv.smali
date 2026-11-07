.class public Lgbsdk/common/host/abnv;
.super Lgbsdk/common/host/abhd$ab;
.source "QueryFilterStateListener.java"


# static fields
.field private static volatile um:Lgbsdk/common/host/abnv;


# instance fields
.field public un:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Lgbsdk/common/host/abhd$ab;-><init>(I)V

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lgbsdk/common/host/abnv;->un:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static cO()Lgbsdk/common/host/abnv;
    .locals 3

    .line 16
    sget-object v0, Lgbsdk/common/host/abnv;->um:Lgbsdk/common/host/abnv;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lgbsdk/common/host/abnv;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abnv;->um:Lgbsdk/common/host/abnv;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lgbsdk/common/host/abnv;

    const/16 v2, 0x7530

    invoke-direct {v1, v2}, Lgbsdk/common/host/abnv;-><init>(I)V

    sput-object v1, Lgbsdk/common/host/abnv;->um:Lgbsdk/common/host/abnv;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abnv;->um:Lgbsdk/common/host/abnv;

    return-object v0
.end method


# virtual methods
.method public aN()V
    .locals 2

    .line 36
    iget-object v0, p0, Lgbsdk/common/host/abnv;->un:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "QueryFilterStateListener"

    const-string v1, "onEnterToForeground"

    .line 38
    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public aO()V
    .locals 2

    .line 44
    iget-object v0, p0, Lgbsdk/common/host/abnv;->un:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 45
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "QueryFilterStateListener"

    const-string v1, "onEnterToBackground"

    .line 46
    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public s(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "qf_enter_background_time"

    const/16 v1, 0x7530

    .line 31
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lgbsdk/common/host/abhd$ab;->fX:I

    return-void
.end method
