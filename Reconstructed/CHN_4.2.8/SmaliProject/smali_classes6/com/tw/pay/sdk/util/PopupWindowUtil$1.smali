.class Lcom/tw/pay/sdk/util/PopupWindowUtil$1;
.super Landroid/os/Handler;
.source "PopupWindowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/PopupWindowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$1;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$1;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$000(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$1;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$100(Lcom/tw/pay/sdk/util/PopupWindowUtil;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$1;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$200(Lcom/tw/pay/sdk/util/PopupWindowUtil;)I

    move-result v0

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$1;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$300(Lcom/tw/pay/sdk/util/PopupWindowUtil;)V

    .line 61
    iget-object p1, p0, Lcom/tw/pay/sdk/util/PopupWindowUtil$1;->this$0:Lcom/tw/pay/sdk/util/PopupWindowUtil;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->access$002(Lcom/tw/pay/sdk/util/PopupWindowUtil;Z)Z

    :cond_0
    return-void
.end method
