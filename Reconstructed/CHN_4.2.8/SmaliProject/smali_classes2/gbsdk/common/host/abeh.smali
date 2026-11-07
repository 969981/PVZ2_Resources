.class public abstract Lgbsdk/common/host/abeh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:J

.field public final c:J

.field private eI:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/abeh;->eI:Landroid/os/Handler;

    iput-wide p2, p0, Lgbsdk/common/host/abeh;->b:J

    iput-wide p4, p0, Lgbsdk/common/host/abeh;->c:J

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    iget-wide v0, p0, Lgbsdk/common/host/abeh;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lgbsdk/common/host/abeh;->eI:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abeh;->eI:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abeh;->eI:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abeh;->eI:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
