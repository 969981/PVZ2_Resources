.class Lcom/talkweb/test/MainActivity1$4;
.super Ljava/lang/Object;
.source "MainActivity1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/test/MainActivity1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/test/MainActivity1;


# direct methods
.method constructor <init>(Lcom/talkweb/test/MainActivity1;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/talkweb/test/MainActivity1$4;->this$0:Lcom/talkweb/test/MainActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 176
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1$4;->this$0:Lcom/talkweb/test/MainActivity1;

    invoke-static {p1}, Lcom/talkweb/test/MainActivity1;->access$100(Lcom/talkweb/test/MainActivity1;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->getTwLoadingUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;

    move-result-object p1

    new-instance v0, Lcom/talkweb/test/MainActivity1$4$1;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$4$1;-><init>(Lcom/talkweb/test/MainActivity1$4;)V

    invoke-virtual {p1, v0}, Lcom/tw/gamesdk/ui/TwgameLoadingTopUtil;->doLoadingDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method
