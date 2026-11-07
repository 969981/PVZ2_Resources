.class public final enum Lgbsdk/common/host/abjc;
.super Ljava/lang/Enum;
.source "OkHttp3RequestLog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abjc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum oA:Lgbsdk/common/host/abjc;

.field public static final enum oB:Lgbsdk/common/host/abjc;

.field public static final enum oC:Lgbsdk/common/host/abjc;

.field private static final synthetic oD:[Lgbsdk/common/host/abjc;

.field public static final enum ov:Lgbsdk/common/host/abjc;

.field public static final enum ow:Lgbsdk/common/host/abjc;

.field public static final enum ox:Lgbsdk/common/host/abjc;

.field public static final enum oy:Lgbsdk/common/host/abjc;

.field public static final enum oz:Lgbsdk/common/host/abjc;


# instance fields
.field final lM:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 566
    new-instance v0, Lgbsdk/common/host/abjc;

    const-string v1, "NOT_SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgbsdk/common/host/abjc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abjc;->ov:Lgbsdk/common/host/abjc;

    .line 567
    new-instance v0, Lgbsdk/common/host/abjc;

    const-string v1, "SERVE_FROM_CACHE"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lgbsdk/common/host/abjc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abjc;->ow:Lgbsdk/common/host/abjc;

    .line 568
    new-instance v0, Lgbsdk/common/host/abjc;

    const-string v1, "SERVE_FROM_PREFER_ADDR"

    const/4 v5, 0x5

    invoke-direct {v0, v1, v4, v5}, Lgbsdk/common/host/abjc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abjc;->ox:Lgbsdk/common/host/abjc;

    .line 569
    new-instance v0, Lgbsdk/common/host/abjc;

    const-string v1, "SERVE_FROM_HTTP_DNS_JOB"

    const/4 v6, 0x3

    const/4 v7, 0x6

    invoke-direct {v0, v1, v6, v7}, Lgbsdk/common/host/abjc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abjc;->oy:Lgbsdk/common/host/abjc;

    .line 570
    new-instance v0, Lgbsdk/common/host/abjc;

    const-string v1, "SERVE_FROM_PROC_DNS_JOB"

    const/4 v8, 0x4

    const/16 v9, 0x8

    invoke-direct {v0, v1, v8, v9}, Lgbsdk/common/host/abjc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abjc;->oz:Lgbsdk/common/host/abjc;

    .line 571
    new-instance v0, Lgbsdk/common/host/abjc;

    const-string v1, "SERVE_FROM_HARDCODE_HOSTS"

    const/16 v10, 0x9

    invoke-direct {v0, v1, v5, v10}, Lgbsdk/common/host/abjc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abjc;->oA:Lgbsdk/common/host/abjc;

    .line 572
    new-instance v0, Lgbsdk/common/host/abjc;

    const-string v1, "SERVE_FROM_BATCH_PRELOAD"

    const/16 v10, 0x13

    invoke-direct {v0, v1, v7, v10}, Lgbsdk/common/host/abjc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abjc;->oB:Lgbsdk/common/host/abjc;

    .line 573
    new-instance v0, Lgbsdk/common/host/abjc;

    const-string v1, "SERVE_FROM_ASYNC_BATCH_PRELOAD"

    const/4 v10, 0x7

    const/16 v11, 0x14

    invoke-direct {v0, v1, v10, v11}, Lgbsdk/common/host/abjc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abjc;->oC:Lgbsdk/common/host/abjc;

    new-array v1, v9, [Lgbsdk/common/host/abjc;

    .line 565
    sget-object v9, Lgbsdk/common/host/abjc;->ov:Lgbsdk/common/host/abjc;

    aput-object v9, v1, v2

    sget-object v2, Lgbsdk/common/host/abjc;->ow:Lgbsdk/common/host/abjc;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abjc;->ox:Lgbsdk/common/host/abjc;

    aput-object v2, v1, v4

    sget-object v2, Lgbsdk/common/host/abjc;->oy:Lgbsdk/common/host/abjc;

    aput-object v2, v1, v6

    sget-object v2, Lgbsdk/common/host/abjc;->oz:Lgbsdk/common/host/abjc;

    aput-object v2, v1, v8

    sget-object v2, Lgbsdk/common/host/abjc;->oA:Lgbsdk/common/host/abjc;

    aput-object v2, v1, v5

    sget-object v2, Lgbsdk/common/host/abjc;->oB:Lgbsdk/common/host/abjc;

    aput-object v2, v1, v7

    aput-object v0, v1, v10

    sput-object v1, Lgbsdk/common/host/abjc;->oD:[Lgbsdk/common/host/abjc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 575
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 576
    iput p3, p0, Lgbsdk/common/host/abjc;->lM:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abjc;
    .locals 1

    .line 565
    const-class v0, Lgbsdk/common/host/abjc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abjc;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abjc;
    .locals 1

    .line 565
    sget-object v0, Lgbsdk/common/host/abjc;->oD:[Lgbsdk/common/host/abjc;

    invoke-virtual {v0}, [Lgbsdk/common/host/abjc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abjc;

    return-object v0
.end method
