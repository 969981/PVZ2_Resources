.class public Lcom/volcengine/zeus/apm/ApmUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile sApm:Lcom/volcengine/zeus/apm/AbsApm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApmInstance()Lcom/volcengine/zeus/apm/AbsApm;
    .locals 2

    .line 23
    sget-object v0, Lcom/volcengine/zeus/apm/ApmUtils;->sApm:Lcom/volcengine/zeus/apm/AbsApm;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lcom/volcengine/zeus/apm/AbsApm;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/volcengine/zeus/apm/ApmUtils;->sApm:Lcom/volcengine/zeus/apm/AbsApm;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lgbsdk/common/host/abve;

    invoke-direct {v1}, Lgbsdk/common/host/abve;-><init>()V

    sput-object v1, Lcom/volcengine/zeus/apm/ApmUtils;->sApm:Lcom/volcengine/zeus/apm/AbsApm;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lcom/volcengine/zeus/apm/ApmUtils;->sApm:Lcom/volcengine/zeus/apm/AbsApm;

    return-object v0
.end method
