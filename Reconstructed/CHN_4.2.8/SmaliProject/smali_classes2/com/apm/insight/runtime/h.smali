.class public Lcom/apm/insight/runtime/h;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;Lcom/apm/insight/CrashType;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    :try_start_0
    invoke-static {}, Lcom/apm/insight/runtime/a;->k()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    move-object/from16 v3, p0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "external_files"

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/apm/insight/runtime/p;->a()Lcom/apm/insight/runtime/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apm/insight/runtime/c;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/apm/insight/CrashInfoCallback;

    invoke-virtual {v5, v0}, Lcom/apm/insight/CrashInfoCallback;->crashFileList(Lcom/apm/insight/CrashType;)[Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const-wide/16 v7, 0x0

    array-length v9, v5

    :goto_2
    if-ge v6, v9, :cond_3

    aget-object v10, v5, v6

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_3

    :cond_5
    sget-object v11, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    if-ne v0, v11, :cond_8

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/32 v13, 0x100000

    cmp-long v15, v11, v13

    if-lez v15, :cond_6

    goto :goto_3

    :cond_6
    add-long/2addr v11, v7

    const-wide/32 v13, 0x1400000

    cmp-long v15, v11, v13

    if-lez v15, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v7, v11

    goto :goto_3

    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v1, v10, v11}, Lgbsdk/common/host/abhg;->a(Ljava/io/File;Ljava/lang/String;Z)V

    :cond_9
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_a
    sget-object v1, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    if-ne v0, v1, :cond_c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    new-array v0, v6, [Ljava/io/File;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    sget-object v1, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    invoke-virtual {v1}, Lcom/apm/insight/runtime/ConfigManager;->getFileUploadUrl()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, p2

    invoke-static {v1, v4, v0}, Lgbsdk/common/host/abfd;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/io/File;)Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apm/insight/CrashInfoCallback;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v2}, Lcom/apm/insight/CrashInfoCallback;->onFileUpload(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    :cond_c
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 11

    invoke-static {}, Lcom/apm/insight/runtime/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "external_files"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgbsdk/common/host/abhg;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v7, v1

    const-wide/32 v9, 0x1400000

    cmp-long v5, v7, v9

    if-lez v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v1, v7

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    new-array p0, v3, [Ljava/io/File;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    sget-object v1, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    invoke-virtual {v1}, Lcom/apm/insight/runtime/ConfigManager;->getFileUploadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p0}, Lgbsdk/common/host/abfd;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/io/File;)Z

    invoke-static {}, Lcom/apm/insight/runtime/p;->a()Lcom/apm/insight/runtime/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/c;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apm/insight/CrashInfoCallback;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Lcom/apm/insight/CrashInfoCallback;->onFileUpload(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_8
    return-void
.end method
