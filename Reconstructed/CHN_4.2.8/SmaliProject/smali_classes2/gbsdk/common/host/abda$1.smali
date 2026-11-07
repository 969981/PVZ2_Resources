.class public Lgbsdk/common/host/abda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abda;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dj:Lgbsdk/common/host/abda;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abda;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abda$1;->dj:Lgbsdk/common/host/abda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lgbsdk/common/host/abda$1;->dj:Lgbsdk/common/host/abda;

    invoke-static {v0}, Lgbsdk/common/host/abda;->a(Lgbsdk/common/host/abda;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abda$1;->dj:Lgbsdk/common/host/abda;

    invoke-static {v0}, Lgbsdk/common/host/abda;->b(Lgbsdk/common/host/abda;)Lgbsdk/common/host/abdb;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abdb;->F()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgbsdk/common/host/abda;->a(J)J

    invoke-static {}, Lgbsdk/common/host/abcv;->a()Z

    move-result v0

    const-wide/16 v1, 0x1f4

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    iget-object v3, p0, Lgbsdk/common/host/abda$1;->dj:Lgbsdk/common/host/abda;

    invoke-static {v3}, Lgbsdk/common/host/abda;->c(Lgbsdk/common/host/abda;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lgbsdk/common/host/abda;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/apm/insight/runtime/b;->a(J)V

    return-void
.end method
