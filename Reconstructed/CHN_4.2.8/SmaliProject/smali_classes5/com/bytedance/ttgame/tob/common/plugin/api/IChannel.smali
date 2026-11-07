.class public interface abstract Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;
.super Ljava/lang/Object;
.source "IChannel.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J8\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\r2\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\u000fH&J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012H&J,\u0010\u0013\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u001a\u0010\u0014\u001a\u0016\u0012\u0004\u0012\u00020\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\t0\u000fH&J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0018\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0005H&\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;",
        "Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;",
        "getChannelVersion",
        "Landroid/util/Pair;",
        "",
        "",
        "getNetUtils",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext$NetUtils;",
        "init",
        "",
        "activity",
        "Landroid/app/Activity;",
        "onSuccess",
        "Lkotlin/Function0;",
        "onError",
        "Lkotlin/Function2;",
        "onPrepareSuccess",
        "context",
        "Landroid/content/Context;",
        "preInit",
        "callback",
        "",
        "registerInitInterceptor",
        "interceptor",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor;",
        "registerInitInterceptorWithPriority",
        "priority",
        "ch_plugin_api_tobRelease"
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

.method public abstract init(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPrepareSuccess(Landroid/content/Context;)V
.end method

.method public abstract preInit(Landroid/app/Activity;Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerInitInterceptor(Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor;)V
.end method

.method public abstract registerInitInterceptorWithPriority(Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor;I)V
.end method
