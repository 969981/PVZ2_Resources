.class Lcom/tw/pay/sdk/ui/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/ui/MainActivity;->paySDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/ui/MainActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/tw/pay/sdk/ui/MainActivity$4;->this$0:Lcom/tw/pay/sdk/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 111
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/MainActivity$4;->this$0:Lcom/tw/pay/sdk/ui/MainActivity;

    invoke-static {p1}, Lcom/tw/pay/sdk/ui/MainActivity;->access$300(Lcom/tw/pay/sdk/ui/MainActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/ui/MainActivity$4;->this$0:Lcom/tw/pay/sdk/ui/MainActivity;

    invoke-static {v0}, Lcom/tw/pay/sdk/ui/MainActivity;->access$400(Lcom/tw/pay/sdk/ui/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/tw/pay/sdk/ui/MainActivity$4$1;

    invoke-direct {v1, p0}, Lcom/tw/pay/sdk/ui/MainActivity$4$1;-><init>(Lcom/tw/pay/sdk/ui/MainActivity$4;)V

    invoke-static {p1, v0, v1}, Lcom/tw/pay/sdk/TwPay;->sdkPay(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/pay/sdk/callback/TwPayCallBack;)V

    return-void
.end method
