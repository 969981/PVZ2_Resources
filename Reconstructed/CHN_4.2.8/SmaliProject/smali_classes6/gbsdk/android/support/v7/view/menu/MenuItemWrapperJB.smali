.class public Lgbsdk/android/support/v7/view/menu/MenuItemWrapperJB;
.super Lgbsdk/android/support/v7/view/menu/MenuItemWrapperICS;
.source "MenuItemWrapperJB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/android/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lgbsdk/android/support/v4/internal/view/SupportMenuItem;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lgbsdk/android/support/v7/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Lgbsdk/android/support/v4/internal/view/SupportMenuItem;)V

    return-void
.end method


# virtual methods
.method createActionProviderWrapper(Landroid/view/ActionProvider;)Lgbsdk/android/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    .locals 2

    .line 44
    new-instance v0, Lgbsdk/android/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;

    iget-object v1, p0, Lgbsdk/android/support/v7/view/menu/MenuItemWrapperJB;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lgbsdk/android/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;-><init>(Lgbsdk/android/support/v7/view/menu/MenuItemWrapperJB;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
