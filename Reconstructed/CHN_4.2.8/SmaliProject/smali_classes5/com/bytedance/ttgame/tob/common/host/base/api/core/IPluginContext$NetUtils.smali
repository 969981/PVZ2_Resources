.class public interface abstract Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext$NetUtils;
.super Ljava/lang/Object;
.source "IPluginContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext$NetUtils$ICommonParamsHandler;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001:\u0001\u0014J.\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008H&J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0008\u0010\r\u001a\u00020\u0003H&J<\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\"\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0010j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\u0011H&J\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0006H&\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext$NetUtils;",
        "",
        "addCommonParams",
        "",
        "url",
        "isApi",
        "",
        "sdkParams",
        "",
        "addCommonParamsHandler",
        "",
        "handler",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext$NetUtils$ICommonParamsHandler;",
        "getCustomParams",
        "getUrlAfterHandle",
        "rawUrl",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "setCronetEnableState",
        "enable",
        "ICommonParamsHandler",
        "ch_base_api_tobRelease"
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
.method public abstract addCommonParams(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract addCommonParamsHandler(Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext$NetUtils$ICommonParamsHandler;)V
.end method

.method public abstract getCustomParams()Ljava/lang/String;
.end method

.method public abstract getUrlAfterHandle(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract setCronetEnableState(Z)V
.end method
