.class public Lcom/meituan/robust/PatchExecutor;
.super Ljava/lang/Thread;
.source "PatchExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;
    }
.end annotation


# static fields
.field private static DEFAULT_BUFF_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "robust"


# instance fields
.field protected context:Landroid/content/Context;

.field protected executeListener:Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;

.field protected parentClassLoader:Ljava/lang/ClassLoader;

.field protected patchManipulate:Lcom/meituan/robust/PatchManipulate;

.field protected robustCallBack:Lcom/meituan/robust/RobustCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meituan/robust/PatchManipulate;Lcom/meituan/robust/RobustCallBack;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meituan/robust/PatchExecutor;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/meituan/robust/PatchExecutor;->patchManipulate:Lcom/meituan/robust/PatchManipulate;

    .line 45
    iput-object p3, p0, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    if-eqz p4, :cond_0

    .line 47
    iput-object p4, p0, Lcom/meituan/robust/PatchExecutor;->parentClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0

    .line 49
    :cond_0
    const-class p1, Lcom/meituan/robust/PatchExecutor;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/meituan/robust/PatchExecutor;->parentClassLoader:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method private doDecompressFile(Ljava/io/File;Ljava/util/zip/ZipInputStream;)V
    .locals 4

    .line 273
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 275
    sget p1, Lcom/meituan/robust/PatchExecutor;->DEFAULT_BUFF_SIZE:I

    new-array p1, p1, [B

    .line 276
    :goto_0
    sget v1, Lcom/meituan/robust/PatchExecutor;->DEFAULT_BUFF_SIZE:I

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v1}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 277
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method

