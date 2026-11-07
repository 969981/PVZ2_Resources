.class Lcom/tw/pay/sdk/util/TwLoginUtil$6;
.super Landroid/text/style/ClickableSpan;
.source "TwLoginUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/TwLoginUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwLoginUtil;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 604
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "http://filead.talkyun.com.cn/tw/twyh.htm"

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->showWeb(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 609
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 610
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 611
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    return-void
.end method
