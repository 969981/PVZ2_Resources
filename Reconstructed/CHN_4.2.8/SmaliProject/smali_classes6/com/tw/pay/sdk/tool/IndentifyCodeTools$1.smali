.class Lcom/tw/pay/sdk/tool/IndentifyCodeTools$1;
.super Ljava/lang/Object;
.source "IndentifyCodeTools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/tool/IndentifyCodeTools;

.field final synthetic val$imgView:Landroid/widget/ImageView;

.field final synthetic val$indentifyCodeUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/tool/IndentifyCodeTools;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools$1;->this$0:Lcom/tw/pay/sdk/tool/IndentifyCodeTools;

    iput-object p2, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools$1;->val$imgView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools$1;->val$indentifyCodeUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 72
    new-instance p1, Lcom/tw/pay/sdk/net/PicDownTask;

    iget-object v0, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools$1;->val$imgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Lcom/tw/pay/sdk/net/PicDownTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools$1;->val$indentifyCodeUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/tw/pay/sdk/net/PicDownTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
