.class final Lcom/tw/pay/sdk/TwPay$2;
.super Ljava/lang/Object;
.source "TwPay.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/TwPay;->loginSdk(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$twLoginCallback:Lcom/tw/pay/sdk/callback/TwLoginCallback;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/callback/TwLoginCallback;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/tw/pay/sdk/TwPay$2;->val$twLoginCallback:Lcom/tw/pay/sdk/callback/TwLoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    .line 97
    new-instance p1, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    invoke-direct {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;-><init>()V

    const/16 v0, 0x7d2

    .line 98
    invoke-virtual {p1, v0}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->setCode(I)V

    .line 99
    iget-object v0, p0, Lcom/tw/pay/sdk/TwPay$2;->val$twLoginCallback:Lcom/tw/pay/sdk/callback/TwLoginCallback;

    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tw/pay/sdk/callback/TwLoginCallback;->responseData(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/tw/pay/sdk/TwPay$2;->val$twLoginCallback:Lcom/tw/pay/sdk/callback/TwLoginCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tw/pay/sdk/callback/TwLoginCallback;->responseData(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
