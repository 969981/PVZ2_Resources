.class Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$2;
.super Ljava/lang/Object;
.source "TwgameAccountLoginUtil.java"

# interfaces
.implements Lcom/tw/gamesdk/ui/TwgameAgreementUtil$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->showAgreementDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgreeClick()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil$2;->this$0:Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;->access$200(Lcom/tw/gamesdk/ui/TwgameAccountLoginUtil;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
