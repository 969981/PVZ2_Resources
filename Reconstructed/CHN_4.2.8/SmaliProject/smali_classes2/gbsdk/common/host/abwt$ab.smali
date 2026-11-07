.class public final enum Lgbsdk/common/host/abwt$ab;
.super Ljava/lang/Enum;
.source "TNCManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abwt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abwt$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aJE:Lgbsdk/common/host/abwt$ab;

.field public static final enum aJF:Lgbsdk/common/host/abwt$ab;

.field public static final enum aJG:Lgbsdk/common/host/abwt$ab;

.field public static final enum aJH:Lgbsdk/common/host/abwt$ab;

.field public static final enum aJI:Lgbsdk/common/host/abwt$ab;

.field public static final enum aJJ:Lgbsdk/common/host/abwt$ab;

.field public static final enum aJK:Lgbsdk/common/host/abwt$ab;

.field public static final enum aJL:Lgbsdk/common/host/abwt$ab;

.field public static final enum aJM:Lgbsdk/common/host/abwt$ab;

.field public static final enum aJN:Lgbsdk/common/host/abwt$ab;

.field private static final synthetic aJO:[Lgbsdk/common/host/abwt$ab;


# instance fields
.field public final lM:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 146
    new-instance v0, Lgbsdk/common/host/abwt$ab;

    const-string v1, "TTRESUME"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Lgbsdk/common/host/abwt$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abwt$ab;->aJE:Lgbsdk/common/host/abwt$ab;

    .line 147
    new-instance v0, Lgbsdk/common/host/abwt$ab;

    const-string v1, "TTHardCode"

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {v0, v1, v3, v4}, Lgbsdk/common/host/abwt$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abwt$ab;->aJF:Lgbsdk/common/host/abwt$ab;

    .line 148
    new-instance v0, Lgbsdk/common/host/abwt$ab;

    const-string v1, "TTCACHE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lgbsdk/common/host/abwt$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abwt$ab;->aJG:Lgbsdk/common/host/abwt$ab;

    .line 149
    new-instance v0, Lgbsdk/common/host/abwt$ab;

    const-string v1, "TTSERVER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lgbsdk/common/host/abwt$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abwt$ab;->aJH:Lgbsdk/common/host/abwt$ab;

    .line 150
    new-instance v0, Lgbsdk/common/host/abwt$ab;

    const-string v1, "TTERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v4}, Lgbsdk/common/host/abwt$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abwt$ab;->aJI:Lgbsdk/common/host/abwt$ab;

    .line 151
    new-instance v0, Lgbsdk/common/host/abwt$ab;

    const-string v1, "TTPOLL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v5}, Lgbsdk/common/host/abwt$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abwt$ab;->aJJ:Lgbsdk/common/host/abwt$ab;

    .line 152
    new-instance v0, Lgbsdk/common/host/abwt$ab;

    const-string v1, "TTTNC"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v6}, Lgbsdk/common/host/abwt$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abwt$ab;->aJK:Lgbsdk/common/host/abwt$ab;

    .line 153
    new-instance v0, Lgbsdk/common/host/abwt$ab;

    const-string v1, "PORTRETRY"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lgbsdk/common/host/abwt$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abwt$ab;->aJL:Lgbsdk/common/host/abwt$ab;

    .line 154
    new-instance v0, Lgbsdk/common/host/abwt$ab;

    const-string v1, "TTREGION"

    const/16 v10, 0x8

    const/16 v11, 0xa

    invoke-direct {v0, v1, v10, v11}, Lgbsdk/common/host/abwt$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abwt$ab;->aJM:Lgbsdk/common/host/abwt$ab;

    .line 155
    new-instance v0, Lgbsdk/common/host/abwt$ab;

    const-string v1, "TTCRONET"

    const/16 v12, 0x9

    const/16 v13, 0x14

    invoke-direct {v0, v1, v12, v13}, Lgbsdk/common/host/abwt$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abwt$ab;->aJN:Lgbsdk/common/host/abwt$ab;

    new-array v1, v11, [Lgbsdk/common/host/abwt$ab;

    .line 145
    sget-object v11, Lgbsdk/common/host/abwt$ab;->aJE:Lgbsdk/common/host/abwt$ab;

    aput-object v11, v1, v2

    sget-object v2, Lgbsdk/common/host/abwt$ab;->aJF:Lgbsdk/common/host/abwt$ab;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abwt$ab;->aJG:Lgbsdk/common/host/abwt$ab;

    aput-object v2, v1, v4

    sget-object v2, Lgbsdk/common/host/abwt$ab;->aJH:Lgbsdk/common/host/abwt$ab;

    aput-object v2, v1, v5

    sget-object v2, Lgbsdk/common/host/abwt$ab;->aJI:Lgbsdk/common/host/abwt$ab;

    aput-object v2, v1, v6

    sget-object v2, Lgbsdk/common/host/abwt$ab;->aJJ:Lgbsdk/common/host/abwt$ab;

    aput-object v2, v1, v7

    sget-object v2, Lgbsdk/common/host/abwt$ab;->aJK:Lgbsdk/common/host/abwt$ab;

    aput-object v2, v1, v8

    sget-object v2, Lgbsdk/common/host/abwt$ab;->aJL:Lgbsdk/common/host/abwt$ab;

    aput-object v2, v1, v9

    sget-object v2, Lgbsdk/common/host/abwt$ab;->aJM:Lgbsdk/common/host/abwt$ab;

    aput-object v2, v1, v10

    aput-object v0, v1, v12

    sput-object v1, Lgbsdk/common/host/abwt$ab;->aJO:[Lgbsdk/common/host/abwt$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 158
    iput p3, p0, Lgbsdk/common/host/abwt$ab;->lM:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abwt$ab;
    .locals 1

    .line 145
    const-class v0, Lgbsdk/common/host/abwt$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abwt$ab;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abwt$ab;
    .locals 1

    .line 145
    sget-object v0, Lgbsdk/common/host/abwt$ab;->aJO:[Lgbsdk/common/host/abwt$ab;

    invoke-virtual {v0}, [Lgbsdk/common/host/abwt$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abwt$ab;

    return-object v0
.end method
