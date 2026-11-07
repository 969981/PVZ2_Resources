.class public Lgbsdk/android/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Lgbsdk/android/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareActivityChooserModelPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/widget/ShareActionProvider;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/widget/ShareActionProvider;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Lgbsdk/android/support/v7/widget/ShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChooseActivity(Lgbsdk/android/support/v7/widget/ActivityChooserModel;Landroid/content/Intent;)Z
    .locals 1

    .line 402
    iget-object p1, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Lgbsdk/android/support/v7/widget/ShareActionProvider;

    iget-object p1, p1, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Lgbsdk/android/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-eqz p1, :cond_0

    .line 403
    iget-object p1, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Lgbsdk/android/support/v7/widget/ShareActionProvider;

    iget-object p1, p1, Lgbsdk/android/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Lgbsdk/android/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    iget-object v0, p0, Lgbsdk/android/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Lgbsdk/android/support/v7/widget/ShareActionProvider;

    invoke-interface {p1, v0, p2}, Lgbsdk/android/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;->onShareTargetSelected(Lgbsdk/android/support/v7/widget/ShareActionProvider;Landroid/content/Intent;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
