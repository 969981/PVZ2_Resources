.class public Lcom/popcap/pvz2cthddev/SexyEditText;
.super Landroid/widget/EditText;
.source "SexyEditText.java"


# instance fields
.field private mSexyAppFrameworkActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyEditText;->mSexyAppFrameworkActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    if-eqz v0, :cond_0

    .line 53
    const-string v1, "input_method"

    .line 54
    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 55
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyEditText;->mSexyAppFrameworkActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->closeIMEKeyboard()V

    .line 62
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onEditorAction(I)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 81
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyEditText;->mSexyAppFrameworkActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->closeIMEKeyboard()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 36
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyEditText;->mSexyAppFrameworkActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->closeIMEKeyboard()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyEditText;->mSexyAppFrameworkActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getUIEventMgr()Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->HandleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 47
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/SexyEditText;->mSexyAppFrameworkActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getUIEventMgr()Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/popcap/pvz2cthddev/AndroidUIEventManager;->HandleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 73
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setSexyAppFrameworkActivity(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/SexyEditText;->mSexyAppFrameworkActivity:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    return-void
.end method
