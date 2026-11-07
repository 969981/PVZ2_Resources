.class public interface abstract Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService;
.super Ljava/lang/Object;
.source "IAppLogInitService.java"

# interfaces
.implements Lcom/bytedance/ttgame/tob/framework/service/annotation/ILifecycleService;


# virtual methods
.method public abstract getAppLogEventHandler()Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;
.end method

.method public abstract init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
.end method

.method public abstract setHeaderInfoAllTimes(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
