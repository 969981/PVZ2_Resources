.class public final Lgbsdk/common/host/abrx$1;
.super Ljava/lang/Object;
.source "ThreadMonitorManager.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abrx;->a(Landroid/os/HandlerThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field zH:J

.field zI:J

.field zJ:J

.field zK:J

.field final synthetic zL:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/os/HandlerThread;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lgbsdk/common/host/abrx$1;->zL:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abrx$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "63b56db708ea05189ebe46bcfac59310"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, ">>>>> Dispatching"

    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lgbsdk/common/host/abrx$1;->zH:J

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lgbsdk/common/host/abrx$1;->zI:J

    goto :goto_0

    :cond_1
    const-string v1, "<<<<< Finished"

    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lgbsdk/common/host/abrx$1;->zJ:J

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lgbsdk/common/host/abrx$1;->zK:J

    .line 98
    iget-object p1, p0, Lgbsdk/common/host/abrx$1;->zL:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object p1

    .line 99
    sget-object v1, Lgbsdk/common/host/abrx;->zD:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abrv;

    if-nez v1, :cond_2

    .line 101
    new-instance v1, Lgbsdk/common/host/abrv;

    invoke-direct {v1, p1}, Lgbsdk/common/host/abrv;-><init>(Ljava/lang/String;)V

    .line 102
    sget-object v2, Lgbsdk/common/host/abrx;->zD:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_2
    iget p1, v1, Lgbsdk/common/host/abrv;->zt:I

    add-int/2addr p1, v0

    iput p1, v1, Lgbsdk/common/host/abrv;->zt:I

    .line 105
    iget-wide v2, v1, Lgbsdk/common/host/abrv;->zr:J

    iget-wide v4, p0, Lgbsdk/common/host/abrx$1;->zJ:J

    iget-wide v6, p0, Lgbsdk/common/host/abrx$1;->zH:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lgbsdk/common/host/abrv;->zr:J

    .line 106
    iget-wide v2, v1, Lgbsdk/common/host/abrv;->zs:J

    iget-wide v4, p0, Lgbsdk/common/host/abrx$1;->zK:J

    iget-wide v6, p0, Lgbsdk/common/host/abrx$1;->zI:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lgbsdk/common/host/abrv;->zs:J

    :cond_3
    :goto_0
    return-void
.end method
