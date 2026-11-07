.class public final enum Lgbsdk/common/host/abix$ab;
.super Ljava/lang/Enum;
.source "DnsRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abix$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum oQ:Lgbsdk/common/host/abix$ab;

.field public static final enum oR:Lgbsdk/common/host/abix$ab;

.field public static final enum oS:Lgbsdk/common/host/abix$ab;

.field public static final enum oT:Lgbsdk/common/host/abix$ab;

.field public static final enum oU:Lgbsdk/common/host/abix$ab;

.field public static final enum oV:Lgbsdk/common/host/abix$ab;

.field public static final enum oW:Lgbsdk/common/host/abix$ab;

.field private static final synthetic oX:[Lgbsdk/common/host/abix$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Lgbsdk/common/host/abix$ab;

    const-string v1, "CACHE_UNSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgbsdk/common/host/abix$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abix$ab;->oQ:Lgbsdk/common/host/abix$ab;

    .line 15
    new-instance v0, Lgbsdk/common/host/abix$ab;

    const-string v1, "CACHE_VALID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lgbsdk/common/host/abix$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abix$ab;->oR:Lgbsdk/common/host/abix$ab;

    .line 16
    new-instance v0, Lgbsdk/common/host/abix$ab;

    const-string v1, "CACHE_STALE_BOTH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lgbsdk/common/host/abix$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abix$ab;->oS:Lgbsdk/common/host/abix$ab;

    .line 17
    new-instance v0, Lgbsdk/common/host/abix$ab;

    const-string v1, "CACHE_STALE_NETCHANGED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lgbsdk/common/host/abix$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abix$ab;->oT:Lgbsdk/common/host/abix$ab;

    .line 18
    new-instance v0, Lgbsdk/common/host/abix$ab;

    const-string v1, "CACHE_STALE_EXPIRED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lgbsdk/common/host/abix$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abix$ab;->oU:Lgbsdk/common/host/abix$ab;

    .line 19
    new-instance v0, Lgbsdk/common/host/abix$ab;

    const-string v1, "PRELOAD_BATCH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lgbsdk/common/host/abix$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abix$ab;->oV:Lgbsdk/common/host/abix$ab;

    .line 20
    new-instance v0, Lgbsdk/common/host/abix$ab;

    const-string v1, "REFRESH_BATCH"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lgbsdk/common/host/abix$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abix$ab;->oW:Lgbsdk/common/host/abix$ab;

    const/4 v1, 0x7

    new-array v1, v1, [Lgbsdk/common/host/abix$ab;

    .line 13
    sget-object v9, Lgbsdk/common/host/abix$ab;->oQ:Lgbsdk/common/host/abix$ab;

    aput-object v9, v1, v2

    sget-object v2, Lgbsdk/common/host/abix$ab;->oR:Lgbsdk/common/host/abix$ab;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abix$ab;->oS:Lgbsdk/common/host/abix$ab;

    aput-object v2, v1, v4

    sget-object v2, Lgbsdk/common/host/abix$ab;->oT:Lgbsdk/common/host/abix$ab;

    aput-object v2, v1, v5

    sget-object v2, Lgbsdk/common/host/abix$ab;->oU:Lgbsdk/common/host/abix$ab;

    aput-object v2, v1, v6

    sget-object v2, Lgbsdk/common/host/abix$ab;->oV:Lgbsdk/common/host/abix$ab;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lgbsdk/common/host/abix$ab;->oX:[Lgbsdk/common/host/abix$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abix$ab;
    .locals 1

    .line 13
    const-class v0, Lgbsdk/common/host/abix$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abix$ab;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abix$ab;
    .locals 1

    .line 13
    sget-object v0, Lgbsdk/common/host/abix$ab;->oX:[Lgbsdk/common/host/abix$ab;

    invoke-virtual {v0}, [Lgbsdk/common/host/abix$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abix$ab;

    return-object v0
.end method
