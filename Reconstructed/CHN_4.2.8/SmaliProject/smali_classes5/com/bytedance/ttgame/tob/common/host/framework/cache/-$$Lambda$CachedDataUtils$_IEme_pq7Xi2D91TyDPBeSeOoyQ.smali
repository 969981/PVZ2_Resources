.class public final synthetic Lcom/bytedance/ttgame/tob/common/host/framework/cache/-$$Lambda$CachedDataUtils$_IEme_pq7Xi2D91TyDPBeSeOoyQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyRequest;


# instance fields
.field public final synthetic f$0:Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils$CachedRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils$CachedRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/-$$Lambda$CachedDataUtils$_IEme_pq7Xi2D91TyDPBeSeOoyQ;->f$0:Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils$CachedRequest;

    return-void
.end method


# virtual methods
.method public final request()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyResponse;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/-$$Lambda$CachedDataUtils$_IEme_pq7Xi2D91TyDPBeSeOoyQ;->f$0:Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils$CachedRequest;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->lambda$updateCached$0(Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils$CachedRequest;)Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyResponse;

    move-result-object v0

    return-object v0
.end method
