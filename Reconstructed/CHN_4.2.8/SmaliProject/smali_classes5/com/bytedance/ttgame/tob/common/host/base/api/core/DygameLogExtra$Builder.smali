.class public final Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;
.super Ljava/lang/Object;
.source "DygameLogExtra.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0003J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;",
        "",
        "url",
        "",
        "host",
        "path",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "logExtra",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;",
        "build",
        "linkId",
        "logExtraInfo",
        "Lorg/json/JSONObject;",
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
.field private final logExtra:Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;->logExtra:Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;

    .line 31
    iput-object p1, v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->url:Ljava/lang/String;

    .line 32
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;->logExtra:Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;

    iput-object p2, p1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->host:Ljava/lang/String;

    .line 33
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;->logExtra:Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;

    iput-object p3, p1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;->logExtra:Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;

    return-object v0
.end method

.method public final linkId(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "922f31ba2fad42d1241c5c1e3bf95296"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;

    return-object p1

    :cond_0
    const-string v0, "linkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;->logExtra:Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;

    iput-object p1, v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->linkId:Ljava/lang/String;

    return-object p0
.end method

.method public final logExtra(Lorg/json/JSONObject;)Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1c63f7a5a67dcf32878d28efc98ac981"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;

    return-object p1

    :cond_0
    const-string v0, "logExtraInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;->logExtra:Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;

    iput-object p1, v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;->logExtra:Lorg/json/JSONObject;

    return-object p0
.end method
