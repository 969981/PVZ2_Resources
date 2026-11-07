.class public Lgbsdk/common/host/abga;
.super Ljava/lang/Object;


# static fields
.field private static dO:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lgbsdk/common/host/abga;->dO:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static b(Landroid/app/ApplicationExitInfo;)Lgbsdk/common/host/abfl;
    .locals 4

    invoke-static {}, Lcom/apm/insight/runtime/a/f;->a()Lcom/apm/insight/runtime/a/f;

    move-result-object v0

    sget-object v1, Lcom/apm/insight/CrashType;->EXIT:Lcom/apm/insight/CrashType;

    new-instance v2, Lgbsdk/common/host/abga$1;

    invoke-direct {v2, p0}, Lgbsdk/common/host/abga$1;-><init>(Landroid/app/ApplicationExitInfo;)V

    const/4 p0, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/apm/insight/runtime/a/f;->a(Lcom/apm/insight/CrashType;Lgbsdk/common/host/abfl;Lcom/apm/insight/runtime/a/c$a;Z)Lgbsdk/common/host/abfl;

    move-result-object p0

    return-object p0
.end method

.method public static n(Landroid/content/Context;)V
    .locals 10

    const-string v0, "_"

    const-string v1, "device_id"

    sget-object v2, Lgbsdk/common/host/abga;->dO:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0xf

    :try_start_0
    invoke-static {v2}, Lgbsdk/common/host/abgd;->i(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {p0}, Lgbsdk/common/host/abhp;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_1
    move-object v6, v7

    :goto_0
    if-nez v6, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lgbsdk/common/host/abch;->T()Lgbsdk/common/host/abch;

    move-result-object v2

    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v5

    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getStatus()I

    move-result v9

    invoke-virtual {v2, v5, v8, v9}, Lgbsdk/common/host/abch;->a(ILjava/lang/String;I)V

    invoke-static {}, Lcom/apm/insight/runtime/a;->l()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    sget v2, Lgbsdk/common/host/abge;->q:I

    sget-object v5, Lcom/apm/insight/ExitType;->EXCEPTION:Lcom/apm/insight/ExitType;

    iget v5, v5, Lcom/apm/insight/ExitType;->type:I

    if-ne v2, v5, :cond_4

    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v2

    invoke-static {v2}, Lgbsdk/common/host/abgd;->l(I)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    invoke-static {v6}, Lgbsdk/common/host/abga;->b(Landroid/app/ApplicationExitInfo;)Lgbsdk/common/host/abfl;

    move-result-object v2

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, v2, Lgbsdk/common/host/abfl;->a:Lorg/json/JSONObject;

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "data"

    invoke-virtual {v5, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lcom/apm/insight/entity/Header;->a(Landroid/content/Context;J)Lcom/apm/insight/entity/Header;

    move-result-object p0

    const-string v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v8, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    check-cast v8, Lcom/apm/insight/MonitorCrash;

    invoke-virtual {v8}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v8

    invoke-virtual {v8}, Lcom/apm/insight/MonitorCrash$Config;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/apm/insight/entity/Header;->g()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/apm/insight/entity/Header;->d()Lorg/json/JSONObject;

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/apm/insight/entity/Header;->g()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_6
    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android__"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/apm/insight/CrashType;->EXIT:Lcom/apm/insight/CrashType;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apm/insight/entity/Header;->g()Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "unique_key"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "header"

    invoke-virtual {v5, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    invoke-virtual {p0}, Lcom/apm/insight/runtime/ConfigManager;->getLaunchCrashUploadUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    invoke-static {v0}, Lgbsdk/common/host/abgd;->l(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Lgbsdk/common/host/abhg$ab;

    invoke-static {p0, v0, v1}, Lgbsdk/common/host/abfd;->a(Ljava/lang/String;Ljava/lang/String;[Lgbsdk/common/host/abhg$ab;)Lgbsdk/common/host/abhs;

    return-void

    :cond_7
    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/apm/insight/runtime/s;->a(Ljava/lang/String;J)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lgbsdk/common/host/abhg$ab;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0, v4}, Lgbsdk/common/host/abhg$ab;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_8
    move-object v1, v7

    :goto_2
    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_9

    const-string v0, "tombstone"

    goto :goto_3

    :cond_9
    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_a

    const-string v0, "anr_trace.txt"

    goto :goto_3

    :cond_a
    const-string v0, "ext.dump"

    :goto_3
    new-instance v7, Lgbsdk/common/host/abhg$ab;

    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v7, v2, v0, v4}, Lgbsdk/common/host/abhg$ab;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    :cond_b
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lgbsdk/common/host/abhg$ab;

    aput-object v7, v2, v3

    aput-object v1, v2, v4

    invoke-static {p0, v0, v2}, Lgbsdk/common/host/abfd;->a(Ljava/lang/String;Ljava/lang/String;[Lgbsdk/common/host/abhg$ab;)Lgbsdk/common/host/abhs;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_c
    return-void
.end method
