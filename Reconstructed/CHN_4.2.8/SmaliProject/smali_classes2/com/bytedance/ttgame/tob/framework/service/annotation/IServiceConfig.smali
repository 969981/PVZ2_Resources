.class public interface abstract Lcom/bytedance/ttgame/tob/framework/service/annotation/IServiceConfig;
.super Ljava/lang/Object;
.source "IServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getApiName()Ljava/lang/String;
.end method

.method public abstract getImplName()Ljava/lang/String;
.end method

.method public abstract isLifecycle()Z
.end method

.method public abstract newInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
