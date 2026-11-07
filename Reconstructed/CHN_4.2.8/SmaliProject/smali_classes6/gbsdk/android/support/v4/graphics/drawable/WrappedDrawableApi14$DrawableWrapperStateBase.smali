.class public Lgbsdk/android/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperStateBase;
.super Lgbsdk/android/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
.source "WrappedDrawableApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v4/graphics/drawable/WrappedDrawableApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableWrapperStateBase"
.end annotation


# direct methods
.method constructor <init>(Lgbsdk/android/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1, p2}, Lgbsdk/android/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;-><init>(Lgbsdk/android/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 402
    new-instance v0, Lgbsdk/android/support/v4/graphics/drawable/WrappedDrawableApi14;

    invoke-direct {v0, p0, p1}, Lgbsdk/android/support/v4/graphics/drawable/WrappedDrawableApi14;-><init>(Lgbsdk/android/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method
