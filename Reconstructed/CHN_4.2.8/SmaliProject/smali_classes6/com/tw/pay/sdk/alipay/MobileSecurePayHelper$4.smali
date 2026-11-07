.class Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$4;
.super Landroid/os/Handler;
.source "MobileSecurePayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$4;->this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 334
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$4;->this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;

    invoke-virtual {v0}, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->closeProgress()V

    .line 338
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 340
    iget-object v1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$4;->this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;

    iget-object v2, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$4;->this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;

    iget-object v2, v2, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->showInstallConfirmDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 345
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 347
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
