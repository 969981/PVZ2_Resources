.class public interface abstract Lcom/bytedance/applog/alink/IALinkListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\u0008H\'J\"\u0010\t\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\u0008H\'J\u0018\u0010\n\u001a\u00020\u00032\u000e\u0010\u0006\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\u0008H\'\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/bytedance/applog/alink/IALinkListener;",
        "",
        "onALinkData",
        "",
        "routingInfo",
        "Lorg/json/JSONObject;",
        "exception",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onAttributionData",
        "onAttributionFailedCallback",
        "agent_liteChinaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract onALinkData(Lorg/json/JSONObject;Ljava/lang/Exception;)V
.end method

.method public abstract onAttributionData(Lorg/json/JSONObject;Ljava/lang/Exception;)V
.end method

.method public abstract onAttributionFailedCallback(Ljava/lang/Exception;)V
.end method
