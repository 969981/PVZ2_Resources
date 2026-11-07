.class public final enum Lgbsdk/common/host/abim;
.super Ljava/lang/Enum;
.source "OkHttp3RequestLog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abim;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum lG:Lgbsdk/common/host/abim;

.field public static final enum lH:Lgbsdk/common/host/abim;

.field public static final enum lI:Lgbsdk/common/host/abim;

.field public static final enum lJ:Lgbsdk/common/host/abim;

.field public static final enum lK:Lgbsdk/common/host/abim;

.field public static final enum lL:Lgbsdk/common/host/abim;

.field private static final synthetic lN:[Lgbsdk/common/host/abim;


# instance fields
.field final lM:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 597
    new-instance v0, Lgbsdk/common/host/abim;

    const-string v1, "CONNECTION_INFO_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgbsdk/common/host/abim;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abim;->lG:Lgbsdk/common/host/abim;

    .line 598
    new-instance v0, Lgbsdk/common/host/abim;

    const-string v1, "CONNECTION_INFO_HTTP1_1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lgbsdk/common/host/abim;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abim;->lH:Lgbsdk/common/host/abim;

    .line 599
    new-instance v0, Lgbsdk/common/host/abim;

    const-string v1, "CONNECTION_INFO_DEPRECATED_SPDY3"

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lgbsdk/common/host/abim;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abim;->lI:Lgbsdk/common/host/abim;

    .line 600
    new-instance v0, Lgbsdk/common/host/abim;

    const-string v1, "CONNECTION_INFO_HTTP2"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lgbsdk/common/host/abim;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abim;->lJ:Lgbsdk/common/host/abim;

    .line 601
    new-instance v0, Lgbsdk/common/host/abim;

    const-string v1, "CONNECTION_INFO_QUIC_UNKNOWN_VERSION"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lgbsdk/common/host/abim;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abim;->lK:Lgbsdk/common/host/abim;

    .line 602
    new-instance v0, Lgbsdk/common/host/abim;

    const-string v1, "CONNECTION_INFO_HTTP1_0"

    const/16 v8, 0x9

    invoke-direct {v0, v1, v7, v8}, Lgbsdk/common/host/abim;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abim;->lL:Lgbsdk/common/host/abim;

    const/4 v1, 0x6

    new-array v1, v1, [Lgbsdk/common/host/abim;

    .line 596
    sget-object v8, Lgbsdk/common/host/abim;->lG:Lgbsdk/common/host/abim;

    aput-object v8, v1, v2

    sget-object v2, Lgbsdk/common/host/abim;->lH:Lgbsdk/common/host/abim;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abim;->lI:Lgbsdk/common/host/abim;

    aput-object v2, v1, v4

    sget-object v2, Lgbsdk/common/host/abim;->lJ:Lgbsdk/common/host/abim;

    aput-object v2, v1, v5

    sget-object v2, Lgbsdk/common/host/abim;->lK:Lgbsdk/common/host/abim;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lgbsdk/common/host/abim;->lN:[Lgbsdk/common/host/abim;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 604
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 605
    iput p3, p0, Lgbsdk/common/host/abim;->lM:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abim;
    .locals 1

    .line 596
    const-class v0, Lgbsdk/common/host/abim;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abim;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abim;
    .locals 1

    .line 596
    sget-object v0, Lgbsdk/common/host/abim;->lN:[Lgbsdk/common/host/abim;

    invoke-virtual {v0}, [Lgbsdk/common/host/abim;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abim;

    return-object v0
.end method
