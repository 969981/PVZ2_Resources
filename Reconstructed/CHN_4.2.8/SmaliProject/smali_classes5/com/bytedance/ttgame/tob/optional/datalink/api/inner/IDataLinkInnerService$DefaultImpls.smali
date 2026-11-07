.class public final Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService$DefaultImpls;
.super Ljava/lang/Object;
.source "IDataLinkInnerService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public static synthetic onAccountLogin$default(Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILjava/lang/Object;)Z
    .locals 9

    move v0, p6

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v3, 0x2

    aput-object p2, v1, v3

    new-instance v3, Ljava/lang/Long;

    move-wide v6, p3

    invoke-direct {v3, p3, p4}, Ljava/lang/Long;-><init>(J)V

    const/4 v4, 0x3

    aput-object v3, v1, v4

    const/4 v3, 0x4

    aput-object p5, v1, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x5

    aput-object v3, v1, v4

    const/4 v3, 0x6

    aput-object p7, v1, v3

    sget-object v3, Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService$DefaultImpls;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "f3a6ece36803ab9478714aae1513e188"

    invoke-static {v1, v4, v3, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    if-nez p7, :cond_2

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    move-object v8, v4

    goto :goto_0

    :cond_1
    move-object v8, p5

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    .line 24
    invoke-interface/range {v3 .. v8}, Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService;->onAccountLogin(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Z

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: onAccountLogin"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic onAccountRegister$default(Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    const/4 v2, 0x3

    aput-object p3, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object p5, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService$DefaultImpls;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "7d3cc51c6826582afba4fafe78954864"

    invoke-static {v0, v4, v2, v1, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    if-nez p5, :cond_2

    and-int/2addr p4, v3

    if-eqz p4, :cond_1

    move-object p3, v4

    .line 18
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService;->onAccountRegister(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onAccountRegister"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic onGameActive$default(Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService;Ljava/util/Map;ILjava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aput-object p3, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService$DefaultImpls;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "05b94d8e9824c76c4228d93cabeb4710"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    if-nez p3, :cond_2

    and-int/2addr p2, v1

    if-eqz p2, :cond_1

    move-object p1, v3

    .line 15
    :cond_1
    invoke-interface {p0, p1}, Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService;->onGameActive(Ljava/util/Map;)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onGameActive"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic onPay$default(Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Z
    .locals 14

    move/from16 v0, p11

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v3, 0x2

    aput-object p2, v1, v3

    const/4 v3, 0x3

    aput-object p3, v1, v3

    new-instance v3, Ljava/lang/Long;

    move-wide/from16 v7, p4

    invoke-direct {v3, v7, v8}, Ljava/lang/Long;-><init>(J)V

    const/4 v4, 0x4

    aput-object v3, v1, v4

    const/4 v3, 0x5

    aput-object p6, v1, v3

    const/4 v3, 0x6

    aput-object p7, v1, v3

    const/4 v3, 0x7

    aput-object p8, v1, v3

    const/16 v3, 0x8

    aput-object p9, v1, v3

    const/16 v3, 0x9

    aput-object p10, v1, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    const/16 v3, 0xb

    aput-object p12, v1, v3

    sget-object v3, Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService$DefaultImpls;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "1bf8b64f92a861f508681c8ae250f323"

    invoke-static {v1, v4, v3, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    if-nez p12, :cond_2

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    move-object v13, v4

    goto :goto_0

    :cond_1
    move-object/from16 v13, p10

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    .line 30
    invoke-interface/range {v3 .. v13}, Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService;->onPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: onPay"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic onPaySpecial$default(Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Z
    .locals 16

    move/from16 v0, p13

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v3, 0x2

    aput-object p2, v1, v3

    const/4 v3, 0x3

    aput-object p3, v1, v3

    const/4 v3, 0x4

    aput-object p4, v1, v3

    new-instance v3, Ljava/lang/Long;

    move-wide/from16 v8, p5

    invoke-direct {v3, v8, v9}, Ljava/lang/Long;-><init>(J)V

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-instance v3, Ljava/lang/Long;

    move-wide/from16 v10, p7

    invoke-direct {v3, v10, v11}, Ljava/lang/Long;-><init>(J)V

    const/4 v4, 0x6

    aput-object v3, v1, v4

    const/4 v3, 0x7

    aput-object p9, v1, v3

    const/16 v3, 0x8

    aput-object p10, v1, v3

    const/16 v3, 0x9

    aput-object p11, v1, v3

    const/16 v3, 0xa

    aput-object p12, v1, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    const/16 v3, 0xc

    aput-object p14, v1, v3

    sget-object v3, Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService$DefaultImpls;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "f0baa1c47012d361d3064012005148ed"

    invoke-static {v1, v4, v3, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    if-nez p14, :cond_2

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    move-object v15, v4

    goto :goto_0

    :cond_1
    move-object/from16 v15, p12

    :goto_0
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    .line 37
    invoke-interface/range {v3 .. v15}, Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService;->onPaySpecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: onPaySpecial"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic onRoleLogin$default(Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILjava/lang/Object;)Z
    .locals 9

    move v0, p6

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v3, 0x2

    aput-object p2, v1, v3

    new-instance v3, Ljava/lang/Long;

    move-wide v6, p3

    invoke-direct {v3, p3, p4}, Ljava/lang/Long;-><init>(J)V

    const/4 v4, 0x3

    aput-object v3, v1, v4

    const/4 v3, 0x4

    aput-object p5, v1, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x5

    aput-object v3, v1, v4

    const/4 v3, 0x6

    aput-object p7, v1, v3

    sget-object v3, Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService$DefaultImpls;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "1aef57817a7448947aadcf65784a7d4b"

    invoke-static {v1, v4, v3, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    if-nez p7, :cond_2

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    move-object v8, v4

    goto :goto_0

    :cond_1
    move-object v8, p5

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    .line 27
    invoke-interface/range {v3 .. v8}, Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService;->onRoleLogin(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Z

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: onRoleLogin"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic onRoleRegister$default(Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    const/4 v2, 0x3

    aput-object p3, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object p5, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService$DefaultImpls;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "7828a27240db7ab5a1fd99241df2ceef"

    invoke-static {v0, v4, v2, v1, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    if-nez p5, :cond_2

    and-int/2addr p4, v3

    if-eqz p4, :cond_1

    move-object p3, v4

    .line 21
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/bytedance/ttgame/tob/optional/datalink/api/inner/IDataLinkInnerService;->onRoleRegister(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onRoleRegister"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
