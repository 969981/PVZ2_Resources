.class public final Lgbsdk/common/host/abmt;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# direct methods
.method public static d(Lorg/json/JSONArray;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 16
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
