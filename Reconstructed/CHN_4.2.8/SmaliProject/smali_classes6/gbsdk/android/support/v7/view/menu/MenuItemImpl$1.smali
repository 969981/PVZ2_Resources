.class public Lgbsdk/android/support/v7/view/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Lgbsdk/android/support/v4/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v7/view/menu/MenuItemImpl;->setSupportActionProvider(Lgbsdk/android/support/v4/view/ActionProvider;)Lgbsdk/android/support/v4/internal/view/SupportMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/view/menu/MenuItemImpl;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lgbsdk/android/support/v7/view/menu/MenuItemImpl$1;->this$0:Lgbsdk/android/support/v7/view/menu/MenuItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 803
    iget-object p1, p0, Lgbsdk/android/support/v7/view/menu/MenuItemImpl$1;->this$0:Lgbsdk/android/support/v7/view/menu/MenuItemImpl;

    iget-object p1, p1, Lgbsdk/android/support/v7/view/menu/MenuItemImpl;->mMenu:Lgbsdk/android/support/v7/view/menu/MenuBuilder;

    iget-object v0, p0, Lgbsdk/android/support/v7/view/menu/MenuItemImpl$1;->this$0:Lgbsdk/android/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p1, v0}, Lgbsdk/android/support/v7/view/menu/MenuBuilder;->onItemVisibleChanged(Lgbsdk/android/support/v7/view/menu/MenuItemImpl;)V

    return-void
.end method
