.class public Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$5;
.super Lcom/bytedance/common/utility/concurrent/ThreadPlus;
.source "AbsCronetDependAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;->onStoreIdcChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

.field final synthetic aHG:Ljava/lang/String;

.field final synthetic aHH:Ljava/lang/String;

.field final synthetic aHI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$5;->aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

    iput-object p3, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$5;->aHG:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$5;->aHH:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$5;->aHI:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 316
    invoke-static {}, Lgbsdk/common/host/abwc;->hk()Lgbsdk/common/host/abwc;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$5;->aHG:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$5;->aHH:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$5;->aHI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lgbsdk/common/host/abwc;->onStoreIdcChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lgbsdk/common/host/abkj;->cD()Lgbsdk/common/host/abkj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$5;->aHG:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$5;->aHH:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$5;->aHI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lgbsdk/common/host/abkj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
