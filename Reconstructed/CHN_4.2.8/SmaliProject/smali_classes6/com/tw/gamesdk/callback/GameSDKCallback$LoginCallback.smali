.class public interface abstract Lcom/tw/gamesdk/callback/GameSDKCallback$LoginCallback;
.super Ljava/lang/Object;
.source "GameSDKCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/gamesdk/callback/GameSDKCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginCallback"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/tw/gamesdk/bean/SimpleUserData;)V
.end method
