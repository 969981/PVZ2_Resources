.class public final synthetic Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback$-CC;
.super Ljava/lang/Object;
.source "SecondLockApi.java"


# direct methods
.method public static $default$onError(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;
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
