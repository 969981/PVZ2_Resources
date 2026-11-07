.class public Lcom/talkweb/twgame/tools/TwgameProgressDialog;
.super Landroid/app/Dialog;
.source "TwgameProgressDialog.java"


# static fields
.field private static customProgressDialog:Lcom/talkweb/twgame/tools/TwgameProgressDialog;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->context:Landroid/content/Context;

    .line 19
    iput-object p1, p0, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->context:Landroid/content/Context;

    .line 24
    iput-object p1, p0, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->context:Landroid/content/Context;

    return-void
.end method

.method public static createDialog(Landroid/content/Context;)Lcom/talkweb/twgame/tools/TwgameProgressDialog;
    .locals 2

    .line 28
    new-instance v0, Lcom/talkweb/twgame/tools/TwgameProgressDialog;

    const-string v1, "CustomProgressDialog"

    invoke-static {p0, v1}, Lcom/talkweb/twgame/tools/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/talkweb/twgame/tools/TwgameProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->customProgressDialog:Lcom/talkweb/twgame/tools/TwgameProgressDialog;

    .line 29
    sget-object v0, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->customProgressDialog:Lcom/talkweb/twgame/tools/TwgameProgressDialog;

    const-string v1, "game_progressdialog"

    invoke-static {p0, v1}, Lcom/talkweb/twgame/tools/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->setContentView(I)V

    .line 30
    sget-object p0, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->customProgressDialog:Lcom/talkweb/twgame/tools/TwgameProgressDialog;

    invoke-virtual {p0}, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/16 v0, 0x11

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 31
    sget-object p0, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->customProgressDialog:Lcom/talkweb/twgame/tools/TwgameProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->setCancelable(Z)V

    .line 32
    sget-object p0, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->customProgressDialog:Lcom/talkweb/twgame/tools/TwgameProgressDialog;

    return-object p0
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 37
    sget-object p1, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->customProgressDialog:Lcom/talkweb/twgame/tools/TwgameProgressDialog;

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->context:Landroid/content/Context;

    const-string v1, "loadingImageView"

    invoke-static {v0, v1}, Lcom/talkweb/twgame/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 43
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)Lcom/talkweb/twgame/tools/TwgameProgressDialog;
    .locals 3

    .line 67
    sget-object v0, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->customProgressDialog:Lcom/talkweb/twgame/tools/TwgameProgressDialog;

    iget-object v1, p0, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->context:Landroid/content/Context;

    const-string v2, "id_tv_loadingmsg"

    invoke-static {v1, v2}, Lcom/talkweb/twgame/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    sget-object p1, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->customProgressDialog:Lcom/talkweb/twgame/tools/TwgameProgressDialog;

    return-object p1
.end method

.method public setTitile(Ljava/lang/String;)Lcom/talkweb/twgame/tools/TwgameProgressDialog;
    .locals 0

    .line 55
    sget-object p1, Lcom/talkweb/twgame/tools/TwgameProgressDialog;->customProgressDialog:Lcom/talkweb/twgame/tools/TwgameProgressDialog;

    return-object p1
.end method
