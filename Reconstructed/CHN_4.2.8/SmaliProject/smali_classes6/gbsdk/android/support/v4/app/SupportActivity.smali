.class public Lgbsdk/android/support/v4/app/SupportActivity;
.super Landroid/app/Activity;
.source "ComponentActivity.java"

# interfaces
.implements Lgbsdk/android/arch/lifecycle/LifecycleOwner;
.implements Lgbsdk/android/support/v4/view/KeyEventDispatcher$Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/android/support/v4/app/SupportActivity$ExtraData;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Lgbsdk/android/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/android/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/Class<",
            "+",
            "Lgbsdk/android/support/v4/app/SupportActivity$ExtraData;",
            ">;",
            "Lgbsdk/android/support/v4/app/SupportActivity$ExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleRegistry:Lgbsdk/android/arch/lifecycle/LifecycleRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Lgbsdk/android/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Lgbsdk/android/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lgbsdk/android/support/v4/app/SupportActivity;->mExtraDataMap:Lgbsdk/android/support/v4/util/SimpleArrayMap;

    .line 56
    new-instance v0, Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Lgbsdk/android/arch/lifecycle/LifecycleRegistry;-><init>(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lgbsdk/android/support/v4/app/SupportActivity;->mLifecycleRegistry:Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 122
    invoke-virtual {p0}, Lgbsdk/android/support/v4/app/SupportActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {v0, p1}, Lgbsdk/android/support/v4/view/KeyEventDispatcher;->dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 126
    :cond_0
    invoke-static {p0, v0, p0, p1}, Lgbsdk/android/support/v4/view/KeyEventDispatcher;->dispatchKeyEvent(Lgbsdk/android/support/v4/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 113
    invoke-virtual {p0}, Lgbsdk/android/support/v4/app/SupportActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {v0, p1}, Lgbsdk/android/support/v4/view/KeyEventDispatcher;->dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 117
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getExtraData(Ljava/lang/Class;)Lgbsdk/android/support/v4/app/SupportActivity$ExtraData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lgbsdk/android/support/v4/app/SupportActivity$ExtraData;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lgbsdk/android/support/v4/app/SupportActivity;->mExtraDataMap:Lgbsdk/android/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Lgbsdk/android/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbsdk/android/support/v4/app/SupportActivity$ExtraData;

    return-object p1
.end method

.method public getLifecycle()Lgbsdk/android/arch/lifecycle/Lifecycle;
    .locals 1

    .line 99
    iget-object v0, p0, Lgbsdk/android/support/v4/app/SupportActivity;->mLifecycleRegistry:Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-static {p0}, Lgbsdk/android/arch/lifecycle/ReportFragment;->injectIfNeededIn(Landroid/app/Activity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lgbsdk/android/support/v4/app/SupportActivity;->mLifecycleRegistry:Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Lgbsdk/android/arch/lifecycle/Lifecycle$State;->CREATED:Lgbsdk/android/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Lgbsdk/android/arch/lifecycle/LifecycleRegistry;->markState(Lgbsdk/android/arch/lifecycle/Lifecycle$State;)V

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public putExtraData(Lgbsdk/android/support/v4/app/SupportActivity$ExtraData;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lgbsdk/android/support/v4/app/SupportActivity;->mExtraDataMap:Lgbsdk/android/support/v4/util/SimpleArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lgbsdk/android/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
