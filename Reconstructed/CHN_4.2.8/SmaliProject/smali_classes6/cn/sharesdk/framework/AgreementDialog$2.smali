.class Lcn/sharesdk/framework/AgreementDialog$2;
.super Ljava/lang/Object;
.source "AgreementDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/AgreementDialog;->setActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcn/sharesdk/framework/AgreementDialog;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/AgreementDialog;Landroid/app/Activity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/sharesdk/framework/AgreementDialog$2;->b:Lcn/sharesdk/framework/AgreementDialog;

    iput-object p2, p0, Lcn/sharesdk/framework/AgreementDialog$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 48
    iget-object p1, p0, Lcn/sharesdk/framework/AgreementDialog$2;->b:Lcn/sharesdk/framework/AgreementDialog;

    invoke-static {p1}, Lcn/sharesdk/framework/AgreementDialog;->b(Lcn/sharesdk/framework/AgreementDialog;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/sharesdk/framework/AgreementDialog$2;->b:Lcn/sharesdk/framework/AgreementDialog;

    invoke-static {p1}, Lcn/sharesdk/framework/AgreementDialog;->b(Lcn/sharesdk/framework/AgreementDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    iget-object p1, p0, Lcn/sharesdk/framework/AgreementDialog$2;->b:Lcn/sharesdk/framework/AgreementDialog;

    invoke-static {p1}, Lcn/sharesdk/framework/AgreementDialog;->b(Lcn/sharesdk/framework/AgreementDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 50
    iget-object p1, p0, Lcn/sharesdk/framework/AgreementDialog$2;->b:Lcn/sharesdk/framework/AgreementDialog;

    invoke-static {p1}, Lcn/sharesdk/framework/AgreementDialog;->c(Lcn/sharesdk/framework/AgreementDialog;)Lcn/sharesdk/framework/AgreementDialog$OnDialogDismiss;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcn/sharesdk/framework/AgreementDialog$2;->b:Lcn/sharesdk/framework/AgreementDialog;

    invoke-static {p1}, Lcn/sharesdk/framework/AgreementDialog;->c(Lcn/sharesdk/framework/AgreementDialog;)Lcn/sharesdk/framework/AgreementDialog$OnDialogDismiss;

    move-result-object p1

    invoke-interface {p1}, Lcn/sharesdk/framework/AgreementDialog$OnDialogDismiss;->consent()V

    .line 53
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/b/a/e;->a(Z)V

    .line 55
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/framework/AgreementDialog$2;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
