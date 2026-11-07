.class public final synthetic Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$QAgv4qgmLI25D4khxgyvw9M2UqE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener$OnOtherLoginListener;


# instance fields
.field public final synthetic f$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

.field public final synthetic f$1:Lcom/tw/pay/sdk/callback/TwCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$QAgv4qgmLI25D4khxgyvw9M2UqE;->f$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    iput-object p2, p0, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$QAgv4qgmLI25D4khxgyvw9M2UqE;->f$1:Lcom/tw/pay/sdk/callback/TwCallback;

    return-void
.end method


# virtual methods
.method public final onOtherLogin()V
    .locals 2

    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$QAgv4qgmLI25D4khxgyvw9M2UqE;->f$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    iget-object v1, p0, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$QAgv4qgmLI25D4khxgyvw9M2UqE;->f$1:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->lambda$doOneClickLoginDialog$0$TwgameOneClickLoginUtil(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method
