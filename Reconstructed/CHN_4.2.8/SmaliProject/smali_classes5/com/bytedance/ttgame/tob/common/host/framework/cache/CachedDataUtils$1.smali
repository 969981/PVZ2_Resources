.class public Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils$1;
.super Ljava/lang/Object;
.source "CachedDataUtils.java"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->addRemoteUpdateListener(Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedUpdateListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic val$listener:Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedUpdateListener;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedUpdateListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils$1;->val$listener:Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e94fafab9289632afd038a5b40cf644f"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils$1;->val$listener:Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedUpdateListener;

    if-eqz v0, :cond_1

    .line 66
    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedUpdateListener;->onUpdate()V

    :cond_1
    return-void
.end method
