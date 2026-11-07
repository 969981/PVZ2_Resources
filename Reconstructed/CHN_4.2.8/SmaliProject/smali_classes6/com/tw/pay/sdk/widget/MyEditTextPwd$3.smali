.class Lcom/tw/pay/sdk/widget/MyEditTextPwd$3;
.super Ljava/lang/Object;
.source "MyEditTextPwd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/widget/MyEditTextPwd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/widget/MyEditTextPwd;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/widget/MyEditTextPwd;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd$3;->this$0:Lcom/tw/pay/sdk/widget/MyEditTextPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd$3;->this$0:Lcom/tw/pay/sdk/widget/MyEditTextPwd;

    invoke-static {p1}, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->access$000(Lcom/tw/pay/sdk/widget/MyEditTextPwd;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd$3;->this$0:Lcom/tw/pay/sdk/widget/MyEditTextPwd;

    invoke-static {p1}, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->access$100(Lcom/tw/pay/sdk/widget/MyEditTextPwd;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
