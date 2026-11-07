.class public interface abstract Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/talkweb/secondlock/SecondLockUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStateListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onState(Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V
.end method
