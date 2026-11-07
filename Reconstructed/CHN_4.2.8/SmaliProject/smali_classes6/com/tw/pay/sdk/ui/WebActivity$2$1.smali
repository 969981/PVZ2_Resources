.class Lcom/tw/pay/sdk/ui/WebActivity$2$1;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/ui/WebActivity$2;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/pay/sdk/ui/WebActivity$2;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/ui/WebActivity$2;Landroid/webkit/JsResult;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/tw/pay/sdk/ui/WebActivity$2$1;->this$1:Lcom/tw/pay/sdk/ui/WebActivity$2;

    iput-object p2, p0, Lcom/tw/pay/sdk/ui/WebActivity$2$1;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 164
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/WebActivity$2$1;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
