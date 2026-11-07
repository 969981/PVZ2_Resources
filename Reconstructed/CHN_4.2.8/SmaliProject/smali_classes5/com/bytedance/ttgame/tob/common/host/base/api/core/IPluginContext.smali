.class public interface abstract Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext;
.super Ljava/lang/Object;
.source "IPluginContext.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext$NetUtils;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001:\u0001\u000eJ\u0014\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H&J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0018\u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0005H&\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext;",
        "Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;",
        "getChannelVersion",
        "Landroid/util/Pair;",
        "",
        "",
        "getNetUtils",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext$NetUtils;",
        "registerInitInterceptor",
        "",
        "interceptor",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor;",
        "registerInitInterceptorWithPriority",
        "priority",
        "NetUtils",
        "ch_base_api_tobRelease"
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
.method public abstract getChannelVersion()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNetUtils()Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext$NetUtils;
.end method

.method public abstract registerInitInterceptor(Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor;)V
.end method

.method public abstract registerInitInterceptorWithPriority(Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor;I)V
.end method
