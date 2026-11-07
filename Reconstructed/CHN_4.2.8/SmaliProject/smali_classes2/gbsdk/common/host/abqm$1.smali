.class public Lgbsdk/common/host/abqm$1;
.super Ljava/lang/Object;
.source "Patcher.java"

# interfaces
.implements Lcom/meituan/robust/RobustCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic wW:Lgbsdk/common/host/abqm;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abqm;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lgbsdk/common/host/abqm$1;->wW:Lgbsdk/common/host/abqm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionNotify(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exceptionNotify["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Frankie"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    iget-object v0, p0, Lgbsdk/common/host/abqm$1;->wW:Lgbsdk/common/host/abqm;

    iget-object v0, v0, Lgbsdk/common/host/abqm;->wO:Lcom/bytedance/frankie/patch/PatchCallBack;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lgbsdk/common/host/abqm$1;->wW:Lgbsdk/common/host/abqm;

    iget-object v0, v0, Lgbsdk/common/host/abqm;->wO:Lcom/bytedance/frankie/patch/PatchCallBack;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exceptionNotify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/frankie/patch/PatchCallBack;->log(Ljava/lang/String;)V

    .line 176
    :cond_0
    invoke-static {p2, p1}, Lgbsdk/common/host/abrt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Frankie"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lgbsdk/common/host/abqm$1;->wW:Lgbsdk/common/host/abqm;

    iget-object v0, v0, Lgbsdk/common/host/abqm;->wO:Lcom/bytedance/frankie/patch/PatchCallBack;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lgbsdk/common/host/abqm$1;->wW:Lgbsdk/common/host/abqm;

    iget-object v0, v0, Lgbsdk/common/host/abqm;->wO:Lcom/bytedance/frankie/patch/PatchCallBack;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logNotify: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/frankie/patch/PatchCallBack;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPatchApplied(ZLcom/meituan/robust/Patch;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPatchApplied: result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Frankie"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abqm$1;->wW:Lgbsdk/common/host/abqm;

    iget-object v0, v0, Lgbsdk/common/host/abqm;->wO:Lcom/bytedance/frankie/patch/PatchCallBack;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lgbsdk/common/host/abqm$1;->wW:Lgbsdk/common/host/abqm;

    iget-object v0, v0, Lgbsdk/common/host/abqm;->wO:Lcom/bytedance/frankie/patch/PatchCallBack;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/frankie/patch/PatchCallBack;->onPatchResult(ZLcom/meituan/robust/Patch;)V

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 150
    iget-object p1, p0, Lgbsdk/common/host/abqm$1;->wW:Lgbsdk/common/host/abqm;

    iget-object p1, p1, Lgbsdk/common/host/abqm;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lgbsdk/common/host/abpy;->V(Landroid/content/Context;)Lgbsdk/common/host/abpy;

    move-result-object p1

    invoke-virtual {p1}, Lgbsdk/common/host/abpy;->cW()V

    :cond_2
    return-void
.end method

.method public onPatchFetched(ZZLcom/meituan/robust/Patch;)V
    .locals 0

    return-void
.end method

.method public onPatchListFetched(ZZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lcom/meituan/robust/Patch;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPatchVerified(ZLcom/meituan/robust/Patch;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPatchVerified: result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/meituan/robust/Patch;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Frankie"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
