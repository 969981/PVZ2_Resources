.class Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->initLoginRL()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    :try_start_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$700(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$1200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$1300(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/o/a;

    move-result-object v2

    const-string v3, "LoginAuthActivity errorCode = "

    const-string v4, "600005"

    const-string v5, "; errorMsg = \u9875\u9762\u975e\u6cd5\u4fee\u6539"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$700(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/utils/l;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u9875\u9762\u975e\u6cd5\u4fee\u6539\uff01"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$400(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isCheckboxHidden()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$1400(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->animateProtocolTV()V

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->animateCheckBox()V

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$400(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isLogBtnToastHidden()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u8bf7\u540c\u610f\u670d\u52a1\u6761\u6b3e"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$900(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object v2

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$1000(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p1}, Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$400(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isPrivacyAlertIsNeedShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v0, p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$1500(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;Z)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$700(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$900(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object v2

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$1000(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p1}, Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->showLoadingDialog()V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$1300(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/o/a;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "LoginAuthActivity"

    aput-object v3, v2, v0

    const-string v0, "; PhoneNumberAuthHelper2 = "

    aput-object v0, v2, v1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$900(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-virtual {p1, v2}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$900(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object p1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$11;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$900(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->a()Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mobile/auth/gatewayauth/d;->b(Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
