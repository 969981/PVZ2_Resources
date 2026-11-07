.class Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$1;
.super Ljava/lang/Object;
.source "TwMultiPayDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->access$000(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "closeImg"

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 131
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->dismissDialog()V

    const/16 p1, 0x7d0

    .line 132
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    .line 133
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "\u652f\u4ed8\u53d6\u6d88"

    .line 132
    invoke-static {p1, v3, v0, v1, v2}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
