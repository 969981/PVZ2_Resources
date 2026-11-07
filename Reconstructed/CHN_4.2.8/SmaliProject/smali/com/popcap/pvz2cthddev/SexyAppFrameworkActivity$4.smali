.class Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;
.super Landroid/os/Handler;
.source "SexyAppFrameworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->InitIMEKeyboardHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 344
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const-string v1, "SexyAppFrameworkActivity"

    const/4 v2, 0x0

    const-string v3, "input_method"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 365
    :cond_0
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$300(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyEditText;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 367
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$300(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyEditText;

    move-result-object p1

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$400(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyTextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/popcap/pvz2cthddev/SexyEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 368
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$600(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 369
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$300(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 370
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$600(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->requestFocus()Z

    .line 371
    const-string p1, "closeIMEKeyboard"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 347
    :cond_1
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$300(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyEditText;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$300(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/SexyEditText;->requestFocus()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 349
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$400(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyTextWatcher;

    move-result-object p1

    if-nez p1, :cond_2

    .line 351
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    new-instance v0, Lcom/popcap/pvz2cthddev/SexyTextWatcher;

    iget-object v4, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v4}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$500(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/AndroidGameApp;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/popcap/pvz2cthddev/SexyTextWatcher;-><init>(Lcom/popcap/pvz2cthddev/AndroidGameApp;)V

    invoke-static {p1, v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$402(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;Lcom/popcap/pvz2cthddev/SexyTextWatcher;)Lcom/popcap/pvz2cthddev/SexyTextWatcher;

    .line 353
    :cond_2
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$300(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyEditText;

    move-result-object p1

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$400(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyTextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/popcap/pvz2cthddev/SexyEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 355
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$300(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyEditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/popcap/pvz2cthddev/SexyEditText;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$300(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyEditText;

    move-result-object p1

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$500(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/AndroidGameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->getEditText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/popcap/pvz2cthddev/SexyEditText;->append(Ljava/lang/CharSequence;)V

    .line 357
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$300(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyEditText;

    move-result-object p1

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$400(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyTextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/popcap/pvz2cthddev/SexyEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 358
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$600(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/AndroidSurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/AndroidSurfaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 359
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$4;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->access$300(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)Lcom/popcap/pvz2cthddev/SexyEditText;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 360
    const-string p1, "openIMEKeyboard"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
