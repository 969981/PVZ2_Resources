.class final Lcom/tw/pay/sdk/TwPay$3;
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


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/tw/pay/sdk/TwPay$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/Object;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/tw/pay/sdk/TwPay$3;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->getPopupWindowUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/PopupWindowUtil;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/tw/pay/sdk/util/PopupWindowUtil;->showPopupWindow()V

    return-void
.end method
