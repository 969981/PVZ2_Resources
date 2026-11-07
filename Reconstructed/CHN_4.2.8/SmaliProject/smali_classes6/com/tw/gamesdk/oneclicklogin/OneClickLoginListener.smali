.class public interface abstract Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener;
.super Ljava/lang/Object;
.source "OneClickLoginListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tw/gamesdk/oneclicklogin/OneClickLoginListener$OnOtherLoginListener;
    }
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method

.method public abstract onUserCancel()V
.end method
