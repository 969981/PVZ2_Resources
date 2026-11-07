.class public final synthetic Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$c8ZRGgDGFq5nKxc-Zj8sBfnPMGI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

.field public final synthetic f$1:Lcom/tw/pay/sdk/callback/TwCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/tw/gamesdk/ui/TwGameLoginUtil;Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$c8ZRGgDGFq5nKxc-Zj8sBfnPMGI;->f$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    iput-object p2, p0, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$c8ZRGgDGFq5nKxc-Zj8sBfnPMGI;->f$1:Lcom/tw/pay/sdk/callback/TwCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$c8ZRGgDGFq5nKxc-Zj8sBfnPMGI;->f$0:Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    iget-object v1, p0, Lcom/tw/gamesdk/ui/-$$Lambda$TwGameLoginUtil$c8ZRGgDGFq5nKxc-Zj8sBfnPMGI;->f$1:Lcom/tw/pay/sdk/callback/TwCallback;

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->lambda$doLoginDialog$0$TwGameLoginUtil(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method
