.class public final enum Lgbsdk/common/host/abiz$ab;
.super Ljava/lang/Enum;
.source "DnsResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abiz$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum pb:Lgbsdk/common/host/abiz$ab;

.field public static final enum pc:Lgbsdk/common/host/abiz$ab;

.field public static final enum pd:Lgbsdk/common/host/abiz$ab;

.field public static final enum pe:Lgbsdk/common/host/abiz$ab;

.field public static final enum pf:Lgbsdk/common/host/abiz$ab;

.field public static final enum pg:Lgbsdk/common/host/abiz$ab;

.field public static final enum ph:Lgbsdk/common/host/abiz$ab;

.field private static final synthetic pi:[Lgbsdk/common/host/abiz$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 9
    new-instance v0, Lgbsdk/common/host/abiz$ab;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgbsdk/common/host/abiz$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abiz$ab;->pb:Lgbsdk/common/host/abiz$ab;

    .line 10
    new-instance v0, Lgbsdk/common/host/abiz$ab;

    const-string v1, "HTTPDNS_CACHE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lgbsdk/common/host/abiz$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abiz$ab;->pc:Lgbsdk/common/host/abiz$ab;

    .line 11
    new-instance v0, Lgbsdk/common/host/abiz$ab;

    const-string v1, "HTTPDNS_STALE_CACHE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lgbsdk/common/host/abiz$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abiz$ab;->pd:Lgbsdk/common/host/abiz$ab;

    .line 12
    new-instance v0, Lgbsdk/common/host/abiz$ab;

    const-string v1, "HTTPDNS_REQUEST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lgbsdk/common/host/abiz$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abiz$ab;->pe:Lgbsdk/common/host/abiz$ab;

    .line 13
    new-instance v0, Lgbsdk/common/host/abiz$ab;

    const-string v1, "LOCALDNS_REQUEST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lgbsdk/common/host/abiz$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abiz$ab;->pf:Lgbsdk/common/host/abiz$ab;

    .line 14
    new-instance v0, Lgbsdk/common/host/abiz$ab;

    const-string v1, "LOCALDNS_CACHE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lgbsdk/common/host/abiz$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abiz$ab;->pg:Lgbsdk/common/host/abiz$ab;

    .line 15
    new-instance v0, Lgbsdk/common/host/abiz$ab;

    const-string v1, "HARDCODE_IPS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lgbsdk/common/host/abiz$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abiz$ab;->ph:Lgbsdk/common/host/abiz$ab;

    const/4 v1, 0x7

    new-array v1, v1, [Lgbsdk/common/host/abiz$ab;

    .line 8
    sget-object v9, Lgbsdk/common/host/abiz$ab;->pb:Lgbsdk/common/host/abiz$ab;

    aput-object v9, v1, v2

    sget-object v2, Lgbsdk/common/host/abiz$ab;->pc:Lgbsdk/common/host/abiz$ab;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abiz$ab;->pd:Lgbsdk/common/host/abiz$ab;

    aput-object v2, v1, v4

    sget-object v2, Lgbsdk/common/host/abiz$ab;->pe:Lgbsdk/common/host/abiz$ab;

    aput-object v2, v1, v5

    sget-object v2, Lgbsdk/common/host/abiz$ab;->pf:Lgbsdk/common/host/abiz$ab;

    aput-object v2, v1, v6

    sget-object v2, Lgbsdk/common/host/abiz$ab;->pg:Lgbsdk/common/host/abiz$ab;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lgbsdk/common/host/abiz$ab;->pi:[Lgbsdk/common/host/abiz$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abiz$ab;
    .locals 1

    .line 8
    const-class v0, Lgbsdk/common/host/abiz$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abiz$ab;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abiz$ab;
    .locals 1

    .line 8
    sget-object v0, Lgbsdk/common/host/abiz$ab;->pi:[Lgbsdk/common/host/abiz$ab;

    invoke-virtual {v0}, [Lgbsdk/common/host/abiz$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abiz$ab;

    return-object v0
.end method
