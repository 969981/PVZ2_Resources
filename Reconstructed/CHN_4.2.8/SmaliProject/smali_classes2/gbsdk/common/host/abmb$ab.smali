.class public final enum Lgbsdk/common/host/abmb$ab;
.super Ljava/lang/Enum;
.source "CacheControlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abmb$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum rO:Lgbsdk/common/host/abmb$ab;

.field public static final enum rP:Lgbsdk/common/host/abmb$ab;

.field public static final enum rQ:Lgbsdk/common/host/abmb$ab;

.field public static final enum rR:Lgbsdk/common/host/abmb$ab;

.field public static final enum rS:Lgbsdk/common/host/abmb$ab;

.field public static final enum rT:Lgbsdk/common/host/abmb$ab;

.field public static final enum rU:Lgbsdk/common/host/abmb$ab;

.field public static final enum rV:Lgbsdk/common/host/abmb$ab;

.field public static final enum rW:Lgbsdk/common/host/abmb$ab;

.field public static final enum rX:Lgbsdk/common/host/abmb$ab;

.field public static final enum rY:Lgbsdk/common/host/abmb$ab;

.field public static final enum rZ:Lgbsdk/common/host/abmb$ab;

.field public static final enum sa:Lgbsdk/common/host/abmb$ab;

.field private static final synthetic sb:[Lgbsdk/common/host/abmb$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 17
    new-instance v0, Lgbsdk/common/host/abmb$ab;

    const-string v1, "MAXAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgbsdk/common/host/abmb$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmb$ab;->rO:Lgbsdk/common/host/abmb$ab;

    .line 18
    new-instance v0, Lgbsdk/common/host/abmb$ab;

    const-string v1, "MAXSTALE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lgbsdk/common/host/abmb$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmb$ab;->rP:Lgbsdk/common/host/abmb$ab;

    .line 19
    new-instance v0, Lgbsdk/common/host/abmb$ab;

    const-string v1, "MINFRESH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lgbsdk/common/host/abmb$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmb$ab;->rQ:Lgbsdk/common/host/abmb$ab;

    .line 20
    new-instance v0, Lgbsdk/common/host/abmb$ab;

    const-string v1, "NOCACHE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lgbsdk/common/host/abmb$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmb$ab;->rR:Lgbsdk/common/host/abmb$ab;

    .line 21
    new-instance v0, Lgbsdk/common/host/abmb$ab;

    const-string v1, "NOSTORE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lgbsdk/common/host/abmb$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmb$ab;->rS:Lgbsdk/common/host/abmb$ab;

    .line 22
    new-instance v0, Lgbsdk/common/host/abmb$ab;

    const-string v1, "NOTRANSFORM"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lgbsdk/common/host/abmb$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmb$ab;->rT:Lgbsdk/common/host/abmb$ab;

    .line 23
    new-instance v0, Lgbsdk/common/host/abmb$ab;

    const-string v1, "ONLYIFCACHED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lgbsdk/common/host/abmb$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmb$ab;->rU:Lgbsdk/common/host/abmb$ab;

    .line 24
    new-instance v0, Lgbsdk/common/host/abmb$ab;

    const-string v1, "MUSTREVALIDATE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lgbsdk/common/host/abmb$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmb$ab;->rV:Lgbsdk/common/host/abmb$ab;

    .line 25
    new-instance v0, Lgbsdk/common/host/abmb$ab;

    const-string v1, "PRIVATE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lgbsdk/common/host/abmb$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmb$ab;->rW:Lgbsdk/common/host/abmb$ab;

    .line 26
    new-instance v0, Lgbsdk/common/host/abmb$ab;

    const-string v1, "PROXYREVALIDATE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lgbsdk/common/host/abmb$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmb$ab;->rX:Lgbsdk/common/host/abmb$ab;

    .line 27
    new-instance v0, Lgbsdk/common/host/abmb$ab;

    const-string v1, "PUBLIC"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lgbsdk/common/host/abmb$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmb$ab;->rY:Lgbsdk/common/host/abmb$ab;

    .line 28
    new-instance v0, Lgbsdk/common/host/abmb$ab;

    const-string v1, "SMAXAGE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lgbsdk/common/host/abmb$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmb$ab;->rZ:Lgbsdk/common/host/abmb$ab;

    .line 29
    new-instance v0, Lgbsdk/common/host/abmb$ab;

    const-string v1, "UNKNOWN"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lgbsdk/common/host/abmb$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abmb$ab;->sa:Lgbsdk/common/host/abmb$ab;

    const/16 v1, 0xd

    new-array v1, v1, [Lgbsdk/common/host/abmb$ab;

    .line 16
    sget-object v15, Lgbsdk/common/host/abmb$ab;->rO:Lgbsdk/common/host/abmb$ab;

    aput-object v15, v1, v2

    sget-object v2, Lgbsdk/common/host/abmb$ab;->rP:Lgbsdk/common/host/abmb$ab;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abmb$ab;->rQ:Lgbsdk/common/host/abmb$ab;

    aput-object v2, v1, v4

    sget-object v2, Lgbsdk/common/host/abmb$ab;->rR:Lgbsdk/common/host/abmb$ab;

    aput-object v2, v1, v5

    sget-object v2, Lgbsdk/common/host/abmb$ab;->rS:Lgbsdk/common/host/abmb$ab;

    aput-object v2, v1, v6

    sget-object v2, Lgbsdk/common/host/abmb$ab;->rT:Lgbsdk/common/host/abmb$ab;

    aput-object v2, v1, v7

    sget-object v2, Lgbsdk/common/host/abmb$ab;->rU:Lgbsdk/common/host/abmb$ab;

    aput-object v2, v1, v8

    sget-object v2, Lgbsdk/common/host/abmb$ab;->rV:Lgbsdk/common/host/abmb$ab;

    aput-object v2, v1, v9

    sget-object v2, Lgbsdk/common/host/abmb$ab;->rW:Lgbsdk/common/host/abmb$ab;

    aput-object v2, v1, v10

    sget-object v2, Lgbsdk/common/host/abmb$ab;->rX:Lgbsdk/common/host/abmb$ab;

    aput-object v2, v1, v11

    sget-object v2, Lgbsdk/common/host/abmb$ab;->rY:Lgbsdk/common/host/abmb$ab;

    aput-object v2, v1, v12

    sget-object v2, Lgbsdk/common/host/abmb$ab;->rZ:Lgbsdk/common/host/abmb$ab;

    aput-object v2, v1, v13

    aput-object v0, v1, v14

    sput-object v1, Lgbsdk/common/host/abmb$ab;->sb:[Lgbsdk/common/host/abmb$ab;

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

.method public static aH(Ljava/lang/String;)Lgbsdk/common/host/abmb$ab;
    .locals 2

    .line 33
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-static {p0}, Lgbsdk/common/host/abmb$ab;->valueOf(Ljava/lang/String;)Lgbsdk/common/host/abmb$ab;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 37
    :catch_0
    sget-object p0, Lgbsdk/common/host/abmb$ab;->sa:Lgbsdk/common/host/abmb$ab;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abmb$ab;
    .locals 1

    .line 16
    const-class v0, Lgbsdk/common/host/abmb$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abmb$ab;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abmb$ab;
    .locals 1

    .line 16
    sget-object v0, Lgbsdk/common/host/abmb$ab;->sb:[Lgbsdk/common/host/abmb$ab;

    invoke-virtual {v0}, [Lgbsdk/common/host/abmb$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abmb$ab;

    return-object v0
.end method
