.class Lcom/tw/pay/sdk/util/TwLoginUtil$4$1;
.super Ljava/lang/Object;
.source "TwLoginUtil.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwLoginUtil$4;->responseData(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$4;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwLoginUtil$4;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4$1;->this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/Object;)V
    .locals 8

    .line 529
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4$1;->this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$4;

    iget-object v0, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    .line 530
    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v0

    new-instance v7, Lcom/tw/pay/sdk/bean/UserBean;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4$1;->this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$4;

    iget-object v1, v1, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    .line 532
    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v1

    iget-object v2, v1, Lcom/tw/pay/sdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4$1;->this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$4;

    iget-object v1, v1, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    .line 533
    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v1

    iget-object v3, v1, Lcom/tw/pay/sdk/bean/LoginResultBean;->token:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    .line 535
    invoke-static {p1}, Lcom/tw/pay/sdk/tool/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4$1;->this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$4;

    iget-object v1, v1, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    .line 536
    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v1

    iget-object v5, v1, Lcom/tw/pay/sdk/bean/LoginResultBean;->nickName:Ljava/lang/String;

    const-string v6, ""

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/tw/pay/sdk/bean/UserBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {v0, v7, p1}, Lcom/tw/pay/sdk/tool/Tools;->setLoginUserBean(Landroid/content/Context;Lcom/tw/pay/sdk/bean/UserBean;Ljava/lang/String;)V

    .line 538
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 539
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4$1;->this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$4;

    iget-object p1, p1, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 540
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4$1;->this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$4;

    iget-object p1, p1, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4$1;->this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$4;

    iget-object v0, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$1100(Lcom/tw/pay/sdk/util/TwLoginUtil;Landroid/content/Context;)V

    .line 541
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4$1;->this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$4;

    iget-object p1, p1, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$300(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4$1;->this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$4;

    iget-object v0, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 542
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$4$1;->this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$4;

    iget-object p1, p1, Lcom/tw/pay/sdk/util/TwLoginUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$100(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
