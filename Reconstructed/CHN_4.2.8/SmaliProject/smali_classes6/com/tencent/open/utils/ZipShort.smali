.class public final Lcom/tencent/open/utils/ZipShort;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/tencent/open/utils/ZipShort;->a:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/tencent/open/utils/ZipShort;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p2, 0x1

    .line 25
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    .line 26
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/open/utils/ZipShort;->a:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 47
    instance-of v1, p1, Lcom/tencent/open/utils/ZipShort;

    if-nez v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget v1, p0, Lcom/tencent/open/utils/ZipShort;->a:I

    check-cast p1, Lcom/tencent/open/utils/ZipShort;

    invoke-virtual {p1}, Lcom/tencent/open/utils/ZipShort;->getValue()I

    move-result p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getBytes()[B
    .locals 4

    .line 62
    iget v0, p0, Lcom/tencent/open/utils/ZipShort;->a:I

    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    const v2, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    const/4 v2, 0x2

    .line 63
    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    aput-byte v0, v2, v1

    return-object v2
.end method

.method public getValue()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/tencent/open/utils/ZipShort;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/tencent/open/utils/ZipShort;->a:I

    return v0
.end method
