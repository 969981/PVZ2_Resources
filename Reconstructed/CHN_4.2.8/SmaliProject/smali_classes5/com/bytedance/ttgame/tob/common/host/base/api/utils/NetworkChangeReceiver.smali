.class public Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver$INetworkAvailable;
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final networkChangeManager:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;


# direct methods
.method public constructor <init>(Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver;->networkChangeManager:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;

    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "1f225947dac91e237ec55ff2a4fe3306"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string v1, "connectivity"

    .line 19
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_2

    .line 21
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 22
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object p2, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ae7173b65ad74bb2ab485bdaf57b0e27"

    invoke-static {v0, p0, p2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p2

    if-eqz p2, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver;->networkChangeManager:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;

    if-eqz p1, :cond_2

    .line 32
    invoke-virtual {p1, v2}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->onNetworkChanged(Z)V

    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver;->networkChangeManager:Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;

    if-eqz p1, :cond_2

    .line 37
    invoke-virtual {p1, v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->onNetworkChanged(Z)V

    :cond_2
    :goto_0
    return-void
.end method
