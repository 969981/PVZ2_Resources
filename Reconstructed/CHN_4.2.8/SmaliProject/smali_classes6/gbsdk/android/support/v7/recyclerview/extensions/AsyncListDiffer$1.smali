.class public Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer;->submitList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer;

.field final synthetic val$newList:Ljava/util/List;

.field final synthetic val$oldList:Ljava/util/List;

.field final synthetic val$runGeneration:I


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer;Ljava/util/List;Ljava/util/List;I)V
    .locals 0

    .line 243
    iput-object p1, p0, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer;

    iput-object p2, p0, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    iput-object p3, p0, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    iput p4, p0, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$runGeneration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 246
    new-instance v0, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;

    invoke-direct {v0, p0}, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;-><init>(Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;)V

    invoke-static {v0}, Lgbsdk/android/support/v7/util/DiffUtil;->calculateDiff(Lgbsdk/android/support/v7/util/DiffUtil$Callback;)Lgbsdk/android/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget-object v1, v1, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;

    invoke-direct {v2, p0, v0}, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;-><init>(Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;Lgbsdk/android/support/v7/util/DiffUtil$DiffResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
