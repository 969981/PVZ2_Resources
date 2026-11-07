.class Lcom/tw/gamesdk/ui/TwgameAgreementUtil$3;
.super Ljava/lang/Object;
.source "TwgameAgreementUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 120
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil$3;->this$0:Lcom/tw/gamesdk/ui/TwgameAgreementUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil$3;->this$0:Lcom/tw/gamesdk/ui/TwgameAgreementUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->access$000(Lcom/tw/gamesdk/ui/TwgameAgreementUtil;)Lcom/tw/gamesdk/ui/TwgameAgreementUtil$OnButtonClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil$3;->this$0:Lcom/tw/gamesdk/ui/TwgameAgreementUtil;

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->access$000(Lcom/tw/gamesdk/ui/TwgameAgreementUtil;)Lcom/tw/gamesdk/ui/TwgameAgreementUtil$OnButtonClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil$OnButtonClickListener;->onAgreeClick()V

    .line 126
    :cond_0
    sget-object p1, Lcom/tw/gamesdk/core/TwGameBaseDialog;->baseOtherDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
