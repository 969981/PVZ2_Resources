.class Lcom/tw/pay/sdk/util/TwWebUtil$4;
.super Landroid/webkit/WebChromeClient;
.source "TwWebUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwWebUtil;->setWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwWebUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwWebUtil;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 152
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwWebUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-static {p2}, Lcom/tw/pay/sdk/util/TwWebUtil;->access$200(Lcom/tw/pay/sdk/util/TwWebUtil;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/tw/pay/sdk/util/TwWebUtil$4$1;

    invoke-direct {p2, p0, p4}, Lcom/tw/pay/sdk/util/TwWebUtil$4$1;-><init>(Lcom/tw/pay/sdk/util/TwWebUtil$4;Landroid/webkit/JsResult;)V

    const-string p3, "\u786e\u8ba4"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 164
    new-instance p2, Lcom/tw/pay/sdk/util/TwWebUtil$4$2;

    invoke-direct {p2, p0, p4}, Lcom/tw/pay/sdk/util/TwWebUtil$4$2;-><init>(Lcom/tw/pay/sdk/util/TwWebUtil$4;Landroid/webkit/JsResult;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const-string p2, "\u63d0\u793a:"

    .line 171
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p2, 0x1

    .line 172
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 174
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return p2
.end method
