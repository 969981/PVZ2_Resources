.class public Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$15;
.super Lcom/bytedance/common/utility/concurrent/ThreadPlus;
.source "AbsCronetDependAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;->onPacketLossComputed(IDDDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

.field final synthetic aIa:I

.field final synthetic aIb:D

.field final synthetic aIc:D

.field final synthetic aId:D

.field final synthetic aIe:D


# direct methods
.method constructor <init>(Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;Ljava/lang/String;IDDDD)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$15;->aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

    iput p3, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$15;->aIa:I

    iput-wide p4, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$15;->aIb:D

    iput-wide p6, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$15;->aIc:D

    iput-wide p8, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$15;->aId:D

    iput-wide p10, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$15;->aIe:D

    invoke-direct {p0, p2}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 225
    iget-object v0, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$15;->aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

    iget v1, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$15;->aIa:I

    iget-wide v2, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$15;->aIb:D

    iget-wide v4, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$15;->aIc:D

    iget-wide v6, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$15;->aId:D

    iget-wide v8, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$15;->aIe:D

    invoke-virtual/range {v0 .. v9}, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;->onNQEPacketLossComputed(IDDDD)V

    return-void
.end method
