.class public Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;
.super Ljava/lang/Object;
.source "NetworkBoundResource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->onChanged(Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic this$1:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;

.field final synthetic val$response:Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;->this$1:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;->val$response:Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2f09c52a2e83dde304033a591b5c4b8f"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;->this$1:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;->this$1:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;

    iget-object v1, v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;->val$response:Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;

    invoke-virtual {v1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->processResponse(Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->saveCallResult(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;->this$1:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3;->this$0:Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource;->appExecutors:Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->mainThread()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1$1;

    invoke-direct {v1, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/livedata/NetworkBoundResource$3$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
