.class public Lcom/bytedance/frankie/Frankie$1$2;
.super Ljava/lang/Object;
.source "Frankie.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/frankie/Frankie$1;->cT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic vL:Lcom/bytedance/frankie/Frankie$1;


# direct methods
.method constructor <init>(Lcom/bytedance/frankie/Frankie$1;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/bytedance/frankie/Frankie$1$2;->vL:Lcom/bytedance/frankie/Frankie$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/bytedance/frankie/Frankie$1$2;->vL:Lcom/bytedance/frankie/Frankie$1;

    iget-object v0, v0, Lcom/bytedance/frankie/Frankie$1;->vJ:Lcom/bytedance/frankie/FrankieLoadListener;

    const/4 v1, 0x0

    const-string v2, "fetch remote failed"

    invoke-interface {v0, v1, v2}, Lcom/bytedance/frankie/FrankieLoadListener;->onLoadResult(ZLjava/lang/String;)V

    return-void
.end method
