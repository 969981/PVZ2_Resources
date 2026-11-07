.class public Lgbsdk/common/host/abex$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic fl:Lgbsdk/common/host/abex;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abex;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abex$1;->fl:Lgbsdk/common/host/abex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/apm/insight/Npth;->isStopUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lgbsdk/common/host/abex;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/apm/insight/runtime/p;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lgbsdk/common/host/abex;->e()V

    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/abex$1;->fl:Lgbsdk/common/host/abex;

    invoke-virtual {v0}, Lgbsdk/common/host/abex;->c()V

    iget-object v0, p0, Lgbsdk/common/host/abex$1;->fl:Lgbsdk/common/host/abex;

    invoke-static {v0}, Lgbsdk/common/host/abex;->b(Lgbsdk/common/host/abex;)Lcom/apm/insight/runtime/v;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abex$1;->fl:Lgbsdk/common/host/abex;

    invoke-static {v1}, Lgbsdk/common/host/abex;->a(Lgbsdk/common/host/abex;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method
