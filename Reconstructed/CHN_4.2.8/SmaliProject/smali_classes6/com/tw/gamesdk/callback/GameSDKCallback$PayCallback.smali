.class public interface abstract Lcom/tw/gamesdk/callback/GameSDKCallback$PayCallback;
.super Ljava/lang/Object;
.source "GameSDKCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/gamesdk/callback/GameSDKCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PayCallback"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
