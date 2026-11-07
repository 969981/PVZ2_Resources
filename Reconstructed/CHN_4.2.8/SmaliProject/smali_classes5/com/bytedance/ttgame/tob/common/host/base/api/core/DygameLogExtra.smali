.class public final Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;
.super Ljava/lang/Object;
.source "DygameLogExtra.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001:\u0001\u0012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004J\u0006\u0010\r\u001a\u00020\u0004J\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u000f\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u0004J\u0006\u0010\u0011\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;",
        "",
        "()V",
        "host",
        "",
        "linkId",
        "logExtra",
        "Lorg/json/JSONObject;",
        "path",
        "url",
        "getExtraInfo",
        "key",
        "defaultValue",
        "getHost",
        "getLinkId",
        "getLogExtra",
        "getPath",
        "getUrl",
        "Builder",
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


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public host:Ljava/lang/String;

.field public linkId:Ljava/lang/String;

.field public logExtra:Lorg/json/JSONObject;

.field public path:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->url:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->host:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->path:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->linkId:Ljava/lang/String;

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->logExtra:Lorg/json/JSONObject;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;-><init>()V

    return-void
.end method

.method public static synthetic getExtraInfo$default(Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const/4 v3, 0x4

    aput-object p4, v0, v3

    sget-object p4, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "404a275230ee88d261dba0de0d5c22fc"

    invoke-static {v0, v3, p4, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p0, p4, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    and-int/2addr p3, v2

    if-eqz p3, :cond_1

    const-string p2, ""

    .line 18
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->getExtraInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getExtraInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b2452c77c392cbf82499c1c7aa067fe7"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->logExtra:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p1

    :catch_0
    :goto_0
    return-object p2
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final getLinkId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->linkId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogExtra()Lorg/json/JSONObject;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->logExtra:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->url:Ljava/lang/String;

    return-object v0
.end method
