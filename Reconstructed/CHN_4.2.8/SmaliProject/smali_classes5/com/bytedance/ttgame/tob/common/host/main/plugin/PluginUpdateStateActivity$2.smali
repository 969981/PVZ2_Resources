.class public Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$2;
.super Ljava/lang/Object;
.source "PluginUpdateStateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->init()V
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

    .line 82
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$2;->aCt:Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "0809deb87f4b00768acfea1af16d5ded"

    invoke-static {v0, p0, p1, v1, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$2;->aCt:Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;

    iget-boolean p1, p1, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCs:Z

    if-eqz p1, :cond_1

    .line 86
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$2;->aCt:Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->fX()V

    :cond_1
    return-void
.end method
