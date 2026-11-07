.class public Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$2;
.super Lcom/bytedance/common/utility/concurrent/ThreadPlus;
.source "AbsCronetDependAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;->onColdStartFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;


# direct methods
.method constructor <init>(Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter$2;->aHC:Lcom/bytedance/ttnet/cronet/AbsCronetDependAdapter;

    invoke-direct {p0, p2}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 277
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->notifyColdStartFinish()V

    return-void
.end method
