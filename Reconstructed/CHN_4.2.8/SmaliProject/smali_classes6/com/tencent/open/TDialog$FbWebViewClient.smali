.class Lcom/tencent/open/TDialog$FbWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/TDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FbWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/open/TDialog;


# direct methods
.method private constructor <init>(Lcom/tencent/open/TDialog;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/TDialog;Lcom/tencent/open/TDialog$1;)V
    .locals 0

    .line 383
    invoke-direct {p0, p1}, Lcom/tencent/open/TDialog$FbWebViewClient;-><init>(Lcom/tencent/open/TDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 447
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->d(Lcom/tencent/open/TDialog;)Lcom/tencent/open/c/b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tencent/open/c/b;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Webview loading URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.TDialog"

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 425
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->c(Lcom/tencent/open/TDialog;)Lcom/tencent/open/TDialog$OnTimeListener;

    move-result-object p1

    new-instance v0, Lcom/tencent/tauth/UiError;

    invoke-direct {v0, p2, p3, p4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tencent/open/TDialog$OnTimeListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 431
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 432
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string p2, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\u6216\u7cfb\u7edf\u9519\u8bef"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 435
    :cond_0
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-virtual {p1}, Lcom/tencent/open/TDialog;->dismiss()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 387
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Redirect URL: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "openSDK_LOG.TDialog"

    invoke-static {v0, p1}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/tencent/open/utils/ServerSetting;->getInstance()Lcom/tencent/open/utils/ServerSetting;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {v0}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "auth://tauth.qq.com/"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/open/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 390
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->c(Lcom/tencent/open/TDialog;)Lcom/tencent/open/TDialog$OnTimeListener;

    move-result-object p1

    invoke-static {p2}, Lcom/tencent/open/utils/Util;->parseUrlToJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/open/TDialog$OnTimeListener;->onComplete(Ljava/lang/Object;)V

    .line 391
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-virtual {p1}, Lcom/tencent/open/TDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-virtual {p1}, Lcom/tencent/open/TDialog;->dismiss()V

    :cond_0
    return v0

    .line 395
    :cond_1
    const-string p1, "auth://cancel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 396
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->c(Lcom/tencent/open/TDialog;)Lcom/tencent/open/TDialog$OnTimeListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/open/TDialog$OnTimeListener;->onCancel()V

    .line 397
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-virtual {p1}, Lcom/tencent/open/TDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 398
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-virtual {p1}, Lcom/tencent/open/TDialog;->dismiss()V

    :cond_2
    return v0

    .line 401
    :cond_3
    const-string p1, "auth://close"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 403
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-virtual {p1}, Lcom/tencent/open/TDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 404
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-virtual {p1}, Lcom/tencent/open/TDialog;->dismiss()V

    :cond_4
    return v0

    .line 407
    :cond_5
    const-string p1, "download://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xb

    .line 409
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 410
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 411
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 412
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 413
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->this$0:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_6
    return v0

    .line 416
    :cond_7
    const-string p1, "auth://progress"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v0

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
