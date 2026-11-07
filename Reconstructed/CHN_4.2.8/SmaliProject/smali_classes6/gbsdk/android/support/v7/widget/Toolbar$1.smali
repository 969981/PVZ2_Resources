.class public Lgbsdk/android/support/v7/widget/Toolbar$1;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lgbsdk/android/support/v7/widget/ActionMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/widget/Toolbar;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/Toolbar$1;->this$0:Lgbsdk/android/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 203
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/Toolbar$1;->this$0:Lgbsdk/android/support/v7/widget/Toolbar;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Lgbsdk/android/support/v7/widget/Toolbar$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/Toolbar$1;->this$0:Lgbsdk/android/support/v7/widget/Toolbar;

    iget-object v0, v0, Lgbsdk/android/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Lgbsdk/android/support/v7/widget/Toolbar$OnMenuItemClickListener;

    invoke-interface {v0, p1}, Lgbsdk/android/support/v7/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
