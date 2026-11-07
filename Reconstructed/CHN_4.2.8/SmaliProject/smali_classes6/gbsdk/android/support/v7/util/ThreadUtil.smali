.class public interface abstract Lgbsdk/android/support/v7/util/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/android/support/v7/util/ThreadUtil$BackgroundCallback;,
        Lgbsdk/android/support/v7/util/ThreadUtil$MainThreadCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getBackgroundProxy(Lgbsdk/android/support/v7/util/ThreadUtil$BackgroundCallback;)Lgbsdk/android/support/v7/util/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/android/support/v7/util/ThreadUtil$BackgroundCallback<",
            "TT;>;)",
            "Lgbsdk/android/support/v7/util/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getMainThreadProxy(Lgbsdk/android/support/v7/util/ThreadUtil$MainThreadCallback;)Lgbsdk/android/support/v7/util/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/android/support/v7/util/ThreadUtil$MainThreadCallback<",
            "TT;>;)",
            "Lgbsdk/android/support/v7/util/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end method
