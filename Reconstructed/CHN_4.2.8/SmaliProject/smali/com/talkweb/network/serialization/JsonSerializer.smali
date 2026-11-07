.class public interface abstract Lcom/talkweb/network/serialization/JsonSerializer;
.super Ljava/lang/Object;
.source "JsonSerializer.java"


# virtual methods
.method public abstract decode(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract encode(Ljava/lang/Object;)Ljava/lang/String;
.end method
