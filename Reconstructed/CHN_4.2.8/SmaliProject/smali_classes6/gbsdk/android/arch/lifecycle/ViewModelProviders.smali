.class public Lgbsdk/android/arch/lifecycle/ViewModelProviders;
.super Ljava/lang/Object;
.source "ViewModelProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/android/arch/lifecycle/ViewModelProviders$DefaultFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkActivity(Lgbsdk/android/support/v4/app/Fragment;)Landroid/app/Activity;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lgbsdk/android/support/v4/app/Fragment;->getActivity()Lgbsdk/android/support/v4/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t create ViewModelProvider for detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkApplication(Landroid/app/Activity;)Landroid/app/Application;
    .locals 1

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Your activity/fragment is not yet attached to Application. You can\'t request ViewModel before onCreate call."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static of(Lgbsdk/android/support/v4/app/Fragment;)Lgbsdk/android/arch/lifecycle/ViewModelProvider;
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-static {p0, v0}, Lgbsdk/android/arch/lifecycle/ViewModelProviders;->of(Lgbsdk/android/support/v4/app/Fragment;Lgbsdk/android/arch/lifecycle/ViewModelProvider$Factory;)Lgbsdk/android/arch/lifecycle/ViewModelProvider;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lgbsdk/android/support/v4/app/Fragment;Lgbsdk/android/arch/lifecycle/ViewModelProvider$Factory;)Lgbsdk/android/arch/lifecycle/ViewModelProvider;
    .locals 1

    .line 100
    invoke-static {p0}, Lgbsdk/android/arch/lifecycle/ViewModelProviders;->checkActivity(Lgbsdk/android/support/v4/app/Fragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/android/arch/lifecycle/ViewModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    if-nez p1, :cond_0

    .line 102
    invoke-static {v0}, Lgbsdk/android/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;->getInstance(Landroid/app/Application;)Lgbsdk/android/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    move-result-object p1

    .line 104
    :cond_0
    new-instance v0, Lgbsdk/android/arch/lifecycle/ViewModelProvider;

    invoke-static {p0}, Lgbsdk/android/arch/lifecycle/ViewModelStores;->of(Lgbsdk/android/support/v4/app/Fragment;)Lgbsdk/android/arch/lifecycle/ViewModelStore;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lgbsdk/android/arch/lifecycle/ViewModelProvider;-><init>(Lgbsdk/android/arch/lifecycle/ViewModelStore;Lgbsdk/android/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object v0
.end method

.method public static of(Lgbsdk/android/support/v4/app/FragmentActivity;)Lgbsdk/android/arch/lifecycle/ViewModelProvider;
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-static {p0, v0}, Lgbsdk/android/arch/lifecycle/ViewModelProviders;->of(Lgbsdk/android/support/v4/app/FragmentActivity;Lgbsdk/android/arch/lifecycle/ViewModelProvider$Factory;)Lgbsdk/android/arch/lifecycle/ViewModelProvider;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lgbsdk/android/support/v4/app/FragmentActivity;Lgbsdk/android/arch/lifecycle/ViewModelProvider$Factory;)Lgbsdk/android/arch/lifecycle/ViewModelProvider;
    .locals 1

    .line 121
    invoke-static {p0}, Lgbsdk/android/arch/lifecycle/ViewModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    if-nez p1, :cond_0

    .line 123
    invoke-static {v0}, Lgbsdk/android/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;->getInstance(Landroid/app/Application;)Lgbsdk/android/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    move-result-object p1

    .line 125
    :cond_0
    new-instance v0, Lgbsdk/android/arch/lifecycle/ViewModelProvider;

    invoke-static {p0}, Lgbsdk/android/arch/lifecycle/ViewModelStores;->of(Lgbsdk/android/support/v4/app/FragmentActivity;)Lgbsdk/android/arch/lifecycle/ViewModelStore;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lgbsdk/android/arch/lifecycle/ViewModelProvider;-><init>(Lgbsdk/android/arch/lifecycle/ViewModelStore;Lgbsdk/android/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object v0
.end method
