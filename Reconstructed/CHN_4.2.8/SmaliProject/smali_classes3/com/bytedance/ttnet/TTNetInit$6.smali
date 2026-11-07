.class public final Lcom/bytedance/ttnet/TTNetInit$6;
.super Ljava/lang/Object;
.source "TTNetInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/TTNetInit;->tryInitCookieManager(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic aFn:Z

.field final synthetic aFo:Z

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/bytedance/ttnet/TTNetInit$6;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/bytedance/ttnet/TTNetInit$6;->aFn:Z

    iput-boolean p3, p0, Lcom/bytedance/ttnet/TTNetInit$6;->aFo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/bytedance/ttnet/TTNetInit$6;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/bytedance/ttnet/TTNetInit$6;->aFn:Z

    iget-boolean v2, p0, Lcom/bytedance/ttnet/TTNetInit$6;->aFo:Z

    invoke-static {v0, v1, v2}, Lcom/bytedance/ttnet/TTNetInit;->tryInitCookieManager(Landroid/content/Context;ZZ)V

    return-void
.end method
