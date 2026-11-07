.class Lcom/tw/pay/sdk/util/TwPayUtil$9;
.super Ljava/lang/Object;
.source "TwPayUtil.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwCallback;


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

    .line 482
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$9;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil$9;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$200(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/bean/PayResultBean;

    move-result-object v0

    const-string v1, "02"

    iput-object v1, v0, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil$9;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$200(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/tw/pay/sdk/bean/PayResultBean;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/tw/pay/sdk/bean/PayResultBean;->code:Ljava/lang/String;

    .line 491
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$9;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$000(Lcom/tw/pay/sdk/util/TwPayUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
