.class public final enum Lcom/bytedance/ads/convert/flat/i/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ads/convert/flat/i/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/ads/convert/flat/i/f;

.field public static final enum b:Lcom/bytedance/ads/convert/flat/i/f;

.field public static final synthetic c:[Lcom/bytedance/ads/convert/flat/i/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bytedance/ads/convert/flat/i/f;

    new-instance v1, Lcom/bytedance/ads/convert/flat/i/f;

    const-string v2, "APK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/bytedance/ads/convert/flat/i/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/ads/convert/flat/i/f;->a:Lcom/bytedance/ads/convert/flat/i/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/bytedance/ads/convert/flat/i/f;

    const-string v2, "Jump"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/ads/convert/flat/i/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/ads/convert/flat/i/f;->b:Lcom/bytedance/ads/convert/flat/i/f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/bytedance/ads/convert/flat/i/f;->c:[Lcom/bytedance/ads/convert/flat/i/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ads/convert/flat/i/f;
    .locals 1

    const-class v0, Lcom/bytedance/ads/convert/flat/i/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ads/convert/flat/i/f;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ads/convert/flat/i/f;
    .locals 1

    sget-object v0, Lcom/bytedance/ads/convert/flat/i/f;->c:[Lcom/bytedance/ads/convert/flat/i/f;

    invoke-virtual {v0}, [Lcom/bytedance/ads/convert/flat/i/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ads/convert/flat/i/f;

    return-object v0
.end method
