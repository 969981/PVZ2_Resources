.class public Lgbsdk/android/support/v7/widget/ActivityChooserView$4;
.super Lgbsdk/android/support/v7/widget/ForwardingListener;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v7/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/widget/ActivityChooserView;Landroid/view/View;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/ActivityChooserView$4;->this$0:Lgbsdk/android/support/v7/widget/ActivityChooserView;

    invoke-direct {p0, p2}, Lgbsdk/android/support/v7/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lgbsdk/android/support/v7/view/menu/ShowableListMenu;
    .locals 1

    .line 260
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ActivityChooserView$4;->this$0:Lgbsdk/android/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/ActivityChooserView;->getListPopupWindow()Lgbsdk/android/support/v7/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ActivityChooserView$4;->this$0:Lgbsdk/android/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/ActivityChooserView;->showPopup()Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ActivityChooserView$4;->this$0:Lgbsdk/android/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/ActivityChooserView;->dismissPopup()Z

    const/4 v0, 0x1

    return v0
.end method
