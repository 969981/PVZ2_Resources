.class Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->initTitleView()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity$7;->a:Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity$7;->a:Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->access$100(Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object p1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity$7;->a:Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->access$000(Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mobile/auth/gatewayauth/d;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity$7;->a:Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;

    const/4 v0, 0x1

    const-string v1, "700007"

    const-string v2, "\u9690\u79c1\u534f\u8bae\u4e8c\u6b21\u5f39\u7a97\u5173\u95ed"

    invoke-static {p1, v0, v1, v2}, Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;->access$200(Lcom/mobile/auth/gatewayauth/PrivacyDialogActivity;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
