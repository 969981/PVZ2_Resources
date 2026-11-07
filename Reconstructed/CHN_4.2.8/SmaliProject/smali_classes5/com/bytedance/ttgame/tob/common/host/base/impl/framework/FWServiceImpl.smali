.class public final Lcom/bytedance/ttgame/tob/common/host/base/impl/framework/FWServiceImpl;
.super Ljava/lang/Object;
.source "FWServiceImpl.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/framework/service/FWService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/base/impl/framework/FWServiceImpl;",
        "Lcom/bytedance/ttgame/tob/common/host/framework/service/FWService;",
        "()V",
        "getPermissionSettings",
        "Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;",
        "ch_base_impl_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPermissionSettings()Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/framework/FWServiceImpl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f7325c3bb6897530eee20cd2ec54b8c3"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;

    return-object v0

    .line 15
    :cond_0
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 16
    const-class v4, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;

    invoke-static {v1, v4}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ConfigJsonParser;->parse(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;

    if-nez v1, :cond_2

    .line 17
    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;

    invoke-direct {v1, v0, v3, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 18
    :cond_1
    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;

    invoke-direct {v1, v0, v3, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_2
    :goto_0
    return-object v1
.end method
