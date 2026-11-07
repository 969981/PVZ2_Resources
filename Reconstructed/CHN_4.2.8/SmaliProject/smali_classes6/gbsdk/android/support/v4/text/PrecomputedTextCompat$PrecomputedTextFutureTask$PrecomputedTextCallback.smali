.class public Lgbsdk/android/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrecomputedTextCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lgbsdk/android/support/v4/text/PrecomputedTextCompat;",
        ">;"
    }
.end annotation


# instance fields
.field private mParams:Lgbsdk/android/support/v4/text/PrecomputedTextCompat$Params;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v4/text/PrecomputedTextCompat$Params;Ljava/lang/CharSequence;)V
    .locals 0

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p1, p0, Lgbsdk/android/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;->mParams:Lgbsdk/android/support/v4/text/PrecomputedTextCompat$Params;

    .line 571
    iput-object p2, p0, Lgbsdk/android/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;->mText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public call()Lgbsdk/android/support/v4/text/PrecomputedTextCompat;
    .locals 2

    .line 576
    iget-object v0, p0, Lgbsdk/android/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;->mText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lgbsdk/android/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;->mParams:Lgbsdk/android/support/v4/text/PrecomputedTextCompat$Params;

    invoke-static {v0, v1}, Lgbsdk/android/support/v4/text/PrecomputedTextCompat;->create(Ljava/lang/CharSequence;Lgbsdk/android/support/v4/text/PrecomputedTextCompat$Params;)Lgbsdk/android/support/v4/text/PrecomputedTextCompat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lgbsdk/android/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;->call()Lgbsdk/android/support/v4/text/PrecomputedTextCompat;

    move-result-object v0

    return-object v0
.end method
