.class public Lgbsdk/common/host/abej;
.super Lgbsdk/common/host/abeh;


# direct methods
.method constructor <init>(Landroid/os/Handler;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lgbsdk/common/host/abeh;-><init>(Landroid/os/Handler;JJ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lgbsdk/common/host/abge;->ah()Lcom/apm/insight/runtime/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DeviceIdTask] did is done, stop check."

    invoke-static {v0}, Lgbsdk/common/host/abia;->i(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lgbsdk/common/host/abge;->ag()Lcom/apm/insight/runtime/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lgbsdk/common/host/abge;->ah()Lcom/apm/insight/runtime/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/apm/insight/runtime/u;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DeviceIdTask] did is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-wide v0, p0, Lgbsdk/common/host/abeh;->c:J

    invoke-virtual {p0, v0, v1}, Lgbsdk/common/host/abej;->a(J)V

    const-string v0, "[DeviceIdTask] did is null, continue check."

    :goto_1
    invoke-static {v0}, Lgbsdk/common/host/abia;->i(Ljava/lang/Object;)V

    return-void
.end method
