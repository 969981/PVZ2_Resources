.class public Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$1;
.super Ljava/lang/Object;
.source "CommonCoreData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->cachedAllPluginVersion(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic CS:Ljava/util/Map;

.field final synthetic CT:Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;Ljava/util/Map;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$1;->CT:Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$1;->CS:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "0f643756d46f2ceaaf3004a158d065a6"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$1;->CS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1

    .line 209
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 212
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "repo_name_cached_plugin_version"

    invoke-static {v3, v2, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    return-void
.end method
