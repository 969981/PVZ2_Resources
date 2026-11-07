.class public interface abstract Lgbsdk/android/support/v7/view/menu/MenuPresenter;
.super Ljava/lang/Object;
.source "MenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/android/support/v7/view/menu/MenuPresenter$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapseItemActionView(Lgbsdk/android/support/v7/view/menu/MenuBuilder;Lgbsdk/android/support/v7/view/menu/MenuItemImpl;)Z
.end method

.method public abstract expandItemActionView(Lgbsdk/android/support/v7/view/menu/MenuBuilder;Lgbsdk/android/support/v7/view/menu/MenuItemImpl;)Z
.end method

.method public abstract flagActionItems()Z
.end method

.method public abstract getId()I
.end method

.method public abstract getMenuView(Landroid/view/ViewGroup;)Lgbsdk/android/support/v7/view/menu/MenuView;
.end method

.method public abstract initForMenu(Landroid/content/Context;Lgbsdk/android/support/v7/view/menu/MenuBuilder;)V
.end method

.method public abstract onCloseMenu(Lgbsdk/android/support/v7/view/menu/MenuBuilder;Z)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState()Landroid/os/Parcelable;
.end method

.method public abstract onSubMenuSelected(Lgbsdk/android/support/v7/view/menu/SubMenuBuilder;)Z
.end method

.method public abstract setCallback(Lgbsdk/android/support/v7/view/menu/MenuPresenter$Callback;)V
.end method

.method public abstract updateMenuView(Z)V
.end method
