.class Lcom/tw/pay/sdk/widget/MyEditText$2;
.super Ljava/lang/Object;
.source "MyEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/widget/MyEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/widget/MyEditText;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/widget/MyEditText;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/tw/pay/sdk/widget/MyEditText$2;->this$0:Lcom/tw/pay/sdk/widget/MyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/tw/pay/sdk/widget/MyEditText$2;->this$0:Lcom/tw/pay/sdk/widget/MyEditText;

    invoke-static {p1}, Lcom/tw/pay/sdk/widget/MyEditText;->access$100(Lcom/tw/pay/sdk/widget/MyEditText;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lcom/tw/pay/sdk/widget/MyEditText$2;->this$0:Lcom/tw/pay/sdk/widget/MyEditText;

    invoke-static {p1}, Lcom/tw/pay/sdk/widget/MyEditText;->access$000(Lcom/tw/pay/sdk/widget/MyEditText;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
