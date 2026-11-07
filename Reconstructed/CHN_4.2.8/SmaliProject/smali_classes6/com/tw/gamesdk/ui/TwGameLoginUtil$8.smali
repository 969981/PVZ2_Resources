.class Lcom/tw/gamesdk/ui/TwGameLoginUtil$8;
.super Ljava/lang/Object;
.source "TwGameLoginUtil.java"

# interfaces
.implements Lcom/tw/gamesdk/ui/TwgameAgreementUtil$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/gamesdk/ui/TwGameLoginUtil;->showAgreementDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;


# direct methods
.method constructor <init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$8;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgreeClick()V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$8;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$700(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 533
    iget-object v0, p0, Lcom/tw/gamesdk/ui/TwGameLoginUtil$8;->this$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    invoke-static {v0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->access$800(Lcom/tw/gamesdk/ui/TwGameLoginUtil;)V

    return-void
.end method
