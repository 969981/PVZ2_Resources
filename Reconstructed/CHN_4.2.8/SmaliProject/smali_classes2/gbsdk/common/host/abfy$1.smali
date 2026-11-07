.class public Lgbsdk/common/host/abfy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abfy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ej:Lgbsdk/common/host/abfy;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abfy;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abfy$1;->ej:Lgbsdk/common/host/abfy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Recheck uncaught exception handler."

    invoke-static {v0}, Lgbsdk/common/host/abia;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lgbsdk/common/host/abfy$1;->ej:Lgbsdk/common/host/abfy;

    invoke-static {v0}, Lgbsdk/common/host/abfy;->a(Lgbsdk/common/host/abfy;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abfy$1;->ej:Lgbsdk/common/host/abfy;

    invoke-static {v0}, Lgbsdk/common/host/abfy;->b(Lgbsdk/common/host/abfy;)I

    iget-object v0, p0, Lgbsdk/common/host/abfy$1;->ej:Lgbsdk/common/host/abfy;

    invoke-static {v0}, Lgbsdk/common/host/abfy;->c(Lgbsdk/common/host/abfy;)V

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abfy$1;->ej:Lgbsdk/common/host/abfy;

    invoke-static {v1}, Lgbsdk/common/host/abfy;->d(Lgbsdk/common/host/abfy;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
