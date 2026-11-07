.class public final enum Lgbsdk/common/host/abio;
.super Ljava/lang/Enum;
.source "OkHttp3RequestLog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abio;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum lS:Lgbsdk/common/host/abio;

.field public static final enum lT:Lgbsdk/common/host/abio;

.field public static final enum lU:Lgbsdk/common/host/abio;

.field public static final enum lV:Lgbsdk/common/host/abio;

.field public static final enum lW:Lgbsdk/common/host/abio;

.field public static final enum lX:Lgbsdk/common/host/abio;

.field public static final enum lY:Lgbsdk/common/host/abio;

.field public static final enum lZ:Lgbsdk/common/host/abio;

.field public static final enum ma:Lgbsdk/common/host/abio;

.field public static final enum mb:Lgbsdk/common/host/abio;

.field public static final enum mc:Lgbsdk/common/host/abio;

.field public static final enum md:Lgbsdk/common/host/abio;

.field public static final enum me:Lgbsdk/common/host/abio;

.field public static final enum mf:Lgbsdk/common/host/abio;

.field public static final enum mg:Lgbsdk/common/host/abio;

.field public static final enum mh:Lgbsdk/common/host/abio;

.field private static final synthetic mi:[Lgbsdk/common/host/abio;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 537
    new-instance v0, Lgbsdk/common/host/abio;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgbsdk/common/host/abio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abio;->lS:Lgbsdk/common/host/abio;

    .line 538
    new-instance v0, Lgbsdk/common/host/abio;

    const-string v1, "WAITING_FOR_STALLED_SOCKET_POOL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lgbsdk/common/host/abio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abio;->lT:Lgbsdk/common/host/abio;

    .line 539
    new-instance v0, Lgbsdk/common/host/abio;

    const-string v1, "WAITING_FOR_AVAILABLE_SOCKET"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lgbsdk/common/host/abio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abio;->lU:Lgbsdk/common/host/abio;

    .line 540
    new-instance v0, Lgbsdk/common/host/abio;

    const-string v1, "WAITING_FOR_DELEGATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lgbsdk/common/host/abio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abio;->lV:Lgbsdk/common/host/abio;

    .line 541
    new-instance v0, Lgbsdk/common/host/abio;

    const-string v1, "WAITING_FOR_CACHE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lgbsdk/common/host/abio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abio;->lW:Lgbsdk/common/host/abio;

    .line 542
    new-instance v0, Lgbsdk/common/host/abio;

    const-string v1, "WAITING_FOR_APPCACHE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lgbsdk/common/host/abio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abio;->lX:Lgbsdk/common/host/abio;

    .line 543
    new-instance v0, Lgbsdk/common/host/abio;

    const-string v1, "DOWNLOADING_PAC_FILE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lgbsdk/common/host/abio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abio;->lY:Lgbsdk/common/host/abio;

    .line 544
    new-instance v0, Lgbsdk/common/host/abio;

    const-string v1, "RESOLVING_PROXY_FOR_URL"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lgbsdk/common/host/abio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abio;->lZ:Lgbsdk/common/host/abio;

    .line 545
    new-instance v0, Lgbsdk/common/host/abio;

    const-string v1, "RESOLVING_HOST_IN_PAC_FILE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lgbsdk/common/host/abio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abio;->ma:Lgbsdk/common/host/abio;

    .line 546
    new-instance v0, Lgbsdk/common/host/abio;

    const-string v1, "ESTABLISHING_PROXY_TUNNEL"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lgbsdk/common/host/abio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abio;->mb:Lgbsdk/common/host/abio;

    .line 547
    new-instance v0, Lgbsdk/common/host/abio;

    const-string v1, "RESOLVING_HOST"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lgbsdk/common/host/abio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abio;->mc:Lgbsdk/common/host/abio;

    .line 548
    new-instance v0, Lgbsdk/common/host/abio;

    const-string v1, "CONNECTING"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lgbsdk/common/host/abio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abio;->md:Lgbsdk/common/host/abio;

    .line 549
    new-instance v0, Lgbsdk/common/host/abio;

    const-string v1, "SSL_HANDSHAKE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lgbsdk/common/host/abio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abio;->me:Lgbsdk/common/host/abio;

    .line 550
    new-instance v0, Lgbsdk/common/host/abio;

    const-string v1, "SENDING_REQUEST"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lgbsdk/common/host/abio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abio;->mf:Lgbsdk/common/host/abio;

    .line 551
    new-instance v0, Lgbsdk/common/host/abio;

    const-string v1, "WAITING_FOR_RESPONSE"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lgbsdk/common/host/abio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abio;->mg:Lgbsdk/common/host/abio;

    .line 552
    new-instance v0, Lgbsdk/common/host/abio;

    const-string v1, "READING_RESPONSE"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lgbsdk/common/host/abio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abio;->mh:Lgbsdk/common/host/abio;

    const/16 v1, 0x10

    new-array v1, v1, [Lgbsdk/common/host/abio;

    .line 536
    sget-object v16, Lgbsdk/common/host/abio;->lS:Lgbsdk/common/host/abio;

    aput-object v16, v1, v2

    sget-object v2, Lgbsdk/common/host/abio;->lT:Lgbsdk/common/host/abio;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abio;->lU:Lgbsdk/common/host/abio;

    aput-object v2, v1, v4

    sget-object v2, Lgbsdk/common/host/abio;->lV:Lgbsdk/common/host/abio;

    aput-object v2, v1, v5

    sget-object v2, Lgbsdk/common/host/abio;->lW:Lgbsdk/common/host/abio;

    aput-object v2, v1, v6

    sget-object v2, Lgbsdk/common/host/abio;->lX:Lgbsdk/common/host/abio;

    aput-object v2, v1, v7

    sget-object v2, Lgbsdk/common/host/abio;->lY:Lgbsdk/common/host/abio;

    aput-object v2, v1, v8

    sget-object v2, Lgbsdk/common/host/abio;->lZ:Lgbsdk/common/host/abio;

    aput-object v2, v1, v9

    sget-object v2, Lgbsdk/common/host/abio;->ma:Lgbsdk/common/host/abio;

    aput-object v2, v1, v10

    sget-object v2, Lgbsdk/common/host/abio;->mb:Lgbsdk/common/host/abio;

    aput-object v2, v1, v11

    sget-object v2, Lgbsdk/common/host/abio;->mc:Lgbsdk/common/host/abio;

    aput-object v2, v1, v12

    sget-object v2, Lgbsdk/common/host/abio;->md:Lgbsdk/common/host/abio;

    aput-object v2, v1, v13

    sget-object v2, Lgbsdk/common/host/abio;->me:Lgbsdk/common/host/abio;

    aput-object v2, v1, v14

    sget-object v2, Lgbsdk/common/host/abio;->mf:Lgbsdk/common/host/abio;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abio;->mg:Lgbsdk/common/host/abio;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lgbsdk/common/host/abio;->mi:[Lgbsdk/common/host/abio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 536
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abio;
    .locals 1

    .line 536
    const-class v0, Lgbsdk/common/host/abio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abio;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abio;
    .locals 1

    .line 536
    sget-object v0, Lgbsdk/common/host/abio;->mi:[Lgbsdk/common/host/abio;

    invoke-virtual {v0}, [Lgbsdk/common/host/abio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abio;

    return-object v0
.end method
