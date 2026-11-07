.class public Lgbsdk/android/support/v7/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v7/widget/ActionBarContextView;->initForMode(Lgbsdk/android/support/v7/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/widget/ActionBarContextView;

.field final synthetic val$mode:Lgbsdk/android/support/v7/view/ActionMode;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/widget/ActionBarContextView;Lgbsdk/android/support/v7/view/ActionMode;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/ActionBarContextView$1;->this$0:Lgbsdk/android/support/v7/widget/ActionBarContextView;

    iput-object p2, p0, Lgbsdk/android/support/v7/widget/ActionBarContextView$1;->val$mode:Lgbsdk/android/support/v7/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 173
    iget-object p1, p0, Lgbsdk/android/support/v7/widget/ActionBarContextView$1;->val$mode:Lgbsdk/android/support/v7/view/ActionMode;

    invoke-virtual {p1}, Lgbsdk/android/support/v7/view/ActionMode;->finish()V

    return-void
.end method
