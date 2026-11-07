.class public interface abstract Lcom/talkweb/secondlock/core/SecondLockApi;
.super Ljava/lang/Object;
.source "SecondLockApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkweb/secondlock/core/SecondLockApi$RebindResp;,
        Lcom/talkweb/secondlock/core/SecondLockApi$RebindVerifyResp;,
        Lcom/talkweb/secondlock/core/SecondLockApi$ResetVerifyResp;,
        Lcom/talkweb/secondlock/core/SecondLockApi$ResetResp;,
        Lcom/talkweb/secondlock/core/SecondLockApi$ToggleResp;,
        Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;,
        Lcom/talkweb/secondlock/core/SecondLockApi$SetPasswordResp;,
        Lcom/talkweb/secondlock/core/SecondLockApi$BindResp;,
        Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;,
        Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;,
        Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;
    }
.end annotation


# virtual methods
.method public abstract bindPhone(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$BindResp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryState(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract rebind(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$RebindResp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resetPassword(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$ResetResp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendBindSmsCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendRebindNewCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendRebindOldCode(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendResetSmsCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCommonParams(Lcom/talkweb/secondlock/core/UspCommonParams;)V
.end method

.method public abstract setPassword(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SetPasswordResp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract togglePassword(ZLcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$ToggleResp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract verifyPassword(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract verifyRebindOldCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$RebindVerifyResp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract verifyResetCode(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
            "Lcom/talkweb/secondlock/core/SecondLockApi$ResetVerifyResp;",
            ">;)V"
        }
    .end annotation
.end method
