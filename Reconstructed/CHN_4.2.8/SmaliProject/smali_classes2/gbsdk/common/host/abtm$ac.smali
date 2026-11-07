.class public final enum Lgbsdk/common/host/abtm$ac;
.super Ljava/lang/Enum;
.source "TTReqController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abtm$ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aFT:Lgbsdk/common/host/abtm$ac;

.field public static final enum aFU:Lgbsdk/common/host/abtm$ac;

.field public static final enum aFV:Lgbsdk/common/host/abtm$ac;

.field private static final synthetic aFW:[Lgbsdk/common/host/abtm$ac;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 71
    new-instance v0, Lgbsdk/common/host/abtm$ac;

    const-string v1, "RELEASE_COUNTDOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgbsdk/common/host/abtm$ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abtm$ac;->aFT:Lgbsdk/common/host/abtm$ac;

    new-instance v0, Lgbsdk/common/host/abtm$ac;

    const-string v1, "RELEASE_SWITCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lgbsdk/common/host/abtm$ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abtm$ac;->aFU:Lgbsdk/common/host/abtm$ac;

    new-instance v0, Lgbsdk/common/host/abtm$ac;

    const-string v1, "RELEASE_P0BACK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lgbsdk/common/host/abtm$ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abtm$ac;->aFV:Lgbsdk/common/host/abtm$ac;

    const/4 v1, 0x3

    new-array v1, v1, [Lgbsdk/common/host/abtm$ac;

    sget-object v5, Lgbsdk/common/host/abtm$ac;->aFT:Lgbsdk/common/host/abtm$ac;

    aput-object v5, v1, v2

    sget-object v2, Lgbsdk/common/host/abtm$ac;->aFU:Lgbsdk/common/host/abtm$ac;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lgbsdk/common/host/abtm$ac;->aFW:[Lgbsdk/common/host/abtm$ac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abtm$ac;
    .locals 1

    .line 71
    const-class v0, Lgbsdk/common/host/abtm$ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abtm$ac;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abtm$ac;
    .locals 1

    .line 71
    sget-object v0, Lgbsdk/common/host/abtm$ac;->aFW:[Lgbsdk/common/host/abtm$ac;

    invoke-virtual {v0}, [Lgbsdk/common/host/abtm$ac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abtm$ac;

    return-object v0
.end method
