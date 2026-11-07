.class public final Lgbsdk/common/host/abga$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apm/insight/runtime/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abga;->b(Landroid/app/ApplicationExitInfo;)Lgbsdk/common/host/abfl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic ei:Landroid/app/ApplicationExitInfo;


# direct methods
.method constructor <init>(Landroid/app/ApplicationExitInfo;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILgbsdk/common/host/abfl;)Lgbsdk/common/host/abfl;
    .locals 10

    const-string v0, "exit_sub_reason"

    const-string v1, "exit_reason"

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    const-string v4, "exit_rss"

    const-string v5, "exit_pss"

    const-string v6, "exit_importance"

    const-string v7, "exit_status"

    if-eq p1, v3, :cond_4

    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result p1

    iget-object v1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v3

    iget-object v1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v3, v4, v1}, Lcom/apm/insight/runtime/s;->a(Lgbsdk/common/host/abfl;IJLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result p1

    const/16 v1, 0xc8

    if-gt p1, v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    xor-int/lit8 p1, v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "is_background"

    invoke-virtual {p2, v0, p1}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    const-string p1, "crash_md5"

    iget-object v0, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-static {v0}, Lgbsdk/common/host/abgd;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abhl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    iget-object p1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result p1

    invoke-static {p1}, Lgbsdk/common/host/abgd;->l(I)Z

    move-result p1

    if-nez p1, :cond_9

    sget-boolean p1, Lgbsdk/common/host/abge;->z:Z

    if-eqz p1, :cond_9

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/apm/insight/runtime/l;->a(Ljava/lang/String;J)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, "logcat"

    goto/16 :goto_2

    :cond_3
    iget-object p1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result p1

    invoke-static {p1}, Lgbsdk/common/host/abgd;->j(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lgbsdk/common/host/abfl;->l(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;

    iget-object p1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v7, p1}, Lgbsdk/common/host/abfl;->l(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;

    iget-object p1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v6, p1}, Lgbsdk/common/host/abfl;->l(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;

    iget-object p1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgbsdk/common/host/abgd;->l(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Lgbsdk/common/host/abfl;->l(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;

    iget-object p1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgbsdk/common/host/abgd;->l(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Lgbsdk/common/host/abfl;->l(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;

    invoke-virtual {p2}, Lgbsdk/common/host/abfl;->c()V

    goto/16 :goto_3

    :cond_4
    iget-object p1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v8

    sget-object p1, Lcom/apm/insight/CrashType;->EXIT:Lcom/apm/insight/CrashType;

    invoke-static {v8, v9, p1, v2, v2}, Lgbsdk/common/host/abge;->a(JLcom/apm/insight/CrashType;ZZ)Ljava/lang/String;

    move-result-object p1

    const-string v0, "crash_uuid"

    invoke-virtual {p2, v0, p1}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v2

    invoke-static {v2, v3}, Lgbsdk/common/host/abgd;->l(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v2

    invoke-static {v2, v3}, Lgbsdk/common/host/abgd;->l(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v0

    invoke-virtual {p1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "description"

    iget-object v1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "custom"

    invoke-virtual {p2, v0, p1}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_3

    :cond_5
    iget-object p1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result p1

    iget-object v0, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/apm/insight/runtime/s;->a(IJLjava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string p1, "app_start_time"

    const-string v4, "launch_time"

    cmp-long v5, v0, v2

    if-gez v5, :cond_6

    const-string v0, "npth_init"

    const-string v1, "false"

    invoke-virtual {p2, v0, v1}, Lgbsdk/common/host/abfl;->l(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;

    iget-object v0, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    goto :goto_1

    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_2
    iget-object p1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string p1, "exit_info_trace"

    const-string v0, "true"

    invoke-virtual {p2, p1, v0}, Lgbsdk/common/host/abfl;->l(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_3

    :cond_7
    iget-object p1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "timestamp"

    invoke-virtual {p2, v0, p1}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result p1

    invoke-static {p1}, Lgbsdk/common/host/abgd;->l(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "user_exit"

    :goto_2
    invoke-virtual {p2, v0, p1}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_8
    iget-object p1, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result p1

    const-string v3, ""

    :try_start_3
    iget-object v4, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getSubReason"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lgbsdk/common/host/abgd;->k(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v0, v3}, Lgbsdk/common/host/abfl;->l(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REASON = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lgbsdk/common/host/abgd;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0cSUB_REASON = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {p2, v2, v0}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-static {v0}, Lgbsdk/common/host/abgd;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "stack"

    invoke-virtual {p2, v2, v0}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "event_type"

    const-string v2, "exit"

    invoke-virtual {p2, v0, v2}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "log_type"

    const-string v2, "process_exit"

    invoke-virtual {p2, v0, v2}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "pid"

    invoke-virtual {p2, v2, v0}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "process_name"

    invoke-virtual {p2, v2, v0}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lgbsdk/common/host/abga$1;->ei:Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "crash_time"

    invoke-virtual {p2, v2, v0}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lgbsdk/common/host/abgd;->j(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :catchall_2
    :cond_9
    :goto_3
    return-object p2
.end method

.method public a(ILgbsdk/common/host/abfl;Z)Lgbsdk/common/host/abfl;
    .locals 0

    return-object p2
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
