.class public Lgbsdk/android/support/v4/app/Fragment$3;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Lgbsdk/android/arch/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v4/app/Fragment;)V
    .locals 0

    .line 2429
    iput-object p1, p0, Lgbsdk/android/support/v4/app/Fragment$3;->this$0:Lgbsdk/android/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLifecycle()Lgbsdk/android/arch/lifecycle/Lifecycle;
    .locals 3

    .line 2432
    iget-object v0, p0, Lgbsdk/android/support/v4/app/Fragment$3;->this$0:Lgbsdk/android/support/v4/app/Fragment;

    iget-object v0, v0, Lgbsdk/android/support/v4/app/Fragment;->mViewLifecycleRegistry:Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

    if-nez v0, :cond_0

    .line 2433
    iget-object v0, p0, Lgbsdk/android/support/v4/app/Fragment$3;->this$0:Lgbsdk/android/support/v4/app/Fragment;

    new-instance v1, Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

    iget-object v2, v0, Lgbsdk/android/support/v4/app/Fragment;->mViewLifecycleOwner:Lgbsdk/android/arch/lifecycle/LifecycleOwner;

    invoke-direct {v1, v2}, Lgbsdk/android/arch/lifecycle/LifecycleRegistry;-><init>(Lgbsdk/android/arch/lifecycle/LifecycleOwner;)V

    iput-object v1, v0, Lgbsdk/android/support/v4/app/Fragment;->mViewLifecycleRegistry:Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

    .line 2435
    :cond_0
    iget-object v0, p0, Lgbsdk/android/support/v4/app/Fragment$3;->this$0:Lgbsdk/android/support/v4/app/Fragment;

    iget-object v0, v0, Lgbsdk/android/support/v4/app/Fragment;->mViewLifecycleRegistry:Lgbsdk/android/arch/lifecycle/LifecycleRegistry;

    return-object v0
.end method
