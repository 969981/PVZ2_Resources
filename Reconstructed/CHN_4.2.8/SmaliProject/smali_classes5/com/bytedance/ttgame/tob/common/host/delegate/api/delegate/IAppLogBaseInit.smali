.class public interface abstract Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogBaseInit;
.super Ljava/lang/Object;
.source "AppLogDelegate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\nH&J\n\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&J \u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H&J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H&\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogBaseInit;",
        "",
        "addDataObserver",
        "",
        "dataObserver",
        "Lcom/bytedance/applog/IDataObserver;",
        "addSessionHook",
        "hook",
        "Lcom/bytedance/applog/ISessionObserver;",
        "getEncryptAndCompress",
        "",
        "getInitConfig",
        "Lcom/bytedance/applog/InitConfig;",
        "init",
        "context",
        "Landroid/content/Context;",
        "config",
        "resumeActivity",
        "Landroid/app/Activity;",
        "setActiveCustomParams",
        "callback",
        "Lcom/bytedance/applog/IActiveCustomParamsCallback;",
        "setEventHandler",
        "handler",
        "Lcom/bytedance/applog/event/IEventHandler;",
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
.method public abstract addDataObserver(Lcom/bytedance/applog/IDataObserver;)V
.end method

.method public abstract addSessionHook(Lcom/bytedance/applog/ISessionObserver;)V
.end method

.method public abstract getEncryptAndCompress()Z
.end method

.method public abstract getInitConfig()Lcom/bytedance/applog/InitConfig;
.end method

.method public abstract init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;Landroid/app/Activity;)V
.end method

.method public abstract setActiveCustomParams(Lcom/bytedance/applog/IActiveCustomParamsCallback;)V
.end method

.method public abstract setEventHandler(Lcom/bytedance/applog/event/IEventHandler;)V
.end method
