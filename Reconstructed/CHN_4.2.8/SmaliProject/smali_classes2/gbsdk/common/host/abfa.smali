.class public Lgbsdk/common/host/abfa;
.super Ljava/lang/Object;


# static fields
.field private static volatile fb:Lgbsdk/common/host/abfa;


# instance fields
.field private volatile b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/abfa;->b:Landroid/content/Context;

    return-void
.end method

.method public static au()Lgbsdk/common/host/abfa;
    .locals 2

    sget-object v0, Lgbsdk/common/host/abfa;->fb:Lgbsdk/common/host/abfa;

    if-nez v0, :cond_0

    new-instance v0, Lgbsdk/common/host/abfa;

    sget-object v1, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lgbsdk/common/host/abfa;-><init>(Landroid/content/Context;)V

    sput-object v0, Lgbsdk/common/host/abfa;->fb:Lgbsdk/common/host/abfa;

    :cond_0
    sget-object v0, Lgbsdk/common/host/abfa;->fb:Lgbsdk/common/host/abfa;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lgbsdk/common/host/abfd;->w()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lgbsdk/common/host/abfa;->b:Landroid/content/Context;

    invoke-static {v2}, Lgbsdk/common/host/abif;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {}, Lgbsdk/common/host/abif;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lgbsdk/common/host/abfd;->b()Z

    move-result v3

    invoke-static {v1, v2, v0, p1, v3}, Lgbsdk/common/host/abhg;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lgbsdk/common/host/abfd;->n(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abhs;

    move-result-object p1

    invoke-virtual {p1}, Lgbsdk/common/host/abhs;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lgbsdk/common/host/abia;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(JLorg/json/JSONObject;)Z
    .locals 3

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lgbsdk/common/host/abfd;->y()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lgbsdk/common/host/abfa;->b:Landroid/content/Context;

    invoke-static {v1}, Lgbsdk/common/host/abif;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lgbsdk/common/host/abge;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgbsdk/common/host/abif;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lgbsdk/common/host/abfd;->a()Z

    move-result v2

    invoke-static {v0, v1, p2, p3, v2}, Lgbsdk/common/host/abhg;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/String;

    const-string v1, "upload_scene"

    const-string v2, "direct"

    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p3}, Lgbsdk/common/host/abic;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lgbsdk/common/host/abfd;->o(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abhs;

    move-result-object p2

    invoke-virtual {p2}, Lgbsdk/common/host/abhs;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {v0}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    :cond_1
    return p1

    :catchall_0
    move-exception p2

    invoke-static {p2}, Lgbsdk/common/host/abia;->c(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lgbsdk/common/host/abfd;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lgbsdk/common/host/abfd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public a(Lorg/json/JSONObject;JZLjava/lang/String;ZLjava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-static {}, Lgbsdk/common/host/abfd;->y()Ljava/lang/String;

    move-result-object v1

    if-nez p7, :cond_1

    sget-object p7, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    invoke-static {p2, p3, p7, v0, v0}, Lgbsdk/common/host/abge;->a(JLcom/apm/insight/CrashType;ZZ)Ljava/lang/String;

    move-result-object p7

    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lgbsdk/common/host/abfa;->b:Landroid/content/Context;

    invoke-static {v3}, Lgbsdk/common/host/abif;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p6, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p6

    invoke-static {}, Lgbsdk/common/host/abfd;->b()Z

    move-result p7

    invoke-static {v2, p6, v1, p1, p7}, Lgbsdk/common/host/abhg;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/String;

    :cond_2
    if-eqz p4, :cond_a

    invoke-static {}, Lcom/apm/insight/Npth;->isStopUpload()Z

    move-result p4

    if-eqz p4, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string p4, "upload_scene"

    const-string p6, "direct"

    invoke-virtual {p1, p4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "crash_uuid"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Lgbsdk/common/host/abic;->a(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/apm/insight/runtime/a;->j()Z

    move-result p4

    invoke-static {}, Lgbsdk/common/host/abge;->al()Z

    move-result p6

    const/4 p7, 0x2

    const/4 v3, 0x1

    if-eqz p6, :cond_4

    const/4 p6, 0x2

    goto :goto_0

    :cond_4
    const/4 p6, 0x1

    :goto_0
    if-eqz p4, :cond_6

    const-string p4, "anr_trace"

    invoke-static {p2, p3, p4}, Lcom/apm/insight/runtime/s;->a(JLjava/lang/String;)Ljava/util/HashMap;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr v4, p6

    new-array p6, v4, [Ljava/io/File;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lgbsdk/common/host/abfa;->b:Landroid/content/Context;

    invoke-static {v7}, Lgbsdk/common/host/abhp;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lgbsdk/common/host/abfa;->b:Landroid/content/Context;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/apm/insight/runtime/s$a;

    iget-object v5, v5, Lcom/apm/insight/runtime/s$a;->b:Ljava/lang/String;

    invoke-static {v6, v5}, Lgbsdk/common/host/abif;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    aput-object v5, p6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    new-array p6, p6, [Ljava/io/File;

    :cond_7
    array-length p4, p6

    sub-int/2addr p4, v3

    iget-object v4, p0, Lgbsdk/common/host/abfa;->b:Landroid/content/Context;

    invoke-static {v4, p5}, Lgbsdk/common/host/abif;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    aput-object v4, p6, p4

    invoke-static {}, Lgbsdk/common/host/abge;->al()Z

    move-result p4

    if-eqz p4, :cond_8

    array-length p4, p6

    sub-int/2addr p4, p7

    invoke-static {p2, p3}, Lcom/apm/insight/runtime/s;->a(J)Ljava/io/File;

    move-result-object p2

    aput-object p2, p6, p4

    :cond_8
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p6}, Lgbsdk/common/host/abfd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/io/File;)Lgbsdk/common/host/abhs;

    move-result-object p1

    invoke-virtual {p1}, Lgbsdk/common/host/abhs;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v2}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    iget-object p1, p0, Lgbsdk/common/host/abfa;->b:Landroid/content/Context;

    invoke-static {p1, p5}, Lgbsdk/common/host/abif;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    iget-object p1, p0, Lgbsdk/common/host/abfa;->b:Landroid/content/Context;

    invoke-static {p1, p5}, Lgbsdk/common/host/abif;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    invoke-static {}, Lcom/apm/insight/Npth;->hasCrash()Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {p1}, Lgbsdk/common/host/abif;->v(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    :cond_9
    sget-object p1, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {p1}, Lgbsdk/common/host/abif;->B(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    sget-object p2, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/apm/insight/runtime/h;->a(Ljava/io/File;Lcom/apm/insight/CrashType;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    :cond_a
    :goto_2
    return v0
.end method

.method public a(Lorg/json/JSONObject;Ljava/io/File;Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lgbsdk/common/host/abfd;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lgbsdk/common/host/abic;->a(Lorg/json/JSONObject;)V

    invoke-static {}, Lgbsdk/common/host/abge;->al()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/io/File;

    aput-object p2, v2, v0

    aput-object p3, v2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/apm/insight/runtime/s;->a(J)Ljava/io/File;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-static {v1, p1, v2}, Lgbsdk/common/host/abfd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/io/File;)Lgbsdk/common/host/abhs;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v4, [Ljava/io/File;

    aput-object p2, v2, v0

    aput-object p3, v2, v3

    invoke-static {v1, p1, v2}, Lgbsdk/common/host/abfd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/io/File;)Lgbsdk/common/host/abhs;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lgbsdk/common/host/abhs;->a()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lgbsdk/common/host/abia;->c(Ljava/lang/Throwable;)V

    :goto_1
    return v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    new-instance v1, Lgbsdk/common/host/abfa$1;

    invoke-direct {v1, p0, p1}, Lgbsdk/common/host/abfa$1;-><init>(Lgbsdk/common/host/abfa;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public k(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    new-instance v1, Lgbsdk/common/host/abfa$2;

    invoke-direct {v1, p0, p1}, Lgbsdk/common/host/abfa$2;-><init>(Lgbsdk/common/host/abfa;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
