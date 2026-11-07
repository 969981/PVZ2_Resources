.class public final enum Lgbsdk/common/host/abui$ac;
.super Ljava/lang/Enum;
.source "StateManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abui$ac;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\u0003J\u0006\u0010\n\u001a\u00020\u0003J\u0006\u0010\u000b\u001a\u00020\u0003R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/main/StateManager$State;",
        "",
        "value",
        "",
        "state",
        "",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getState",
        "()Ljava/lang/String;",
        "getModifier",
        "getResult",
        "getStage",
        "NIL",
        "PREPARE_FAIL",
        "PREPARING",
        "PREPARED",
        "INIT_FAIL",
        "INITIALIZING_PRE_INIT",
        "INITIALIZING_DID",
        "INITIALIZING_AF_DID_GOT",
        "INITIALIZED",
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
.field public static final enum aAA:Lgbsdk/common/host/abui$ac;

.field public static final enum aAB:Lgbsdk/common/host/abui$ac;

.field public static final enum aAC:Lgbsdk/common/host/abui$ac;

.field public static final enum aAD:Lgbsdk/common/host/abui$ac;

.field public static final enum aAE:Lgbsdk/common/host/abui$ac;

.field public static final enum aAF:Lgbsdk/common/host/abui$ac;

.field private static final synthetic aAG:[Lgbsdk/common/host/abui$ac;

.field public static final enum aAx:Lgbsdk/common/host/abui$ac;

.field public static final enum aAy:Lgbsdk/common/host/abui$ac;

.field public static final enum aAz:Lgbsdk/common/host/abui$ac;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final Fl:I

.field public final aAw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lgbsdk/common/host/abui$ac;

    const-string v1, "NIL"

    const/4 v2, 0x0

    const-string v3, "nil"

    invoke-direct {v0, v1, v2, v2, v3}, Lgbsdk/common/host/abui$ac;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abui$ac;->aAx:Lgbsdk/common/host/abui$ac;

    .line 24
    new-instance v0, Lgbsdk/common/host/abui$ac;

    const-string v1, "PREPARE_FAIL"

    const/4 v2, 0x1

    const/16 v3, 0x111

    const-string v4, "fail"

    invoke-direct {v0, v1, v2, v3, v4}, Lgbsdk/common/host/abui$ac;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abui$ac;->aAy:Lgbsdk/common/host/abui$ac;

    .line 25
    new-instance v0, Lgbsdk/common/host/abui$ac;

    const-string v1, "PREPARING"

    const/4 v3, 0x2

    const-string v5, "preparing"

    invoke-direct {v0, v1, v3, v2, v5}, Lgbsdk/common/host/abui$ac;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abui$ac;->aAz:Lgbsdk/common/host/abui$ac;

    .line 26
    new-instance v0, Lgbsdk/common/host/abui$ac;

    const-string v1, "PREPARED"

    const/4 v2, 0x3

    const/16 v5, 0x21

    const-string v6, "prepared"

    invoke-direct {v0, v1, v2, v5, v6}, Lgbsdk/common/host/abui$ac;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abui$ac;->aAA:Lgbsdk/common/host/abui$ac;

    .line 27
    new-instance v0, Lgbsdk/common/host/abui$ac;

    const-string v1, "INIT_FAIL"

    const/4 v2, 0x4

    const/16 v5, 0x12

    invoke-direct {v0, v1, v2, v5, v4}, Lgbsdk/common/host/abui$ac;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abui$ac;->aAB:Lgbsdk/common/host/abui$ac;

    .line 28
    new-instance v0, Lgbsdk/common/host/abui$ac;

    const-string v1, "INITIALIZING_PRE_INIT"

    const/4 v2, 0x5

    const-string v4, "initializing_pre_init"

    invoke-direct {v0, v1, v2, v3, v4}, Lgbsdk/common/host/abui$ac;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abui$ac;->aAC:Lgbsdk/common/host/abui$ac;

    .line 29
    new-instance v0, Lgbsdk/common/host/abui$ac;

    const-string v1, "INITIALIZING_DID"

    const/4 v2, 0x6

    const-string v4, "initializing_did"

    invoke-direct {v0, v1, v2, v3, v4}, Lgbsdk/common/host/abui$ac;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abui$ac;->aAD:Lgbsdk/common/host/abui$ac;

    .line 30
    new-instance v0, Lgbsdk/common/host/abui$ac;

    const-string v1, "INITIALIZING_AF_DID_GOT"

    const/4 v2, 0x7

    const-string v4, "initializing_af_did_got"

    invoke-direct {v0, v1, v2, v3, v4}, Lgbsdk/common/host/abui$ac;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abui$ac;->aAE:Lgbsdk/common/host/abui$ac;

    .line 31
    new-instance v0, Lgbsdk/common/host/abui$ac;

    const-string v1, "INITIALIZED"

    const/16 v2, 0x8

    const/16 v3, 0x122

    const-string v4, "initialized"

    invoke-direct {v0, v1, v2, v3, v4}, Lgbsdk/common/host/abui$ac;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abui$ac;->aAF:Lgbsdk/common/host/abui$ac;

    invoke-static {}, Lgbsdk/common/host/abui$ac;->fq()[Lgbsdk/common/host/abui$ac;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abui$ac;->aAG:[Lgbsdk/common/host/abui$ac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgbsdk/common/host/abui$ac;->Fl:I

    iput-object p4, p0, Lgbsdk/common/host/abui$ac;->aAw:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic fq()[Lgbsdk/common/host/abui$ac;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lgbsdk/common/host/abui$ac;

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAx:Lgbsdk/common/host/abui$ac;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAy:Lgbsdk/common/host/abui$ac;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAz:Lgbsdk/common/host/abui$ac;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAA:Lgbsdk/common/host/abui$ac;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAB:Lgbsdk/common/host/abui$ac;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAC:Lgbsdk/common/host/abui$ac;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAD:Lgbsdk/common/host/abui$ac;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAE:Lgbsdk/common/host/abui$ac;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abui$ac;->aAF:Lgbsdk/common/host/abui$ac;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abui$ac;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abui$ac;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "b15527615bd08ad810e27bb5243cc5a6"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    :goto_0
    check-cast p0, Lgbsdk/common/host/abui$ac;

    return-object p0

    :cond_0
    const-class v0, Lgbsdk/common/host/abui$ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    goto :goto_0
.end method

.method public static values()[Lgbsdk/common/host/abui$ac;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abui$ac;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "7356e55ec2133e6f5157b592acb00e02"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    :goto_0
    check-cast v0, [Lgbsdk/common/host/abui$ac;

    return-object v0

    :cond_0
    sget-object v0, Lgbsdk/common/host/abui$ac;->aAG:[Lgbsdk/common/host/abui$ac;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final fn()I
    .locals 1

    .line 34
    iget v0, p0, Lgbsdk/common/host/abui$ac;->Fl:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final fo()I
    .locals 1

    .line 38
    iget v0, p0, Lgbsdk/common/host/abui$ac;->Fl:I

    and-int/lit16 v0, v0, 0xf0

    return v0
.end method

.method public final fp()I
    .locals 1

    .line 42
    iget v0, p0, Lgbsdk/common/host/abui$ac;->Fl:I

    and-int/lit16 v0, v0, 0xf00

    return v0
.end method
