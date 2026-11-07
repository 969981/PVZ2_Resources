.class public interface abstract Lcom/apm/applog/network/INetworkClient;
.super Ljava/lang/Object;
.source "INetworkClient.java"


# virtual methods
.method public abstract get(Ljava/lang/String;Ljava/util/Map;)Lcom/apm/applog/network/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/apm/applog/network/NetworkResponse;"
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;[BLjava/util/Map;)Lcom/apm/applog/network/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/apm/applog/network/NetworkResponse;"
        }
    .end annotation
.end method
