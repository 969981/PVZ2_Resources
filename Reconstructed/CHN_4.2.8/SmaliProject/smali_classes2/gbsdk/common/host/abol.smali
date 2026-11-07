.class public Lgbsdk/common/host/abol;
.super Ljava/lang/Object;
.source "DefaultLogSendImpl.java"

# interfaces
.implements Lgbsdk/common/host/abog;


# instance fields
.field volatile b:J

.field c:Z

.field d:I

.field volatile dt:J

.field e:Landroid/content/Context;

.field f:Ljava/lang/String;

.field g:I

.field volatile h:J

.field j:Ljava/lang/String;

.field private k:Z

.field uC:Lgbsdk/common/host/abmm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lgbsdk/common/host/abol;->k:Z

    .line 46
    iput-object p2, p0, Lgbsdk/common/host/abol;->f:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lgbsdk/common/host/abol;->e:Landroid/content/Context;

    .line 48
    new-instance v4, Lgbsdk/common/host/abol$1;

    invoke-direct {v4, p0, p2}, Lgbsdk/common/host/abol$1;-><init>(Lgbsdk/common/host/abol;Ljava/lang/String;)V

    .line 86
    new-instance v5, Lgbsdk/common/host/abol$2;

    invoke-direct {v5, p0, p2}, Lgbsdk/common/host/abol$2;-><init>(Lgbsdk/common/host/abol;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lgbsdk/common/host/abol$3;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, v0

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lgbsdk/common/host/abol$3;-><init>(Lgbsdk/common/host/abol;Landroid/content/Context;Lgbsdk/common/host/abmm$ac;Lgbsdk/common/host/abmm$ad;Ljava/lang/String;)V

    iput-object v0, p0, Lgbsdk/common/host/abol;->uC:Lgbsdk/common/host/abmm;

    return-void
.end method

.method private F()V
    .locals 2

    .line 265
    iget-boolean v0, p0, Lgbsdk/common/host/abol;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abol;->a()V

    .line 269
    iget-object v0, p0, Lgbsdk/common/host/abol;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->setStopCollect(Z)V

    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/abol;)J
    .locals 2

    .line 27
    invoke-direct {p0}, Lgbsdk/common/host/abol;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method private a()V
    .locals 5

    .line 194
    iget-boolean v0, p0, Lgbsdk/common/host/abol;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget v0, p0, Lgbsdk/common/host/abol;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-wide/32 v2, 0x493e0

    .line 198
    iput-wide v2, p0, Lgbsdk/common/host/abol;->b:J

    .line 199
    iget v0, p0, Lgbsdk/common/host/abol;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lgbsdk/common/host/abol;->d:I

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    const-wide/32 v2, 0xdbba0

    .line 201
    iput-wide v2, p0, Lgbsdk/common/host/abol;->b:J

    .line 202
    iget v0, p0, Lgbsdk/common/host/abol;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lgbsdk/common/host/abol;->d:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    const-wide/32 v3, 0x1b7740

    if-ne v0, v2, :cond_3

    .line 204
    iput-wide v3, p0, Lgbsdk/common/host/abol;->b:J

    .line 205
    iget v0, p0, Lgbsdk/common/host/abol;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lgbsdk/common/host/abol;->d:I

    goto :goto_0

    .line 207
    :cond_3
    iput-wide v3, p0, Lgbsdk/common/host/abol;->b:J

    .line 208
    iget v0, p0, Lgbsdk/common/host/abol;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lgbsdk/common/host/abol;->d:I

    .line 211
    :goto_0
    iget-object v0, p0, Lgbsdk/common/host/abol;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;

    move-result-object v0

    iget-wide v1, p0, Lgbsdk/common/host/abol;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->setCollectDelay(J)V

    return-void
.end method

