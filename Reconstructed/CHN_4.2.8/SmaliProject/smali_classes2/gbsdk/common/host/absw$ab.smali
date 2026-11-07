.class public final enum Lgbsdk/common/host/absw$ab;
.super Ljava/lang/Enum;
.source "ZeusManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/absw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/absw$ab;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003J\u0006\u0010\n\u001a\u00020\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/main/plugin/ZeusManager$HostType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "isAllowForceUpdate",
        "",
        "allowedHostTypes",
        "isForceUpdateEnable",
        "Unknow",
        "Union",
        "Cps",
        "CloudGame",
        "DataLink",
        "Else",
        "ch_main_tobRelease"
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
.field public static final enum aEE:Lgbsdk/common/host/absw$ab;

.field public static final enum aEF:Lgbsdk/common/host/absw$ab;

.field public static final enum aEG:Lgbsdk/common/host/absw$ab;

.field public static final enum aEH:Lgbsdk/common/host/absw$ab;

.field public static final enum aEI:Lgbsdk/common/host/absw$ab;

.field public static final enum aEJ:Lgbsdk/common/host/absw$ab;

.field private static final synthetic aEK:[Lgbsdk/common/host/absw$ab;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 224
    new-instance v0, Lgbsdk/common/host/absw$ab;

    const-string v1, "Unknow"

    const/4 v2, 0x0

    const-string v3, "unknow"

    invoke-direct {v0, v1, v2, v3}, Lgbsdk/common/host/absw$ab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/absw$ab;->aEE:Lgbsdk/common/host/absw$ab;

    .line 225
    new-instance v0, Lgbsdk/common/host/absw$ab;

    const-string v1, "Union"

    const/4 v2, 0x1

    const-string v3, "union"

    invoke-direct {v0, v1, v2, v3}, Lgbsdk/common/host/absw$ab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/absw$ab;->aEF:Lgbsdk/common/host/absw$ab;

    .line 226
    new-instance v0, Lgbsdk/common/host/absw$ab;

    const-string v1, "Cps"

    const/4 v2, 0x2

    const-string v3, "cps"

    invoke-direct {v0, v1, v2, v3}, Lgbsdk/common/host/absw$ab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/absw$ab;->aEG:Lgbsdk/common/host/absw$ab;

    .line 227
    new-instance v0, Lgbsdk/common/host/absw$ab;

    const-string v1, "CloudGame"

    const/4 v2, 0x3

    const-string v3, "cloud_game"

    invoke-direct {v0, v1, v2, v3}, Lgbsdk/common/host/absw$ab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/absw$ab;->aEH:Lgbsdk/common/host/absw$ab;

    .line 228
    new-instance v0, Lgbsdk/common/host/absw$ab;

    const-string v1, "DataLink"

    const/4 v2, 0x4

    const-string v3, "data_link"

    invoke-direct {v0, v1, v2, v3}, Lgbsdk/common/host/absw$ab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/absw$ab;->aEI:Lgbsdk/common/host/absw$ab;

    .line 229
    new-instance v0, Lgbsdk/common/host/absw$ab;

    const-string v1, "Else"

    const/4 v2, 0x5

    const-string v3, "else"

    invoke-direct {v0, v1, v2, v3}, Lgbsdk/common/host/absw$ab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/absw$ab;->aEJ:Lgbsdk/common/host/absw$ab;

    invoke-static {}, Lgbsdk/common/host/absw$ab;->gz()[Lgbsdk/common/host/absw$ab;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/absw$ab;->aEK:[Lgbsdk/common/host/absw$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lgbsdk/common/host/absw$ab;->value:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic gz()[Lgbsdk/common/host/absw$ab;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lgbsdk/common/host/absw$ab;

    sget-object v1, Lgbsdk/common/host/absw$ab;->aEE:Lgbsdk/common/host/absw$ab;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/absw$ab;->aEF:Lgbsdk/common/host/absw$ab;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/absw$ab;->aEG:Lgbsdk/common/host/absw$ab;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/absw$ab;->aEH:Lgbsdk/common/host/absw$ab;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/absw$ab;->aEI:Lgbsdk/common/host/absw$ab;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/absw$ab;->aEJ:Lgbsdk/common/host/absw$ab;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/absw$ab;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/absw$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "2fae45f894357fc4797ea858a6873910"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    :goto_0
    check-cast p0, Lgbsdk/common/host/absw$ab;

    return-object p0

    :cond_0
    const-class v0, Lgbsdk/common/host/absw$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    goto :goto_0
.end method

.method public static values()[Lgbsdk/common/host/absw$ab;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/absw$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "f33ac66720a348a14c3741a842b88daf"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    :goto_0
    check-cast v0, [Lgbsdk/common/host/absw$ab;

    return-object v0

    :cond_0
    sget-object v0, Lgbsdk/common/host/absw$ab;->aEK:[Lgbsdk/common/host/absw$ab;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final cv(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/absw$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "9e9801f795bc0ecaf96fd895bb4fed44"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 244
    :cond_0
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_5

    .line 245
    sget-object p1, Lgbsdk/common/host/absw$ab;->aEF:Lgbsdk/common/host/absw$ab;

    if-eq p0, p1, :cond_4

    sget-object p1, Lgbsdk/common/host/absw$ab;->aEG:Lgbsdk/common/host/absw$ab;

    if-ne p0, p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    return v0

    :cond_5
    new-array v4, v0, [C

    const/16 p1, 0x7c

    aput-char p1, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 248
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v1, "all"

    .line 249
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lgbsdk/common/host/absw$ab;->value:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_3
    return v0
.end method

.method public final gy()Z
    .locals 1

    .line 236
    sget-object v0, Lgbsdk/common/host/absw$ab;->aEH:Lgbsdk/common/host/absw$ab;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
