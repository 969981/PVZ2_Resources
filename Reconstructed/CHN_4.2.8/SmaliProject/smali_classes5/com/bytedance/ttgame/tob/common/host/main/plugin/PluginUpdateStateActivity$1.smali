.class public Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$1;
.super Ljava/lang/Object;
.source "PluginUpdateStateActivity.java"

# interfaces
.implements Lgbsdk/android/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgbsdk/android/arch/lifecycle/Observer<",
        "Lgbsdk/common/host/abta;",
        ">;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic aCt:Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$1;->aCt:Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lgbsdk/common/host/abta;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "60532a9d86fc7b0e5d3e95e8a4fda4b4"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[osdk_zeus]onChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginUpdateStateActivity"

    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$1;->aCt:Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->a(Lgbsdk/common/host/abta;)V

    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "cc661499a6ca369234ae252d8f2e783f"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    check-cast p1, Lgbsdk/common/host/abta;

    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$1;->b(Lgbsdk/common/host/abta;)V

    return-void
.end method
