.class public Lcom/mobile/auth/y/a;
.super Landroid/app/Dialog;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/app/AppCompatActivity;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/mobile/auth/y/a;->f:Z

    iput-object p1, p0, Lcom/mobile/auth/y/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/mobile/auth/gatewayauth/AuthUIConfig;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/app/AppCompatActivity;",
            ">;",
            "Lcom/mobile/auth/gatewayauth/AuthUIConfig;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "authsdk_loading_dialog"

    const-string v2, "style"

    invoke-static {v0, v1, v2}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mobile/auth/y/a;-><init>(Ljava/lang/ref/WeakReference;I)V

    iput-object p2, p0, Lcom/mobile/auth/y/a;->e:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    iput-boolean p3, p0, Lcom/mobile/auth/y/a;->f:Z

    return-void
.end method

.method private a()V
    .locals 4

    const-string v0, "id"

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/y/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "authsdk_loading_dialog_layout"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mobile/auth/y/a;->setContentView(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mobile/auth/y/a;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/mobile/auth/y/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "authsdk_iv_loading"

    invoke-static {v1, v2, v0}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mobile/auth/y/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mobile/auth/y/a;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mobile/auth/y/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "authsdk_lly_loading"

    invoke-static {v1, v2, v0}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobile/auth/y/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mobile/auth/y/a;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mobile/auth/y/a;->e:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getLoadingImgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mobile/auth/y/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/y/a;->e:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getLoadingImgPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/l;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/y/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/y/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mobile/auth/y/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "authsdk_anim_loading"

    const-string v3, "anim"

    invoke-static {v1, v2, v3}, Lcom/nirvana/tools/core/AppUtils;->getResID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/y/a;->b:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v1, p0, Lcom/mobile/auth/y/a;->b:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/mobile/auth/y/a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobile/auth/y/a;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mobile/auth/y/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/mobile/auth/y/a;->e:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getLoadingBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/mobile/auth/y/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/y/a;->e:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getLoadingBackgroundPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/l;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/mobile/auth/y/a;->d:Landroid/widget/LinearLayout;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/mobile/auth/y/a;->d:Landroid/widget/LinearLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/y/a;->b:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/y/a;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/y/a;->e:Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/mobile/auth/y/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/y/a;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/y/a;->e:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isStatusBarHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mobile/auth/y/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/m;->b(Landroid/view/Window;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/mobile/auth/y/a;->b:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobile/auth/y/a;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/mobile/auth/y/a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobile/auth/y/a;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-boolean v0, p0, Lcom/mobile/auth/y/a;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mobile/auth/y/a;->e:Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isStatusBarHidden()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/mobile/auth/y/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/m;->a(Landroid/view/Window;)V

    invoke-virtual {p0}, Lcom/mobile/auth/y/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/m;->c(Landroid/view/Window;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method
