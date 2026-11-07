.class Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$2;
.super Ljava/lang/Object;
.source "MobileSecurePayHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->showInstallConfirmDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;

.field final synthetic val$cachePath:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$2;->this$0:Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;

    iput-object p2, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$2;->val$cachePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$2;->val$cachePath:Ljava/lang/String;

    const-string p2, "777"

    invoke-static {p2, p1}, Lcom/tw/pay/sdk/alipay/BaseHelper;->chmod(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 120
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$2;->val$cachePath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object p2, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$2;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
