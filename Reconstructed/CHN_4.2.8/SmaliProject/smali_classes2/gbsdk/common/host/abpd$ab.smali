.class public Lgbsdk/common/host/abpd$ab;
.super Landroid/os/HandlerThread;
.source "PlatformHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abpd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private volatile yI:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 223
    iput-boolean p1, p0, Lgbsdk/common/host/abpd$ab;->yI:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 230
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 223
    iput-boolean p1, p0, Lgbsdk/common/host/abpd$ab;->yI:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abpd$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "97ef4ce681010d0abbba2ac69e2246b5"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 235
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lgbsdk/common/host/abpd$ab;->yI:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 236
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 238
    :try_start_2
    iput-boolean v0, p0, Lgbsdk/common/host/abpd$ab;->yI:Z

    .line 239
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
