.class public interface abstract Lcom/bytedance/frankie/FrankieListener;
.super Ljava/lang/Object;
.source "FrankieListener.java"


# virtual methods
.method public abstract exceptionLog(Ljava/lang/String;)V
.end method

.method public abstract onPatchDownloadResult(ILcom/meituan/robust/Patch;)V
.end method

.method public abstract onPatchInfoResponse(Ljava/lang/String;)V
.end method

.method public abstract onPatchResult(ZLcom/meituan/robust/Patch;)V
.end method

.method public abstract onPatchSoAutoLoadAfterInstall(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onPatchSoInstall(ZLcom/meituan/robust/Patch;Lcom/bytedance/frankie/so/SoPatchInfo;Ljava/lang/String;)V
.end method

.method public abstract onPatchSoLoad(Ljava/lang/String;)V
.end method
