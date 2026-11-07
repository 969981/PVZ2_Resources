.class public final enum Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;
.super Ljava/lang/Enum;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/apm/common/utility/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

.field public static final enum MOBILE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

.field public static final enum MOBILE_2G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

.field public static final enum MOBILE_3G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

.field public static final enum MOBILE_3G_H:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

.field public static final enum MOBILE_3G_HP:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

.field public static final enum MOBILE_4G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

.field public static final enum MOBILE_5G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

.field public static final enum NONE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

.field public static final enum UNKNOWN:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

.field public static final enum WIFI:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

.field public static final enum WIFI_24GHZ:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

.field public static final enum WIFI_5GHZ:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 33
    new-instance v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->UNKNOWN:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 34
    new-instance v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    const-string v1, "NONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->NONE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 35
    new-instance v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    const-string v1, "MOBILE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 36
    new-instance v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    const-string v1, "MOBILE_2G"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_2G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 37
    new-instance v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    const-string v1, "MOBILE_3G"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_3G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 38
    new-instance v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    const-string v1, "WIFI"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->WIFI:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 39
    new-instance v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    const-string v1, "MOBILE_4G"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v7}, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_4G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 40
    new-instance v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    const-string v1, "MOBILE_5G"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v8}, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_5G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 41
    new-instance v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    const-string v1, "WIFI_24GHZ"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v9}, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->WIFI_24GHZ:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 42
    new-instance v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    const-string v1, "WIFI_5GHZ"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v10}, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->WIFI_5GHZ:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 43
    new-instance v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    const-string v1, "MOBILE_3G_H"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v11}, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_3G_H:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 44
    new-instance v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    const-string v1, "MOBILE_3G_HP"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v12}, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_3G_HP:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    .line 31
    sget-object v14, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->UNKNOWN:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    aput-object v14, v1, v2

    sget-object v2, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->NONE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_2G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_3G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->WIFI:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_4G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_5G:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->WIFI_24GHZ:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->WIFI_5GHZ:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->MOBILE_3G_H:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->$VALUES:[Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;
    .locals 1

    .line 31
    const-class v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;
    .locals 1

    .line 31
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->$VALUES:[Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    invoke-virtual {v0}, [Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->nativeInt:I

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 57
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->UNKNOWN:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->NONE:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
