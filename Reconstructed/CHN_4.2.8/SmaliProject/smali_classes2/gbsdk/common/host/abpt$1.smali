.class public Lgbsdk/common/host/abpt$1;
.super Ljava/lang/Object;
.source "PatchManager.java"

# interfaces
.implements Lcom/bytedance/frankie/patch/PatchCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abpt;->b(Ljava/util/List;Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic wi:Lgbsdk/common/host/abpt;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abpt;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lgbsdk/common/host/abpt$1;->wi:Lgbsdk/common/host/abpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 3

    .line 261
    iget-object v0, p0, Lgbsdk/common/host/abpt$1;->wi:Lgbsdk/common/host/abpt;

    iget-object v0, v0, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 262
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abpt$1;->wi:Lgbsdk/common/host/abpt;

    iget-object v1, v1, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/frankie/FrankieListener;

    if-eqz v2, :cond_0

    .line 264
    invoke-interface {v2, p1}, Lcom/bytedance/frankie/FrankieListener;->exceptionLog(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPatchDownloadResult(ILcom/meituan/robust/Patch;)V
    .locals 3

    .line 231
    iget-object v0, p0, Lgbsdk/common/host/abpt$1;->wi:Lgbsdk/common/host/abpt;

    iget-object v0, v0, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abpt$1;->wi:Lgbsdk/common/host/abpt;

    iget-object v1, v1, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/frankie/FrankieListener;

    if-eqz v2, :cond_0

    .line 234
    invoke-interface {v2, p1, p2}, Lcom/bytedance/frankie/FrankieListener;->onPatchDownloadResult(ILcom/meituan/robust/Patch;)V

    goto :goto_0

    .line 237
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPatchResult(ZLcom/meituan/robust/Patch;)V
    .locals 3

    .line 242
    iget-object v0, p0, Lgbsdk/common/host/abpt$1;->wi:Lgbsdk/common/host/abpt;

    iget-object v0, v0, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abpt$1;->wi:Lgbsdk/common/host/abpt;

    iget-object v1, v1, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/frankie/FrankieListener;

    if-eqz v2, :cond_0

    .line 245
    invoke-interface {v2, p1, p2}, Lcom/bytedance/frankie/FrankieListener;->onPatchResult(ZLcom/meituan/robust/Patch;)V

    goto :goto_0

    .line 248
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    .line 249
    invoke-virtual {p2}, Lcom/meituan/robust/Patch;->isAppliedSuccess()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lgbsdk/common/host/abpt$1;->wi:Lgbsdk/common/host/abpt;

    iget-object p1, p1, Lgbsdk/common/host/abpt;->wg:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 250
    iget-object p1, p0, Lgbsdk/common/host/abpt$1;->wi:Lgbsdk/common/host/abpt;

    iget-object p1, p1, Lgbsdk/common/host/abpt;->wg:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abqo;

    .line 251
    invoke-virtual {v0}, Lgbsdk/common/host/abqo;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/meituan/robust/Patch;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 252
    iput-boolean v1, v0, Lgbsdk/common/host/abqo;->isAppliedSuccess:Z

    .line 253
    invoke-virtual {p2}, Lcom/meituan/robust/Patch;->getPatchedClasses()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lgbsdk/common/host/abqo;->patchedClasses:Ljava/util/List;

    goto :goto_1

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 248
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
