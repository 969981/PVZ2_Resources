.class Lcom/talkweb/test/MainActivity1$3;
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

    .line 161
    iput-object p1, p0, Lcom/talkweb/test/MainActivity1$3;->this$0:Lcom/talkweb/test/MainActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 165
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1$3;->this$0:Lcom/talkweb/test/MainActivity1;

    invoke-static {p1}, Lcom/talkweb/test/MainActivity1;->access$100(Lcom/talkweb/test/MainActivity1;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->getTwgameActivateUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameActivateUtil;

    move-result-object p1

    new-instance v0, Lcom/talkweb/test/MainActivity1$3$1;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$3$1;-><init>(Lcom/talkweb/test/MainActivity1$3;)V

    .line 170
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/GameSDK;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v1

    .line 165
    invoke-virtual {p1, v0, v1}, Lcom/tw/gamesdk/ui/TwgameActivateUtil;->doActivateDialog(Lcom/tw/pay/sdk/callback/TwCallback;Lcom/tw/gamesdk/bean/SimpleUserData;)V

    return-void
.end method
