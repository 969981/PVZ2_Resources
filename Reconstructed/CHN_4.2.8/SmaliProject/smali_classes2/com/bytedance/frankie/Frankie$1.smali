.class public Lcom/bytedance/frankie/Frankie$1;
.super Ljava/lang/Object;
.source "Frankie.java"

# interfaces
.implements Lgbsdk/common/host/abps$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/frankie/Frankie;->forceLoadRemote(Lcom/bytedance/frankie/FrankieLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic vJ:Lcom/bytedance/frankie/FrankieLoadListener;

.field final synthetic vK:Lcom/bytedance/frankie/Frankie;


# direct methods
.method constructor <init>(Lcom/bytedance/frankie/Frankie;Lcom/bytedance/frankie/FrankieLoadListener;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/bytedance/frankie/Frankie$1;->vK:Lcom/bytedance/frankie/Frankie;

    iput-object p2, p0, Lcom/bytedance/frankie/Frankie$1;->vJ:Lcom/bytedance/frankie/FrankieLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public be(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public cT()V
    .locals 2

    const-string v0, "Frankie"

    const-string v1, "forceLoadRemote fail, onFetchRemoteFailed"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie$1;->vJ:Lcom/bytedance/frankie/FrankieLoadListener;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie$1;->vK:Lcom/bytedance/frankie/Frankie;

    iget-object v0, v0, Lcom/bytedance/frankie/Frankie;->mHandler:Lgbsdk/common/host/abox;

    new-instance v1, Lcom/bytedance/frankie/Frankie$1$2;

    invoke-direct {v1, p0}, Lcom/bytedance/frankie/Frankie$1$2;-><init>(Lcom/bytedance/frankie/Frankie$1;)V

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abox;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public m(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;)V"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie$1;->vK:Lcom/bytedance/frankie/Frankie;

    iget-object v0, v0, Lcom/bytedance/frankie/Frankie;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lgbsdk/common/host/abpt;->W(Landroid/content/Context;)Lgbsdk/common/host/abpt;

    move-result-object v0

    new-instance v1, Lcom/bytedance/frankie/Frankie$1$1;

    invoke-direct {v1, p0}, Lcom/bytedance/frankie/Frankie$1$1;-><init>(Lcom/bytedance/frankie/Frankie$1;)V

    invoke-virtual {v0, p1, v1}, Lgbsdk/common/host/abpt;->a(Ljava/util/List;Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;)V

    return-void
.end method