.method private a(J)V
    .locals 2

    .line 315
    iget-boolean v0, p0, Lgbsdk/common/host/abol;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    .line 318
    iput-wide p1, p0, Lgbsdk/common/host/abol;->dt:J

    .line 319
    iget-object p1, p0, Lgbsdk/common/host/abol;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;

    move-result-object p1

    iget-wide v0, p0, Lgbsdk/common/host/abol;->dt:J

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->setCollectDelay(J)V

    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/abol;J)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lgbsdk/common/host/abol;->a(J)V

    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/abol;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lgbsdk/common/host/abol;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 220
    iget-boolean v0, p0, Lgbsdk/common/host/abol;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget v0, p0, Lgbsdk/common/host/abol;->g:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-wide/16 v2, 0x7530

    .line 224
    iput-wide v2, p0, Lgbsdk/common/host/abol;->h:J

    .line 225
    iget v0, p0, Lgbsdk/common/host/abol;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lgbsdk/common/host/abol;->g:I

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    const-wide/32 v2, 0xea60

    .line 227
    iput-wide v2, p0, Lgbsdk/common/host/abol;->h:J

    .line 228
    iget v0, p0, Lgbsdk/common/host/abol;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lgbsdk/common/host/abol;->g:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const-wide/32 v2, 0x1d4c0

    .line 230
    iput-wide v2, p0, Lgbsdk/common/host/abol;->h:J

    .line 231
    iget v0, p0, Lgbsdk/common/host/abol;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lgbsdk/common/host/abol;->g:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    const-wide/32 v2, 0x3a980

    .line 233
    iput-wide v2, p0, Lgbsdk/common/host/abol;->h:J

    .line 234
    iget v0, p0, Lgbsdk/common/host/abol;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lgbsdk/common/host/abol;->g:I

    goto :goto_0

    :cond_4
    const-wide/32 v2, 0x493e0

    .line 236
    iput-wide v2, p0, Lgbsdk/common/host/abol;->h:J

    .line 237
    iget v0, p0, Lgbsdk/common/host/abol;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lgbsdk/common/host/abol;->g:I

    .line 240
    :goto_0
    iget-object v0, p0, Lgbsdk/common/host/abol;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;

    move-result-object v0

    iget-wide v1, p0, Lgbsdk/common/host/abol;->h:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->setCollectDelay(J)V

    return-void
.end method

.method static synthetic b(Lgbsdk/common/host/abol;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lgbsdk/common/host/abol;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 248
    iget-boolean v0, p0, Lgbsdk/common/host/abol;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abol;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->restoreCollectDelay()V

    .line 253
    iget-object v0, p0, Lgbsdk/common/host/abol;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->setStopCollect(Z)V

    .line 254
    iput v1, p0, Lgbsdk/common/host/abol;->d:I

    const-wide/16 v2, 0x0

    .line 255
    iput-wide v2, p0, Lgbsdk/common/host/abol;->b:J

    .line 256
    iput v1, p0, Lgbsdk/common/host/abol;->g:I

    .line 257
    iput-wide v2, p0, Lgbsdk/common/host/abol;->h:J

    .line 258
    iput-wide v2, p0, Lgbsdk/common/host/abol;->dt:J

    return-void
.end method

.method static synthetic c(Lgbsdk/common/host/abol;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lgbsdk/common/host/abol;->F()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 303
    iget-boolean v0, p0, Lgbsdk/common/host/abol;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    iput-object p1, p0, Lgbsdk/common/host/abol;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lgbsdk/common/host/abol;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lgbsdk/common/host/abol;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 276
    iget-boolean v0, p0, Lgbsdk/common/host/abol;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abol;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->setStopCollect(Z)V

    return-void
.end method

.method static synthetic e(Lgbsdk/common/host/abol;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lgbsdk/common/host/abol;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 286
    iget-boolean v0, p0, Lgbsdk/common/host/abol;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abol;->a()V

    .line 291
    iget-object v0, p0, Lgbsdk/common/host/abol;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->setStopCollect(Z)V

    .line 293
    iget-object v0, p0, Lgbsdk/common/host/abol;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->deleteAllLogs()V

    .line 295
    iget-object v0, p0, Lgbsdk/common/host/abol;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/apm/SDKMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->dropAllData()V

    return-void
.end method

.method static synthetic f(Lgbsdk/common/host/abol;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lgbsdk/common/host/abol;->a()V

    return-void
.end method

.method private g()J
    .locals 5

    .line 329
    iget-boolean v0, p0, Lgbsdk/common/host/abol;->k:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 332
    :cond_0
    iget-wide v0, p0, Lgbsdk/common/host/abol;->b:J

    iget-wide v2, p0, Lgbsdk/common/host/abol;->h:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-wide v0, p0, Lgbsdk/common/host/abol;->b:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lgbsdk/common/host/abol;->h:J

    .line 333
    :goto_0
    iget-wide v2, p0, Lgbsdk/common/host/abol;->dt:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lgbsdk/common/host/abol;->dt:J

    :goto_1
    return-wide v0
.end method

.method static synthetic g(Lgbsdk/common/host/abol;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lgbsdk/common/host/abol;->b()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 344
    iget-object v0, p0, Lgbsdk/common/host/abol;->uC:Lgbsdk/common/host/abmm;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abmm;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lgbsdk/common/host/abol;->uC:Lgbsdk/common/host/abmm;

    iput-object p1, v0, Lgbsdk/common/host/abmm;->a:Ljava/lang/String;

    return-void
.end method
