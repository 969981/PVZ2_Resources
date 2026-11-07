.class public Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService;
.super Landroid/app/Service;
.source "ApkChannelService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApkChannelService"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final Cc:Lgbsdk/common/host/abro$ab;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService$1;

    invoke-direct {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService;)V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService;->Cc:Lgbsdk/common/host/abro$ab;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 23
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService;->Cc:Lgbsdk/common/host/abro$ab;

    return-object p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "008dc1352a3ba828d950888b39675dcf"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 28
    :cond_0
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/util/ProcessUtils;->killCurrentProcess()V

    .line 29
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
