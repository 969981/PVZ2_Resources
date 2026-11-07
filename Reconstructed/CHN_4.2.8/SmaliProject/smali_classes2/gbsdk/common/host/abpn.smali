.class public final Lgbsdk/common/host/abpn;
.super Ljava/lang/Object;
.source "BackgroundThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field private static final DEFAULT_PRIORITY:I = 0xa

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final name:Ljava/lang/String;

.field final yh:Lgbsdk/common/host/abry;

.field private yi:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lgbsdk/common/host/abpn;-><init>(Ljava/lang/String;Lgbsdk/common/host/abry;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lgbsdk/common/host/abry;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lgbsdk/common/host/abpn;->name:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lgbsdk/common/host/abpn;->yh:Lgbsdk/common/host/abry;

    return-void
.end method


# virtual methods
.method public declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abpn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "08549a124e49ad9057355a41b8998813"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 23
    :cond_0
    :try_start_1
    new-instance v1, Lgbsdk/common/host/abpn$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgbsdk/common/host/abpn;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-thread-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lgbsdk/common/host/abpn;->yi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lgbsdk/common/host/abpn$1;-><init>(Lgbsdk/common/host/abpn;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 38
    iget p1, p0, Lgbsdk/common/host/abpn;->yi:I

    add-int/2addr p1, v0

    iput p1, p0, Lgbsdk/common/host/abpn;->yi:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
