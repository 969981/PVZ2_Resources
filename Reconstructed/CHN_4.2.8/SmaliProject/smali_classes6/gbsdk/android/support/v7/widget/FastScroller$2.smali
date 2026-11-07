.class public Lgbsdk/android/support/v7/widget/FastScroller$2;
.super Lgbsdk/android/support/v7/widget/RecyclerView$OnScrollListener;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/widget/FastScroller;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/widget/FastScroller;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/FastScroller$2;->this$0:Lgbsdk/android/support/v7/widget/FastScroller;

    invoke-direct {p0}, Lgbsdk/android/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lgbsdk/android/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 133
    iget-object p2, p0, Lgbsdk/android/support/v7/widget/FastScroller$2;->this$0:Lgbsdk/android/support/v7/widget/FastScroller;

    invoke-virtual {p1}, Lgbsdk/android/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p3

    .line 134
    invoke-virtual {p1}, Lgbsdk/android/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    .line 133
    invoke-virtual {p2, p3, p1}, Lgbsdk/android/support/v7/widget/FastScroller;->updateScrollPosition(II)V

    return-void
.end method
