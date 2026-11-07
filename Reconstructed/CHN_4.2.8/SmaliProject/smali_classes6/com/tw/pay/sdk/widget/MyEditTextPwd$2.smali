.class Lcom/tw/pay/sdk/widget/MyEditTextPwd$2;
.super Ljava/lang/Object;
.source "MyEditTextPwd.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/widget/MyEditTextPwd;->addTextChangedListener()V
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

    .line 48
    iput-object p1, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd$2;->this$0:Lcom/tw/pay/sdk/widget/MyEditTextPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 66
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd$2;->this$0:Lcom/tw/pay/sdk/widget/MyEditTextPwd;

    invoke-static {p1}, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->access$100(Lcom/tw/pay/sdk/widget/MyEditTextPwd;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd$2;->this$0:Lcom/tw/pay/sdk/widget/MyEditTextPwd;

    invoke-static {p1}, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->access$100(Lcom/tw/pay/sdk/widget/MyEditTextPwd;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
