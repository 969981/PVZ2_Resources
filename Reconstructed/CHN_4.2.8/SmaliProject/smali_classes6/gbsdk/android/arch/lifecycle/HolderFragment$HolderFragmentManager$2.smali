.class public Lgbsdk/android/arch/lifecycle/HolderFragment$HolderFragmentManager$2;
.super Lgbsdk/android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
.source "HolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/arch/lifecycle/HolderFragment$HolderFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/arch/lifecycle/HolderFragment$HolderFragmentManager;


# direct methods
.method constructor <init>(Lgbsdk/android/arch/lifecycle/HolderFragment$HolderFragmentManager;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/HolderFragment$HolderFragmentManager$2;->this$0:Lgbsdk/android/arch/lifecycle/HolderFragment$HolderFragmentManager;

    invoke-direct {p0}, Lgbsdk/android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDestroyed(Lgbsdk/android/support/v4/app/FragmentManager;Lgbsdk/android/support/v4/app/Fragment;)V
    .locals 1

    .line 117
    invoke-super {p0, p1, p2}, Lgbsdk/android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Lgbsdk/android/support/v4/app/FragmentManager;Lgbsdk/android/support/v4/app/Fragment;)V

    .line 118
    iget-object p1, p0, Lgbsdk/android/arch/lifecycle/HolderFragment$HolderFragmentManager$2;->this$0:Lgbsdk/android/arch/lifecycle/HolderFragment$HolderFragmentManager;

    iget-object p1, p1, Lgbsdk/android/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedFragmentHolders:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbsdk/android/arch/lifecycle/HolderFragment;

    if-eqz p1, :cond_0

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to save a ViewModel for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ViewModelStores"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
