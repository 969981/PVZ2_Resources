.class public interface abstract Lcom/bytedance/applog/store/kv/IKVStore;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract clear()Lcom/bytedance/applog/store/kv/IKVStore;
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract getAll()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract putBoolean(Ljava/lang/String;Z)Lcom/bytedance/applog/store/kv/IKVStore;
.end method

.method public abstract putInt(Ljava/lang/String;I)Lcom/bytedance/applog/store/kv/IKVStore;
.end method

.method public abstract putLong(Ljava/lang/String;J)Lcom/bytedance/applog/store/kv/IKVStore;
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;
.end method

.method public abstract putStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/applog/store/kv/IKVStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/applog/store/kv/IKVStore;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;
.end method
