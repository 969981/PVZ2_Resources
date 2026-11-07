.class public Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$4;
.super Lcom/bytedance/common/utility/concurrent/ThreadPlus;
.source "AbsCronetDependAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;->onPublicIPsChanged(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

.field final synthetic aHE:Ljava/util/List;

.field final synthetic aHF:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$4;->aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

    iput-object p3, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$4;->aHE:Ljava/util/List;

    iput-object p4, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$4;->aHF:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$4;->aHE:Ljava/util/List;

    iget-object v1, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$4;->aHF:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/bytedance/ttnet/TTNetInit;->onPublicIPsChanged(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
