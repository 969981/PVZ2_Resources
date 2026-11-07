.class public final enum Lgbsdk/common/host/abju$ab;
.super Ljava/lang/Enum;
.source "IRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abju$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum gP:Lgbsdk/common/host/abju$ab;

.field public static final enum gQ:Lgbsdk/common/host/abju$ab;

.field public static final enum gR:Lgbsdk/common/host/abju$ab;

.field public static final enum gS:Lgbsdk/common/host/abju$ab;

.field private static final synthetic gT:[Lgbsdk/common/host/abju$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lgbsdk/common/host/abju$ab;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgbsdk/common/host/abju$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abju$ab;->gP:Lgbsdk/common/host/abju$ab;

    new-instance v0, Lgbsdk/common/host/abju$ab;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lgbsdk/common/host/abju$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abju$ab;->gQ:Lgbsdk/common/host/abju$ab;

    new-instance v0, Lgbsdk/common/host/abju$ab;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lgbsdk/common/host/abju$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abju$ab;->gR:Lgbsdk/common/host/abju$ab;

    new-instance v0, Lgbsdk/common/host/abju$ab;

    const-string v1, "IMMEDIATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lgbsdk/common/host/abju$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abju$ab;->gS:Lgbsdk/common/host/abju$ab;

    const/4 v1, 0x4

    new-array v1, v1, [Lgbsdk/common/host/abju$ab;

    sget-object v6, Lgbsdk/common/host/abju$ab;->gP:Lgbsdk/common/host/abju$ab;

    aput-object v6, v1, v2

    sget-object v2, Lgbsdk/common/host/abju$ab;->gQ:Lgbsdk/common/host/abju$ab;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abju$ab;->gR:Lgbsdk/common/host/abju$ab;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lgbsdk/common/host/abju$ab;->gT:[Lgbsdk/common/host/abju$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abju$ab;
    .locals 1

    .line 11
    const-class v0, Lgbsdk/common/host/abju$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abju$ab;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abju$ab;
    .locals 1

    .line 11
    sget-object v0, Lgbsdk/common/host/abju$ab;->gT:[Lgbsdk/common/host/abju$ab;

    invoke-virtual {v0}, [Lgbsdk/common/host/abju$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abju$ab;

    return-object v0
.end method