.method public static getFileMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 635
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 636
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 638
    invoke-static {v0}, Lcom/meituan/robust/PatchDigestUtil;->md5Hex(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 639
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private handlePatchApplyResult(ZLcom/meituan/robust/Patch;Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "robust"

    if-nez p2, :cond_0

    const-string p1, "handlePatchApplyResult, patch is null"

    .line 580
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 583
    :cond_0
    invoke-virtual {p2}, Lcom/meituan/robust/Patch;->isAppliedSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 587
    :cond_1
    invoke-virtual {p2}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "patch apply success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 591
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "patch apply failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 595
    invoke-virtual {p2, v0}, Lcom/meituan/robust/Patch;->setAppliedSuccess(Z)V

    .line 597
    iget-object v2, p0, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    invoke-interface {v2, v0, p2}, Lcom/meituan/robust/RobustCallBack;->onPatchApplied(ZLcom/meituan/robust/Patch;)V

    goto :goto_1

    .line 600
    :cond_3
    iget-object v0, p0, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p2}, Lcom/meituan/robust/RobustCallBack;->onPatchApplied(ZLcom/meituan/robust/Patch;)V

    :goto_1
    if-eqz p4, :cond_4

    .line 604
    invoke-virtual {p2}, Lcom/meituan/robust/Patch;->getPluginVersion()I

    move-result p2

    invoke-static {p1, v1, p2, p3}, Lgbsdk/common/host/abrt;->a(ZLjava/lang/String;ILjava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected applyPatchList(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meituan/robust/Patch;",
            ">;)V"
        }
    .end annotation

    const-string v0, "robust"

    if-eqz p1, :cond_12

    .line 88
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 92
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " applyPatchList list size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v4, p0, Lcom/meituan/robust/PatchExecutor;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/meituan/robust/PatchProcessUtils;->isMainProcess(Landroid/content/Context;)Z

    move-result v4

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meituan/robust/Patch;

    .line 98
    invoke-virtual {v6}, Lcom/meituan/robust/Patch;->isAppliedSuccess()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 99
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "p.isAppliedSuccess() skip "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/meituan/robust/Patch;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Lcom/meituan/robust/Patch;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    :try_start_0
    invoke-virtual {v6}, Lcom/meituan/robust/Patch;->getLocalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lcom/meituan/robust/PatchExecutor;->copy(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 106
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 108
    :cond_2
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Lcom/meituan/robust/Patch;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "patch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in alreadyAppliedPatches has no origin localPath jar, ignore it"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 116
    invoke-virtual {v6}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/meituan/robust/Patch;->getPluginVersion()I

    move-result v10

    invoke-static {v9, v10}, Lgbsdk/common/host/abrt;->e(Ljava/lang/String;I)V

    .line 118
    :cond_4
    iget-object v9, p0, Lcom/meituan/robust/PatchExecutor;->patchManipulate:Lcom/meituan/robust/PatchManipulate;

    invoke-virtual {v9, v6}, Lcom/meituan/robust/PatchManipulate;->ensurePatchExist(Lcom/meituan/robust/Patch;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 121
    :try_start_1
    iget-object v9, p0, Lcom/meituan/robust/PatchExecutor;->context:Landroid/content/Context;

    invoke-virtual {p0, v9, v6}, Lcom/meituan/robust/PatchExecutor;->verifyPatch(Landroid/content/Context;Lcom/meituan/robust/Patch;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    .line 123
    iget-object v10, p0, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    const-string v11, "PatchExecutor.applyPatchList verifyPatch"

    invoke-interface {v10, v9, v11}, Lcom/meituan/robust/RobustCallBack;->exceptionNotify(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 125
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "verifyPatch result:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_5

    .line 127
    invoke-virtual {v6}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/meituan/robust/Patch;->getPluginVersion()I

    move-result v9

    invoke-static {v7, v8, v9}, Lgbsdk/common/host/abrt;->a(ZLjava/lang/String;I)V

    .line 131
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v8, p0, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    invoke-interface {v8, v7, v6}, Lcom/meituan/robust/RobustCallBack;->onPatchVerified(ZLcom/meituan/robust/Patch;)V

    goto/16 :goto_0

    .line 136
    :cond_5
    invoke-virtual {v6}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/meituan/robust/Patch;->getPluginVersion()I

    move-result v9

    invoke-static {v8, v7, v9}, Lgbsdk/common/host/abrt;->a(ZLjava/lang/String;I)V

    .line 137
    iget-object v7, p0, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    invoke-interface {v7, v8, v6}, Lcom/meituan/robust/RobustCallBack;->onPatchVerified(ZLcom/meituan/robust/Patch;)V

    goto/16 :goto_0

    .line 142
    :cond_6
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 147
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const-string v6, "has some patches not downloaded yet, notExistedPatches list size is "

    const-string v9, "applyPatchList, "

    const/4 v10, 0x0

    if-nez v5, :cond_b

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "applyPatchList, verified list size is "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-ne v5, v11, :cond_8

    const-string p1, "applyPatchList, all need to applied"

    .line 151
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 152
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v5, v11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-ne v5, v11, :cond_9

    .line 155
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 157
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v5, v11

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v5, v11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v5, p1, :cond_a

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_a
    const-string p1, "has some patch verified failed"

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    invoke-interface {v0, v8, v10}, Lcom/meituan/robust/RobustCallBack;->onPatchApplied(ZLcom/meituan/robust/Patch;)V

    goto :goto_3

    .line 167
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-ne v5, v11, :cond_c

    const-string p1, "applyPatchList, skip because all patches already applied"

    .line 169
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object p1, v10

    goto :goto_3

    .line 171
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v5, v11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v5, p1, :cond_d

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_d
    const-string p1, "real has patch verified failed"

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    invoke-interface {v0, v8, v10}, Lcom/meituan/robust/RobustCallBack;->onPatchApplied(ZLcom/meituan/robust/Patch;)V

    .line 185
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_4

    :cond_e
    const/4 p1, 0x0

    .line 187
    :goto_4
    invoke-virtual {p0, v1}, Lcom/meituan/robust/PatchExecutor;->deleteTempJar(Ljava/util/List;)V

    goto :goto_5

    .line 189
    :cond_f
    invoke-virtual {p0, v3}, Lcom/meituan/robust/PatchExecutor;->combineVerifiedPatch(Ljava/util/List;)Lcom/meituan/robust/Patch;

    move-result-object v10

    .line 191
    invoke-virtual {p0, v1}, Lcom/meituan/robust/PatchExecutor;->deleteTempJar(Ljava/util/List;)V

    .line 192
    iget-object p1, p0, Lcom/meituan/robust/PatchExecutor;->context:Landroid/content/Context;

    invoke-virtual {p0, p1, v10, v3, v4}, Lcom/meituan/robust/PatchExecutor;->patchTotal(Landroid/content/Context;Lcom/meituan/robust/Patch;Ljava/util/List;Z)Z

    move-result p1

    :goto_5
    if-eqz p1, :cond_11

    if-eqz v10, :cond_10

    .line 198
    invoke-virtual {v10, v7}, Lcom/meituan/robust/Patch;->setAppliedSuccess(Z)V

    .line 201
    :cond_10
    iget-object p1, p0, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    invoke-interface {p1, v7, v10}, Lcom/meituan/robust/RobustCallBack;->onPatchApplied(ZLcom/meituan/robust/Patch;)V

    goto :goto_6

    .line 204
    :cond_11
    iget-object p1, p0, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    invoke-interface {p1, v8, v10}, Lcom/meituan/robust/RobustCallBack;->onPatchApplied(ZLcom/meituan/robust/Patch;)V

    :goto_6
    return-void

    :cond_12
    :goto_7
    const-string p1, " applyPatchList patches empty"

    .line 89
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected combineVerifiedPatch(Ljava/util/List;)Lcom/meituan/robust/Patch;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meituan/robust/Patch;",
            ">;)",
            "Lcom/meituan/robust/Patch;"
        }
    .end annotation

    const-string v0, "robust"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 236
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meituan/robust/Patch;

    invoke-virtual {v3}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v3

    .line 237
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 238
    iget-object v5, p0, Lcom/meituan/robust/PatchExecutor;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/meituan/robust/PatchProcessUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/meituan/robust/PatchDigestUtil;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 239
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-le v6, v7, :cond_0

    .line 240
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_0
    const/4 v6, 0x0

    .line 242
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 243
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meituan/robust/Patch;

    invoke-virtual {v7}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v4, v7, v8, v5}, Lcom/meituan/robust/PatchExecutor;->unzipPatch(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meituan/robust/Patch;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meituan/robust/Patch;

    invoke-virtual {v6}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/meituan/robust/Patch;->delete(Ljava/lang/String;)V

    move v6, v8

    goto :goto_0

    :cond_1
    const-string p1, "patch_total_temp.jar"

    .line 247
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "_temp.jar"

    if-nez v4, :cond_2

    .line 248
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "patch_total_"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 251
    :cond_2
    invoke-virtual {p0, v3, p1, v5}, Lcom/meituan/robust/PatchExecutor;->packagePatchDex2Jar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v4, Lcom/meituan/robust/Patch;

    invoke-direct {v4}, Lcom/meituan/robust/Patch;-><init>()V

    .line 255
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 257
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "patch_total"

    .line 258
    invoke-virtual {v4, p1}, Lcom/meituan/robust/Patch;->setName(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/meituan/robust/Patch;->setTempPath(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 260
    invoke-static {p1, v1}, Lgbsdk/common/host/abrt;->b(ZLjava/lang/String;)V

    const-string p1, "combineVerifiedPatch success "

    .line 261
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    :catchall_0
    move-exception p1

    const-string v3, "combineVerifiedPatch"

    .line 264
    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lgbsdk/common/host/abrt;->b(ZLjava/lang/String;)V

    return-object v1
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "robust"

    const-string v1, "copy temp jar"

    .line 609
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    new-instance v0, Lcom/meituan/robust/Decryptor;

    invoke-direct {v0}, Lcom/meituan/robust/Decryptor;-><init>()V

    .line 611
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 613
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 615
    :cond_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 617
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    .line 622
    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 623
    invoke-virtual {v0, v1, v2}, Lcom/meituan/robust/Decryptor;->decrypt([BI)V

    const/4 v3, 0x0

    .line 624
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 627
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 630
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 627
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 630
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public deleteAllDexFilebelowL(Ljava/io/File;)V
    .locals 5

    .line 647
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 649
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 650
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 651
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected deleteTempJar(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meituan/robust/Patch;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meituan/robust/Patch;

    if-eqz v0, :cond_1

    .line 214
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " delete temp jar : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "robust"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected fetchPatchList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meituan/robust/Patch;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/meituan/robust/PatchExecutor;->patchManipulate:Lcom/meituan/robust/PatchManipulate;

    iget-object v1, p0, Lcom/meituan/robust/PatchExecutor;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/meituan/robust/PatchManipulate;->fetchPatchList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public packagePatchDex2Jar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "robust"

    const/4 v1, 0x0

    .line 330
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 331
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 332
    :try_start_1
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total patch "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is already exists, delete"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 339
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "packagePatchDex2Jar, but destDir not exists"

    .line 340
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 343
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 344
    array-length p2, p1

    if-gtz p2, :cond_2

    goto :goto_1

    .line 349
    :cond_2
    new-instance p2, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p3, 0x0

    .line 350
    invoke-virtual {p2, p3}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 351
    array-length v1, p1

    :goto_0
    if-ge p3, v1, :cond_4

    aget-object v3, p1, p3

    .line 352
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".dex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 353
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, p2, v4}, Lcom/meituan/robust/PatchExecutor;->zipPatch(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const-string v3, "delete patch dexFile"

    .line 355
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 358
    :cond_4
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 359
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-string p1, "packagePatchDex2Jar success"

    .line 360
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    :goto_1
    const-string p1, "packagePatchDex2Jar, but has no dex files"

    .line 345
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    const-string p2, "packagePatchDex2Jar failed"

    .line 362
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p2, "PatchExecutor.packagePatchDex2Jar"

    .line 363
    invoke-static {p2, p1}, Lgbsdk/common/host/abrt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    invoke-static {v1}, Lcom/meituan/robust/PatchFileUtils;->deleteDir(Ljava/io/File;)Z

    :goto_3
    return-void
.end method

.method protected patchTotal(Landroid/content/Context;Lcom/meituan/robust/Patch;Ljava/util/List;Z)Z
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meituan/robust/Patch;",
            "Ljava/util/List<",
            "Lcom/meituan/robust/Patch;",
            ">;Z)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    const-string v4, "patchTotal failed"

    const-string v5, "PatchExecutor.patchTotal"

    const/4 v6, 0x0

    const-string v7, "robust"

    if-nez v2, :cond_0

    const-string v0, "patchTotal, patch is null"

    .line 372
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "patch is null"

    .line 373
    invoke-static {v5, v0}, Lgbsdk/common/host/abrt;->M(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 376
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v8, " only has so, skip apply"

    const-string v9, "this patch "

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_6

    if-eqz p3, :cond_4

    .line 379
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meituan/robust/Patch;

    if-eqz v4, :cond_1

    .line 381
    invoke-virtual {v4}, Lcom/meituan/robust/Patch;->isOnlySo()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 382
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {v1, v10, v4, v11, v3}, Lcom/meituan/robust/PatchExecutor;->handlePatchApplyResult(ZLcom/meituan/robust/Patch;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move v10, v2

    :cond_4
    if-nez v10, :cond_5

    const-string v0, "patchTotal, total patch temp jar not exist"

    .line 393
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "total patch temp jar not exist"

    .line 394
    invoke-static {v5, v0}, Lgbsdk/common/host/abrt;->M(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "patchTotal, total patch temp jar not exist, because all patch only so"

    .line 396
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v10

    .line 404
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x14

    if-gt v0, v12, :cond_c

    .line 405
    invoke-virtual/range {p2 .. p2}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meituan/robust/PatchExecutor;->getFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/16 v13, 0x8

    if-nez v12, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v13, :cond_7

    .line 407
    invoke-virtual {v0, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 409
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "load tempPath "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " below android L"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/meituan/robust/PatchExecutor;->deleteAllDexFilebelowL(Ljava/io/File;)V

    .line 412
    new-instance v12, Ldalvik/system/DexClassLoader;

    invoke-virtual/range {p2 .. p2}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    iget-object v10, v1, Lcom/meituan/robust/PatchExecutor;->parentClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v12, v14, v15, v11, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 416
    :goto_2
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 418
    invoke-virtual/range {p2 .. p2}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v12

    .line 419
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_temp.jar"

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v12, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 421
    invoke-virtual {v2, v0}, Lcom/meituan/robust/Patch;->setTempPath(Ljava/lang/String;)V

    .line 423
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "replace patch tempPath to "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " below android L, patch name is "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/meituan/robust/PatchProcessUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meituan/robust/PatchDigestUtil;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 427
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v13, :cond_a

    .line 428
    invoke-virtual {v0, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 431
    :cond_a
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-direct {v10, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_b

    .line 433
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 436
    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "patch optimizedDirectory in this process is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {v1, v10}, Lcom/meituan/robust/PatchExecutor;->deleteAllDexFilebelowL(Ljava/io/File;)V

    .line 440
    new-instance v11, Ldalvik/system/DexClassLoader;

    invoke-virtual/range {p2 .. p2}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iget-object v13, v1, Lcom/meituan/robust/PatchExecutor;->parentClassLoader:Ljava/lang/ClassLoader;

    const/4 v14, 0x0

    invoke-direct {v11, v12, v10, v14, v13}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v12, p1

    invoke-static {v11, v10, v12, v0}, Lgbsdk/common/host/abso;->a(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/meituan/robust/Patch;->delete(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    move-object/from16 v12, p1

    move-object v14, v11

    .line 448
    new-instance v11, Ldalvik/system/DexClassLoader;

    invoke-virtual/range {p2 .. p2}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iget-object v12, v1, Lcom/meituan/robust/PatchExecutor;->parentClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v11, v0, v10, v14, v12}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/meituan/robust/Patch;->delete(Ljava/lang/String;)V

    .line 458
    :goto_3
    invoke-static {v11}, Lcom/meituan/robust/utils/EnhancedRobustUtils;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 463
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v12, 0x1

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/meituan/robust/Patch;

    if-nez v3, :cond_d

    .line 465
    invoke-virtual {v13}, Lcom/meituan/robust/Patch;->isSupportSubProcess()Z

    move-result v0

    if-nez v0, :cond_d

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " no need to fix in this process"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 472
    :cond_d
    invoke-virtual {v13}, Lcom/meituan/robust/Patch;->isOnlySo()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 475
    invoke-direct {v1, v14, v13, v15, v3}, Lcom/meituan/robust/PatchExecutor;->handlePatchApplyResult(ZLcom/meituan/robust/Patch;Ljava/lang/String;Z)V

    goto :goto_4

    .line 479
    :cond_e
    invoke-virtual {v13}, Lcom/meituan/robust/Patch;->getPatchesInfoImplClassFullName()Ljava/lang/String;

    move-result-object v0

    .line 486
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PatchsInfoImpl name:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {v11, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/meituan/robust/PatchesInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "PatchsInfoImpl ok"

    .line 489
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    const/4 v14, 0x0

    .line 491
    :goto_5
    iget-object v15, v1, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    invoke-interface {v15, v0, v5}, Lcom/meituan/robust/RobustCallBack;->exceptionNotify(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_6
    const-string v15, ",md5 = "

    if-nez v14, :cond_f

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "patchesInfo is null, patch info:id = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/meituan/robust/Patch;->getMd5()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    iget-object v12, v1, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    invoke-interface {v12, v0, v5}, Lcom/meituan/robust/RobustCallBack;->logNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-direct {v1, v6, v13, v0, v3}, Lcom/meituan/robust/PatchExecutor;->handlePatchApplyResult(ZLcom/meituan/robust/Patch;Ljava/lang/String;Z)V

    :goto_7
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 503
    :cond_f
    invoke-interface {v14}, Lcom/meituan/robust/PatchesInfo;->getPatchedClassesInfo()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_18

    .line 504
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_10

    .line 513
    :cond_10
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v0, 0x0

    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_16

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Lcom/meituan/robust/PatchedClassInfo;

    move-object/from16 v17, v8

    .line 514
    iget-object v8, v6, Lcom/meituan/robust/PatchedClassInfo;->patchedClassName:Ljava/lang/String;

    .line 515
    iget-object v6, v6, Lcom/meituan/robust/PatchedClassInfo;->patchClassName:Ljava/lang/String;

    .line 516
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_15

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_11

    goto/16 :goto_d

    :cond_11
    move-object/from16 v18, v9

    .line 522
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v10

    const-string v10, "current patchedClassName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move/from16 p3, v12

    .line 525
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v0

    const-string v0, "oldClass :"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "     fields "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    array-length v0, v12

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_13

    aget-object v20, v12, v3

    .line 529
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v21

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v21, Lcom/meituan/robust/ChangeQuickRedirect;

    move-object/from16 v23, v12

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 530
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object/from16 v0, v20

    goto :goto_a

    :cond_12
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v22

    move-object/from16 v12, v23

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_14

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeQuickRedirectField  is null, patch info:id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/meituan/robust/Patch;->getMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    iget-object v3, v1, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    invoke-interface {v3, v0, v5}, Lcom/meituan/robust/RobustCallBack;->logNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-static {v5, v0}, Lgbsdk/common/host/abrt;->M(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "something wrong !! can  not find:ChangeQuickRedirect in"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 542
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " find:ChangeQuickRedirect "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 544
    :try_start_4
    invoke-virtual {v11, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 545
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v8, 0x1

    .line 546
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v8, 0x0

    .line 547
    invoke-virtual {v0, v8, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeQuickRedirectField set success:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v0, v19

    goto :goto_e

    :catchall_2
    move-exception v0

    .line 550
    :try_start_5
    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 552
    iget-object v6, v1, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    invoke-interface {v6, v0, v5}, Lcom/meituan/robust/RobustCallBack;->exceptionNotify(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move/from16 p3, v12

    .line 555
    :goto_b
    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 557
    iget-object v6, v1, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    invoke-interface {v6, v0, v5}, Lcom/meituan/robust/RobustCallBack;->exceptionNotify(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_c
    move-object v0, v3

    goto :goto_e

    :cond_15
    :goto_d
    move-object/from16 v18, v9

    move-object/from16 p1, v10

    move/from16 p3, v12

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "patchedClassName or patchClassName is empty, patch info:id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/meituan/robust/Patch;->getMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    iget-object v3, v1, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    invoke-interface {v3, v0, v5}, Lcom/meituan/robust/RobustCallBack;->logNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-static {v5, v0}, Lgbsdk/common/host/abrt;->M(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    move-object/from16 v10, p1

    move/from16 v12, p3

    move/from16 v3, p4

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_16
    move-object/from16 v19, v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 p1, v10

    move/from16 p3, v12

    .line 562
    invoke-virtual {v13, v14}, Lcom/meituan/robust/Patch;->setPatchedClasses(Ljava/util/List;)V

    .line 564
    invoke-virtual {v2, v14}, Lcom/meituan/robust/Patch;->setPatchedClasses(Ljava/util/List;)V

    if-nez v19, :cond_17

    move/from16 v3, p4

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 567
    invoke-direct {v1, v6, v13, v8, v3}, Lcom/meituan/robust/PatchExecutor;->handlePatchApplyResult(ZLcom/meituan/robust/Patch;Ljava/lang/String;Z)V

    move/from16 v12, p3

    goto :goto_f

    :cond_17
    move/from16 v3, p4

    move-object/from16 v0, v19

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 569
    invoke-direct {v1, v9, v13, v0, v3}, Lcom/meituan/robust/PatchExecutor;->handlePatchApplyResult(ZLcom/meituan/robust/Patch;Ljava/lang/String;Z)V

    const/4 v12, 0x0

    :goto_f
    move-object/from16 v10, p1

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_18
    :goto_10
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 p1, v10

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "patchedClasses is null or empty, patch info:id = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/meituan/robust/Patch;->getMd5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    iget-object v9, v1, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    invoke-interface {v9, v0, v5}, Lcom/meituan/robust/RobustCallBack;->logNotify(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 507
    invoke-direct {v1, v9, v13, v0, v3}, Lcom/meituan/robust/PatchExecutor;->handlePatchApplyResult(ZLcom/meituan/robust/Patch;Ljava/lang/String;Z)V

    move-object/from16 v10, p1

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_19
    move/from16 p3, v12

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "patchTotal finished, totalSuccess:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/meituan/robust/PatchExecutor;->fetchPatchList()Ljava/util/List;

    move-result-object v1

    .line 63
    invoke-virtual {p0, v1}, Lcom/meituan/robust/PatchExecutor;->applyPatchList(Ljava/util/List;)V

    .line 64
    iget-object v1, p0, Lcom/meituan/robust/PatchExecutor;->executeListener:Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/meituan/robust/PatchExecutor;->executeListener:Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;->onPatchExecute(Z)V

    .line 66
    iput-object v0, p0, Lcom/meituan/robust/PatchExecutor;->executeListener:Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 69
    iget-object v2, p0, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    const-string v3, "PatchExecutor.run"

    invoke-interface {v2, v1, v3}, Lcom/meituan/robust/RobustCallBack;->exceptionNotify(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/meituan/robust/PatchExecutor;->executeListener:Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 71
    invoke-interface {v1, v2}, Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;->onPatchExecute(Z)V

    .line 72
    iput-object v0, p0, Lcom/meituan/robust/PatchExecutor;->executeListener:Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;

    :cond_0
    :goto_0
    return-void
.end method

.method public setExecuteListener(Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/meituan/robust/PatchExecutor;->executeListener:Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;

    return-void
.end method

.method public unzipPatch(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    const-string v0, "classes.dex"

    const-string v1, "robust"

    .line 300
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 302
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 305
    :cond_0
    :try_start_0
    new-instance p1, Ljava/util/zip/ZipInputStream;

    new-instance p4, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 307
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 308
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 309
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    if-ne p3, p2, :cond_2

    .line 312
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 314
    :cond_2
    new-instance p2, Ljava/io/File;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "classes"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".dex"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, v2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/meituan/robust/PatchExecutor;->doDecompressFile(Ljava/io/File;Ljava/util/zip/ZipInputStream;)V

    const-string p2, "doDecompressFile success"

    .line 317
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    :cond_3
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 323
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unzipPatch Error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method protected verifyPatch(Landroid/content/Context;Lcom/meituan/robust/Patch;)Z
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/meituan/robust/PatchExecutor;->patchManipulate:Lcom/meituan/robust/PatchManipulate;

    invoke-virtual {v0, p1, p2}, Lcom/meituan/robust/PatchManipulate;->verifyPatch(Landroid/content/Context;Lcom/meituan/robust/Patch;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 226
    iget-object p1, p0, Lcom/meituan/robust/PatchExecutor;->robustCallBack:Lcom/meituan/robust/RobustCallBack;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifyPatch failure, patch info:id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",md5 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/meituan/robust/Patch;->getMd5()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PatchExecutor.verifyPatch"

    invoke-interface {p1, p2, v0}, Lcom/meituan/robust/RobustCallBack;->logNotify(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public zipPatch(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zip patch dexFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "robust"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 286
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0xffc

    new-array p1, p1, [B

    .line 289
    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 290
    invoke-virtual {p2, p1, v1, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V

    .line 293
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 294
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->flush()V

    return-void
.end method
