.class public Lgbsdk/android/support/v7/widget/ListPopupWindow$ListSelectorHider;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListSelectorHider"
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/widget/ListPopupWindow;)V
    .locals 0

    .line 1341
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/ListPopupWindow$ListSelectorHider;->this$0:Lgbsdk/android/support/v7/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1346
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ListPopupWindow$ListSelectorHider;->this$0:Lgbsdk/android/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/ListPopupWindow;->clearListSelection()V

    return-void
.end method
