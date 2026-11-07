.class public Lgbsdk/android/arch/lifecycle/AndroidViewModel;
.super Lgbsdk/android/arch/lifecycle/ViewModel;
.source "AndroidViewModel.java"


# instance fields
.field private mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lgbsdk/android/arch/lifecycle/ViewModel;-><init>()V

    .line 34
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/AndroidViewModel;->mApplication:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public getApplication()Landroid/app/Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Application;",
            ">()TT;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/AndroidViewModel;->mApplication:Landroid/app/Application;

    return-object v0
.end method
