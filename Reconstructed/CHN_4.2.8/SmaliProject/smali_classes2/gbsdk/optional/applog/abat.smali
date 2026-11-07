.class public Lgbsdk/optional/applog/abat;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/bytedance/applog/log/IAppLogLogger;

.field public final b:Ljava/lang/String;

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/log/IAppLogLogger;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgbsdk/optional/applog/abat;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgbsdk/optional/applog/abat;->d:J

    iput-object p1, p0, Lgbsdk/optional/applog/abat;->a:Lcom/bytedance/applog/log/IAppLogLogger;

    iput-object p2, p0, Lgbsdk/optional/applog/abat;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 4

    iput-wide p1, p0, Lgbsdk/optional/applog/abat;->c:J

    iget-object v0, p0, Lgbsdk/optional/applog/abat;->a:Lcom/bytedance/applog/log/IAppLogLogger;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lgbsdk/optional/applog/abat;->b:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x4

    const-string p2, "[DurationEvent:{}] Start at:{}"

    invoke-interface {v0, p1, p2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Lgbsdk/optional/applog/abat;->c:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    invoke-virtual {p0, p1, p2}, Lgbsdk/optional/applog/abat;->a(J)V

    iget-object v0, p0, Lgbsdk/optional/applog/abat;->a:Lcom/bytedance/applog/log/IAppLogLogger;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lgbsdk/optional/applog/abat;->b:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x4

    const-string p2, "[DurationEvent:{}] Resume at:{}"

    invoke-interface {v0, p1, p2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-wide v2, p0, Lgbsdk/optional/applog/abat;->c:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    iget-object v0, p0, Lgbsdk/optional/applog/abat;->a:Lcom/bytedance/applog/log/IAppLogLogger;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lgbsdk/optional/applog/abat;->b:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x4

    const-string v3, "[DurationEvent:{}] Pause at:{}"

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-wide v0, p0, Lgbsdk/optional/applog/abat;->d:J

    iget-wide v2, p0, Lgbsdk/optional/applog/abat;->c:J

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    :goto_0
    iget-wide v2, p0, Lgbsdk/optional/applog/abat;->c:J

    sub-long/2addr p1, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lgbsdk/optional/applog/abat;->d:J

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lgbsdk/optional/applog/abat;->c:J

    :cond_2
    return-void
.end method
