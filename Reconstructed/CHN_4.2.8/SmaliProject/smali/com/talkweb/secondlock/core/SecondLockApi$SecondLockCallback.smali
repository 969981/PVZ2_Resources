.class public interface abstract Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;
.super Ljava/lang/Object;
.source "SecondLockApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/talkweb/secondlock/core/SecondLockApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SecondLockCallback"
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
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 76
    invoke-interface {p0, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
