.class public Lgbsdk/android/support/design/widget/CoordinatorLayout$1;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Lgbsdk/android/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/design/widget/CoordinatorLayout;->setupForInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Lgbsdk/android/support/design/widget/CoordinatorLayout;)V
    .locals 0

    .line 3216
    iput-object p1, p0, Lgbsdk/android/support/design/widget/CoordinatorLayout$1;->this$0:Lgbsdk/android/support/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lgbsdk/android/support/v4/view/WindowInsetsCompat;)Lgbsdk/android/support/v4/view/WindowInsetsCompat;
    .locals 0

    .line 3220
    iget-object p1, p0, Lgbsdk/android/support/design/widget/CoordinatorLayout$1;->this$0:Lgbsdk/android/support/design/widget/CoordinatorLayout;

    invoke-virtual {p1, p2}, Lgbsdk/android/support/design/widget/CoordinatorLayout;->setWindowInsets(Lgbsdk/android/support/v4/view/WindowInsetsCompat;)Lgbsdk/android/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
