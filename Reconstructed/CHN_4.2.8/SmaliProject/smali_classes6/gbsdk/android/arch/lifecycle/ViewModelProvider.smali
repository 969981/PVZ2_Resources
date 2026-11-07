.class public Lgbsdk/android/arch/lifecycle/ViewModelProvider;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/android/arch/lifecycle/ViewModelProvider$AndroidViewModelFactory;,
        Lgbsdk/android/arch/lifecycle/ViewModelProvider$NewInstanceFactory;,
        Lgbsdk/android/arch/lifecycle/ViewModelProvider$Factory;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEY:Ljava/lang/String; = "gbsdk.android.arch.lifecycle.ViewModelProvider.DefaultKey"


# instance fields
.field private final mFactory:Lgbsdk/android/arch/lifecycle/ViewModelProvider$Factory;

.field private final mViewModelStore:Lgbsdk/android/arch/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>(Lgbsdk/android/arch/lifecycle/ViewModelStore;Lgbsdk/android/arch/lifecycle/ViewModelProvider$Factory;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lgbsdk/android/arch/lifecycle/ViewModelProvider;->mFactory:Lgbsdk/android/arch/lifecycle/ViewModelProvider$Factory;

    .line 79
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/ViewModelProvider;->mViewModelStore:Lgbsdk/android/arch/lifecycle/ViewModelStore;

    return-void
.end method

.method public constructor <init>(Lgbsdk/android/arch/lifecycle/ViewModelStoreOwner;Lgbsdk/android/arch/lifecycle/ViewModelProvider$Factory;)V
    .locals 0

    .line 66
    invoke-interface {p1}, Lgbsdk/android/arch/lifecycle/ViewModelStoreOwner;->getViewModelStore()Lgbsdk/android/arch/lifecycle/ViewModelStore;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lgbsdk/android/arch/lifecycle/ViewModelProvider;-><init>(Lgbsdk/android/arch/lifecycle/ViewModelStore;Lgbsdk/android/arch/lifecycle/ViewModelProvider$Factory;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Lgbsdk/android/arch/lifecycle/ViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lgbsdk/android/arch/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gbsdk.android.arch.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgbsdk/android/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/String;Ljava/lang/Class;)Lgbsdk/android/arch/lifecycle/ViewModel;

    move-result-object p1

    return-object p1

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Lgbsdk/android/arch/lifecycle/ViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lgbsdk/android/arch/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/ViewModelProvider;->mViewModelStore:Lgbsdk/android/arch/lifecycle/ViewModelStore;

    invoke-virtual {v0, p1}, Lgbsdk/android/arch/lifecycle/ViewModelStore;->get(Ljava/lang/String;)Lgbsdk/android/arch/lifecycle/ViewModel;

    move-result-object v0

    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/ViewModelProvider;->mFactory:Lgbsdk/android/arch/lifecycle/ViewModelProvider$Factory;

    invoke-interface {v0, p2}, Lgbsdk/android/arch/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;)Lgbsdk/android/arch/lifecycle/ViewModel;

    move-result-object p2

    .line 135
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/ViewModelProvider;->mViewModelStore:Lgbsdk/android/arch/lifecycle/ViewModelStore;

    invoke-virtual {v0, p1, p2}, Lgbsdk/android/arch/lifecycle/ViewModelStore;->put(Ljava/lang/String;Lgbsdk/android/arch/lifecycle/ViewModel;)V

    return-object p2
.end method
