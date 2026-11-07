.class public Lcom/bytedance/ttgame/tob/common/host/framework/util/CustomToast$1;
.super Ljava/lang/Object;
.source "CustomToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/util/CustomToast;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/CustomToast$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/CustomToast$1;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/util/CustomToast$1;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "0c880b80aa99ae543d6100f35736c0b4"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/CustomToast$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/CustomToast$1;->val$text:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/CustomToast;->showToastProcedure(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
