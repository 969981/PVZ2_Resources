.class public interface abstract Lcom/bytedance/applog/network/INetworkClient;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final METHOD_GET:B = 0x0t

.field public static final METHOD_POST:B = 0x1t

.field public static final RESPONSE_TYPE_STREAM:B = 0x1t

.field public static final RESPONSE_TYPE_STRING:B


# virtual methods
.method public abstract execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;BZI)[B"
        }
    .end annotation
.end method
