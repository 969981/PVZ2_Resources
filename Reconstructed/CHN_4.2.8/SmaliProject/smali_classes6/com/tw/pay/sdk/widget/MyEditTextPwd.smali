.class public Lcom/tw/pay/sdk/widget/MyEditTextPwd;
.super Landroid/widget/LinearLayout;
.source "MyEditTextPwd.java"


# instance fields
.field private clearImg:Landroid/widget/ImageView;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private mEditText:Landroid/widget/EditText;

.field private typeImg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance p1, Lcom/tw/pay/sdk/widget/MyEditTextPwd$3;

    invoke-direct {p1, p0}, Lcom/tw/pay/sdk/widget/MyEditTextPwd$3;-><init>(Lcom/tw/pay/sdk/widget/MyEditTextPwd;)V

    iput-object p1, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance p2, Lcom/tw/pay/sdk/widget/MyEditTextPwd$3;

    invoke-direct {p2, p0}, Lcom/tw/pay/sdk/widget/MyEditTextPwd$3;-><init>(Lcom/tw/pay/sdk/widget/MyEditTextPwd;)V

    iput-object p2, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->clickListener:Landroid/view/View$OnClickListener;

    const-string p2, "layout_inflater"

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const-string v0, "my_edittext_pwd"

    .line 28
    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p2, "imageView4"

    .line 30
    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->clearImg:Landroid/widget/ImageView;

    const-string p2, "editText2"

    .line 32
    invoke-static {p1, p2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    .line 31
    invoke-virtual {p0, p2}, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->mEditText:Landroid/widget/EditText;

    const-string v0, "tw_black"

    .line 33
    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Resource;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 35
    iget-object p1, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->mEditText:Landroid/widget/EditText;

    new-instance p2, Lcom/tw/pay/sdk/widget/MyEditTextPwd$1;

    invoke-direct {p2, p0}, Lcom/tw/pay/sdk/widget/MyEditTextPwd$1;-><init>(Lcom/tw/pay/sdk/widget/MyEditTextPwd;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 42
    iget-object p1, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->clearImg:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-direct {p0}, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->addTextChangedListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/tw/pay/sdk/widget/MyEditTextPwd;)Landroid/widget/EditText;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tw/pay/sdk/widget/MyEditTextPwd;)Landroid/widget/ImageView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->clearImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method private addTextChangedListener()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/tw/pay/sdk/widget/MyEditTextPwd$2;

    invoke-direct {v1, p0}, Lcom/tw/pay/sdk/widget/MyEditTextPwd$2;-><init>(Lcom/tw/pay/sdk/widget/MyEditTextPwd;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/tw/pay/sdk/widget/MyEditTextPwd;->clearImg:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTypeImg(I)V
    .locals 0

    return-void
.end method
