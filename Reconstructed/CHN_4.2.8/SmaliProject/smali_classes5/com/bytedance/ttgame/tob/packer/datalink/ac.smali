.class public abstract Lcom/bytedance/ttgame/tob/packer/datalink/ac;
.super Landroid/app/Activity;
.source "StartPluginActivity.java"


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/packer/datalink/ac;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ebffcb2a0608fef4f96ee2787dcddd5e"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/packer/datalink/ac;->finish()V

    .line 15
    const-class p1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;

    invoke-static {p1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/packer/datalink/ac;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "gbsdk.plugin.datalink"

    invoke-interface {p1, p0, v0, v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
