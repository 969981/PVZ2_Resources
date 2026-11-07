.class public Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final message:Ljava/lang/String;

.field public final status:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;


# direct methods
.method private constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->status:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    .line 30
    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->data:Ljava/lang/Object;

    .line 31
    iput-object p3, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->message:Ljava/lang/String;

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "27913853d13e280fb242afc74409f8e9"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;

    return-object p0

    .line 39
    :cond_0
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;->ERROR:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    invoke-direct {v0, v1, p1, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static loading(Ljava/lang/Object;)Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "b101426dad663635694fb324b4d9fde0"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;

    return-object p0

    .line 43
    :cond_0
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;->LOADING:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    invoke-direct {v0, v1, p0, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;)Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "7a15d834b3b5817f48940adadb92818d"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;

    return-object p0

    .line 35
    :cond_0
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;->SUCCESS:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    invoke-direct {v0, v1, p0, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "8402dbac8eef9b7d2ef36a41a1230bcb"

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
    if-eqz p1, :cond_4

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    goto :goto_1

    .line 52
    :cond_2
    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;

    .line 53
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->status:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->status:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->data:Ljava/lang/Object;

    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->data:Ljava/lang/Object;

    .line 54
    invoke-static {v1, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->message:Ljava/lang/String;

    .line 55
    invoke-static {v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v2
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b159544c1c133823617e463937a6d292"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 60
    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->status:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->data:Ljava/lang/Object;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->message:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6500c04d2cd42dded810dc0fc65490d1"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->status:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
