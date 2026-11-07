.class public interface abstract Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;
.super Ljava/lang/Object;
.source "HostService.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0014\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tH&J\u0008\u0010\u000b\u001a\u00020\u000cH&J\n\u0010\r\u001a\u0004\u0018\u00010\u000eH&J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0010H&J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0014H&J\u0008\u0010\u0015\u001a\u00020\u0016H&\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;",
        "Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;",
        "getALoggerDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/ALoggerDelegate;",
        "getAppLogDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;",
        "getFrankieDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/FrankieDelegate;",
        "getHostConstantMap",
        "",
        "",
        "getLuffyDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;",
        "getNpthDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/NpthDelegate;",
        "getPerformanceDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/PerformanceDelegate;",
        "getSalvageLogDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/SalvageLogDelegate;",
        "getTTNetDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/TTNetDelegate;",
        "isHostToB",
        "",
        "ch_delegate_api_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getALoggerDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/ALoggerDelegate;
.end method

.method public abstract getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;
.end method

.method public abstract getFrankieDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/FrankieDelegate;
.end method

.method public abstract getHostConstantMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLuffyDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;
.end method

.method public abstract getNpthDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/NpthDelegate;
.end method

.method public abstract getPerformanceDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/PerformanceDelegate;
.end method

.method public abstract getSalvageLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/SalvageLogDelegate;
.end method

.method public abstract getTTNetDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/TTNetDelegate;
.end method

.method public abstract isHostToB()Z
.end method
