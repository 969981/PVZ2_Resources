.class public Lcom/bytedance/frankie/Frankie$1$1$1;
.super Ljava/lang/Object;
.source "Frankie.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/frankie/Frankie$1$1;->onPatchExecute(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic vM:Z

.field final synthetic vN:Lcom/bytedance/frankie/Frankie$1$1;


# direct methods
.method constructor <init>(Lcom/bytedance/frankie/Frankie$1$1;Z)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/bytedance/frankie/Frankie$1$1$1;->vN:Lcom/bytedance/frankie/Frankie$1$1;

    iput-boolean p2, p0, Lcom/bytedance/frankie/Frankie$1$1$1;->vM:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie$1$1$1;->vN:Lcom/bytedance/frankie/Frankie$1$1;

    iget-object v0, v0, Lcom/bytedance/frankie/Frankie$1$1;->vL:Lcom/bytedance/frankie/Frankie$1;

    iget-object v0, v0, Lcom/bytedance/frankie/Frankie$1;->vJ:Lcom/bytedance/frankie/FrankieLoadListener;

    iget-boolean v1, p0, Lcom/bytedance/frankie/Frankie$1$1$1;->vM:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/frankie/FrankieLoadListener;->onLoadResult(ZLjava/lang/String;)V

    return-void
.end method
