.class Lcom/tw/pay/sdk/util/TwRegUtil$1;
.super Ljava/lang/Object;
.source "TwRegUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwRegUtil;->doRegDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwRegUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwRegUtil;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

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

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$100(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->getTwPayLoginUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/TwLoginUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwRegUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    .line 134
    invoke-static {p2}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$000(Lcom/tw/pay/sdk/util/TwRegUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p2

    .line 133
    invoke-virtual {p1, p2}, Lcom/tw/pay/sdk/util/TwLoginUtil;->doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    .line 135
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$1;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$200(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x1

    return p1
.end method
