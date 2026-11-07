.class Lcom/tw/pay/sdk/util/TwRegUtil$2;
.super Ljava/lang/Object;
.source "TwRegUtil.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwRegUtil;->selectShowView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwRegUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwRegUtil;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 179
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$100(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    .line 180
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 181
    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_0
    return-void
.end method
