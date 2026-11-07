.class public Lgbsdk/android/arch/core/internal/SafeIterableMap$AscendingIterator;
.super Lgbsdk/android/arch/core/internal/SafeIterableMap$ListIterator;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/arch/core/internal/SafeIterableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AscendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgbsdk/android/arch/core/internal/SafeIterableMap$ListIterator<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry;Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;",
            "Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 270
    invoke-direct {p0, p1, p2}, Lgbsdk/android/arch/core/internal/SafeIterableMap$ListIterator;-><init>(Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry;Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry;)V

    return-void
.end method


# virtual methods
.method backward(Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry;)Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;)",
            "Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 280
    iget-object p1, p1, Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry;

    return-object p1
.end method

.method forward(Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry;)Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;)",
            "Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 275
    iget-object p1, p1, Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry;->mNext:Lgbsdk/android/arch/core/internal/SafeIterableMap$Entry;

    return-object p1
.end method
