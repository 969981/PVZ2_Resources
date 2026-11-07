.class public interface abstract Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;
.super Ljava/lang/Object;
.source "LuffyDelegate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0005H&J\u0018\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H&J\u001c\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\u0005H&J \u0010\u000f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\tH&J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0012H&J \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0014H&J \u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0016H&J\u0008\u0010\u0017\u001a\u00020\u0005H&J$\u0010\u0018\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001bH&J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0004\u001a\u00020\u0005H&J \u0010\u001e\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\tH&J \u0010 \u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0012H&J \u0010!\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0014H&J \u0010\"\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0016H&J\"\u0010#\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0005H&J\u0018\u0010$\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010%\u001a\u00020\u00032\u0008\u0010&\u001a\u0004\u0018\u00010\'H&\u00a8\u0006("
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;",
        "",
        "addRemoteUpdateListener",
        "",
        "key",
        "",
        "listener",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyUpdateListener;",
        "callbackOnMain",
        "",
        "clear",
        "repo",
        "contains",
        "getAll",
        "",
        "getBoolean",
        "defValue",
        "getFloat",
        "",
        "getInt",
        "",
        "getLong",
        "",
        "getSpRepoName",
        "getString",
        "initLuffy",
        "context",
        "Landroid/content/Context;",
        "optJsonObject",
        "Lorg/json/JSONObject;",
        "putBoolean",
        "value",
        "putFloat",
        "putInt",
        "putLong",
        "putString",
        "remove",
        "updateLuffy",
        "request",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyRequest;",
        "ch_delegate_api_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract addRemoteUpdateListener(Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyUpdateListener;Z)V
.end method

.method public abstract clear(Ljava/lang/String;)V
.end method

.method public abstract contains(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getAll(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract getFloat(Ljava/lang/String;Ljava/lang/String;F)F
.end method

.method public abstract getInt(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;Ljava/lang/String;J)J
.end method

.method public abstract getSpRepoName()Ljava/lang/String;
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract initLuffy(Landroid/content/Context;)V
.end method

.method public abstract optJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
.end method

.method public abstract putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract putFloat(Ljava/lang/String;Ljava/lang/String;F)V
.end method

.method public abstract putInt(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract putLong(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract remove(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateLuffy(Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyRequest;)V
.end method
