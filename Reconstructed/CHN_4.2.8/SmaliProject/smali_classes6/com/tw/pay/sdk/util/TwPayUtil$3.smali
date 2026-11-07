.class Lcom/tw/pay/sdk/util/TwPayUtil$3;
.super Ljava/lang/Object;
.source "TwPayUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/TwPayUtil;
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

    .line 152
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$100(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "closeImg"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 159
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$000(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 160
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$200(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/bean/PayResultBean;

    move-result-object p1

    const-string v0, "05"

    iput-object v0, p1, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    .line 161
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$000(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
