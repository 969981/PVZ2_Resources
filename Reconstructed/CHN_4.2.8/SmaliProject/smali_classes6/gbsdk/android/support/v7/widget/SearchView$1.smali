.class public Lgbsdk/android/support/v7/widget/SearchView$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/widget/SearchView;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/SearchView$1;->this$0:Lgbsdk/android/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 180
    iget-object v0, p0, Lgbsdk/android/support/v7/widget/SearchView$1;->this$0:Lgbsdk/android/support/v7/widget/SearchView;

    invoke-virtual {v0}, Lgbsdk/android/support/v7/widget/SearchView;->updateFocusedState()V

    return-void
.end method
