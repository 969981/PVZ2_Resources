.class public Lgbsdk/android/support/v4/app/Fragment$1;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v4/app/Fragment;->startPostponedEnterTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v4/app/Fragment;)V
    .locals 0

    .line 2255
    iput-object p1, p0, Lgbsdk/android/support/v4/app/Fragment$1;->this$0:Lgbsdk/android/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2258
    iget-object v0, p0, Lgbsdk/android/support/v4/app/Fragment$1;->this$0:Lgbsdk/android/support/v4/app/Fragment;

    invoke-virtual {v0}, Lgbsdk/android/support/v4/app/Fragment;->callStartTransitionListener()V

    return-void
.end method
