.class public Lcom/tw/gamesdk/ui/TwgameAgreementUtil;
.super Lcom/tw/gamesdk/core/TwGameBaseDialog;
.source "TwgameAgreementUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tw/gamesdk/ui/TwgameAgreementUtil$OnButtonClickListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/tw/gamesdk/ui/TwgameAgreementUtil$OnButtonClickListener;

.field private loginView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/tw/gamesdk/core/TwGameBaseDialog;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/gamesdk/ui/TwgameAgreementUtil;)Lcom/tw/gamesdk/ui/TwgameAgreementUtil$OnButtonClickListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->listener:Lcom/tw/gamesdk/ui/TwgameAgreementUtil$OnButtonClickListener;

    return-object p0
.end method

.method public static getTwgameAgreementUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameAgreementUtil;
    .locals 1

    .line 40
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initViews()V
    .locals 7

    .line 71
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->loginView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->context:Landroid/content/Context;

    const-string v2, "tv_agreement"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->loginView:Landroid/view/View;

    iget-object v2, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->context:Landroid/content/Context;

    const-string v3, "btn_agree"

    invoke-static {v2, v3}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 77
    new-instance v2, Landroid/text/SpannableString;

    const-string v3, "\u4e3a\u4e86\u66f4\u597d\u5730\u4fdd\u969c\u4f60\u7684\u5408\u6cd5\u6743\u76ca\uff0c\u8bf7\u4f60\u5148\u9605\u8bfb\u5e76\u540c\u610f\u300a\u7528\u6237\u534f\u8bae\u300b\u300a\u9690\u79c1\u653f\u7b56\u300b\uff0c\u672a\u6ce8\u518c\u7684\u624b\u673a\u53f7\u5c06\u81ea\u52a8\u5b8c\u6210\u5e10\u53f7\u6ce8\u518c"

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v3, Lcom/tw/gamesdk/ui/TwgameAgreementUtil$1;

    invoke-direct {v3, p0}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil$1;-><init>(Lcom/tw/gamesdk/ui/TwgameAgreementUtil;)V

    const/16 v4, 0x16

    const/16 v5, 0x1c

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 101
    new-instance v3, Lcom/tw/gamesdk/ui/TwgameAgreementUtil$2;

    invoke-direct {v3, p0}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil$2;-><init>(Lcom/tw/gamesdk/ui/TwgameAgreementUtil;)V

    const/16 v4, 0x22

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 115
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v2, 0x0

    .line 117
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 120
    new-instance v0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil$3;

    invoke-direct {v0, p0}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil$3;-><init>(Lcom/tw/gamesdk/ui/TwgameAgreementUtil;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setDialogStyle(Landroid/app/Dialog;)V
    .locals 7

    .line 133
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 146
    iget-object v3, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3fdae147ae147ae1L    # 0.42

    mul-double v3, v3, v5

    double-to-int v3, v3

    const/4 v4, -0x2

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setLayout(II)V

    const/16 v3, 0x11

    .line 148
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v3, 0x3f19999a    # 0.6f

    .line 151
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 157
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 158
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public doTwgameAgreementDialog()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->context:Landroid/content/Context;

    const-string v1, "TwGameDialogTheme"

    invoke-virtual {p0, v0, v1}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->getOtherDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->baseOtherDialog:Landroid/app/Dialog;

    .line 53
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->context:Landroid/content/Context;

    const-string v2, "twgame_login_agreement"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->loginView:Landroid/view/View;

    .line 57
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->baseOtherDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->loginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 59
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->baseOtherDialog:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->setDialogStyle(Landroid/app/Dialog;)V

    .line 61
    sget-object v0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->baseOtherDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 64
    invoke-direct {p0}, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->initViews()V

    return-void
.end method

.method public setOnButtonClickListener(Lcom/tw/gamesdk/ui/TwgameAgreementUtil$OnButtonClickListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAgreementUtil;->listener:Lcom/tw/gamesdk/ui/TwgameAgreementUtil$OnButtonClickListener;

    return-void
.end method
