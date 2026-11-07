.class Lcom/tw/pay/sdk/util/TwWebUtil$4$2;
.super Ljava/lang/Object;
.source "TwWebUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwWebUtil$4;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/pay/sdk/util/TwWebUtil$4;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwWebUtil$4;Landroid/webkit/JsResult;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil$4$2;->this$1:Lcom/tw/pay/sdk/util/TwWebUtil$4;

    iput-object p2, p0, Lcom/tw/pay/sdk/util/TwWebUtil$4$2;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil$4$2;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method
