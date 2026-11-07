.class public final synthetic Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickAuthDelegate$kvAvKO8f4fPREhJkEwfaYqjqXAc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickAuthDelegate;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickAuthDelegate;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickAuthDelegate$kvAvKO8f4fPREhJkEwfaYqjqXAc;->f$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickAuthDelegate;

    iput-object p2, p0, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickAuthDelegate$kvAvKO8f4fPREhJkEwfaYqjqXAc;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickAuthDelegate$kvAvKO8f4fPREhJkEwfaYqjqXAc;->f$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickAuthDelegate;

    iget-object v1, p0, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickAuthDelegate$kvAvKO8f4fPREhJkEwfaYqjqXAc;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickAuthDelegate;->lambda$onViewCreated$0$TwgameOneClickAuthDelegate(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
