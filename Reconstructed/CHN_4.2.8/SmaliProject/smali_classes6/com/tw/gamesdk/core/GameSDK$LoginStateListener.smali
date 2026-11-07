.class public interface abstract Lcom/tw/gamesdk/core/GameSDK$LoginStateListener;
.super Ljava/lang/Object;
.source "GameSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/gamesdk/core/GameSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginStateListener"
.end annotation


# virtual methods
.method public abstract onLogin(Lcom/tw/gamesdk/bean/SimpleUserData;)V
.end method

.method public abstract onLogout()V
.end method
