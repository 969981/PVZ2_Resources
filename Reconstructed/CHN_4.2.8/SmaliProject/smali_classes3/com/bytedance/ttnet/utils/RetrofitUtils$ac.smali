.class public final enum Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;
.super Ljava/lang/Enum;
.source "RetrofitUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttnet/utils/RetrofitUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aKw:Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

.field public static final enum aKx:Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

.field public static final enum aKy:Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

.field private static final synthetic aKz:[Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 62
    new-instance v0, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;->aKw:Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

    .line 63
    new-instance v0, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

    const-string v1, "GZIP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;->aKx:Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

    .line 64
    new-instance v0, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

    const-string v1, "DEFLATER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;->aKy:Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

    .line 61
    sget-object v5, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;->aKw:Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

    aput-object v5, v1, v2

    sget-object v2, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;->aKx:Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;->aKz:[Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;
    .locals 1

    .line 61
    const-class v0, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;
    .locals 1

    .line 61
    sget-object v0, Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;->aKz:[Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

    invoke-virtual {v0}, [Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ttnet/utils/RetrofitUtils$ac;

    return-object v0
.end method
