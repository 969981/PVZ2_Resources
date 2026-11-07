.class Lcom/tw/pay/sdk/ui/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/ui/MainActivity;->logoutBtn()V
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

    .line 147
    iput-object p1, p0, Lcom/tw/pay/sdk/ui/MainActivity$5;->this$0:Lcom/tw/pay/sdk/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/MainActivity$5;->this$0:Lcom/tw/pay/sdk/ui/MainActivity;

    invoke-static {p1}, Lcom/tw/pay/sdk/ui/MainActivity;->access$300(Lcom/tw/pay/sdk/ui/MainActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/pay/sdk/TwPay;->logout(Landroid/content/Context;)V

    return-void
.end method
