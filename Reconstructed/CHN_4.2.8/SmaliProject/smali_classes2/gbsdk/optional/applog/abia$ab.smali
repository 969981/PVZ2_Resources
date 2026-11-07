.class public final Lgbsdk/optional/applog/abia$ab;
.super Ljava/lang/Object;
.source "AppLogEventHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/optional/applog/abia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ab"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogEventHandler$HandlerWrapper;",
        "",
        "handler",
        "Lcom/bytedance/applog/event/IEventHandler;",
        "priority",
        "",
        "(Lcom/bytedance/applog/event/IEventHandler;I)V",
        "getHandler",
        "()Lcom/bytedance/applog/event/IEventHandler;",
        "getPriority",
        "()I",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "optional_applog_impl_tobRelease"
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
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final b:Lcom/bytedance/applog/event/IEventHandler;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/event/IEventHandler;I)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lgbsdk/optional/applog/abia$ab;->b:Lcom/bytedance/applog/event/IEventHandler;

    .line 20
    iput p2, p0, Lgbsdk/optional/applog/abia$ab;->c:I

    return-void
.end method

.method public static synthetic a(Lgbsdk/optional/applog/abia$ab;Lcom/bytedance/applog/event/IEventHandler;IILjava/lang/Object;)Lgbsdk/optional/applog/abia$ab;
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v2, v0, v4

    const/4 v2, 0x4

    aput-object p4, v0, v2

    sget-object p4, Lgbsdk/optional/applog/abia$ab;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const-string v4, "89e1a4ae2128b4d3e22d9946bf48587b"

    invoke-static {v0, v2, p4, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p0, p4, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lgbsdk/optional/applog/abia$ab;

    return-object p0

    :cond_0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_1

    iget-object p1, p0, Lgbsdk/optional/applog/abia$ab;->b:Lcom/bytedance/applog/event/IEventHandler;

    :cond_1
    and-int/2addr p3, v3

    if-eqz p3, :cond_2

    iget p2, p0, Lgbsdk/optional/applog/abia$ab;->c:I

    :cond_2
    invoke-virtual {p0, p1, p2}, Lgbsdk/optional/applog/abia$ab;->a(Lcom/bytedance/applog/event/IEventHandler;I)Lgbsdk/optional/applog/abia$ab;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/bytedance/applog/event/IEventHandler;
    .locals 1

    .line 19
    iget-object v0, p0, Lgbsdk/optional/applog/abia$ab;->b:Lcom/bytedance/applog/event/IEventHandler;

    return-object v0
.end method

.method public final a(Lcom/bytedance/applog/event/IEventHandler;I)Lgbsdk/optional/applog/abia$ab;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lgbsdk/optional/applog/abia$ab;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "7bcbcd7fe27512ec4dc6f640643f7204"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lgbsdk/optional/applog/abia$ab;

    return-object p1

    :cond_0
    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgbsdk/optional/applog/abia$ab;

    invoke-direct {v0, p1, p2}, Lgbsdk/optional/applog/abia$ab;-><init>(Lcom/bytedance/applog/event/IEventHandler;I)V

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 20
    iget v0, p0, Lgbsdk/optional/applog/abia$ab;->c:I

    return v0
.end method

.method public final c()Lcom/bytedance/applog/event/IEventHandler;
    .locals 1

    iget-object v0, p0, Lgbsdk/optional/applog/abia$ab;->b:Lcom/bytedance/applog/event/IEventHandler;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lgbsdk/optional/applog/abia$ab;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/optional/applog/abia$ab;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "fc01fafaefdcadd0efd84218d1265ed3"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lgbsdk/optional/applog/abia$ab;

    if-nez v1, :cond_2

    return v2

    :cond_2
    check-cast p1, Lgbsdk/optional/applog/abia$ab;

    iget-object v1, p0, Lgbsdk/optional/applog/abia$ab;->b:Lcom/bytedance/applog/event/IEventHandler;

    iget-object v3, p1, Lgbsdk/optional/applog/abia$ab;->b:Lcom/bytedance/applog/event/IEventHandler;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lgbsdk/optional/applog/abia$ab;->c:I

    iget p1, p1, Lgbsdk/optional/applog/abia$ab;->c:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/optional/applog/abia$ab;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ad06017e2ea616ace3308d61a8f007be"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abia$ab;->b:Lcom/bytedance/applog/event/IEventHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lgbsdk/optional/applog/abia$ab;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/optional/applog/abia$ab;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "599319fee7992e829b3e3fdb9f63553c"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HandlerWrapper(handler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/optional/applog/abia$ab;->b:Lcom/bytedance/applog/event/IEventHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgbsdk/optional/applog/abia$ab;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
