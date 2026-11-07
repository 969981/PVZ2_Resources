.class public Lgbsdk/android/arch/lifecycle/Transformations$2$1;
.super Ljava/lang/Object;
.source "Transformations.java"

# interfaces
.implements Lgbsdk/android/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/arch/lifecycle/Transformations$2;->onChanged(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgbsdk/android/arch/lifecycle/Observer<",
        "TY;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/arch/lifecycle/Transformations$2;


# direct methods
.method constructor <init>(Lgbsdk/android/arch/lifecycle/Transformations$2;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lgbsdk/android/arch/lifecycle/Transformations$2$1;->this$0:Lgbsdk/android/arch/lifecycle/Transformations$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lgbsdk/android/arch/lifecycle/Transformations$2$1;->this$0:Lgbsdk/android/arch/lifecycle/Transformations$2;

    iget-object v0, v0, Lgbsdk/android/arch/lifecycle/Transformations$2;->val$result:Lgbsdk/android/arch/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Lgbsdk/android/arch/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
