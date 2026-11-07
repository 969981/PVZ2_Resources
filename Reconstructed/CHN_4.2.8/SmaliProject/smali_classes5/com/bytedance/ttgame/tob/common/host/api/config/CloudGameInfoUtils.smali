.class public final Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;
.super Ljava/lang/Object;
.source "CloudGameInfoUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J<\u0010\u0003\u001a\u00020\u00042\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001`\u00082\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0002J>\u0010\u0003\u001a\u00020\u00042\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001`\u00082\u0006\u0010\t\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0002J*\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001`\u00082\u0006\u0010\r\u001a\u00020\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;",
        "",
        "()V",
        "checkAndPut",
        "",
        "map",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "key",
        "value",
        "",
        "getCloudGameInfoParams",
        "cloudGameInfo",
        "Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;",
        "ch_api_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkAndPut(Ljava/util/HashMap;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "dd9248917225302225ecdacf398266c6"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 41
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 42
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private final checkAndPut(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "5857e5438b6159219266809cdec2bd86"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 47
    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 48
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public final getCloudGameInfoParams(Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "2132dea7908d6175b4697c1fa3f4471a"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    return-object p1

    :cond_0
    const-string v1, "cloudGameInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->cloudGameName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->cloudGameName:Ljava/lang/String;

    const-string v4, "cloudGameInfo.cloudGameName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v3, "unknown"

    .line 7
    iput-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->cloudGameName:Ljava/lang/String;

    .line 9
    :cond_2
    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->cloudGameName:Ljava/lang/String;

    const-string v4, "cg_cloud_game_name"

    invoke-direct {p0, v1, v4, v3}, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->checkAndPut(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->hostPackageName:Ljava/lang/String;

    const-string v4, "cg_host_package_name"

    invoke-direct {p0, v1, v4, v3}, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->checkAndPut(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->hostVersionName:Ljava/lang/String;

    const-string v4, "cg_host_version_name"

    invoke-direct {p0, v1, v4, v3}, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->checkAndPut(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->hostVersionCode:I

    const-string v4, "cg_host_version_code"

    invoke-direct {p0, v1, v4, v3}, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->checkAndPut(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 13
    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->hostDeviceModel:Ljava/lang/String;

    const-string v4, "cg_host_device_model"

    invoke-direct {p0, v1, v4, v3}, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->checkAndPut(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->hostIp:Ljava/lang/String;

    const-string v4, "cg_host_ip"

    invoke-direct {p0, v1, v4, v3}, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->checkAndPut(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->hostUserAgent:Ljava/lang/String;

    const-string v4, "cg_host_user_agent"

    invoke-direct {p0, v1, v4, v3}, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->checkAndPut(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->hostOsType:Ljava/lang/String;

    const-string v4, "host_os_type"

    invoke-direct {p0, v1, v4, v3}, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->checkAndPut(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->hostMac:Ljava/lang/String;

    const-string v4, "cg_host_mac"

    invoke-direct {p0, v1, v4, v3}, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->checkAndPut(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->hostAndroidId:Ljava/lang/String;

    const-string v4, "cg_host_android_id"

    invoke-direct {p0, v1, v4, v3}, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->checkAndPut(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->hostOaid:Ljava/lang/String;

    const-string v4, "cg_host_oaid"

    invoke-direct {p0, v1, v4, v3}, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->checkAndPut(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->hostImei:Ljava/lang/String;

    const-string v4, "cg_host_imei"

    invoke-direct {p0, v1, v4, v3}, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->checkAndPut(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->hostIdfa:Ljava/lang/String;

    const-string v4, "cg_host_idfa"

    invoke-direct {p0, v1, v4, v3}, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->checkAndPut(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->hostCaid:Ljava/lang/String;

    const-string v4, "cg_host_caid"

    invoke-direct {p0, v1, v4, v3}, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfoUtils;->checkAndPut(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object p1, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->extra:Ljava/util/Map;

    if-eqz p1, :cond_7

    .line 52
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .line 53
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v6, "value"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v0

    if-ne v5, v0, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    .line 55
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_5
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "key"

    .line 30
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "cg_cgi_ex_"

    invoke-static {v3, v7, v2, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    :cond_6
    move-object v5, v1

    check-cast v5, Ljava/util/Map;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "entry.value"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    return-object v1
.end method
