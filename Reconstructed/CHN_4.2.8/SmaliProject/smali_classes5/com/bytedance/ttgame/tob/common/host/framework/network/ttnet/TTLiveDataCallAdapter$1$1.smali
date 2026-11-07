.class public Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1$1;
.super Ljava/lang/Object;
.source "TTLiveDataCallAdapter.java"

# interfaces
.implements Lcom/bytedance/retrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;->onActive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/retrofit2/Callback<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic this$1:Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1$1;->this$1:Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/bytedance/retrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/retrofit2/Call<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "35e6430a34a5371ac0c1affe887c315f"

    invoke-static {v0, p0, p1, v1, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1$1;->this$1:Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;

    invoke-direct {v0, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;->access$100(Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lcom/bytedance/retrofit2/Call;Lcom/bytedance/retrofit2/SsResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/retrofit2/Call<",
            "TR;>;",
            "Lcom/bytedance/retrofit2/SsResponse<",
            "TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "3bbe04351c788b720a55d50bb2224a6d"

    invoke-static {v0, p0, p1, v1, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1$1;->this$1:Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;

    invoke-direct {v0, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ApiResponse;-><init>(Lcom/bytedance/retrofit2/SsResponse;)V

    invoke-static {p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;->access$000(Lcom/bytedance/ttgame/tob/common/host/framework/network/ttnet/TTLiveDataCallAdapter$1;Ljava/lang/Object;)V

    return-void
.end method
