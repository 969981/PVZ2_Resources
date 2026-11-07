.class public interface abstract Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;
.super Ljava/lang/Object;
.source "InitCallback.java"


# static fields
.field public static final ERROR_COMPONENT:I = -0x5

.field public static final ERROR_FORBIDDEN:I = -0x4

.field public static final ERROR_INIT:I = -0x3

.field public static final ERROR_INIT_DISABLE:I = -0xd

.field public static final ERROR_PRE_INIT:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x1


# virtual methods
.method public abstract onFailed(ILjava/lang/String;)V
.end method

.method public abstract onSuccess()V
.end method
