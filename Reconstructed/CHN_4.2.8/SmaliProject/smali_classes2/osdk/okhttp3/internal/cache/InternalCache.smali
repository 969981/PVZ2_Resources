.class public interface abstract Losdk/okhttp3/internal/cache/InternalCache;
.super Ljava/lang/Object;
.source "InternalCache.java"


# virtual methods
.method public abstract get(Losdk/okhttp3/Request;)Losdk/okhttp3/Response;
.end method

.method public abstract put(Losdk/okhttp3/Response;)Losdk/okhttp3/internal/cache/CacheRequest;
.end method

.method public abstract remove(Losdk/okhttp3/Request;)V
.end method

.method public abstract trackConditionalCacheHit()V
.end method

.method public abstract trackResponse(Losdk/okhttp3/internal/cache/CacheStrategy;)V
.end method

.method public abstract update(Losdk/okhttp3/Response;Losdk/okhttp3/Response;)V
.end method
