.class public final enum Lgbsdk/common/host/abtm$ab;
.super Ljava/lang/Enum;
.source "TTReqController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abtm$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aFN:Lgbsdk/common/host/abtm$ab;

.field public static final enum aFO:Lgbsdk/common/host/abtm$ab;

.field public static final enum aFP:Lgbsdk/common/host/abtm$ab;

.field public static final enum aFQ:Lgbsdk/common/host/abtm$ab;

.field public static final enum aFR:Lgbsdk/common/host/abtm$ab;

.field private static final synthetic aFS:[Lgbsdk/common/host/abtm$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 73
    new-instance v0, Lgbsdk/common/host/abtm$ab;

    const-string v1, "P0_NOT_DONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgbsdk/common/host/abtm$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abtm$ab;->aFN:Lgbsdk/common/host/abtm$ab;

    .line 74
    new-instance v0, Lgbsdk/common/host/abtm$ab;

    const-string v1, "MODULE_DISABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lgbsdk/common/host/abtm$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abtm$ab;->aFO:Lgbsdk/common/host/abtm$ab;

    .line 75
    new-instance v0, Lgbsdk/common/host/abtm$ab;

    const-string v1, "P0_COUNT_DONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lgbsdk/common/host/abtm$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abtm$ab;->aFP:Lgbsdk/common/host/abtm$ab;

    .line 76
    new-instance v0, Lgbsdk/common/host/abtm$ab;

    const-string v1, "P1_MAX_SIZE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lgbsdk/common/host/abtm$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abtm$ab;->aFQ:Lgbsdk/common/host/abtm$ab;

    .line 77
    new-instance v0, Lgbsdk/common/host/abtm$ab;

    const-string v1, "P0_TIME_OUT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lgbsdk/common/host/abtm$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abtm$ab;->aFR:Lgbsdk/common/host/abtm$ab;

    const/4 v1, 0x5

    new-array v1, v1, [Lgbsdk/common/host/abtm$ab;

    .line 72
    sget-object v7, Lgbsdk/common/host/abtm$ab;->aFN:Lgbsdk/common/host/abtm$ab;

    aput-object v7, v1, v2

    sget-object v2, Lgbsdk/common/host/abtm$ab;->aFO:Lgbsdk/common/host/abtm$ab;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abtm$ab;->aFP:Lgbsdk/common/host/abtm$ab;

    aput-object v2, v1, v4

    sget-object v2, Lgbsdk/common/host/abtm$ab;->aFQ:Lgbsdk/common/host/abtm$ab;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lgbsdk/common/host/abtm$ab;->aFS:[Lgbsdk/common/host/abtm$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abtm$ab;
    .locals 1

    .line 72
    const-class v0, Lgbsdk/common/host/abtm$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abtm$ab;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abtm$ab;
    .locals 1

    .line 72
    sget-object v0, Lgbsdk/common/host/abtm$ab;->aFS:[Lgbsdk/common/host/abtm$ab;

    invoke-virtual {v0}, [Lgbsdk/common/host/abtm$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abtm$ab;

    return-object v0
.end method
