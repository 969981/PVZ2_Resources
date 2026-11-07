.class Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$1;
.super Ljava/lang/Object;
.source "MobileSecurePayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->detectMobile_sp()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;

.field final synthetic val$cachePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$1;->this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;

    iput-object p2, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$1;->val$cachePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$1;->this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;

    iget-object v0, v0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$1;->val$cachePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->getApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$1;->this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;

    invoke-virtual {v1, v0}, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->checkNewUpdate(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$1;->this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;

    iget-object v2, v1, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$1;->val$cachePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->retrieveApkFromNet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 82
    iput v1, v0, Landroid/os/Message;->what:I

    .line 83
    iget-object v1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$1;->val$cachePath:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$1;->this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;

    invoke-static {v1}, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->access$000(Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
