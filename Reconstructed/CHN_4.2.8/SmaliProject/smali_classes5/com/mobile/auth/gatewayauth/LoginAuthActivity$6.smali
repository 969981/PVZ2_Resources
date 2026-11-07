.class Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->updateDialogWithKeyboard()V
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

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$100(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1, v0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$202(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;I)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)I

    move-result v1

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v2, 0xc8

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$302(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;I)I

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1, v0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$202(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;I)I

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$400(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isDialogBottom()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$500(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$500(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$300(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setY(F)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/g;->c(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$500(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$500(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$300(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$300(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-static {v3, v4}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$602(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;F)F

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$500(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$500(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$600(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setY(F)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)I

    move-result v1

    sub-int v1, v0, v1

    if-le v1, v2, :cond_6

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$400(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isDialogBottom()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$500(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$500(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$300(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setY(F)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$600(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$500(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v3}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$500(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v4}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$600(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setY(F)V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1, v2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$602(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;F)F

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$6;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {v1, v0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$202(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method
