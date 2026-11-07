.class public Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$12;
.super Lcom/bytedance/common/utility/concurrent/ThreadPlus;
.source "AbsCronetDependAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;->onMappingRequestStatus(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

.field final synthetic aHV:I

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$12;->aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

    iput-object p3, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$12;->val$key:Ljava/lang/String;

    iput p4, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$12;->aHV:I

    invoke-direct {p0, p2}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$12;->aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

    iget-object v1, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$12;->val$key:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$12;->aHV:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;->onCronetMappingRequestStatus(Ljava/lang/String;I)V

    return-void
.end method
