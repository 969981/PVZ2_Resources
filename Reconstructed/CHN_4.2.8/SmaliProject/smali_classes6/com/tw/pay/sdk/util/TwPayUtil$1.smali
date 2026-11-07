.class Lcom/tw/pay/sdk/util/TwPayUtil$1;
.super Ljava/lang/Object;
.source "TwPayUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwPayUtil;->doPayDialog(Landroid/content/Intent;Lcom/tw/pay/sdk/callback/TwPayCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwPayUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwPayUtil;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$000(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x1

    return p1
.end method
