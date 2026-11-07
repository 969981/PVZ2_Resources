.class Lcom/tw/pay/sdk/util/TwRegUtil$7;
.super Landroid/text/style/ClickableSpan;
.source "TwRegUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/TwRegUtil;
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

    .line 466
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 469
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$7;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$100(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "http://filead.talkyun.com.cn/tw/twyh.htm"

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->showWeb(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 474
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 475
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 476
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    return-void
.end method
