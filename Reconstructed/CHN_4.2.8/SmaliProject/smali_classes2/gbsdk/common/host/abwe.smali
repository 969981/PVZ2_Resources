.class public Lgbsdk/common/host/abwe;
.super Ljava/lang/Object;
.source "TTNetDiagnosisRequest.java"

# interfaces
.implements Lcom/bytedance/ttnet/diagnosis/IDiagnosisRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abwe$ab;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final aIm:Ljava/lang/String; = "org.chromium.diagnosis.CronetDiagnosisRequestImpl"


# instance fields
.field public aIn:Lcom/bytedance/ttnet/diagnosis/IDiagnosisCallback;

.field private aIo:I

.field private aIp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aIq:I

.field private aIr:Ljava/lang/String;

.field private aIs:Lcom/bytedance/frameworks/baselib/network/http/cronet/diagnosis/ICronetDiagnosisRequest$Callback;

.field private aIt:Lcom/bytedance/frameworks/baselib/network/http/cronet/diagnosis/ICronetDiagnosisRequest;

.field private mCanceled:Z

.field private mStarted:Z

.field private mTimeoutMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lgbsdk/common/host/abwe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abwe;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lgbsdk/common/host/abwe$ab;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abwe$ab;-><init>(Lgbsdk/common/host/abwe;)V

    iput-object v0, p0, Lgbsdk/common/host/abwe;->aIs:Lcom/bytedance/frameworks/baselib/network/http/cronet/diagnosis/ICronetDiagnosisRequest$Callback;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lgbsdk/common/host/abwe;->mStarted:Z

    .line 36
    iput-boolean v0, p0, Lgbsdk/common/host/abwe;->mCanceled:Z

    .line 37
    iput p1, p0, Lgbsdk/common/host/abwe;->aIo:I

    .line 38
    iput-object p2, p0, Lgbsdk/common/host/abwe;->aIp:Ljava/util/List;

    .line 39
    iput p3, p0, Lgbsdk/common/host/abwe;->aIq:I

    .line 40
    iput p4, p0, Lgbsdk/common/host/abwe;->mTimeoutMs:I

    .line 41
    invoke-direct {p0}, Lgbsdk/common/host/abwe;->ho()V

    return-void
.end method

.method private cB(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 63
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private ho()V
    .locals 9

    .line 45
    iget-object v0, p0, Lgbsdk/common/host/abwe;->aIt:Lcom/bytedance/frameworks/baselib/network/http/cronet/diagnosis/ICronetDiagnosisRequest;

    if-nez v0, :cond_1

    const-string v0, "org.chromium.diagnosis.CronetDiagnosisRequestImpl"

    .line 46
    invoke-direct {p0, v0}, Lgbsdk/common/host/abwe;->cB(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Class;

    .line 51
    const-class v3, Lcom/bytedance/frameworks/baselib/network/http/cronet/diagnosis/ICronetDiagnosisRequest$Callback;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/util/List;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lgbsdk/common/host/abwe;->aIs:Lcom/bytedance/frameworks/baselib/network/http/cronet/diagnosis/ICronetDiagnosisRequest$Callback;

    aput-object v2, v1, v4

    iget v2, p0, Lgbsdk/common/host/abwe;->aIo:I

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lgbsdk/common/host/abwe;->aIp:Ljava/util/List;

    aput-object v2, v1, v6

    iget v2, p0, Lgbsdk/common/host/abwe;->aIq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    iget v2, p0, Lgbsdk/common/host/abwe;->mTimeoutMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    instance-of v1, v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/diagnosis/ICronetDiagnosisRequest;

    if-eqz v1, :cond_1

    .line 56
    check-cast v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/diagnosis/ICronetDiagnosisRequest;

    iput-object v0, p0, Lgbsdk/common/host/abwe;->aIt:Lcom/bytedance/frameworks/baselib/network/http/cronet/diagnosis/ICronetDiagnosisRequest;

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/ClassNotFoundException;

    const-string v1, "org.chromium.diagnosis.CronetDiagnosisRequestImpl class not found"

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lgbsdk/common/host/abwe;->mStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lgbsdk/common/host/abwe;->mCanceled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abwe;->aIt:Lcom/bytedance/frameworks/baselib/network/http/cronet/diagnosis/ICronetDiagnosisRequest;

    invoke-interface {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/diagnosis/ICronetDiagnosisRequest;->cancel()V

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lgbsdk/common/host/abwe;->mCanceled:Z

    .line 94
    monitor-exit p0

    return-void

    .line 90
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doExtraCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-boolean v0, p0, Lgbsdk/common/host/abwe;->mStarted:Z

    if-nez v0, :cond_0

    .line 101
    monitor-exit p0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abwe;->aIt:Lcom/bytedance/frameworks/baselib/network/http/cronet/diagnosis/ICronetDiagnosisRequest;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/diagnosis/ICronetDiagnosisRequest;->doExtraCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setUserExtraInfo(Ljava/lang/String;)V
    .locals 1

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iput-object p1, p0, Lgbsdk/common/host/abwe;->aIr:Ljava/lang/String;

    const-string v0, "extra_info"

    .line 111
    invoke-virtual {p0, v0, p1}, Lgbsdk/common/host/abwe;->doExtraCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start(Lcom/bytedance/ttnet/diagnosis/IDiagnosisCallback;)V
    .locals 1

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lgbsdk/common/host/abwe;->mStarted:Z

    if-eqz v0, :cond_0

    .line 74
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    iput-object p1, p0, Lgbsdk/common/host/abwe;->aIn:Lcom/bytedance/ttnet/diagnosis/IDiagnosisCallback;

    .line 77
    iget-object p1, p0, Lgbsdk/common/host/abwe;->aIt:Lcom/bytedance/frameworks/baselib/network/http/cronet/diagnosis/ICronetDiagnosisRequest;

    invoke-interface {p1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/diagnosis/ICronetDiagnosisRequest;->start()V

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lgbsdk/common/host/abwe;->mStarted:Z

    .line 80
    iget-object p1, p0, Lgbsdk/common/host/abwe;->aIr:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lgbsdk/common/host/abwe;->aIr:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "extra_info"

    .line 81
    iget-object v0, p0, Lgbsdk/common/host/abwe;->aIr:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lgbsdk/common/host/abwe;->doExtraCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
