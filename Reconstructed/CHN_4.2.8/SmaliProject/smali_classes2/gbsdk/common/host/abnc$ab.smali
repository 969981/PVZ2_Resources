.class public final enum Lgbsdk/common/host/abnc$ab;
.super Ljava/lang/Enum;
.source "MonitorNetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abnc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abnc$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum vn:Lgbsdk/common/host/abnc$ab;

.field public static final enum vo:Lgbsdk/common/host/abnc$ab;

.field public static final enum vp:Lgbsdk/common/host/abnc$ab;

.field private static final synthetic vq:[Lgbsdk/common/host/abnc$ab;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 40
    new-instance v0, Lgbsdk/common/host/abnc$ab;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgbsdk/common/host/abnc$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abnc$ab;->vn:Lgbsdk/common/host/abnc$ab;

    .line 41
    new-instance v0, Lgbsdk/common/host/abnc$ab;

    const-string v1, "GZIP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lgbsdk/common/host/abnc$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abnc$ab;->vo:Lgbsdk/common/host/abnc$ab;

    .line 42
    new-instance v0, Lgbsdk/common/host/abnc$ab;

    const-string v1, "DEFLATER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lgbsdk/common/host/abnc$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abnc$ab;->vp:Lgbsdk/common/host/abnc$ab;

    const/4 v1, 0x3

    new-array v1, v1, [Lgbsdk/common/host/abnc$ab;

    .line 39
    sget-object v5, Lgbsdk/common/host/abnc$ab;->vn:Lgbsdk/common/host/abnc$ab;

    aput-object v5, v1, v2

    sget-object v2, Lgbsdk/common/host/abnc$ab;->vo:Lgbsdk/common/host/abnc$ab;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lgbsdk/common/host/abnc$ab;->vq:[Lgbsdk/common/host/abnc$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lgbsdk/common/host/abnc$ab;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abnc$ab;
    .locals 1

    .line 39
    const-class v0, Lgbsdk/common/host/abnc$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abnc$ab;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abnc$ab;
    .locals 1

    .line 39
    sget-object v0, Lgbsdk/common/host/abnc$ab;->vq:[Lgbsdk/common/host/abnc$ab;

    invoke-virtual {v0}, [Lgbsdk/common/host/abnc$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abnc$ab;

    return-object v0
.end method
