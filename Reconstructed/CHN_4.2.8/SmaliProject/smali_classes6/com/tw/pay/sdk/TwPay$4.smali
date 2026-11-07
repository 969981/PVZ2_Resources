.class final Lcom/tw/pay/sdk/TwPay$4;
.super Ljava/lang/Object;
.source "TwPay.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/TwPay;->loginQuickSdk(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$twLoginCallback:Lcom/tw/pay/sdk/callback/TwLoginCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwLoginCallback;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/tw/pay/sdk/TwPay$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tw/pay/sdk/TwPay$4;->val$twLoginCallback:Lcom/tw/pay/sdk/callback/TwLoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    .line 147
    new-instance p1, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    invoke-direct {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;-><init>()V

    const/16 v0, 0x7d2

    .line 148
    invoke-virtual {p1, v0}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->setCode(I)V

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tw/gamesdk/bean/SimpleApiResponse;

    .line 153
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleApiResponse;->getCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 154
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/tw/pay/sdk/TwPay$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->showPopupWindow()V

    goto :goto_0

    .line 159
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tw/pay/sdk/TwPay$4$1;

    invoke-direct {v1, p0}, Lcom/tw/pay/sdk/TwPay$4$1;-><init>(Lcom/tw/pay/sdk/TwPay$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tw/pay/sdk/TwPay$4;->val$twLoginCallback:Lcom/tw/pay/sdk/callback/TwLoginCallback;

    invoke-static {p1}, Lcom/tw/pay/sdk/tool/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tw/pay/sdk/callback/TwLoginCallback;->responseData(Ljava/lang/String;)V

    return-void
.end method
