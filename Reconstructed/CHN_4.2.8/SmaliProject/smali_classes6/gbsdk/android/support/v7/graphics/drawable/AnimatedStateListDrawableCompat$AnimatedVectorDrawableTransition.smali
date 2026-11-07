.class public Lgbsdk/android/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;
.super Lgbsdk/android/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatedVectorDrawableTransition"
.end annotation


# instance fields
.field private final mAvd:Lgbsdk/android/support/graphics/drawable/AnimatedVectorDrawableCompat;


# direct methods
.method constructor <init>(Lgbsdk/android/support/graphics/drawable/AnimatedVectorDrawableCompat;)V
    .locals 1

    const/4 v0, 0x0

    .line 432
    invoke-direct {p0, v0}, Lgbsdk/android/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$Transition;-><init>(Lgbsdk/android/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$1;)V

    .line 433
    iput-object p1, p0, Lgbsdk/android/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;->mAvd:Lgbsdk/android/support/graphics/drawable/AnimatedVectorDrawableCompat;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 438
    iget-object v0, p0, Lgbsdk/android/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;->mAvd:Lgbsdk/android/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Lgbsdk/android/support/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 443
    iget-object v0, p0, Lgbsdk/android/support/v7/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;->mAvd:Lgbsdk/android/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Lgbsdk/android/support/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    return-void
.end method
