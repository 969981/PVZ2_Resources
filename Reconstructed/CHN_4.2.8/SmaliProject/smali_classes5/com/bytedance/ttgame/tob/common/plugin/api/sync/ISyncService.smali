.class public interface abstract Lcom/bytedance/ttgame/tob/common/plugin/api/sync/ISyncService;
.super Ljava/lang/Object;
.source "ISyncService.java"

# interfaces
.implements Lcom/bytedance/ttgame/tob/framework/service/annotation/ILifecycleService;


# virtual methods
.method public abstract initActively(Landroid/content/Context;)V
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logout()V
.end method

.method public abstract registerSyncDataListener(ILcom/bytedance/ttgame/tob/common/plugin/api/sync/SyncDataListener;)V
.end method

.method public abstract setTokenExpiredListener(Lcom/bytedance/ttgame/tob/common/plugin/api/sync/ITokenExpiredListener;)V
.end method

.method public abstract unregisterSyncDataListener(ILcom/bytedance/ttgame/tob/common/plugin/api/sync/SyncDataListener;)V
.end method
