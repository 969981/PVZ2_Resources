.class public final Lgbsdk/android/support/v4/provider/FontsContractCompat$2;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Lgbsdk/android/support/v4/provider/SelfDestructiveThread$ReplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v4/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Lgbsdk/android/support/v4/provider/FontRequest;Lgbsdk/android/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgbsdk/android/support/v4/provider/SelfDestructiveThread$ReplyCallback<",
        "Lgbsdk/android/support/v4/provider/FontsContractCompat$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fontCallback:Lgbsdk/android/support/v4/content/res/ResourcesCompat$FontCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lgbsdk/android/support/v4/provider/FontsContractCompat$2;->val$fontCallback:Lgbsdk/android/support/v4/content/res/ResourcesCompat$FontCallback;

    iput-object p2, p0, Lgbsdk/android/support/v4/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReply(Lgbsdk/android/support/v4/provider/FontsContractCompat$TypefaceResult;)V
    .locals 2

    if-nez p1, :cond_0

    .line 279
    iget-object p1, p0, Lgbsdk/android/support/v4/provider/FontsContractCompat$2;->val$fontCallback:Lgbsdk/android/support/v4/content/res/ResourcesCompat$FontCallback;

    const/4 v0, 0x1

    iget-object v1, p0, Lgbsdk/android/support/v4/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lgbsdk/android/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    goto :goto_0

    .line 281
    :cond_0
    iget v0, p1, Lgbsdk/android/support/v4/provider/FontsContractCompat$TypefaceResult;->mResult:I

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lgbsdk/android/support/v4/provider/FontsContractCompat$2;->val$fontCallback:Lgbsdk/android/support/v4/content/res/ResourcesCompat$FontCallback;

    iget-object p1, p1, Lgbsdk/android/support/v4/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    iget-object v1, p0, Lgbsdk/android/support/v4/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lgbsdk/android/support/v4/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lgbsdk/android/support/v4/provider/FontsContractCompat$2;->val$fontCallback:Lgbsdk/android/support/v4/content/res/ResourcesCompat$FontCallback;

    iget p1, p1, Lgbsdk/android/support/v4/provider/FontsContractCompat$TypefaceResult;->mResult:I

    iget-object v1, p0, Lgbsdk/android/support/v4/provider/FontsContractCompat$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lgbsdk/android/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onReply(Ljava/lang/Object;)V
    .locals 0

    .line 275
    check-cast p1, Lgbsdk/android/support/v4/provider/FontsContractCompat$TypefaceResult;

    invoke-virtual {p0, p1}, Lgbsdk/android/support/v4/provider/FontsContractCompat$2;->onReply(Lgbsdk/android/support/v4/provider/FontsContractCompat$TypefaceResult;)V

    return-void
.end method
