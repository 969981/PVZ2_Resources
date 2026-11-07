.class public Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;
.super Ljava/lang/Object;
.source "TTGameDiagnosisService.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;


# instance fields
.field private volatile mIsMonitoring:Z

.field private mRequest:Lcom/bytedance/ttnet/diagnosis/IDiagnosisRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->sInstance:Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->mRequest:Lcom/bytedance/ttnet/diagnosis/IDiagnosisRequest;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->mIsMonitoring:Z

    return-void
.end method

.method public static inst()Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;
    .locals 2

    .line 28
    sget-object v0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->sInstance:Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->sInstance:Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;

    invoke-direct {v1}, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;-><init>()V

    sput-object v1, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->sInstance:Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;

    .line 33
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->sInstance:Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;

    return-object v0
.end method


# virtual methods
.method public doDiagnosisDuringGaming(Ljava/lang/String;)V
    .locals 2

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->mIsMonitoring:Z

    if-nez v0, :cond_0

    .line 85
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->mRequest:Lcom/bytedance/ttnet/diagnosis/IDiagnosisRequest;

    const-string v1, "diagnosis"

    invoke-interface {v0, v1, p1}, Lcom/bytedance/ttnet/diagnosis/IDiagnosisRequest;->doExtraCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isMonitoring()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->mIsMonitoring:Z

    return v0
.end method

.method public monitorBegin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->mIsMonitoring:Z

    if-eqz v0, :cond_0

    .line 47
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    const v2, 0x7fffffff

    .line 49
    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/ttnet/diagnosis/TTNetDiagnosisService;->createRequest(ILjava/lang/String;II)Lcom/bytedance/ttnet/diagnosis/IDiagnosisRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->mRequest:Lcom/bytedance/ttnet/diagnosis/IDiagnosisRequest;

    .line 50
    new-instance v0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService$1;

    invoke-direct {v0, p0}, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService$1;-><init>(Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;)V

    invoke-interface {p1, v0}, Lcom/bytedance/ttnet/diagnosis/IDiagnosisRequest;->start(Lcom/bytedance/ttnet/diagnosis/IDiagnosisCallback;)V

    .line 58
    iget-object p1, p0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->mRequest:Lcom/bytedance/ttnet/diagnosis/IDiagnosisRequest;

    const-string v0, "extra_info"

    invoke-interface {p1, v0, p2}, Lcom/bytedance/ttnet/diagnosis/IDiagnosisRequest;->doExtraCommand(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->mIsMonitoring:Z

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public monitorEnd()V
    .locals 3

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->mIsMonitoring:Z

    if-nez v0, :cond_0

    .line 69
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->mRequest:Lcom/bytedance/ttnet/diagnosis/IDiagnosisRequest;

    const-string v1, "finish"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/bytedance/ttnet/diagnosis/IDiagnosisRequest;->doExtraCommand(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->mIsMonitoring:Z

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
