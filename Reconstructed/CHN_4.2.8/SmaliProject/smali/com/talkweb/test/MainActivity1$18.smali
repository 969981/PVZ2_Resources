.class Lcom/talkweb/test/MainActivity1$18;
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

    .line 496
    iput-object p1, p0, Lcom/talkweb/test/MainActivity1$18;->this$0:Lcom/talkweb/test/MainActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 499
    invoke-static {}, Lcom/tw/gamesdk/core/GameSDK;->getInstance()Lcom/tw/gamesdk/core/GameSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/gamesdk/core/GameSDK;->getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 500
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 504
    :cond_0
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1$18;->this$0:Lcom/talkweb/test/MainActivity1;

    invoke-static {p1}, Lcom/talkweb/test/MainActivity1;->access$200(Lcom/talkweb/test/MainActivity1;)Ljava/lang/String;

    .line 505
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1$18;->this$0:Lcom/talkweb/test/MainActivity1;

    invoke-static {p1}, Lcom/talkweb/test/MainActivity1;->access$100(Lcom/talkweb/test/MainActivity1;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->getTwgameUsercenterResetPhoneUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tw/gamesdk/ui/TwgameUsercenterResetPhoneUtil;->doTwgameUsercenterResetPhoneDialog()V

    :cond_1
    :goto_0
    return-void
.end method
