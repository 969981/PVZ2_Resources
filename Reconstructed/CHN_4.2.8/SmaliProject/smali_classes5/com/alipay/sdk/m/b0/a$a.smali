.class public Lcom/alipay/sdk/m/b0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/sdk/m/b0/a;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/alipay/sdk/m/b0/a;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/m/b0/a;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/m/b0/a$a;->c:Lcom/alipay/sdk/m/b0/a;

    iput-object p2, p0, Lcom/alipay/sdk/m/b0/a$a;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/alipay/sdk/m/b0/a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/m/b0/a$a;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alipay/sdk/m/b0/a$a;->b:Ljava/lang/String;

    new-instance v2, Lcom/alipay/sdk/m/b0/a$a$a;

    invoke-direct {v2, p0}, Lcom/alipay/sdk/m/b0/a$a$a;-><init>(Lcom/alipay/sdk/m/b0/a$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
