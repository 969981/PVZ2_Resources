.class public Lcom/bytedance/frankie/Frankie$1$1;
.super Ljava/lang/Object;
.source "Frankie.java"

# interfaces
.implements Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/frankie/Frankie$1;->m(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic vL:Lcom/bytedance/frankie/Frankie$1;


# direct methods
.method constructor <init>(Lcom/bytedance/frankie/Frankie$1;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/bytedance/frankie/Frankie$1$1;->vL:Lcom/bytedance/frankie/Frankie$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatchExecute(Z)V
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceLoadRemote onPatchExecute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Frankie"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie$1$1;->vL:Lcom/bytedance/frankie/Frankie$1;

    iget-object v0, v0, Lcom/bytedance/frankie/Frankie$1;->vJ:Lcom/bytedance/frankie/FrankieLoadListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie$1$1;->vL:Lcom/bytedance/frankie/Frankie$1;

    iget-object v0, v0, Lcom/bytedance/frankie/Frankie$1;->vK:Lcom/bytedance/frankie/Frankie;

    iget-object v0, v0, Lcom/bytedance/frankie/Frankie;->mHandler:Lgbsdk/common/host/abox;

    new-instance v1, Lcom/bytedance/frankie/Frankie$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/frankie/Frankie$1$1$1;-><init>(Lcom/bytedance/frankie/Frankie$1$1;Z)V

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abox;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
