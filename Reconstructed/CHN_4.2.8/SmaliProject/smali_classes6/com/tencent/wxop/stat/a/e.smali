.class public final enum Lcom/tencent/wxop/stat/a/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wxop/stat/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bA:Lcom/tencent/wxop/stat/a/e;

.field public static final enum bB:Lcom/tencent/wxop/stat/a/e;

.field public static final enum bC:Lcom/tencent/wxop/stat/a/e;

.field public static final enum bD:Lcom/tencent/wxop/stat/a/e;

.field public static final enum bE:Lcom/tencent/wxop/stat/a/e;

.field public static final enum bF:Lcom/tencent/wxop/stat/a/e;

.field private static final synthetic bH:[Lcom/tencent/wxop/stat/a/e;

.field public static final enum bx:Lcom/tencent/wxop/stat/a/e;

.field public static final enum by:Lcom/tencent/wxop/stat/a/e;

.field public static final enum bz:Lcom/tencent/wxop/stat/a/e;


# instance fields
.field private bG:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/tencent/wxop/stat/a/e;

    const-string v1, "PAGE_VIEW"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/wxop/stat/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/a/e;->bx:Lcom/tencent/wxop/stat/a/e;

    new-instance v1, Lcom/tencent/wxop/stat/a/e;

    const-string v2, "SESSION_ENV"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/wxop/stat/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/wxop/stat/a/e;->by:Lcom/tencent/wxop/stat/a/e;

    new-instance v2, Lcom/tencent/wxop/stat/a/e;

    const-string v3, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/wxop/stat/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tencent/wxop/stat/a/e;->bz:Lcom/tencent/wxop/stat/a/e;

    new-instance v3, Lcom/tencent/wxop/stat/a/e;

    const-string v4, "CUSTOM"

    const/16 v6, 0x3e8

    invoke-direct {v3, v4, v5, v6}, Lcom/tencent/wxop/stat/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/wxop/stat/a/e;->bA:Lcom/tencent/wxop/stat/a/e;

    new-instance v4, Lcom/tencent/wxop/stat/a/e;

    const/4 v5, 0x4

    const/16 v6, 0x3e9

    const-string v7, "ADDITION"

    invoke-direct {v4, v7, v5, v6}, Lcom/tencent/wxop/stat/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tencent/wxop/stat/a/e;->bB:Lcom/tencent/wxop/stat/a/e;

    new-instance v5, Lcom/tencent/wxop/stat/a/e;

    const/4 v6, 0x5

    const/16 v7, 0x3ea

    const-string v8, "MONITOR_STAT"

    invoke-direct {v5, v8, v6, v7}, Lcom/tencent/wxop/stat/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/wxop/stat/a/e;->bC:Lcom/tencent/wxop/stat/a/e;

    new-instance v6, Lcom/tencent/wxop/stat/a/e;

    const/4 v7, 0x6

    const/16 v8, 0x3eb

    const-string v9, "MTA_GAME_USER"

    invoke-direct {v6, v9, v7, v8}, Lcom/tencent/wxop/stat/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/tencent/wxop/stat/a/e;->bD:Lcom/tencent/wxop/stat/a/e;

    new-instance v7, Lcom/tencent/wxop/stat/a/e;

    const/4 v8, 0x7

    const/16 v9, 0x3ec

    const-string v10, "NETWORK_MONITOR"

    invoke-direct {v7, v10, v8, v9}, Lcom/tencent/wxop/stat/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tencent/wxop/stat/a/e;->bE:Lcom/tencent/wxop/stat/a/e;

    new-instance v8, Lcom/tencent/wxop/stat/a/e;

    const/16 v9, 0x8

    const/16 v10, 0x3ed

    const-string v11, "NETWORK_DETECTOR"

    invoke-direct {v8, v11, v9, v10}, Lcom/tencent/wxop/stat/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/tencent/wxop/stat/a/e;->bF:Lcom/tencent/wxop/stat/a/e;

    filled-new-array/range {v0 .. v8}, [Lcom/tencent/wxop/stat/a/e;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/a/e;->bH:[Lcom/tencent/wxop/stat/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/wxop/stat/a/e;->bG:I

    return-void
.end method


# virtual methods
.method public final r()I
    .locals 1

    iget v0, p0, Lcom/tencent/wxop/stat/a/e;->bG:I

    return v0
.end method
