.class public Lgbsdk/common/host/abpq;
.super Lcom/meituan/robust/PatchManipulate;
.source "PatchManipulateImp.java"


# instance fields
.field private wL:Lgbsdk/common/host/abqm;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/abqm;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/meituan/robust/PatchManipulate;-><init>()V

    .line 36
    iput-object p1, p0, Lgbsdk/common/host/abpq;->wL:Lgbsdk/common/host/abqm;

    return-void
.end method


# virtual methods
.method public a(Lcom/meituan/robust/Patch;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 70
    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_"

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "config_robust_"

    .line 79
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Frankie"

    const-string v1, "copy temp jar"

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Lgbsdk/common/host/abpp;

    invoke-direct {v0}, Lgbsdk/common/host/abpp;-><init>()V

    .line 174
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 178
    :cond_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 180
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    .line 185
    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 186
    invoke-virtual {v0, v1, v2}, Lgbsdk/common/host/abpp;->decrypt([BI)V

    const/4 v3, 0x0

    .line 187
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 190
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 193
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public ensurePatchExist(Lcom/meituan/robust/Patch;)Z
    .locals 7

    .line 103
    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "patch:"

    const-string v2, "PatchManipulateImp.ensurePatchExist"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " md5 is empty"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lgbsdk/common/host/abrt;->M(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 114
    :cond_0
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/frankie/Frankie;->getFrankieConfig()Lcom/bytedance/frankie/IFrankieConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/frankie/IFrankieConfig;->isMainProcess()Z

    move-result v0

    .line 115
    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getLocalPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgbsdk/common/host/abqh;->getFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_6

    const-string v4, "Frankie"

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lgbsdk/common/host/abpq;->wL:Lgbsdk/common/host/abqm;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abqm;->b(Lcom/meituan/robust/Patch;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/frankie/Frankie;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v3}, Lgbsdk/common/host/abqn;->c(Landroid/content/Context;Z)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download completed! "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " notifySubProcess"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :try_start_0
    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lgbsdk/common/host/abpq;->copy(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    :cond_1
    invoke-static {}, Lgbsdk/common/host/abqf;->dm()Lgbsdk/common/host/abqf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abqf;->g(Lcom/meituan/robust/Patch;)V

    goto :goto_1

    :cond_2
    return v3

    .line 137
    :cond_3
    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgbsdk/common/host/abqh;->getFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubProcess->ensurePatchExist false, patch is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 141
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 143
    :try_start_1
    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgbsdk/common/host/abpq;->copy(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :catch_1
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubProcess->ensurePatchExist true, patch is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 154
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lgbsdk/common/host/abpq;->copy(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    nop

    :goto_0
    if-eqz v0, :cond_7

    .line 159
    invoke-static {}, Lgbsdk/common/host/abqf;->dm()Lgbsdk/common/host/abqf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abqf;->f(Lcom/meituan/robust/Patch;)V

    .line 163
    :cond_7
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getTempPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v3, 0x1

    :cond_8
    if-nez v3, :cond_9

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " temp file not exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lgbsdk/common/host/abrt;->M(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return v3
.end method

.method public fetchPatchList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/meituan/robust/Patch;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lgbsdk/common/host/abpq;->wL:Lgbsdk/common/host/abqm;

    invoke-virtual {v0}, Lgbsdk/common/host/abqm;->de()Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lgbsdk/common/host/aboz;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 43
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/abqo;

    if-eqz v2, :cond_1

    .line 46
    new-instance v3, Lcom/meituan/robust/Patch;

    invoke-direct {v3}, Lcom/meituan/robust/Patch;-><init>()V

    .line 47
    iget-object v4, v2, Lgbsdk/common/host/abqo;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/meituan/robust/Patch;->setUrl(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Lgbsdk/common/host/abqo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meituan/robust/Patch;->setName(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2}, Lgbsdk/common/host/abqo;->getMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meituan/robust/Patch;->setMd5(Ljava/lang/String;)V

    .line 50
    iget v4, v2, Lgbsdk/common/host/abqo;->xa:I

    invoke-virtual {v3, v4}, Lcom/meituan/robust/Patch;->setPluginVersion(I)V

    .line 54
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/gradle/compliance/ProcessUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgbsdk/common/host/abqb;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 55
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-le v5, v6, :cond_2

    const/4 v5, 0x0

    .line 56
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 58
    :cond_2
    iget-boolean v5, v2, Lgbsdk/common/host/abqo;->isSupportSubProcess:Z

    invoke-virtual {v3, v5}, Lcom/meituan/robust/Patch;->setSupportSubProcess(Z)V

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lgbsdk/common/host/abpq;->wL:Lgbsdk/common/host/abqm;

    iget-object v6, v6, Lgbsdk/common/host/abqm;->wQ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_robust"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/meituan/robust/Patch;->setLocalPath(Ljava/lang/String;)V

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "robust"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meituan/robust/Patch;->setTempPath(Ljava/lang/String;)V

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.bytedance.ies.patch."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lgbsdk/common/host/abpq;->a(Lcom/meituan/robust/Patch;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "PatchesInfoImpl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meituan/robust/Patch;->setPatchesInfoImplClassFullName(Ljava/lang/String;)V

    .line 62
    iget-boolean v2, v2, Lgbsdk/common/host/abqo;->isAppliedSuccess:Z

    invoke-virtual {v3, v2}, Lcom/meituan/robust/Patch;->setAppliedSuccess(Z)V

    .line 63
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v1
.end method

.method public verifyPatch(Landroid/content/Context;Lcom/meituan/robust/Patch;)Z
    .locals 1

    .line 91
    invoke-static {p2}, Lgbsdk/common/host/abqh;->c(Lcom/meituan/robust/Patch;)Z

    move-result p1

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "verifyPatch result:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Frankie"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method
