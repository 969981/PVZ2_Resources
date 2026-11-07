.class public final enum Lgbsdk/common/host/abul$ad;
.super Ljava/lang/Enum;
.source "InitSwitch.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ad"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abul$ad;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/main/InitSwitch$SDKModule;",
        "",
        "value",
        "",
        "moduleName",
        "",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getModuleName",
        "()Ljava/lang/String;",
        "getValue",
        "()I",
        "DataLink",
        "Douyin",
        "Share",
        "ScreenRecord",
        "CloudGame",
        "Broadcast",
        "TeamPlay",
        "Profile",
        "UG",
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
.field public static final enum Fn:Lgbsdk/common/host/abul$ad;

.field public static final enum Fo:Lgbsdk/common/host/abul$ad;

.field public static final enum Fp:Lgbsdk/common/host/abul$ad;

.field public static final enum Fq:Lgbsdk/common/host/abul$ad;

.field public static final enum Fr:Lgbsdk/common/host/abul$ad;

.field public static final enum Fs:Lgbsdk/common/host/abul$ad;

.field public static final enum Ft:Lgbsdk/common/host/abul$ad;

.field public static final enum Fu:Lgbsdk/common/host/abul$ad;

.field public static final enum Fv:Lgbsdk/common/host/abul$ad;

.field private static final synthetic Fw:[Lgbsdk/common/host/abul$ad;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final Fl:I

.field public final Fm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lgbsdk/common/host/abul$ad;

    const-string v1, "DataLink"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "datalink"

    invoke-direct {v0, v1, v2, v3, v4}, Lgbsdk/common/host/abul$ad;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abul$ad;->Fn:Lgbsdk/common/host/abul$ad;

    .line 30
    new-instance v0, Lgbsdk/common/host/abul$ad;

    const-string v1, "Douyin"

    const/4 v2, 0x2

    const-string v4, "aweme"

    invoke-direct {v0, v1, v3, v2, v4}, Lgbsdk/common/host/abul$ad;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abul$ad;->Fo:Lgbsdk/common/host/abul$ad;

    .line 31
    new-instance v0, Lgbsdk/common/host/abul$ad;

    const-string v1, "Share"

    const/4 v3, 0x3

    const-string v4, "share"

    invoke-direct {v0, v1, v2, v3, v4}, Lgbsdk/common/host/abul$ad;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abul$ad;->Fp:Lgbsdk/common/host/abul$ad;

    .line 32
    new-instance v0, Lgbsdk/common/host/abul$ad;

    const-string v1, "ScreenRecord"

    const/4 v2, 0x4

    const-string v4, "screenrecord"

    invoke-direct {v0, v1, v3, v2, v4}, Lgbsdk/common/host/abul$ad;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abul$ad;->Fq:Lgbsdk/common/host/abul$ad;

    .line 33
    new-instance v0, Lgbsdk/common/host/abul$ad;

    const-string v1, "CloudGame"

    const/4 v3, 0x5

    const-string v4, "cloudgame"

    invoke-direct {v0, v1, v2, v3, v4}, Lgbsdk/common/host/abul$ad;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abul$ad;->Fr:Lgbsdk/common/host/abul$ad;

    .line 34
    new-instance v0, Lgbsdk/common/host/abul$ad;

    const-string v1, "Broadcast"

    const/4 v2, 0x6

    const-string v4, "livebroadcast"

    invoke-direct {v0, v1, v3, v2, v4}, Lgbsdk/common/host/abul$ad;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abul$ad;->Fs:Lgbsdk/common/host/abul$ad;

    .line 35
    new-instance v0, Lgbsdk/common/host/abul$ad;

    const-string v1, "TeamPlay"

    const/4 v3, 0x7

    const-string v4, "teamplay"

    invoke-direct {v0, v1, v2, v3, v4}, Lgbsdk/common/host/abul$ad;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abul$ad;->Ft:Lgbsdk/common/host/abul$ad;

    .line 36
    new-instance v0, Lgbsdk/common/host/abul$ad;

    const-string v1, "Profile"

    const/16 v2, 0x8

    const-string v4, "profile"

    invoke-direct {v0, v1, v3, v2, v4}, Lgbsdk/common/host/abul$ad;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abul$ad;->Fu:Lgbsdk/common/host/abul$ad;

    .line 37
    new-instance v0, Lgbsdk/common/host/abul$ad;

    const-string v1, "UG"

    const/16 v3, 0x9

    const-string v4, "ug"

    invoke-direct {v0, v1, v2, v3, v4}, Lgbsdk/common/host/abul$ad;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lgbsdk/common/host/abul$ad;->Fv:Lgbsdk/common/host/abul$ad;

    invoke-static {}, Lgbsdk/common/host/abul$ad;->fd()[Lgbsdk/common/host/abul$ad;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abul$ad;->Fw:[Lgbsdk/common/host/abul$ad;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgbsdk/common/host/abul$ad;->Fl:I

    iput-object p4, p0, Lgbsdk/common/host/abul$ad;->Fm:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic fd()[Lgbsdk/common/host/abul$ad;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lgbsdk/common/host/abul$ad;

    sget-object v1, Lgbsdk/common/host/abul$ad;->Fn:Lgbsdk/common/host/abul$ad;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abul$ad;->Fo:Lgbsdk/common/host/abul$ad;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abul$ad;->Fp:Lgbsdk/common/host/abul$ad;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abul$ad;->Fq:Lgbsdk/common/host/abul$ad;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abul$ad;->Fr:Lgbsdk/common/host/abul$ad;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abul$ad;->Fs:Lgbsdk/common/host/abul$ad;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abul$ad;->Ft:Lgbsdk/common/host/abul$ad;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abul$ad;->Fu:Lgbsdk/common/host/abul$ad;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abul$ad;->Fv:Lgbsdk/common/host/abul$ad;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abul$ad;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abul$ad;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "8f2b3f07c49ea7a6d0d6abaf6606030e"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    :goto_0
    check-cast p0, Lgbsdk/common/host/abul$ad;

    return-object p0

    :cond_0
    const-class v0, Lgbsdk/common/host/abul$ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    goto :goto_0
.end method

.method public static values()[Lgbsdk/common/host/abul$ad;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abul$ad;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ac311bdd93009469b7aa3698177b1afb"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    :goto_0
    check-cast v0, [Lgbsdk/common/host/abul$ad;

    return-object v0

    :cond_0
    sget-object v0, Lgbsdk/common/host/abul$ad;->Fw:[Lgbsdk/common/host/abul$ad;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
