.class Lcom/tw/gamesdk/ui/TwgameAgreementUtil$1;
.super Landroid/text/style/ClickableSpan;
.source "TwgameAgreementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwgameAgreementUtil;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameAgreementUtil;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameAgreementUtil;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil$1;->this$0:Lcom/tw/gamesdk/ui/TwgameAgreementUtil;

    sget-object v0, Lcom/tw/gamesdk/net/RequestUtils;->USER_AGREEMENT_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->openWebView(Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const-string v0, "#FF6B00"

    .line 92
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
