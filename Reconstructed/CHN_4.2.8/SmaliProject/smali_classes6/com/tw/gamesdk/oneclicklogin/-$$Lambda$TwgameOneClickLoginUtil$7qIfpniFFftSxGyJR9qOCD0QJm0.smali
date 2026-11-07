.class public final synthetic Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$7qIfpniFFftSxGyJR9qOCD0QJm0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

.field public final synthetic f$1:Lcom/tw/pay/sdk/callback/TwCallback;

.field public final synthetic f$2:Lcom/tw/gamesdk/bean/SimpleUserData;


# direct methods
.method public synthetic constructor <init>(Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;Lcom/tw/pay/sdk/callback/TwCallback;Lcom/tw/gamesdk/bean/SimpleUserData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$7qIfpniFFftSxGyJR9qOCD0QJm0;->f$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    iput-object p2, p0, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$7qIfpniFFftSxGyJR9qOCD0QJm0;->f$1:Lcom/tw/pay/sdk/callback/TwCallback;

    iput-object p3, p0, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$7qIfpniFFftSxGyJR9qOCD0QJm0;->f$2:Lcom/tw/gamesdk/bean/SimpleUserData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$7qIfpniFFftSxGyJR9qOCD0QJm0;->f$0:Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    iget-object v1, p0, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$7qIfpniFFftSxGyJR9qOCD0QJm0;->f$1:Lcom/tw/pay/sdk/callback/TwCallback;

    iget-object v2, p0, Lcom/tw/gamesdk/oneclicklogin/-$$Lambda$TwgameOneClickLoginUtil$7qIfpniFFftSxGyJR9qOCD0QJm0;->f$2:Lcom/tw/gamesdk/bean/SimpleUserData;

    invoke-virtual {v0, v1, v2}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->lambda$handleServerLoginResult$1$TwgameOneClickLoginUtil(Lcom/tw/pay/sdk/callback/TwCallback;Lcom/tw/gamesdk/bean/SimpleUserData;)V

    return-void
.end method
