.class public final enum Lgbsdk/common/host/abil;
.super Ljava/lang/Enum;
.source "OkHttp3RequestLog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abil;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum lO:Lgbsdk/common/host/abil;

.field public static final enum lP:Lgbsdk/common/host/abil;

.field public static final enum lQ:Lgbsdk/common/host/abil;

.field private static final synthetic lR:[Lgbsdk/common/host/abil;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 560
    new-instance v0, Lgbsdk/common/host/abil;

    const-string v1, "HANDSHAKE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgbsdk/common/host/abil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abil;->lO:Lgbsdk/common/host/abil;

    .line 561
    new-instance v0, Lgbsdk/common/host/abil;

    const-string v1, "HANDSHAKE_RESUME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lgbsdk/common/host/abil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abil;->lP:Lgbsdk/common/host/abil;

    .line 562
    new-instance v0, Lgbsdk/common/host/abil;

    const-string v1, "HANDSHAKE_FULL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lgbsdk/common/host/abil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abil;->lQ:Lgbsdk/common/host/abil;

    const/4 v1, 0x3

    new-array v1, v1, [Lgbsdk/common/host/abil;

    .line 559
    sget-object v5, Lgbsdk/common/host/abil;->lO:Lgbsdk/common/host/abil;

    aput-object v5, v1, v2

    sget-object v2, Lgbsdk/common/host/abil;->lP:Lgbsdk/common/host/abil;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lgbsdk/common/host/abil;->lR:[Lgbsdk/common/host/abil;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 559
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abil;
    .locals 1

    .line 559
    const-class v0, Lgbsdk/common/host/abil;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abil;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abil;
    .locals 1

    .line 559
    sget-object v0, Lgbsdk/common/host/abil;->lR:[Lgbsdk/common/host/abil;

    invoke-virtual {v0}, [Lgbsdk/common/host/abil;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abil;

    return-object v0
.end method
