.class public Lgbsdk/common/host/abfw;
.super Ljava/lang/Object;


# direct methods
.method public static h(J)Z
    .locals 7

    const/4 v0, 0x2

    invoke-static {v0}, Lgbsdk/common/host/abic;->g(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x400

    invoke-static {v0}, Lgbsdk/common/host/abic;->g(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lcom/apm/insight/runtime/a/b;->c()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/apm/insight/runtime/a/b;->c()J

    move-result-wide v3

    sub-long/2addr p0, v3

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->getLaunchCrashInterval()J

    move-result-wide v3

    cmp-long v0, p0, v3

    if-gtz v0, :cond_3

    :cond_2
    sget-boolean p0, Lgbsdk/common/host/abge;->e:Z

    if-eqz p0, :cond_4

    sget p0, Lgbsdk/common/host/abge;->m:I

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method
