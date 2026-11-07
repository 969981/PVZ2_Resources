.class public Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$10;
.super Lcom/bytedance/common/utility/concurrent/ThreadPlus;
.source "AbsCronetDependAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;->onTTDnsResolveResult(Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

.field final synthetic aHN:Ljava/lang/String;

.field final synthetic aHO:Ljava/lang/String;

.field final synthetic aHP:I

.field final synthetic aHQ:I

.field final synthetic aHR:I

.field final synthetic aHS:Ljava/util/List;

.field final synthetic aHT:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$10;->aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

    iput-object p3, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$10;->aHN:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$10;->aHO:Ljava/lang/String;

    iput p5, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$10;->aHP:I

    iput p6, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$10;->aHQ:I

    iput p7, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$10;->aHR:I

    iput-object p8, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$10;->aHS:Ljava/util/List;

    iput-object p9, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$10;->aHT:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 143
    invoke-static {}, Lgbsdk/common/host/abvy;->hp()Lgbsdk/common/host/abvy;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$10;->aHN:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$10;->aHO:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$10;->aHP:I

    iget v4, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$10;->aHQ:I

    iget v5, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$10;->aHR:I

    iget-object v6, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$10;->aHS:Ljava/util/List;

    iget-object v7, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$10;->aHT:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lgbsdk/common/host/abvy;->a(Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;Ljava/lang/String;)V

    return-void
.end method
