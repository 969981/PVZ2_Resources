.class public Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$6;
.super Lcom/bytedance/common/utility/concurrent/ThreadPlus;
.source "AbsCronetDependAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;->onTNCUpdateFailed(Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

.field final synthetic aHJ:Ljava/util/ArrayList;

.field final synthetic aHK:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$6;->aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

    iput-object p3, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$6;->aHJ:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$6;->aHK:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 330
    invoke-static {}, Lgbsdk/common/host/abth;->gP()Lgbsdk/common/host/abth;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$6;->aHJ:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$6;->aHK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lgbsdk/common/host/abth;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
