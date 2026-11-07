.class public interface abstract Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService;
.super Ljava/lang/Object;
.source "IAppLogService.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0011\n\u0002\u0008)\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&JH\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2&\u0010\r\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u0010H&JH\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u000c2&\u0010\r\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u0010H&J\u0008\u0010\u0015\u001a\u00020\u0008H&J\u0008\u0010\u0016\u001a\u00020\u0003H&J\u0008\u0010\u0017\u001a\u00020\u0003H&J\u0008\u0010\u0018\u001a\u00020\u0003H&JH\u0010\u0019\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2&\u0010\r\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u0010H&J\u0008\u0010\u001a\u001a\u00020\u0003H&J\u0008\u0010\u001b\u001a\u00020\u0006H&J\u0008\u0010\u001c\u001a\u00020\u0003H&J\u0008\u0010\u001d\u001a\u00020\u0003H&J\u0013\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001fH&\u00a2\u0006\u0002\u0010 J\u0008\u0010!\u001a\u00020\u0003H&J\u0008\u0010\"\u001a\u00020\u0003H&J\u0008\u0010#\u001a\u00020\u0003H&J\u0008\u0010$\u001a\u00020\u0003H&JP\u0010%\u001a\u00020\u00082\u0006\u0010&\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u000c2&\u0010\r\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u0010H&J\u0018\u0010)\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0006H&J\u0018\u0010,\u001a\u00020\u00082\u0006\u0010-\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0006H&J0\u0010.\u001a\u00020\u00082\u0006\u0010/\u001a\u00020\u00032\u0006\u00100\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u00032\u0006\u00102\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u0006H&J0\u00103\u001a\u00020\u00082\u0006\u0010/\u001a\u00020\u00032\u0006\u00100\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u00032\u0006\u00102\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u0006H&JP\u00104\u001a\u00020\u00082\u0006\u0010/\u001a\u00020\u00032\u0006\u00100\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u00032\u0006\u00102\u001a\u00020\u000c2\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u000cH&J\u0010\u00109\u001a\u00020\u00082\u0006\u0010:\u001a\u00020\u0003H&J\u0018\u0010;\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0006H&JH\u0010<\u001a\u00020\u00082\u0006\u0010/\u001a\u00020\u00032\u0006\u00100\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u00032\u0006\u00102\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u000cH&J8\u0010=\u001a\u00020\u00082\u0006\u0010>\u001a\u00020\u00032\u0006\u0010?\u001a\u00020\u00032\u0006\u0010@\u001a\u00020\u00032\u0006\u0010A\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u00062\u0006\u0010B\u001a\u00020\u0003H&J\u0018\u0010C\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0006H&J\u0010\u0010D\u001a\u00020\u00082\u0006\u0010E\u001a\u00020\u000cH&J\u0018\u0010F\u001a\u00020\u00082\u0006\u0010G\u001a\u00020\u00032\u0006\u0010H\u001a\u00020IH&J \u0010F\u001a\u00020\u00082\u0006\u0010J\u001a\u00020\u00032\u0006\u0010K\u001a\u00020I2\u0006\u0010L\u001a\u00020\u000cH&J \u0010M\u001a\u00020\u00082\u0006\u0010/\u001a\u00020\u00032\u0006\u00100\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u0003H&J$\u0010N\u001a\u00020\u00082\u0012\u0010H\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030O2\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010P\u001a\u00020\u00082\u0006\u0010Q\u001a\u00020\u0006H&J\u0010\u0010R\u001a\u00020\u00082\u0006\u0010S\u001a\u00020\u0003H&J,\u0010T\u001a\u00020\u00082\"\u0010U\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f0\u000ej\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f`\u0010H&J\u0010\u0010V\u001a\u00020\u00082\u0006\u0010W\u001a\u00020\u0003H&J\u0010\u0010X\u001a\u00020\u00082\u0006\u0010Y\u001a\u00020ZH&J\u0010\u0010[\u001a\u00020\u00082\u0006\u0010Y\u001a\u00020\u0003H&J8\u0010\\\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00032&\u0010\r\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u0010H&\u00a8\u0006]"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService;",
        "Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;",
        "addCommonParams",
        "",
        "url",
        "isApi",
        "",
        "costCoins",
        "",
        "coinType",
        "method",
        "coinNum",
        "",
        "otherParams",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "endPlay",
        "ectypeName",
        "result",
        "duration",
        "flush",
        "getAid",
        "getAppId",
        "getClientUdid",
        "getCoins",
        "getDid",
        "getEncryptAndCompress",
        "getIid",
        "getOpenUdid",
        "getSendUris",
        "",
        "()[Ljava/lang/String;",
        "getSsid",
        "getUdid",
        "getUserID",
        "getUserUniqueID",
        "levelUp",
        "lev",
        "getExp",
        "aflev",
        "onEventAccessAccount",
        "accountType",
        "isSuccess",
        "onEventAccessPaymentChannel",
        "paymentChannel",
        "onEventAddCart",
        "contentType",
        "contentName",
        "contentId",
        "contentNumber",
        "onEventAddToFavorite",
        "onEventCheckOut",
        "isVirtualCurrency",
        "virtualCurrency",
        "currency",
        "currencyAmount",
        "onEventCreateGameRole",
        "gameRoleId",
        "onEventLogin",
        "onEventPurchase",
        "onEventQuest",
        "questId",
        "questType",
        "questName",
        "questNo",
        "description",
        "onEventRegister",
        "onEventUpdateLevel",
        "level",
        "onEventV3",
        "name",
        "params",
        "Lorg/json/JSONObject;",
        "event",
        "jsonObject",
        "eventType",
        "onEventViewContent",
        "putCommonParams",
        "",
        "setEncryptAndCompress",
        "encryptAndCompress",
        "setExternalAbVersion",
        "version",
        "setHeaderInfo",
        "map",
        "setUserAgent",
        "ua",
        "setUserID",
        "id",
        "",
        "setUserUniqueID",
        "startPlay",
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
.method public abstract addCommonParams(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract costCoins(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract endPlay(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract flush()V
.end method

.method public abstract getAid()Ljava/lang/String;
.end method

.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getClientUdid()Ljava/lang/String;
.end method

.method public abstract getCoins(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDid()Ljava/lang/String;
.end method

.method public abstract getEncryptAndCompress()Z
.end method

.method public abstract getIid()Ljava/lang/String;
.end method

.method public abstract getOpenUdid()Ljava/lang/String;
.end method

.method public abstract getSendUris()[Ljava/lang/String;
.end method

.method public abstract getSsid()Ljava/lang/String;
.end method

.method public abstract getUdid()Ljava/lang/String;
.end method

.method public abstract getUserID()Ljava/lang/String;
.end method

.method public abstract getUserUniqueID()Ljava/lang/String;
.end method

.method public abstract levelUp(IILjava/lang/String;ILjava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onEventAccessAccount(Ljava/lang/String;Z)V
.end method

.method public abstract onEventAccessPaymentChannel(Ljava/lang/String;Z)V
.end method

.method public abstract onEventAddCart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract onEventAddToFavorite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract onEventCheckOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZI)V
.end method

.method public abstract onEventCreateGameRole(Ljava/lang/String;)V
.end method

.method public abstract onEventLogin(Ljava/lang/String;Z)V
.end method

.method public abstract onEventPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V
.end method

.method public abstract onEventQuest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
.end method

.method public abstract onEventRegister(Ljava/lang/String;Z)V
.end method

.method public abstract onEventUpdateLevel(I)V
.end method

.method public abstract onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public abstract onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
.end method

.method public abstract onEventViewContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putCommonParams(Ljava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setEncryptAndCompress(Z)V
.end method

.method public abstract setExternalAbVersion(Ljava/lang/String;)V
.end method

.method public abstract setHeaderInfo(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUserAgent(Ljava/lang/String;)V
.end method

.method public abstract setUserID(J)V
.end method

.method public abstract setUserUniqueID(Ljava/lang/String;)V
.end method

.method public abstract startPlay(Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
