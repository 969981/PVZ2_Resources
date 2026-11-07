.class public interface abstract Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J#\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ3\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J#\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0004\u0008\u0013\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;",
        "",
        "",
        "onInitSuccess",
        "()V",
        "",
        "reason",
        "",
        "throwable",
        "onInitFailure",
        "(ILjava/lang/Throwable;)V",
        "",
        "eventName",
        "requestId",
        "onEventSendSuccess",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "onEventSendFailure",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V",
        "message",
        "onOtherError",
        "convert_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# virtual methods
.method public abstract onEventSendFailure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract onEventSendSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onInitFailure(ILjava/lang/Throwable;)V
.end method

.method public abstract onInitSuccess()V
.end method

.method public abstract onOtherError(ILjava/lang/Throwable;)V
.end method
