.class public Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;
.super Ljava/lang/Object;
.source "CachedDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils$CachedRequest;
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static final luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

.field public static ownerTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;->getLuffyDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRemoteUpdateListener(Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedUpdateListener;Z)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "b4ca8091c4da795866dd46a8bec6d79a"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils$1;

    invoke-direct {v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedUpdateListener;)V

    invoke-interface {v0, p0, v1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->addRemoteUpdateListener(Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyUpdateListener;Z)V

    return-void
.end method

.method public static clear(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "8546f1da6902f20f8649e7920a97af8a"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 171
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-interface {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->clear(Ljava/lang/String;)V

    return-void
.end method

.method public static getAll(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
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

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "b5303186c0fda72c9af98eae29d59580"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 73
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-interface {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->getAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolean(Ljava/lang/String;J)J
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "bfd6da3ec0cfcc3e964eda5453b32fa2"

    invoke-static {v0, v3, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 110
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getSpRepoName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "750c49a42aa9890c1cb862ac23e6d7b0"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 118
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "60895ad5f6352c929aa60557c4d857ab"

    invoke-static {v0, v3, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 114
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getSpRepoName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getFloat(Ljava/lang/String;F)F
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "8dd1615614ad2e742a5c9d9edb7d8269"

    invoke-static {v0, v3, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    .line 105
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getSpRepoName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "438c1bd9c9f6080347e17e97336c7952"

    invoke-static {v0, v3, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 89
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getSpRepoName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "83d7d74bb9e990909c04c5d26222ac18"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 93
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "82570cb1450b432fbfad8e61510e5cb0"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    .line 178
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getSpRepoName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, p0, v2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 179
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v3

    :cond_1
    const-string v0, "#"

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getList(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "3c9357021d16e42eeab34e01d6ab6ad1"

    invoke-static {v0, v3, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    .line 187
    :cond_0
    invoke-static {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getPropertyName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-static {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "25e28edb63a8a75fa2dc2c154220349c"

    invoke-static {v0, v3, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 97
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getSpRepoName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "247b42fd3361eab0b7a1bde30ecd11a7"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 101
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "b5b45446c0d7cf427826a74096f3318c"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Object;

    return-object p0

    .line 228
    :cond_0
    invoke-static {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 230
    invoke-static {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v4

    .line 233
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    .line 234
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 235
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 237
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 238
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 239
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    return-object v1
.end method

.method private static getPropertyName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "3574236903d757d7a94771e9af5c73ef"

    invoke-static {v0, v3, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 260
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->ownerTag:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->ownerTag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->ownerTag:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getSharedPreferenceMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/io/Serializable;",
            "V::",
            "Ljava/io/Serializable;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const-string v3, "9559bb86a5019118052f6a739e842c74"

    invoke-static {v0, v2, v1, p0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 214
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2
.end method

.method private static getSpRepoName()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "a1dae29c62ef8ff9363174962ad71d6a"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 32
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->getSpRepoName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "010dba1fb181373c88cecf6bf0f67834"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 77
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getSpRepoName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, p0, v2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "9eeac888e637564afce991db203283c8"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 81
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getSpRepoName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "3ae907194feaf03b0029dfa1465bc36e"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 85
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initLuffy(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "8db112f0d0653969d778c16aa019fbf3"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-interface {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->initLuffy(Landroid/content/Context;)V

    .line 40
    sget-object p0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-interface {p0, v3}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->updateLuffy(Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyRequest;)V

    return-void
.end method

.method static synthetic lambda$updateCached$0(Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils$CachedRequest;)Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyResponse;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "2b17163578a1e85d8095dd5edd3b8ba7"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyResponse;

    return-object p0

    .line 47
    :cond_0
    invoke-interface {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils$CachedRequest;->request()Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingResponse;

    move-result-object p0

    .line 48
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyResponse;

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingResponse;->getSuccess()Z

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingResponse;->getConfigs()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyResponse;-><init>(ZLjava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static optJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "b396e00e142522f08e060beefacd31ae"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONObject;

    return-object p0

    .line 57
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-interface {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->optJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "d70e8855beeb09e5687adcad99b9d40b"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static putBoolean(Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "34e21ab80c0fa8da1e27bbf22c07d97b"

    invoke-static {v0, v3, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 155
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getSpRepoName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static putFloat(Ljava/lang/String;F)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "f59e51cd44f72c4ecb4ab38dbea9e77c"

    invoke-static {v0, v3, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getSpRepoName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->putFloat(Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public static putInt(Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "bc8f32691e573ef8213c0a9a6d1ab8ca"

    invoke-static {v0, v3, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getSpRepoName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static putInt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "3bfa206dae6311be8be2aa36efbb700f"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static putLong(Ljava/lang/String;J)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "06dc87fdb0e26758794dddbdb5e185f8"

    invoke-static {v0, v3, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getSpRepoName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->putLong(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static putLong(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "1388b85dd12abb62ea4299d6d32e2642"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->putLong(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static putObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "e1caa79eb2901f510296528e20dc5a28"

    invoke-static {v0, v3, v2, p0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 247
    :cond_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 248
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 249
    invoke-virtual {v0, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 252
    new-instance p2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>([B)V

    .line 253
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 254
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 256
    invoke-static {p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static putString(Ljava/lang/String;D)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p1, p2}, Ljava/lang/Double;-><init>(D)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "8abad91c1a42d1ef2667930c27de7b88"

    invoke-static {v0, v3, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getSpRepoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "dd9bb6e23d1d9cc311ef41dc42f755a9"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getSpRepoName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "e2b5785b2b6198d274df21089a34cf49"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "ab9367d643c9874ec3a072b1db384d46"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getSpRepoName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->remove(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "8c28573d82a989312352e38fc753c3b0"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->remove(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setList(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "84442f58d905a0e2602a8417a6b61db7"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 194
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 195
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 199
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 203
    :cond_2
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getSpRepoName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0, v1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static setList(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "cad8c5682a4fb43691e02a22cc732db8"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-static {p0, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getPropertyName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 209
    invoke-static {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->setList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static setSharedPreferenceMap(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/io/Serializable;",
            "V::",
            "Ljava/io/Serializable;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "ea5e19adbc580d266d7149e0c3132d33"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 222
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->putObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static updateCached(Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils$CachedRequest;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "ac54eb1d521ec332302caea503a6c41d"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->luffy:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/bytedance/ttgame/tob/common/host/framework/cache/-$$Lambda$CachedDataUtils$_IEme_pq7Xi2D91TyDPBeSeOoyQ;

    invoke-direct {v3, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/-$$Lambda$CachedDataUtils$_IEme_pq7Xi2D91TyDPBeSeOoyQ;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils$CachedRequest;)V

    :goto_0
    invoke-interface {v0, v3}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->updateLuffy(Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyRequest;)V

    return-void
.end method
