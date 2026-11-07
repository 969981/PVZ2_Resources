.class public final enum Lgbsdk/common/host/abja;
.super Ljava/lang/Enum;
.source "OkHttp3RequestLog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abja;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum oj:Lgbsdk/common/host/abja;

.field public static final enum ok:Lgbsdk/common/host/abja;

.field public static final enum ol:Lgbsdk/common/host/abja;

.field public static final enum om:Lgbsdk/common/host/abja;

.field public static final enum on:Lgbsdk/common/host/abja;

.field private static final synthetic oo:[Lgbsdk/common/host/abja;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 555
    new-instance v0, Lgbsdk/common/host/abja;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgbsdk/common/host/abja;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abja;->oj:Lgbsdk/common/host/abja;

    new-instance v0, Lgbsdk/common/host/abja;

    const-string v1, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lgbsdk/common/host/abja;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abja;->ok:Lgbsdk/common/host/abja;

    new-instance v0, Lgbsdk/common/host/abja;

    const-string v1, "IO_PENDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lgbsdk/common/host/abja;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abja;->ol:Lgbsdk/common/host/abja;

    new-instance v0, Lgbsdk/common/host/abja;

    const-string v1, "CANCELED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lgbsdk/common/host/abja;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abja;->om:Lgbsdk/common/host/abja;

    new-instance v0, Lgbsdk/common/host/abja;

    const-string v1, "FAILED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lgbsdk/common/host/abja;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abja;->on:Lgbsdk/common/host/abja;

    const/4 v1, 0x5

    new-array v1, v1, [Lgbsdk/common/host/abja;

    sget-object v7, Lgbsdk/common/host/abja;->oj:Lgbsdk/common/host/abja;

    aput-object v7, v1, v2

    sget-object v2, Lgbsdk/common/host/abja;->ok:Lgbsdk/common/host/abja;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abja;->ol:Lgbsdk/common/host/abja;

    aput-object v2, v1, v4

    sget-object v2, Lgbsdk/common/host/abja;->om:Lgbsdk/common/host/abja;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lgbsdk/common/host/abja;->oo:[Lgbsdk/common/host/abja;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 555
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abja;
    .locals 1

    .line 555
    const-class v0, Lgbsdk/common/host/abja;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abja;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abja;
    .locals 1

    .line 555
    sget-object v0, Lgbsdk/common/host/abja;->oo:[Lgbsdk/common/host/abja;

    invoke-virtual {v0}, [Lgbsdk/common/host/abja;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abja;

    return-object v0
.end method
