.class public final enum Lgbsdk/common/host/abjd;
.super Ljava/lang/Enum;
.source "OkHttp3RequestLog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abjd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum op:Lgbsdk/common/host/abjd;

.field public static final enum oq:Lgbsdk/common/host/abjd;

.field public static final enum or:Lgbsdk/common/host/abjd;

.field public static final enum os:Lgbsdk/common/host/abjd;

.field public static final enum ot:Lgbsdk/common/host/abjd;

.field private static final synthetic ou:[Lgbsdk/common/host/abjd;


# instance fields
.field final lM:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 583
    new-instance v0, Lgbsdk/common/host/abjd;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lgbsdk/common/host/abjd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abjd;->op:Lgbsdk/common/host/abjd;

    .line 584
    new-instance v0, Lgbsdk/common/host/abjd;

    const-string v1, "SOURCE_HTTPDNS"

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v4}, Lgbsdk/common/host/abjd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abjd;->oq:Lgbsdk/common/host/abjd;

    .line 585
    new-instance v0, Lgbsdk/common/host/abjd;

    const-string v1, "SOURCE_PROC"

    const/4 v5, 0x2

    const/4 v6, 0x6

    invoke-direct {v0, v1, v5, v6}, Lgbsdk/common/host/abjd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abjd;->or:Lgbsdk/common/host/abjd;

    .line 586
    new-instance v0, Lgbsdk/common/host/abjd;

    const-string v1, "SOURCE_PRELOAD_BATCH_HTTPDNS"

    const/4 v6, 0x7

    invoke-direct {v0, v1, v4, v6}, Lgbsdk/common/host/abjd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abjd;->os:Lgbsdk/common/host/abjd;

    .line 587
    new-instance v0, Lgbsdk/common/host/abjd;

    const-string v1, "SOURCE_ASYNC_BATCH_HTTPDNS"

    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lgbsdk/common/host/abjd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abjd;->ot:Lgbsdk/common/host/abjd;

    const/4 v1, 0x5

    new-array v1, v1, [Lgbsdk/common/host/abjd;

    .line 582
    sget-object v7, Lgbsdk/common/host/abjd;->op:Lgbsdk/common/host/abjd;

    aput-object v7, v1, v2

    sget-object v2, Lgbsdk/common/host/abjd;->oq:Lgbsdk/common/host/abjd;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abjd;->or:Lgbsdk/common/host/abjd;

    aput-object v2, v1, v5

    sget-object v2, Lgbsdk/common/host/abjd;->os:Lgbsdk/common/host/abjd;

    aput-object v2, v1, v4

    aput-object v0, v1, v6

    sput-object v1, Lgbsdk/common/host/abjd;->ou:[Lgbsdk/common/host/abjd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 589
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 590
    iput p3, p0, Lgbsdk/common/host/abjd;->lM:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abjd;
    .locals 1

    .line 582
    const-class v0, Lgbsdk/common/host/abjd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abjd;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abjd;
    .locals 1

    .line 582
    sget-object v0, Lgbsdk/common/host/abjd;->ou:[Lgbsdk/common/host/abjd;

    invoke-virtual {v0}, [Lgbsdk/common/host/abjd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abjd;

    return-object v0
.end method
