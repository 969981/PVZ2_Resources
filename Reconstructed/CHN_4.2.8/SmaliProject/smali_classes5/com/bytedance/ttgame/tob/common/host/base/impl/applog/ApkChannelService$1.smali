.class public Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService$1;
.super Lgbsdk/common/host/abro$ab;
.source "ApkChannelService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic Cd:Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService$1;->Cd:Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService;

    invoke-direct {p0}, Lgbsdk/common/host/abro$ab;-><init>()V

    return-void
.end method


# virtual methods
.method public eb()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4af5539d8586cafd15c59a7076585cfe"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "ApkChannelService"

    const-string v1, "ApkChannelService fetchSourceDir"

    .line 36
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService$1;->Cd:Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0
.end method
