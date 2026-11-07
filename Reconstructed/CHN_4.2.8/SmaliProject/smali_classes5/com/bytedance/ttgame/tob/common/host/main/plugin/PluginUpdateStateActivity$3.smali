.class public Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$3;
.super Ljava/lang/Object;
.source "PluginUpdateStateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->a(Lgbsdk/common/host/abta;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic aCt:Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$3;->aCt:Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$3;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6601e1be8890a00d5a7ffe6d391d1430"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$3;->aCt:Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->finish()V

    return-void
.end method
