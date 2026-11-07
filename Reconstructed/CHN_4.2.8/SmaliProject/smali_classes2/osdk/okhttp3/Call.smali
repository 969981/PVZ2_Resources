.class public interface abstract Losdk/okhttp3/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Losdk/okhttp3/Call$Factory;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract clone()Losdk/okhttp3/Call;
.end method

.method public abstract enqueue(Losdk/okhttp3/Callback;)V
.end method

.method public abstract execute()Losdk/okhttp3/Response;
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isExecuted()Z
.end method

.method public abstract request()Losdk/okhttp3/Request;
.end method

.method public abstract streamAllocation()Losdk/okhttp3/internal/connection/StreamAllocation;
.end method
