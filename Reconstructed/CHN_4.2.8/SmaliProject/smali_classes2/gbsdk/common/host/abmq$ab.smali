.class public final enum Lgbsdk/common/host/abmq$ab;
.super Ljava/lang/Enum;
.source "NetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abmq$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum uL:Lgbsdk/common/host/abmq$ab;

.field public static final enum uM:Lgbsdk/common/host/abmq$ab;

.field public static final enum uN:Lgbsdk/common/host/abmq$ab;

.field public static final enum uO:Lgbsdk/common/host/abmq$ab;

.field public static final enum uP:Lgbsdk/common/host/abmq$ab;

.field public static final enum uQ:Lgbsdk/common/host/abmq$ab;

.field public static final enum uR:Lgbsdk/common/host/abmq$ab;

.field private static final synthetic uS:[Lgbsdk/common/host/abmq$ab;


# instance fields
.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 37
    new-instance v0, Lgbsdk/common/host/abmq$ab;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lgbsdk/common/host/abmq$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abmq$ab;->uL:Lgbsdk/common/host/abmq$ab;

    .line 38
    new-instance v0, Lgbsdk/common/host/abmq$ab;

    const-string v1, "NONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lgbsdk/common/host/abmq$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abmq$ab;->uM:Lgbsdk/common/host/abmq$ab;

    .line 39
    new-instance v0, Lgbsdk/common/host/abmq$ab;

    const-string v1, "MOBILE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lgbsdk/common/host/abmq$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abmq$ab;->uN:Lgbsdk/common/host/abmq$ab;

    .line 40
    new-instance v0, Lgbsdk/common/host/abmq$ab;

    const-string v1, "MOBILE_2G"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lgbsdk/common/host/abmq$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abmq$ab;->uO:Lgbsdk/common/host/abmq$ab;

    .line 41
    new-instance v0, Lgbsdk/common/host/abmq$ab;

    const-string v1, "MOBILE_3G"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lgbsdk/common/host/abmq$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abmq$ab;->uP:Lgbsdk/common/host/abmq$ab;

    .line 42
    new-instance v0, Lgbsdk/common/host/abmq$ab;

    const-string v1, "WIFI"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lgbsdk/common/host/abmq$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abmq$ab;->uQ:Lgbsdk/common/host/abmq$ab;

    .line 43
    new-instance v0, Lgbsdk/common/host/abmq$ab;

    const-string v1, "MOBILE_4G"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v7}, Lgbsdk/common/host/abmq$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abmq$ab;->uR:Lgbsdk/common/host/abmq$ab;

    const/4 v1, 0x7

    new-array v1, v1, [Lgbsdk/common/host/abmq$ab;

    .line 35
    sget-object v9, Lgbsdk/common/host/abmq$ab;->uL:Lgbsdk/common/host/abmq$ab;

    aput-object v9, v1, v2

    sget-object v2, Lgbsdk/common/host/abmq$ab;->uM:Lgbsdk/common/host/abmq$ab;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abmq$ab;->uN:Lgbsdk/common/host/abmq$ab;

    aput-object v2, v1, v4

    sget-object v2, Lgbsdk/common/host/abmq$ab;->uO:Lgbsdk/common/host/abmq$ab;

    aput-object v2, v1, v5

    sget-object v2, Lgbsdk/common/host/abmq$ab;->uP:Lgbsdk/common/host/abmq$ab;

    aput-object v2, v1, v6

    sget-object v2, Lgbsdk/common/host/abmq$ab;->uQ:Lgbsdk/common/host/abmq$ab;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lgbsdk/common/host/abmq$ab;->uS:[Lgbsdk/common/host/abmq$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lgbsdk/common/host/abmq$ab;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abmq$ab;
    .locals 1

    .line 35
    const-class v0, Lgbsdk/common/host/abmq$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abmq$ab;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abmq$ab;
    .locals 1

    .line 35
    sget-object v0, Lgbsdk/common/host/abmq$ab;->uS:[Lgbsdk/common/host/abmq$ab;

    invoke-virtual {v0}, [Lgbsdk/common/host/abmq$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abmq$ab;

    return-object v0
.end method
