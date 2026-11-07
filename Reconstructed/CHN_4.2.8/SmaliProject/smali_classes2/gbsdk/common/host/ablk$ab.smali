.class public final enum Lgbsdk/common/host/ablk$ab;
.super Ljava/lang/Enum;
.source "BaseDispatchAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/ablk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/ablk$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum qM:Lgbsdk/common/host/ablk$ab;

.field public static final enum qN:Lgbsdk/common/host/ablk$ab;

.field public static final enum qO:Lgbsdk/common/host/ablk$ab;

.field public static final enum qP:Lgbsdk/common/host/ablk$ab;

.field private static final synthetic qQ:[Lgbsdk/common/host/ablk$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lgbsdk/common/host/ablk$ab;

    const-string v1, "DISPATCH_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgbsdk/common/host/ablk$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    new-instance v0, Lgbsdk/common/host/ablk$ab;

    const-string v1, "DISPATCH_HIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lgbsdk/common/host/ablk$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/ablk$ab;->qN:Lgbsdk/common/host/ablk$ab;

    new-instance v0, Lgbsdk/common/host/ablk$ab;

    const-string v1, "DISPATCH_DROP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lgbsdk/common/host/ablk$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/ablk$ab;->qO:Lgbsdk/common/host/ablk$ab;

    new-instance v0, Lgbsdk/common/host/ablk$ab;

    const-string v1, "DISPATCH_DELAY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lgbsdk/common/host/ablk$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/ablk$ab;->qP:Lgbsdk/common/host/ablk$ab;

    const/4 v1, 0x4

    new-array v1, v1, [Lgbsdk/common/host/ablk$ab;

    sget-object v6, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    aput-object v6, v1, v2

    sget-object v2, Lgbsdk/common/host/ablk$ab;->qN:Lgbsdk/common/host/ablk$ab;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/ablk$ab;->qO:Lgbsdk/common/host/ablk$ab;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lgbsdk/common/host/ablk$ab;->qQ:[Lgbsdk/common/host/ablk$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/ablk$ab;
    .locals 1

    .line 33
    const-class v0, Lgbsdk/common/host/ablk$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/ablk$ab;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/ablk$ab;
    .locals 1

    .line 33
    sget-object v0, Lgbsdk/common/host/ablk$ab;->qQ:[Lgbsdk/common/host/ablk$ab;

    invoke-virtual {v0}, [Lgbsdk/common/host/ablk$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/ablk$ab;

    return-object v0
.end method
