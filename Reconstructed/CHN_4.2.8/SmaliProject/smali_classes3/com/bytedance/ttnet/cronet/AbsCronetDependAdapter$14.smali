.class public Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$14;
.super Lcom/bytedance/common/utility/concurrent/ThreadPlus;
.source "AbsCronetDependAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;->onRTTOrThroughputEstimatesComputed(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

.field final synthetic aHX:I

.field final synthetic aHY:I

.field final synthetic aHZ:I


# direct methods
.method constructor <init>(Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;Ljava/lang/String;III)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$14;->aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

    iput p3, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$14;->aHX:I

    iput p4, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$14;->aHY:I

    iput p5, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$14;->aHZ:I

    invoke-direct {p0, p2}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$14;->aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

    iget v1, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$14;->aHX:I

    iget v2, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$14;->aHY:I

    iget v3, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$14;->aHZ:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;->onNQERTTOrThroughputComputed(III)V

    return-void
.end method
