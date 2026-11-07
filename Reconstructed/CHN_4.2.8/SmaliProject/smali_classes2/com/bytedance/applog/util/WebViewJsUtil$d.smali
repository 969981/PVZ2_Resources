.class public final Lcom/bytedance/applog/util/WebViewJsUtil$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/smtt/sdk/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/util/WebViewJsUtil;->evaluateJavascript(Landroid/view/View;Ljava/lang/String;Lcom/bytedance/applog/util/WebViewJsUtil$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/smtt/sdk/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/util/WebViewJsUtil$g;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/util/WebViewJsUtil$g;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/util/WebViewJsUtil$d;->a:Lcom/bytedance/applog/util/WebViewJsUtil$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/util/WebViewJsUtil$d;->a:Lcom/bytedance/applog/util/WebViewJsUtil$g;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/bytedance/applog/util/WebViewJsUtil$c;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/util/WebViewJsUtil$c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
