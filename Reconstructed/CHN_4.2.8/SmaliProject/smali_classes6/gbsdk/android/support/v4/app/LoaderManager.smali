.class public abstract Lgbsdk/android/support/v4/app/LoaderManager;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/android/support/v4/app/LoaderManager$LoaderCallbacks;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0

    .line 235
    sput-boolean p0, Lgbsdk/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method

.method public static getInstance(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)Lgbsdk/android/support/v4/app/LoaderManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lgbsdk/android/arch/lifecycle/LifecycleOwner;",
            ":",
            "Lgbsdk/android/arch/lifecycle/ViewModelStoreOwner;",
            ">(TT;)",
            "Lgbsdk/android/support/v4/app/LoaderManager;"
        }
    .end annotation

    .line 128
    new-instance v0, Lgbsdk/android/support/v4/app/LoaderManagerImpl;

    move-object v1, p0

    check-cast v1, Lgbsdk/android/arch/lifecycle/ViewModelStoreOwner;

    invoke-interface {v1}, Lgbsdk/android/arch/lifecycle/ViewModelStoreOwner;->getViewModelStore()Lgbsdk/android/arch/lifecycle/ViewModelStore;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgbsdk/android/support/v4/app/LoaderManagerImpl;-><init>(Lgbsdk/android/arch/lifecycle/LifecycleOwner;Lgbsdk/android/arch/lifecycle/ViewModelStore;)V

    return-object v0
.end method


# virtual methods
.method public abstract destroyLoader(I)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLoader(I)Lgbsdk/android/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lgbsdk/android/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method

.method public hasRunningLoaders()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract initLoader(ILandroid/os/Bundle;Lgbsdk/android/support/v4/app/LoaderManager$LoaderCallbacks;)Lgbsdk/android/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lgbsdk/android/support/v4/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Lgbsdk/android/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract markForRedelivery()V
.end method

.method public abstract restartLoader(ILandroid/os/Bundle;Lgbsdk/android/support/v4/app/LoaderManager$LoaderCallbacks;)Lgbsdk/android/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lgbsdk/android/support/v4/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Lgbsdk/android/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method
