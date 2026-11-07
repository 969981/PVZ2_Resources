.class public final enum Lcom/tencent/wxop/stat/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wxop/stat/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aB:Lcom/tencent/wxop/stat/d;

.field public static final enum aC:Lcom/tencent/wxop/stat/d;

.field public static final enum aD:Lcom/tencent/wxop/stat/d;

.field public static final enum aE:Lcom/tencent/wxop/stat/d;

.field public static final enum aF:Lcom/tencent/wxop/stat/d;

.field public static final enum aG:Lcom/tencent/wxop/stat/d;

.field public static final enum aH:Lcom/tencent/wxop/stat/d;

.field private static final synthetic aJ:[Lcom/tencent/wxop/stat/d;


# instance fields
.field aI:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/tencent/wxop/stat/d;

    const-string v1, "INSTANT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/wxop/stat/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/d;->aB:Lcom/tencent/wxop/stat/d;

    new-instance v1, Lcom/tencent/wxop/stat/d;

    const-string v2, "ONLY_WIFI"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/wxop/stat/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/wxop/stat/d;->aC:Lcom/tencent/wxop/stat/d;

    new-instance v2, Lcom/tencent/wxop/stat/d;

    const-string v3, "BATCH"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/wxop/stat/d;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tencent/wxop/stat/d;->aD:Lcom/tencent/wxop/stat/d;

    new-instance v3, Lcom/tencent/wxop/stat/d;

    const-string v4, "APP_LAUNCH"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/tencent/wxop/stat/d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/wxop/stat/d;->aE:Lcom/tencent/wxop/stat/d;

    new-instance v4, Lcom/tencent/wxop/stat/d;

    const-string v5, "DEVELOPER"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/tencent/wxop/stat/d;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tencent/wxop/stat/d;->aF:Lcom/tencent/wxop/stat/d;

    new-instance v5, Lcom/tencent/wxop/stat/d;

    const-string v6, "PERIOD"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/tencent/wxop/stat/d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/wxop/stat/d;->aG:Lcom/tencent/wxop/stat/d;

    new-instance v6, Lcom/tencent/wxop/stat/d;

    const-string v7, "ONLY_WIFI_NO_CACHE"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lcom/tencent/wxop/stat/d;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/tencent/wxop/stat/d;->aH:Lcom/tencent/wxop/stat/d;

    filled-new-array/range {v0 .. v6}, [Lcom/tencent/wxop/stat/d;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/d;->aJ:[Lcom/tencent/wxop/stat/d;

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

    iput p3, p0, Lcom/tencent/wxop/stat/d;->aI:I

    return-void
.end method

.method public static a(I)Lcom/tencent/wxop/stat/d;
    .locals 5

    invoke-static {}, Lcom/tencent/wxop/stat/d;->values()[Lcom/tencent/wxop/stat/d;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/tencent/wxop/stat/d;->aI:I

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wxop/stat/d;
    .locals 1

    const-class v0, Lcom/tencent/wxop/stat/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wxop/stat/d;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wxop/stat/d;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/d;->aJ:[Lcom/tencent/wxop/stat/d;

    invoke-virtual {v0}, [Lcom/tencent/wxop/stat/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wxop/stat/d;

    return-object v0
.end method
