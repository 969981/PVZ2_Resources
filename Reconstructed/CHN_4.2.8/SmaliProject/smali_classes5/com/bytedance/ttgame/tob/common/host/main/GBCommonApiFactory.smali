.class public final Lcom/bytedance/ttgame/tob/common/host/main/GBCommonApiFactory;
.super Ljava/lang/Object;
.source "BaseChannelFactory.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/framework/service/annotation/IServiceFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/ttgame/tob/framework/service/annotation/IServiceFactory<",
        "Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/main/GBCommonApiFactory;",
        "Lcom/bytedance/ttgame/tob/framework/service/annotation/IServiceFactory;",
        "Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;",
        "()V",
        "create",
        "ch_main_tobRelease"
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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;
    .locals 1

    .line 13
    sget-object v0, Lgbsdk/common/host/abur;->EV:Lcom/bytedance/ttgame/tob/common/host/main/BaseChannel;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    return-object v0
.end method

.method public synthetic create()Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/GBCommonApiFactory;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e44acda0810d71db77792c68951e68ba"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/main/GBCommonApiFactory;->create()Lcom/bytedance/ttgame/tob/common/host/api/GBCommonApi;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    return-object v0
.end method
