.class public Lgbsdk/common/host/abqm;
.super Ljava/lang/Object;
.source "Patcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abqm$ab;
    }
.end annotation


# static fields
.field private static final wS:I = 0x0

.field private static final wT:I = 0x1

.field private static final wU:I = 0x2


# instance fields
.field public mContext:Landroid/content/Context;

.field private wM:Lgbsdk/common/host/abpr;

.field private wN:Lgbsdk/common/host/abpo;

.field public wO:Lcom/bytedance/frankie/patch/PatchCallBack;

.field private wP:Lcom/meituan/robust/PatchManipulate;

.field public wQ:Ljava/lang/String;

.field private wR:Lgbsdk/common/host/abql;

.field private wV:Lcom/meituan/robust/RobustCallBack;


# direct methods
.method private constructor <init>(Lgbsdk/common/host/abqm$ab;)V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lgbsdk/common/host/abqm$1;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abqm$1;-><init>(Lgbsdk/common/host/abqm;)V

    iput-object v0, p0, Lgbsdk/common/host/abqm;->wV:Lcom/meituan/robust/RobustCallBack;

    if-eqz p1, :cond_2

    .line 36
    iget-object v0, p1, Lgbsdk/common/host/abqm$ab;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lgbsdk/common/host/abqm;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, p1, Lgbsdk/common/host/abqm$ab;->wM:Lgbsdk/common/host/abpr;

    iput-object v0, p0, Lgbsdk/common/host/abqm;->wM:Lgbsdk/common/host/abpr;

    .line 38
    iget-object v0, p1, Lgbsdk/common/host/abqm$ab;->wN:Lgbsdk/common/host/abpo;

    iput-object v0, p0, Lgbsdk/common/host/abqm;->wN:Lgbsdk/common/host/abpo;

    .line 39
    iget-object v0, p1, Lgbsdk/common/host/abqm$ab;->wO:Lcom/bytedance/frankie/patch/PatchCallBack;

    iput-object v0, p0, Lgbsdk/common/host/abqm;->wO:Lcom/bytedance/frankie/patch/PatchCallBack;

    .line 40
    iget-object v0, p1, Lgbsdk/common/host/abqm$ab;->wP:Lcom/meituan/robust/PatchManipulate;

    if-nez v0, :cond_0

    new-instance v0, Lgbsdk/common/host/abpq;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abpq;-><init>(Lgbsdk/common/host/abqm;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p1, Lgbsdk/common/host/abqm$ab;->wP:Lcom/meituan/robust/PatchManipulate;

    :goto_0
    iput-object v0, p0, Lgbsdk/common/host/abqm;->wP:Lcom/meituan/robust/PatchManipulate;

    .line 42
    iget-object v0, p1, Lgbsdk/common/host/abqm$ab;->wQ:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lgbsdk/common/host/abqm;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lgbsdk/common/host/abqm$ab;->wQ:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lgbsdk/common/host/abqm;->wQ:Ljava/lang/String;

    .line 44
    new-instance v0, Lgbsdk/common/host/abql;

    iget-object v1, p0, Lgbsdk/common/host/abqm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lgbsdk/common/host/abqm;->wP:Lcom/meituan/robust/PatchManipulate;

    iget-object v3, p0, Lgbsdk/common/host/abqm;->wV:Lcom/meituan/robust/RobustCallBack;

    iget-object p1, p1, Lgbsdk/common/host/abqm$ab;->wh:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1, v2, v3, p1}, Lgbsdk/common/host/abql;-><init>(Landroid/content/Context;Lcom/meituan/robust/PatchManipulate;Lcom/meituan/robust/RobustCallBack;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lgbsdk/common/host/abqm;->wR:Lgbsdk/common/host/abql;

    return-void

    .line 35
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Build could not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lgbsdk/common/host/abqm$ab;Lgbsdk/common/host/abqm$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lgbsdk/common/host/abqm;-><init>(Lgbsdk/common/host/abqm$ab;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lgbsdk/common/host/abqm;->wR:Lgbsdk/common/host/abql;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1}, Lgbsdk/common/host/abql;->setExecuteListener(Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/meituan/robust/Patch;)Z
    .locals 6

    .line 85
    iget-object v0, p0, Lgbsdk/common/host/abqm;->wN:Lgbsdk/common/host/abpo;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string v0, ""

    .line 90
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v2, p0, Lgbsdk/common/host/abqm;->wO:Lcom/bytedance/frankie/patch/PatchCallBack;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lgbsdk/common/host/abqm;->wO:Lcom/bytedance/frankie/patch/PatchCallBack;

    invoke-interface {v2, v1, p1}, Lcom/bytedance/frankie/patch/PatchCallBack;->onPatchDownloadResult(ILcom/meituan/robust/Patch;)V

    .line 95
    :cond_0
    iget-object v2, p0, Lgbsdk/common/host/abqm;->wN:Lgbsdk/common/host/abpo;

    iput v1, v2, Lgbsdk/common/host/abpo;->wJ:I

    .line 96
    iget-object v2, p0, Lgbsdk/common/host/abqm;->wN:Lgbsdk/common/host/abpo;

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getPluginVersion()I

    move-result v4

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lgbsdk/common/host/abpo;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lgbsdk/common/host/abqm;->wO:Lcom/bytedance/frankie/patch/PatchCallBack;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lgbsdk/common/host/abqm;->wO:Lcom/bytedance/frankie/patch/PatchCallBack;

    invoke-interface {v2, v3, p1}, Lcom/bytedance/frankie/patch/PatchCallBack;->onPatchDownloadResult(ILcom/meituan/robust/Patch;)V

    .line 102
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/meituan/robust/Patch;->getLocalPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v3

    :catch_0
    move-exception v2

    .line 108
    iget-object v3, p0, Lgbsdk/common/host/abqm;->wV:Lcom/meituan/robust/RobustCallBack;

    if-eqz v3, :cond_3

    const-string v4, "Patcher.download"

    .line 109
    invoke-interface {v3, v2, v4}, Lcom/meituan/robust/RobustCallBack;->exceptionNotify(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 112
    :cond_3
    iget-object v2, p0, Lgbsdk/common/host/abqm;->wO:Lcom/bytedance/frankie/patch/PatchCallBack;

    if-eqz v2, :cond_4

    const/4 v3, 0x2

    .line 113
    invoke-interface {v2, v3, p1}, Lcom/bytedance/frankie/patch/PatchCallBack;->onPatchDownloadResult(ILcom/meituan/robust/Patch;)V

    .line 116
    :cond_4
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_5
    return v1
.end method

.method public de()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lgbsdk/common/host/abqm;->wM:Lgbsdk/common/host/abpr;

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    invoke-virtual {v0}, Lgbsdk/common/host/abpr;->de()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Frankie"

    const-string v2, "fetchMosses failed."

    .line 77
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dg()V
    .locals 1

    .line 60
    iget-object v0, p0, Lgbsdk/common/host/abqm;->wR:Lgbsdk/common/host/abql;

    invoke-virtual {v0}, Lgbsdk/common/host/abql;->run()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lgbsdk/common/host/abqm;->wR:Lgbsdk/common/host/abql;

    iget-boolean v0, v0, Lgbsdk/common/host/abql;->wX:Z

    return v0
.end method

.method public start()V
    .locals 1

    .line 55
    iget-object v0, p0, Lgbsdk/common/host/abqm;->wR:Lgbsdk/common/host/abql;

    invoke-virtual {v0}, Lgbsdk/common/host/abql;->start()V

    return-void
.end method

.method public v(Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lgbsdk/common/host/abqm;->wR:Lgbsdk/common/host/abql;

    iput-boolean p1, v0, Lgbsdk/common/host/abql;->wX:Z

    return-void
.end method
