.class public final enum Lgbsdk/common/host/abir;
.super Ljava/lang/Enum;
.source "OkHttp3RequestLog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abir;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum lC:Lgbsdk/common/host/abir;

.field public static final enum lD:Lgbsdk/common/host/abir;

.field public static final enum lE:Lgbsdk/common/host/abir;

.field private static final synthetic lF:[Lgbsdk/common/host/abir;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 557
    new-instance v0, Lgbsdk/common/host/abir;

    const-string v1, "ADDRESS_FAMILY_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgbsdk/common/host/abir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abir;->lC:Lgbsdk/common/host/abir;

    new-instance v0, Lgbsdk/common/host/abir;

    const-string v1, "ADDRESS_FAMILY_IPV4"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lgbsdk/common/host/abir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abir;->lD:Lgbsdk/common/host/abir;

    new-instance v0, Lgbsdk/common/host/abir;

    const-string v1, "ADDRESS_FAMILY_IPV6"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lgbsdk/common/host/abir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abir;->lE:Lgbsdk/common/host/abir;

    const/4 v1, 0x3

    new-array v1, v1, [Lgbsdk/common/host/abir;

    sget-object v5, Lgbsdk/common/host/abir;->lC:Lgbsdk/common/host/abir;

    aput-object v5, v1, v2

    sget-object v2, Lgbsdk/common/host/abir;->lD:Lgbsdk/common/host/abir;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lgbsdk/common/host/abir;->lF:[Lgbsdk/common/host/abir;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 557
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abir;
    .locals 1

    .line 557
    const-class v0, Lgbsdk/common/host/abir;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abir;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abir;
    .locals 1

    .line 557
    sget-object v0, Lgbsdk/common/host/abir;->lF:[Lgbsdk/common/host/abir;

    invoke-virtual {v0}, [Lgbsdk/common/host/abir;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abir;

    return-object v0
.end method
