.class Lcom/tw/pay/sdk/widget/MyEditTextPwd$1;
.super Ljava/lang/Object;
.source "MyEditTextPwd.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/widget/MyEditTextPwd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 35
    iput-object p1, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd$1;->this$0:Lcom/tw/pay/sdk/widget/MyEditTextPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 39
    iget-object p1, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd$1;->this$0:Lcom/tw/pay/sdk/widget/MyEditTextPwd;

    invoke-static {p1}, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->access$000(Lcom/tw/pay/sdk/widget/MyEditTextPwd;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
