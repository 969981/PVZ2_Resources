.class public Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$2;
.super Ljava/lang/Object;
.source "CommonCoreData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->sendLogWithCache(Ljava/lang/String;Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic CT:Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

.field final synthetic CU:Ljava/lang/String;

.field final synthetic CV:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$2;->CT:Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$2;->CU:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$2;->CV:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "026618343419664058cde0efa0548797"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$2;->CU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$2;->CT:Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    iget-object v1, v1, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$2;->CV:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cached_applog_data"

    invoke-static {v2, v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheAppLogData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$2;->CU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$2;->CV:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCoreData"

    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
