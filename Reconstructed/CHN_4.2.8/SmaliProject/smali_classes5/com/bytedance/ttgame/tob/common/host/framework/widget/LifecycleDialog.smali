.class public Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;
.super Landroid/app/Dialog;
.source "LifecycleDialog.java"

# interfaces
.implements Lgbsdk/android/arch/lifecycle/LifecycleObserver;


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private animationDuringTime:I

.field protected contextViewForAnimation:Landroid/view/View;

.field private mActivity:Lgbsdk/android/support/v4/app/FragmentActivity;

.field private mStatusDestroyed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->contextViewForAnimation:Landroid/view/View;

    const/16 v0, 0x64

    .line 30
    iput v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->animationDuringTime:I

    .line 40
    instance-of v0, p1, Lgbsdk/android/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 41
    check-cast p1, Lgbsdk/android/support/v4/app/FragmentActivity;

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->mActivity:Lgbsdk/android/support/v4/app/FragmentActivity;

    .line 42
    invoke-virtual {p1}, Lgbsdk/android/support/v4/app/FragmentActivity;->getLifecycle()Lgbsdk/android/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Lgbsdk/android/arch/lifecycle/Lifecycle;->addObserver(Lgbsdk/android/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 24
    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->contextViewForAnimation:Landroid/view/View;

    const/16 p2, 0x64

    .line 30
    iput p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->animationDuringTime:I

    .line 48
    instance-of p2, p1, Lgbsdk/android/support/v4/app/FragmentActivity;

    if-eqz p2, :cond_0

    .line 49
    check-cast p1, Lgbsdk/android/support/v4/app/FragmentActivity;

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->mActivity:Lgbsdk/android/support/v4/app/FragmentActivity;

    .line 50
    invoke-virtual {p1}, Lgbsdk/android/support/v4/app/FragmentActivity;->getLifecycle()Lgbsdk/android/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Lgbsdk/android/arch/lifecycle/Lifecycle;->addObserver(Lgbsdk/android/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->contextViewForAnimation:Landroid/view/View;

    const/16 p1, 0x64

    .line 30
    iput p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->animationDuringTime:I

    return-void
.end method

.method static synthetic access$001(Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "1c91c94ea762f147ae1365dda1d9715c"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismissLifecycleDialog()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ee27aeb50e0caa7bc059140e2d8b088c"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->mActivity:Lgbsdk/android/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lgbsdk/android/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->mStatusDestroyed:Z

    if-nez v0, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->getContentViewForAnimation()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->getContentViewForAnimation()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->getExitAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getContentViewForAnimation()Landroid/view/View;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->contextViewForAnimation:Landroid/view/View;

    return-object v0
.end method

.method public getEnterAnimation()Landroid/view/animation/Animation;
    .locals 13

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "900a7030487c8cb5ee10e076444f430b"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/view/animation/Animation;

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 88
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 89
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 90
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const v4, 0x3e0f5c29    # 0.14f

    const v5, 0x3eae147b    # 0.34f

    .line 92
    invoke-static {v4, v3, v5, v3}, Lgbsdk/android/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 93
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 95
    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->animationDuringTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    return-object v0
.end method

.method public getExitAnimation()Landroid/view/animation/Animation;
    .locals 14

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e6bb84d6dd2ad727e7ebf164fae35253"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/view/animation/Animation;

    return-object v0

    .line 100
    :cond_0
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 101
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 102
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 103
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const v5, 0x3e0f5c29    # 0.14f

    const v6, 0x3eae147b    # 0.34f

    .line 105
    invoke-static {v5, v4, v6, v4}, Lgbsdk/android/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 106
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 107
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->animationDuringTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 110
    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1;

    invoke-direct {v1, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method protected isShowable()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "145ee071afb3ffd81a73ffc0bd1c88e5"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->mActivity:Lgbsdk/android/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v1}, Lgbsdk/android/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->mStatusDestroyed:Z

    if-nez v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method onActivityDestroy()V
    .locals 4
    .annotation runtime Lgbsdk/android/arch/lifecycle/OnLifecycleEvent;
        value = .enum Lgbsdk/android/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Lgbsdk/android/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "371490fcd237e098bc8509f670036496"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->dismissLifecycleDialog()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->mStatusDestroyed:Z

    return-void
.end method

.method public setContextViewForAnimation(Landroid/view/View;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->contextViewForAnimation:Landroid/view/View;

    return-void
.end method

.method public showDialog()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e662865afbbe73b2a8c8c0472e22724c"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->isShowable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->getContentViewForAnimation()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->getContentViewForAnimation()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->getEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/widget/LifecycleDialog;->show()V

    :cond_2
    return-void
.end method
