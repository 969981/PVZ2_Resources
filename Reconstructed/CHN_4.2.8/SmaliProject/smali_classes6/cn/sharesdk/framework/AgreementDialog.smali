.class public Lcn/sharesdk/framework/AgreementDialog;
.super Lcom/mob/tools/FakeActivity;
.source "AgreementDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/AgreementDialog$OnDialogDismiss;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Lcn/sharesdk/framework/AgreementDialog$OnDialogDismiss;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/sharesdk/framework/AgreementDialog;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcn/sharesdk/framework/AgreementDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 86
    iget-object v0, p0, Lcn/sharesdk/framework/AgreementDialog;->b:Lcn/sharesdk/framework/AgreementDialog$OnDialogDismiss;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0}, Lcn/sharesdk/framework/AgreementDialog$OnDialogDismiss;->refuse()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/AgreementDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/AgreementDialog;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcn/sharesdk/framework/AgreementDialog;->a()V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/framework/AgreementDialog;)Landroid/app/Dialog;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/sharesdk/framework/AgreementDialog;->a:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/framework/AgreementDialog;)Lcn/sharesdk/framework/AgreementDialog$OnDialogDismiss;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/sharesdk/framework/AgreementDialog;->b:Lcn/sharesdk/framework/AgreementDialog$OnDialogDismiss;

    return-object p0
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/AgreementDialog$OnDialogDismiss;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcn/sharesdk/framework/AgreementDialog;->b:Lcn/sharesdk/framework/AgreementDialog$OnDialogDismiss;

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 4

    .line 25
    invoke-super {p0, p1}, Lcom/mob/tools/FakeActivity;->setActivity(Landroid/app/Activity;)V

    .line 27
    :try_start_0
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "mobcommon_DialogStyle"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getStyleRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/sharesdk/framework/AgreementDialog;->a:Landroid/app/Dialog;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "sharesdk_agreement_dialog"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcn/sharesdk/framework/AgreementDialog;->a:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 31
    iget-object v1, p0, Lcn/sharesdk/framework/AgreementDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 32
    iget-object v1, p0, Lcn/sharesdk/framework/AgreementDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x11

    .line 34
    invoke-virtual {v1, v3}, Landroid/view/Window;->setGravity(I)V

    .line 35
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 36
    iget-object v1, p0, Lcn/sharesdk/framework/AgreementDialog;->a:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 37
    const-string v1, "sharesdk_agreement_dialog_reject_tv"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/framework/AgreementDialog$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/framework/AgreementDialog$1;-><init>(Lcn/sharesdk/framework/AgreementDialog;)V

    .line 38
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const-string v1, "sharesdk_agreement_dialog_accept_tv"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/sharesdk/framework/AgreementDialog$2;

    invoke-direct {v1, p0, p1}, Lcn/sharesdk/framework/AgreementDialog$2;-><init>(Lcn/sharesdk/framework/AgreementDialog;Landroid/app/Activity;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcn/sharesdk/framework/AgreementDialog;->a:Landroid/app/Dialog;

    new-instance v0, Lcn/sharesdk/framework/AgreementDialog$3;

    invoke-direct {v0, p0}, Lcn/sharesdk/framework/AgreementDialog$3;-><init>(Lcn/sharesdk/framework/AgreementDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 67
    iget-object p1, p0, Lcn/sharesdk/framework/AgreementDialog;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
