.class public Lgbsdk/common/host/abda;
.super Ljava/lang/Object;


# static fields
.field private static b:J


# instance fields
.field private c:Z

.field private final dg:Lgbsdk/common/host/abdb;

.field private final di:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lgbsdk/common/host/abdb;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgbsdk/common/host/abda;->c:Z

    new-instance v0, Lgbsdk/common/host/abda$1;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abda$1;-><init>(Lgbsdk/common/host/abda;)V

    iput-object v0, p0, Lgbsdk/common/host/abda;->di:Ljava/lang/Runnable;

    iput-object p1, p0, Lgbsdk/common/host/abda;->dg:Lgbsdk/common/host/abdb;

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object p1

    iget-object v0, p0, Lgbsdk/common/host/abda;->di:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lgbsdk/common/host/abda;->b:J

    return-wide p0
.end method

.method static synthetic a(Lgbsdk/common/host/abda;)Z
    .locals 0

    iget-boolean p0, p0, Lgbsdk/common/host/abda;->c:Z

    return p0
.end method

.method static synthetic b(Lgbsdk/common/host/abda;)Lgbsdk/common/host/abdb;
    .locals 0

    iget-object p0, p0, Lgbsdk/common/host/abda;->dg:Lgbsdk/common/host/abdb;

    return-object p0
.end method

.method static synthetic c(Lgbsdk/common/host/abda;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lgbsdk/common/host/abda;->di:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static c()Z
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lgbsdk/common/host/abda;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d()J
    .locals 2

    sget-wide v0, Lgbsdk/common/host/abda;->b:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-boolean v0, p0, Lgbsdk/common/host/abda;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abda;->di:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgbsdk/common/host/abda;->c:Z

    return-void
.end method
