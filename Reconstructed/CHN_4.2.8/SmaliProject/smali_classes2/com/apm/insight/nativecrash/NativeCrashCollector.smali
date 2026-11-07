.class public Lcom/apm/insight/nativecrash/NativeCrashCollector;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/apm/insight/nativecrash/NativeCrashCollector;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Thread;)V
    .locals 4

    invoke-static {}, Lcom/apm/insight/runtime/p;->a()Lcom/apm/insight/runtime/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apm/insight/ICrashCallback;

    :try_start_0
    sget-object v2, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    invoke-interface {v1, v2, p0, p1}, Lcom/apm/insight/ICrashCallback;->onCrash(Lcom/apm/insight/CrashType;Ljava/lang/String;Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v3, "NPTH_CATCH"

    invoke-virtual {v2, v3, v1}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "main"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-static {p0}, Lgbsdk/common/host/abhz;->a([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    aget-object p0, v2, v3

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-static {p0}, Lgbsdk/common/host/abhz;->a([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/StackTraceElement;

    invoke-static {p0}, Lgbsdk/common/host/abhz;->a([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v2, "NPTH_CATCH"

    invoke-virtual {v0, v2, p0}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-object v1
.end method

.method public static onNativeCrash(Ljava/lang/String;)V
    .locals 12

    const-string v0, "crash_cost"

    const-string v1, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, "[onNativeCrash] enter"

    invoke-static {v2}, Lgbsdk/common/host/abia;->i(Ljava/lang/Object;)V

    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Lgbsdk/common/host/abef;->at()Lgbsdk/common/host/abef;

    move-result-object v2

    invoke-virtual {v2}, Lgbsdk/common/host/abef;->b()V

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lgbsdk/common/host/abif;->aI()Ljava/io/File;

    move-result-object v3

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lgbsdk/common/host/abif;->n(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-static {}, Lcom/apm/insight/runtime/a/f;->a()Lcom/apm/insight/runtime/a/f;

    move-result-object v6

    sget-object v7, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    new-instance v9, Lcom/apm/insight/nativecrash/NativeCrashCollector$1;

    invoke-direct {v9, v2, p0, v3}, Lcom/apm/insight/nativecrash/NativeCrashCollector$1;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    const/4 p0, 0x1

    invoke-virtual {v6, v7, v8, v9, p0}, Lcom/apm/insight/runtime/a/f;->a(Lcom/apm/insight/CrashType;Lgbsdk/common/host/abfl;Lcom/apm/insight/runtime/a/c$a;Z)Lgbsdk/common/host/abfl;

    move-result-object p0

    iget-object v2, p0, Lgbsdk/common/host/abfl;->a:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    sub-long v9, v6, v4

    :try_start_1
    const-string v11, "java_end"

    invoke-virtual {v2, v11, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lgbsdk/common/host/abfl;->m(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;

    const-wide/16 v6, 0x3e8

    div-long/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lgbsdk/common/host/abfl;->l(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lgbsdk/common/host/abhg;->a(Ljava/io/File;Lorg/json/JSONObject;Z)V

    invoke-virtual {p0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_0
    :try_start_3
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lgbsdk/common/host/abif;->aI()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/apm/insight/nativecrash/d;

    invoke-direct {v0, p0}, Lcom/apm/insight/nativecrash/d;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/d;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgbsdk/common/host/abfk;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/d;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lgbsdk/common/host/abch;->T()Lgbsdk/common/host/abch;

    move-result-object v2

    sget-object v3, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, p0, v6}, Lgbsdk/common/host/abch;->a(Lcom/apm/insight/CrashType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lgbsdk/common/host/abch;->T()Lgbsdk/common/host/abch;

    move-result-object v2

    sget-object v3, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v2 .. v7}, Lgbsdk/common/host/abch;->a(Lcom/apm/insight/CrashType;JLjava/lang/String;Lorg/json/JSONArray;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_1
    move-object v0, v8

    :catchall_2
    :goto_0
    :try_start_5
    invoke-static {}, Lcom/apm/insight/runtime/p;->a()Lcom/apm/insight/runtime/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/c;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    if-nez v0, :cond_1

    new-instance p0, Ljava/io/File;

    invoke-static {}, Lgbsdk/common/host/abif;->aI()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/apm/insight/nativecrash/d;

    invoke-direct {v0, p0}, Lcom/apm/insight/nativecrash/d;-><init>(Ljava/io/File;)V

    :cond_1
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/d;->d()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p0, v8}, Lcom/apm/insight/nativecrash/NativeCrashCollector;->a(Ljava/lang/String;Ljava/lang/Thread;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    invoke-static {v1, v8}, Lcom/apm/insight/nativecrash/NativeCrashCollector;->a(Ljava/lang/String;Ljava/lang/Thread;)V

    goto :goto_3

    :catchall_4
    move-exception p0

    :try_start_6
    sget-object v0, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v2, "NPTH_CATCH"

    invoke-virtual {v0, v2, p0}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    :try_start_7
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lgbsdk/common/host/abif;->aI()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/apm/insight/nativecrash/d;

    invoke-direct {v0, p0}, Lcom/apm/insight/nativecrash/d;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/d;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgbsdk/common/host/abfk;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/d;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lgbsdk/common/host/abch;->T()Lgbsdk/common/host/abch;

    move-result-object v2

    sget-object v3, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, p0, v6}, Lgbsdk/common/host/abch;->a(Lcom/apm/insight/CrashType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lgbsdk/common/host/abch;->T()Lgbsdk/common/host/abch;

    move-result-object v2

    sget-object v3, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v2 .. v7}, Lgbsdk/common/host/abch;->a(Lcom/apm/insight/CrashType;JLjava/lang/String;Lorg/json/JSONArray;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_2

    :catchall_5
    move-object v0, v8

    :catchall_6
    :goto_2
    :try_start_9
    invoke-static {}, Lcom/apm/insight/runtime/p;->a()Lcom/apm/insight/runtime/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/c;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    if-nez v0, :cond_2

    new-instance p0, Ljava/io/File;

    invoke-static {}, Lgbsdk/common/host/abif;->aI()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/apm/insight/nativecrash/d;

    invoke-direct {v0, p0}, Lcom/apm/insight/nativecrash/d;-><init>(Ljava/io/File;)V

    :cond_2
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/d;->d()Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :cond_3
    :goto_3
    return-void

    :catchall_7
    move-exception p0

    :try_start_a
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lgbsdk/common/host/abif;->aI()Ljava/io/File;

    move-result-object v2

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Lcom/apm/insight/nativecrash/d;

    invoke-direct {v9, v0}, Lcom/apm/insight/nativecrash/d;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :try_start_b
    invoke-virtual {v9}, Lcom/apm/insight/nativecrash/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abfk;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v9}, Lcom/apm/insight/nativecrash/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lgbsdk/common/host/abch;->T()Lgbsdk/common/host/abch;

    move-result-object v2

    sget-object v3, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    invoke-virtual {v9}, Lcom/apm/insight/nativecrash/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v0, v6}, Lgbsdk/common/host/abch;->a(Lcom/apm/insight/CrashType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lgbsdk/common/host/abch;->T()Lgbsdk/common/host/abch;

    move-result-object v2

    sget-object v3, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v2 .. v7}, Lgbsdk/common/host/abch;->a(Lcom/apm/insight/CrashType;JLjava/lang/String;Lorg/json/JSONArray;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_4

    :catchall_8
    move-object v9, v8

    :catchall_9
    :goto_4
    :try_start_c
    invoke-static {}, Lcom/apm/insight/runtime/p;->a()Lcom/apm/insight/runtime/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez v9, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lgbsdk/common/host/abif;->aI()Ljava/io/File;

    move-result-object v2

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Lcom/apm/insight/nativecrash/d;

    invoke-direct {v9, v0}, Lcom/apm/insight/nativecrash/d;-><init>(Ljava/io/File;)V

    :cond_4
    invoke-virtual {v9}, Lcom/apm/insight/nativecrash/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/apm/insight/nativecrash/NativeCrashCollector;->a(Ljava/lang/String;Ljava/lang/Thread;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_5

    :catchall_a
    invoke-static {v1, v8}, Lcom/apm/insight/nativecrash/NativeCrashCollector;->a(Ljava/lang/String;Ljava/lang/Thread;)V

    :cond_5
    :goto_5
    throw p0
.end method
