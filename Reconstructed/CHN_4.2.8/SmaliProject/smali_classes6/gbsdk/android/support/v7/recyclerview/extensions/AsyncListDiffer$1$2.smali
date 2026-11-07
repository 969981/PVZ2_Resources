.class public Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;

.field final synthetic val$result:Lgbsdk/android/support/v7/util/DiffUtil$DiffResult;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;Lgbsdk/android/support/v7/util/DiffUtil$DiffResult;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iput-object p2, p0, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->val$result:Lgbsdk/android/support/v7/util/DiffUtil$DiffResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 304
    iget-object v0, p0, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget v0, v0, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer;->mMaxScheduledGeneration:I

    iget-object v1, p0, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget v1, v1, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$runGeneration:I

    if-ne v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget-object v1, p0, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v1, v1, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    iget-object v2, p0, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->val$result:Lgbsdk/android/support/v7/util/DiffUtil$DiffResult;

    invoke-virtual {v0, v1, v2}, Lgbsdk/android/support/v7/recyclerview/extensions/AsyncListDiffer;->latchList(Ljava/util/List;Lgbsdk/android/support/v7/util/DiffUtil$DiffResult;)V

    :cond_0
    return-void
.end method
