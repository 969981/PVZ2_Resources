.class public final Lcom/tencent/mm/sdk/b/e;
.super Ljava/lang/Object;


# static fields
.field private static final G:[J

.field private static final GMT:Ljava/util/TimeZone;

.field private static final H:[J

.field private static final I:[C

.field private static final J:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/tencent/mm/sdk/b/e;->G:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/tencent/mm/sdk/b/e;->H:[J

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lcom/tencent/mm/sdk/b/e;->GMT:Ljava/util/TimeZone;

    const/16 v1, 0x9

    new-array v2, v1, [C

    fill-array-data v2, :array_2

    sput-object v2, Lcom/tencent/mm/sdk/b/e;->I:[C

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "&lt;"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "&gt;"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "&quot;"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "&apos;"

    aput-object v3, v1, v2

    const-string v2, "&amp;"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "&#x0D;"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "&#x0A;"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string v2, "&#x20;"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-string v2, "&#x09;"

    aput-object v2, v1, v0

    sput-object v1, Lcom/tencent/mm/sdk/b/e;->J:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x12c
        0xc8
        0x12c
        0xc8
    .end array-data

    :array_1
    .array-data 8
        0x12c
        0x32
        0x12c
        0x32
    .end array-data

    :array_2
    .array-data 2
        0x3cs
        0x3es
        0x22s
        0x27s
        0x26s
        0xds
        0xas
        0x20s
        0x9s
    .end array-data
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
