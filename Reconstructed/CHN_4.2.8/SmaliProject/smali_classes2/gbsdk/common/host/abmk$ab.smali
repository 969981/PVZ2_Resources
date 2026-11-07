.class public final enum Lgbsdk/common/host/abmk$ab;
.super Ljava/lang/Enum;
.source "DispatchStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abmk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abmk$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum rf:Lgbsdk/common/host/abmk$ab;

.field public static final enum rg:Lgbsdk/common/host/abmk$ab;

.field public static final enum rh:Lgbsdk/common/host/abmk$ab;

.field public static final enum ri:Lgbsdk/common/host/abmk$ab;

.field public static final enum rj:Lgbsdk/common/host/abmk$ab;

.field public static final enum rk:Lgbsdk/common/host/abmk$ab;

.field public static final enum rl:Lgbsdk/common/host/abmk$ab;

.field private static final synthetic rm:[Lgbsdk/common/host/abmk$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 17
    new-instance v0, Lgbsdk/common/host/abmk$ab;

    const-string v1, "UNKNOWN_DISPATCH_STRATEGY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgbsdk/common/host/abmk$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmk$ab;->rf:Lgbsdk/common/host/abmk$ab;

    .line 18
    new-instance v0, Lgbsdk/common/host/abmk$ab;

    const-string v1, "STATIC_DISPATCH_STRATEGY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lgbsdk/common/host/abmk$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmk$ab;->rg:Lgbsdk/common/host/abmk$ab;

    .line 19
    new-instance v0, Lgbsdk/common/host/abmk$ab;

    const-string v1, "WRR_DISPATCH_STRATEGY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lgbsdk/common/host/abmk$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmk$ab;->rh:Lgbsdk/common/host/abmk$ab;

    .line 20
    new-instance v0, Lgbsdk/common/host/abmk$ab;

    const-string v1, "CONSERVATIVE_DISPATCH_STRATEGY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lgbsdk/common/host/abmk$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmk$ab;->ri:Lgbsdk/common/host/abmk$ab;

    .line 21
    new-instance v0, Lgbsdk/common/host/abmk$ab;

    const-string v1, "OPTIMIZED_DISPATCH_STRATEGY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lgbsdk/common/host/abmk$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmk$ab;->rj:Lgbsdk/common/host/abmk$ab;

    .line 22
    new-instance v0, Lgbsdk/common/host/abmk$ab;

    const-string v1, "ROUTE_SELECTION_DISPATCH_STRATEGY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lgbsdk/common/host/abmk$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmk$ab;->rk:Lgbsdk/common/host/abmk$ab;

    .line 23
    new-instance v0, Lgbsdk/common/host/abmk$ab;

    const-string v1, "DISPATCH_STRATEGY_SUPPORTED_LAST"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lgbsdk/common/host/abmk$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmk$ab;->rl:Lgbsdk/common/host/abmk$ab;

    const/4 v1, 0x7

    new-array v1, v1, [Lgbsdk/common/host/abmk$ab;

    .line 16
    sget-object v9, Lgbsdk/common/host/abmk$ab;->rf:Lgbsdk/common/host/abmk$ab;

    aput-object v9, v1, v2

    sget-object v2, Lgbsdk/common/host/abmk$ab;->rg:Lgbsdk/common/host/abmk$ab;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abmk$ab;->rh:Lgbsdk/common/host/abmk$ab;

    aput-object v2, v1, v4

    sget-object v2, Lgbsdk/common/host/abmk$ab;->ri:Lgbsdk/common/host/abmk$ab;

    aput-object v2, v1, v5

    sget-object v2, Lgbsdk/common/host/abmk$ab;->rj:Lgbsdk/common/host/abmk$ab;

    aput-object v2, v1, v6

    sget-object v2, Lgbsdk/common/host/abmk$ab;->rk:Lgbsdk/common/host/abmk$ab;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lgbsdk/common/host/abmk$ab;->rm:[Lgbsdk/common/host/abmk$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abmk$ab;
    .locals 1

    .line 16
    const-class v0, Lgbsdk/common/host/abmk$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abmk$ab;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abmk$ab;
    .locals 1

    .line 16
    sget-object v0, Lgbsdk/common/host/abmk$ab;->rm:[Lgbsdk/common/host/abmk$ab;

    invoke-virtual {v0}, [Lgbsdk/common/host/abmk$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abmk$ab;

    return-object v0
.end method
