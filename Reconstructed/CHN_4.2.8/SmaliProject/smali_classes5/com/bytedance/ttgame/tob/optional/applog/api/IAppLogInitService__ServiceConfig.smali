.class public Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService__ServiceConfig;
.super Ljava/lang/Object;
.source "IAppLogInitService__ServiceConfig.java"

# interfaces
.implements Lcom/bytedance/ttgame/tob/framework/service/annotation/IServiceConfig;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/ttgame/tob/framework/service/annotation/IServiceConfig<",
        "Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService;",
        ">;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.bytedance.ttgame.tob.optional.applog.api.IAppLogInitService"

    return-object v0
.end method

.method public getImplName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.bytedance.ttgame.tob.optional.applog.impl.AppLogInitService"

    return-object v0
.end method

.method public isLifecycle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newInstance()Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService__ServiceConfig;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "29590a80bed735e61b8a1f8532e30750"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService;

    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;-><init>()V

    return-object v0
.end method

.method public synthetic newInstance()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService__ServiceConfig;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "29590a80bed735e61b8a1f8532e30750"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Object;

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService__ServiceConfig;->newInstance()Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService;

    move-result-object v0

    return-object v0
.end method
