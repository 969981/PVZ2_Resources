.class Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$3;
.super Ljava/lang/Object;
.source "TwgameAgreementWebViewUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$3;->this$0:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 148
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$3;->this$0:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->access$200(Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;)Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$OnAgreementConfirmListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$3;->this$0:Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;->access$200(Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil;)Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$OnAgreementConfirmListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/tw/gamesdk/ui/TwgameAgreementWebViewUtil$OnAgreementConfirmListener;->onAgreementConfirmed()V

    .line 152
    :cond_0
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseOtherDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
