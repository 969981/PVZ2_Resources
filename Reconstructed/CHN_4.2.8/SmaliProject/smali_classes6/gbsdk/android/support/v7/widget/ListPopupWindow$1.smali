.class public Lgbsdk/android/support/v7/widget/ListPopupWindow$1;
.super Lgbsdk/android/support/v7/widget/ForwardingListener;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v7/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/widget/ListPopupWindow;Landroid/view/View;)V
    .locals 0

    .line 1120
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/ListPopupWindow$1;->this$0:Lgbsdk/android/support/v7/widget/ListPopupWindow;

    invoke-direct {p0, p2}, Lgbsdk/android/support/v7/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getPopup()Lgbsdk/android/support/v7/view/menu/ShowableListMenu;
    .locals 1

    .line 1120
    invoke-virtual {p0}, Lgbsdk/android/support/v7/widget/ListPopupWindow$1;->getPopup()Lgbsdk/android/support/v7/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public getPopup()Lgbsdk/android/support/v7/widget/ListPopupWindow;
    .locals 1

    .line 1123
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ListPopupWindow$1;->this$0:Lgbsdk/android/support/v7/widget/ListPopupWindow;

    return-object v0
.end method
