.class public final Lcn/sharesdk/framework/utils/QRCodeUtil/n;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;,
        Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[Lcn/sharesdk/framework/utils/QRCodeUtil/n;


# instance fields
.field private final c:I

.field private final d:[I

.field private final e:[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    .line 14
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->a:[I

    .line 24
    invoke-static {}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->d()[Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->b:[Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    return-void

    :array_0
    .array-data 4
        0x7c94
        0x85bc
        0x9a99
        0xa4d3
        0xbbf6
        0xc762
        0xd847
        0xe60d
        0xf928
        0x10b78
        0x1145d
        0x12a17
        0x13532
        0x149a6
        0x15683
        0x168c9
        0x177ec
        0x18ec4
        0x191e1
        0x1afab
        0x1b08e
        0x1cc1a
        0x1d33f
        0x1ed75
        0x1f250
        0x209d5
        0x216f0
        0x228ba
        0x2379f
        0x24b0b
        0x2542e
        0x26a64
        0x27541
        0x28c69
    .end array-data
.end method

.method private varargs constructor <init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->c:I

    .line 35
    iput-object p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->d:[I

    .line 36
    iput-object p3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->e:[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 p1, 0x0

    .line 38
    aget-object p2, p3, p1

    invoke-virtual {p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;->a()I

    move-result p2

    .line 39
    aget-object p3, p3, p1

    invoke-virtual {p3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;->d()[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    move-result-object p3

    .line 40
    array-length v0, p3

    move v1, p1

    :goto_0
    if-ge p1, v0, :cond_0

    aget-object v2, p3, p1

    .line 41
    invoke-virtual {v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;->a()I

    move-result v3

    invoke-virtual {v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;->b()I

    move-result v2

    add-int/2addr v2, p2

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 43
    :cond_0
    iput v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->f:I

    return-void
.end method

.method public static a(I)Lcn/sharesdk/framework/utils/QRCodeUtil/n;
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x28

    if-gt p0, v1, :cond_0

    .line 88
    sget-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->b:[Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 86
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static d()[Lcn/sharesdk/framework/utils/QRCodeUtil/n;
    .locals 50

    .line 226
    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object v0, v1

    const/4 v15, 0x0

    new-array v2, v15, [I

    const/4 v14, 0x4

    new-array v3, v14, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v13, 0x1

    new-array v5, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0x13

    invoke-direct {v6, v13, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v6, v5, v15

    const/4 v11, 0x7

    invoke-direct {v4, v11, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v4, v3, v15

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v5, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v10, 0x10

    invoke-direct {v6, v13, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v6, v5, v15

    const/16 v6, 0xa

    invoke-direct {v4, v6, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v4, v3, v13

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v5, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v9, 0xd

    invoke-direct {v6, v13, v9}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v6, v5, v15

    invoke-direct {v4, v9, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v8, 0x2

    aput-object v4, v3, v8

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v5, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x9

    invoke-direct {v6, v13, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v6, v5, v15

    const/16 v7, 0x11

    invoke-direct {v4, v7, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v6, 0x3

    aput-object v4, v3, v6

    invoke-direct {v1, v13, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object v1, v2

    const/16 v3, 0x12

    const/4 v5, 0x6

    filled-new-array {v5, v3}, [I

    move-result-object v3

    new-array v4, v14, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v12, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v9, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x22

    invoke-direct {v9, v13, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v9, v12, v15

    const/16 v7, 0xa

    invoke-direct {v11, v7, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v11, v4, v15

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v9, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0x1c

    invoke-direct {v11, v13, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v11, v9, v15

    invoke-direct {v7, v10, v9}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v7, v4, v13

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v9, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0x16

    invoke-direct {v11, v13, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v11, v9, v15

    invoke-direct {v7, v14, v9}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v7, v4, v8

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v9, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    invoke-direct {v11, v13, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v11, v9, v15

    invoke-direct {v7, v12, v9}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v7, v4, v6

    invoke-direct {v2, v8, v3, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object v2, v3

    filled-new-array {v5, v14}, [I

    move-result-object v4

    const/4 v7, 0x4

    new-array v9, v7, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v11, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v12, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v10, 0x37

    invoke-direct {v12, v13, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v12, v11, v15

    const/16 v12, 0xf

    invoke-direct {v7, v12, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v7, v9, v15

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v10, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0x2c

    invoke-direct {v11, v13, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v11, v10, v15

    const/16 v12, 0x1a

    invoke-direct {v7, v12, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v7, v9, v13

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v10, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x11

    invoke-direct {v11, v8, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v11, v10, v15

    const/16 v11, 0x12

    invoke-direct {v7, v11, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v7, v9, v8

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v10, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0xd

    invoke-direct {v11, v8, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v11, v10, v15

    invoke-direct {v7, v14, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v7, v9, v6

    invoke-direct {v3, v6, v4, v9}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object v3, v4

    const/4 v5, 0x6

    filled-new-array {v5, v12}, [I

    move-result-object v7

    const/4 v5, 0x4

    new-array v9, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v10, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0x50

    invoke-direct {v11, v13, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v11, v10, v15

    const/16 v11, 0x14

    invoke-direct {v5, v11, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v5, v9, v15

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v10, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0x20

    invoke-direct {v11, v8, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v11, v10, v15

    const/16 v11, 0x12

    invoke-direct {v5, v11, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v5, v9, v13

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v10, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0x18

    invoke-direct {v11, v8, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v11, v10, v15

    invoke-direct {v5, v12, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v5, v9, v8

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v10, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0x9

    const/4 v8, 0x4

    invoke-direct {v11, v8, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v11, v10, v15

    const/16 v11, 0x10

    invoke-direct {v5, v11, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v5, v9, v6

    invoke-direct {v4, v8, v7, v9}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object v4, v5

    const/16 v14, 0x1e

    const/4 v7, 0x6

    filled-new-array {v7, v14}, [I

    move-result-object v9

    new-array v10, v8, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v11, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0x6c

    invoke-direct {v7, v13, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v7, v11, v15

    invoke-direct {v8, v12, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v8, v10, v15

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v8, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0x2b

    const/4 v12, 0x2

    invoke-direct {v11, v12, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v11, v8, v15

    const/16 v11, 0x18

    invoke-direct {v7, v11, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v7, v10, v13

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v8, v12, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0xf

    invoke-direct {v11, v12, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v11, v8, v15

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0x10

    invoke-direct {v11, v12, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v11, v8, v13

    const/16 v11, 0x12

    invoke-direct {v7, v11, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v7, v10, v12

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v8, v12, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0xb

    invoke-direct {v11, v12, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v11, v8, v15

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0xc

    invoke-direct {v11, v12, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v11, v8, v13

    const/16 v11, 0x16

    invoke-direct {v7, v11, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v7, v10, v6

    const/4 v14, 0x5

    invoke-direct {v5, v14, v9, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    const/16 v8, 0x11

    const/4 v12, 0x6

    move-object v5, v7

    const/16 v9, 0x22

    filled-new-array {v12, v9}, [I

    move-result-object v9

    const/4 v10, 0x4

    new-array v11, v10, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v8, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v14, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0x44

    const/4 v6, 0x2

    invoke-direct {v14, v6, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v14, v8, v15

    const/16 v6, 0x12

    invoke-direct {v10, v6, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v10, v11, v15

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v8, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0x1b

    const/4 v14, 0x4

    invoke-direct {v10, v14, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v10, v8, v15

    const/16 v10, 0x10

    invoke-direct {v6, v10, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v6, v11, v13

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v8, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0x13

    invoke-direct {v10, v14, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v10, v8, v15

    const/16 v10, 0x18

    invoke-direct {v6, v10, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v8, 0x2

    aput-object v6, v11, v8

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v8, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0xf

    invoke-direct {v10, v14, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v10, v8, v15

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v8, 0x3

    aput-object v6, v11, v8

    const/4 v10, 0x6

    invoke-direct {v7, v10, v9, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move v12, v8

    move-object v6, v7

    const/16 v8, 0x26

    const/16 v9, 0x16

    filled-new-array {v10, v9, v8}, [I

    move-result-object v8

    new-array v9, v14, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v11, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v14, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0x4e

    const/4 v13, 0x2

    invoke-direct {v14, v13, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v14, v11, v15

    const/16 v12, 0x14

    invoke-direct {v10, v12, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v10, v9, v15

    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v11, 0x1

    new-array v12, v11, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v13, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0x1f

    const/4 v11, 0x4

    invoke-direct {v13, v11, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v13, v12, v15

    const/16 v11, 0x12

    invoke-direct {v10, v11, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v11, 0x1

    aput-object v10, v9, v11

    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v12, 0x2

    new-array v13, v12, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v14, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v11, 0xe

    invoke-direct {v14, v12, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v14, v13, v15

    new-instance v14, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/4 v11, 0x4

    const/16 v15, 0xf

    invoke-direct {v14, v11, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const/16 v14, 0x12

    invoke-direct {v10, v14, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v10, v9, v12

    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v13, v12, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v12, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0xd

    invoke-direct {v12, v11, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v11, 0x0

    aput-object v12, v13, v11

    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0xe

    invoke-direct {v11, v15, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v11, v13, v15

    const/16 v11, 0x1a

    invoke-direct {v10, v11, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v11, 0x3

    aput-object v10, v9, v11

    const/4 v11, 0x7

    invoke-direct {v7, v11, v8, v9}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    const/16 v14, 0x11

    move-object v7, v8

    const/16 v9, 0x2a

    const/4 v10, 0x6

    const/16 v12, 0x18

    filled-new-array {v10, v12, v9}, [I

    move-result-object v9

    const/4 v10, 0x4

    new-array v13, v10, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v11, v15, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v15, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0x61

    const/4 v12, 0x2

    invoke-direct {v15, v12, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v14, 0x0

    aput-object v15, v11, v14

    const/16 v15, 0x18

    invoke-direct {v10, v15, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v10, v13, v14

    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v11, v12, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v15, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    move-object/from16 v40, v0

    const/16 v0, 0x26

    invoke-direct {v15, v12, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v15, v11, v14

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0x27

    invoke-direct {v0, v12, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v14, 0x1

    aput-object v0, v11, v14

    const/16 v0, 0x16

    invoke-direct {v10, v0, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v10, v13, v14

    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v11, v12, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v15, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v0, 0x12

    const/4 v14, 0x4

    invoke-direct {v15, v14, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v0, 0x0

    aput-object v15, v11, v0

    new-instance v15, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v0, 0x13

    invoke-direct {v15, v12, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v0, 0x1

    aput-object v15, v11, v0

    const/16 v15, 0x16

    invoke-direct {v10, v15, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v10, v13, v12

    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v11, v12, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v15, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v0, 0xe

    invoke-direct {v15, v14, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v14, 0x0

    aput-object v15, v11, v14

    new-instance v14, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v15, 0xf

    invoke-direct {v14, v12, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v15, 0x1

    aput-object v14, v11, v15

    const/16 v14, 0x1a

    invoke-direct {v10, v14, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v11, 0x3

    aput-object v10, v13, v11

    const/16 v10, 0x8

    invoke-direct {v8, v10, v9, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v9, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move v13, v12

    move-object v8, v9

    const/16 v12, 0x2e

    const/4 v10, 0x6

    filled-new-array {v10, v14, v12}, [I

    move-result-object v11

    const/4 v10, 0x4

    new-array v14, v10, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v0, v15, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v15, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0x74

    invoke-direct {v15, v13, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v12, 0x0

    aput-object v15, v0, v12

    const/16 v15, 0x1e

    invoke-direct {v10, v15, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v10, v14, v12

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v10, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v15, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v13, 0x24

    move-object/from16 v41, v1

    const/4 v1, 0x3

    invoke-direct {v15, v1, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v15, v10, v12

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v13, 0x25

    const/4 v15, 0x2

    invoke-direct {v1, v15, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v13, 0x1

    aput-object v1, v10, v13

    const/16 v1, 0x16

    invoke-direct {v0, v1, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v0, v14, v13

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v1, v15, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v13, 0x10

    const/4 v15, 0x4

    invoke-direct {v10, v15, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v10, v1, v12

    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0x11

    invoke-direct {v10, v15, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v12, 0x1

    aput-object v10, v1, v12

    const/16 v10, 0x14

    invoke-direct {v0, v10, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v1, 0x2

    aput-object v0, v14, v1

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v10, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0xc

    invoke-direct {v1, v15, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v12, 0x0

    aput-object v1, v10, v12

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0xd

    invoke-direct {v1, v15, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v13, 0x1

    aput-object v1, v10, v13

    const/16 v1, 0x18

    invoke-direct {v0, v1, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v1, 0x3

    aput-object v0, v14, v1

    const/16 v0, 0x9

    invoke-direct {v9, v0, v11, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move v1, v12

    move-object v9, v0

    const/16 v10, 0x32

    const/4 v11, 0x6

    const/16 v12, 0x1c

    filled-new-array {v11, v12, v10}, [I

    move-result-object v10

    new-array v11, v15, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v12, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v13, 0x2

    new-array v14, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v15, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v1, 0x44

    invoke-direct {v15, v13, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v1, 0x0

    aput-object v15, v14, v1

    new-instance v15, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v1, 0x45

    invoke-direct {v15, v13, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v1, 0x1

    aput-object v15, v14, v1

    const/16 v1, 0x12

    invoke-direct {v12, v1, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v1, 0x0

    aput-object v12, v11, v1

    new-instance v12, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v14, v13, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v13, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v15, 0x2b

    move-object/from16 v42, v2

    const/4 v2, 0x4

    invoke-direct {v13, v2, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v13, v14, v1

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v13, 0x2c

    const/4 v15, 0x1

    invoke-direct {v2, v15, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v2, v14, v15

    const/16 v2, 0x1a

    invoke-direct {v12, v2, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v12, v11, v15

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v12, 0x2

    new-array v13, v12, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v14, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/4 v12, 0x6

    const/16 v15, 0x13

    invoke-direct {v14, v12, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v14, v13, v1

    new-instance v14, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v15, 0x14

    const/4 v1, 0x2

    invoke-direct {v14, v1, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const/16 v14, 0x18

    invoke-direct {v2, v14, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v2, v11, v1

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v13, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v14, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v15, 0xf

    invoke-direct {v14, v12, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v12, 0x0

    aput-object v14, v13, v12

    new-instance v12, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0x10

    invoke-direct {v12, v1, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v1, 0x1

    aput-object v12, v13, v1

    const/16 v12, 0x1c

    invoke-direct {v2, v12, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v12, 0x3

    aput-object v2, v11, v12

    const/16 v2, 0xa

    invoke-direct {v0, v2, v10, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move v2, v14

    move-object v10, v0

    const/16 v11, 0x36

    const/4 v12, 0x6

    const/16 v13, 0x1e

    filled-new-array {v12, v13, v11}, [I

    move-result-object v11

    const/4 v12, 0x4

    new-array v13, v12, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v14, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v15, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v2, 0x51

    invoke-direct {v1, v12, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v15, v2

    const/16 v1, 0x14

    invoke-direct {v14, v1, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v14, v13, v2

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v12, 0x2

    new-array v14, v12, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v12, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v15, 0x32

    move-object/from16 v43, v3

    const/4 v3, 0x1

    invoke-direct {v12, v3, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v12, v14, v2

    new-instance v12, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v15, 0x33

    const/4 v2, 0x4

    invoke-direct {v12, v2, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v12, v14, v3

    const/16 v12, 0x1e

    invoke-direct {v1, v12, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v13, v3

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v12, 0x2

    new-array v14, v12, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v15, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0x16

    invoke-direct {v15, v2, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v12, 0x0

    aput-object v15, v14, v12

    new-instance v12, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v15, 0x17

    invoke-direct {v12, v2, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v12, v14, v3

    const/16 v2, 0x1c

    invoke-direct {v1, v2, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v2, 0x2

    aput-object v1, v13, v2

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v3, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0xc

    const/4 v14, 0x3

    invoke-direct {v2, v14, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v12, 0x0

    aput-object v2, v3, v12

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0x8

    const/16 v15, 0xd

    invoke-direct {v2, v12, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v12, 0x1

    aput-object v2, v3, v12

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v13, v14

    const/16 v1, 0xb

    invoke-direct {v0, v1, v11, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    const/4 v1, 0x7

    const/16 v2, 0xe

    move-object v11, v0

    const/16 v3, 0x20

    const/16 v12, 0x3a

    const/4 v13, 0x6

    filled-new-array {v13, v3, v12}, [I

    move-result-object v3

    const/4 v12, 0x4

    new-array v13, v12, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v12, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v14, 0x2

    new-array v15, v14, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v2, 0x5c

    invoke-direct {v1, v14, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v15, v2

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v2, 0x5d

    invoke-direct {v1, v14, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v15, v2

    const/16 v1, 0x18

    invoke-direct {v12, v1, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v1, 0x0

    aput-object v12, v13, v1

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v12, v14, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v15, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0x24

    move-object/from16 v44, v4

    const/4 v4, 0x6

    invoke-direct {v15, v4, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v15, v12, v1

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x25

    const/4 v14, 0x2

    invoke-direct {v1, v14, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x1

    aput-object v1, v12, v4

    const/16 v1, 0x16

    invoke-direct {v2, v1, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v2, v13, v4

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v2, v14, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v12, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v15, 0x14

    const/4 v14, 0x4

    invoke-direct {v12, v14, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v14, 0x0

    aput-object v12, v2, v14

    new-instance v12, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v15, 0x15

    const/4 v14, 0x6

    invoke-direct {v12, v14, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v12, v2, v4

    const/16 v12, 0x1a

    invoke-direct {v1, v12, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v2, 0x2

    aput-object v1, v13, v2

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v15, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/4 v12, 0x7

    const/16 v14, 0xe

    invoke-direct {v2, v12, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v12, 0x0

    aput-object v2, v15, v12

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v12, 0xf

    const/4 v14, 0x4

    invoke-direct {v2, v14, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v2, v15, v4

    const/16 v2, 0x1c

    invoke-direct {v1, v2, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v1, v13, v4

    const/16 v1, 0xc

    invoke-direct {v0, v1, v3, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move v15, v12

    const/16 v1, 0x2e

    const/4 v3, 0x6

    const/16 v13, 0x1a

    move/from16 v49, v4

    move v4, v2

    move/from16 v2, v49

    move-object v12, v0

    const/16 v4, 0x22

    const/16 v15, 0x3e

    filled-new-array {v3, v4, v15}, [I

    move-result-object v4

    new-array v15, v14, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v3, 0x1

    new-array v2, v3, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v13, 0x6b

    invoke-direct {v3, v14, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v13, 0x0

    aput-object v3, v2, v13

    const/16 v3, 0x1a

    invoke-direct {v1, v3, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v15, v13

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v2, 0x2

    new-array v14, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v3, 0x8

    move-object/from16 v45, v5

    const/16 v5, 0x25

    invoke-direct {v2, v3, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v2, v14, v13

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v3, 0x26

    const/4 v5, 0x1

    invoke-direct {v2, v5, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v2, v14, v5

    const/16 v2, 0x16

    invoke-direct {v1, v2, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v15, v5

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v2, 0x2

    new-array v3, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v13, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v14, 0x8

    const/16 v2, 0x14

    invoke-direct {v13, v14, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v2, 0x0

    aput-object v13, v3, v2

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v13, 0x15

    const/4 v14, 0x4

    invoke-direct {v2, v14, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v2, v3, v5

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v2, 0x2

    aput-object v1, v15, v2

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v3, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v13, 0xc

    const/16 v14, 0xb

    invoke-direct {v5, v13, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v13, 0x0

    aput-object v5, v3, v13

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v13, 0xc

    const/4 v14, 0x4

    invoke-direct {v5, v14, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v13, 0x1

    aput-object v5, v3, v13

    const/16 v5, 0x16

    invoke-direct {v1, v5, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v3, 0x3

    aput-object v1, v15, v3

    const/16 v1, 0xd

    invoke-direct {v0, v1, v4, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move v1, v13

    const/16 v4, 0x1a

    move-object v13, v0

    const/16 v15, 0x42

    const/16 v1, 0x2e

    const/4 v5, 0x6

    filled-new-array {v5, v4, v1, v15}, [I

    move-result-object v15

    new-array v1, v14, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v14, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v2, 0x73

    invoke-direct {v4, v3, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v2, 0x0

    aput-object v4, v14, v2

    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x74

    const/4 v2, 0x1

    invoke-direct {v3, v2, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v3, v14, v2

    const/16 v2, 0x1e

    invoke-direct {v5, v2, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v3, 0x0

    aput-object v5, v1, v3

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v14, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v2, 0x28

    move-object/from16 v46, v6

    const/4 v6, 0x4

    invoke-direct {v5, v6, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v5, v14, v3

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v3, 0x29

    const/4 v5, 0x5

    invoke-direct {v2, v5, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v3, 0x1

    aput-object v2, v14, v3

    const/16 v2, 0x18

    invoke-direct {v4, v2, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v4, v1, v3

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v14, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0xb

    const/16 v3, 0x10

    invoke-direct {v6, v4, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v3, 0x0

    aput-object v6, v14, v3

    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x11

    invoke-direct {v3, v5, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v5, 0x1

    aput-object v3, v14, v5

    const/16 v3, 0x14

    invoke-direct {v2, v3, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v5, v3, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0xb

    const/16 v14, 0xc

    invoke-direct {v3, v6, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v3, v5, v6

    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0xd

    const/4 v14, 0x5

    invoke-direct {v3, v14, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/16 v3, 0x18

    invoke-direct {v2, v3, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const/16 v2, 0xe

    invoke-direct {v0, v2, v15, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move v2, v4

    move v5, v14

    const/4 v1, 0x4

    const/16 v6, 0x1e

    move v4, v3

    const/16 v3, 0x16

    move-object v14, v0

    const/16 v15, 0x30

    const/16 v2, 0x46

    const/16 v4, 0x1a

    const/4 v6, 0x6

    filled-new-array {v6, v4, v15, v2}, [I

    move-result-object v2

    new-array v4, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v15, 0x2

    new-array v1, v15, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v15, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v3, 0x57

    invoke-direct {v15, v5, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v3, 0x0

    aput-object v15, v1, v3

    new-instance v15, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x58

    const/4 v3, 0x1

    invoke-direct {v15, v3, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v15, v1, v3

    const/16 v3, 0x16

    invoke-direct {v6, v3, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v1, 0x0

    aput-object v6, v4, v1

    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v15, 0x29

    move-object/from16 v47, v7

    const/4 v7, 0x5

    invoke-direct {v5, v7, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v5, v6, v1

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v15, 0x2a

    invoke-direct {v5, v7, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v15, 0x1

    aput-object v5, v6, v15

    const/16 v5, 0x18

    invoke-direct {v3, v5, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v3, v4, v15

    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v6, 0x2

    new-array v15, v6, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    invoke-direct {v6, v7, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v6, v15, v1

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x19

    const/4 v6, 0x7

    invoke-direct {v1, v6, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v1, v15, v6

    const/16 v1, 0x1e

    invoke-direct {v3, v1, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v1, 0x2

    aput-object v3, v4, v1

    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v6, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0xb

    const/16 v15, 0xc

    invoke-direct {v1, v7, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x0

    aput-object v1, v6, v7

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0xd

    const/4 v15, 0x7

    invoke-direct {v1, v15, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/16 v1, 0x18

    invoke-direct {v3, v1, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v1, 0x3

    aput-object v3, v4, v1

    const/16 v1, 0xf

    invoke-direct {v0, v1, v2, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move v2, v1

    const/4 v1, 0x0

    move-object v15, v0

    const/16 v3, 0x32

    const/16 v4, 0x4a

    const/4 v6, 0x6

    const/16 v7, 0x1a

    filled-new-array {v6, v7, v3, v4}, [I

    move-result-object v3

    const/4 v4, 0x4

    new-array v6, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v7, 0x2

    new-array v5, v7, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v2, 0x62

    move-object/from16 v48, v8

    const/4 v8, 0x5

    invoke-direct {v7, v8, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v7, v5, v1

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x63

    const/4 v8, 0x1

    invoke-direct {v2, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v2, v5, v8

    const/16 v2, 0x18

    invoke-direct {v4, v2, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v4, v6, v1

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x2d

    const/4 v8, 0x7

    invoke-direct {v7, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v7, v5, v1

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/4 v7, 0x3

    const/16 v8, 0x2e

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const/16 v4, 0x1c

    invoke-direct {v2, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v2, v6, v7

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0xf

    const/16 v7, 0x13

    invoke-direct {v8, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v5, v1

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x14

    const/4 v1, 0x2

    invoke-direct {v7, v1, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const/16 v7, 0x18

    invoke-direct {v2, v7, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v2, v6, v1

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v5, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/4 v7, 0x3

    invoke-direct {v1, v7, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v1, v5, v4

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x10

    const/16 v7, 0xd

    invoke-direct {v1, v7, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v1, v5, v8

    const/16 v1, 0x1e

    invoke-direct {v2, v1, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x3

    aput-object v2, v6, v5

    invoke-direct {v0, v4, v3, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v16, v0

    const/16 v2, 0x36

    const/16 v3, 0x4e

    const/4 v4, 0x6

    filled-new-array {v4, v1, v2, v3}, [I

    move-result-object v2

    const/4 v1, 0x4

    new-array v3, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x6b

    const/4 v7, 0x1

    invoke-direct {v4, v7, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x6c

    const/4 v6, 0x5

    invoke-direct {v4, v6, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v7

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x0

    aput-object v1, v3, v4

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0xa

    const/16 v7, 0x2e

    invoke-direct {v5, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v5, v6, v4

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x2f

    const/4 v8, 0x1

    invoke-direct {v5, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v5, v6, v8

    const/16 v5, 0x1c

    invoke-direct {v1, v5, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v8

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v6, 0x2

    new-array v7, v6, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x16

    invoke-direct {v6, v8, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v6, v7, v4

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x17

    const/16 v4, 0xf

    invoke-direct {v5, v4, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v5, v7, v8

    const/16 v5, 0x1c

    invoke-direct {v1, v5, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v6, 0x2

    aput-object v1, v3, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v7, v6, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0xe

    invoke-direct {v5, v6, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v5, v7, v6

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x11

    invoke-direct {v5, v6, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x1

    aput-object v5, v7, v4

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v1, v3, v4

    invoke-direct {v0, v6, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v17, v0

    const/16 v1, 0x38

    const/16 v2, 0x52

    const/4 v3, 0x6

    const/16 v4, 0x1e

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x78

    const/4 v7, 0x5

    invoke-direct {v4, v7, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x79

    const/4 v8, 0x1

    invoke-direct {v4, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v8

    const/16 v4, 0x1e

    invoke-direct {v2, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v2, v3, v6

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x9

    const/16 v8, 0x2b

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x2c

    const/4 v8, 0x4

    invoke-direct {v4, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const/16 v4, 0x1a

    invoke-direct {v2, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v2, v3, v7

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x11

    const/16 v7, 0x16

    invoke-direct {v8, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x17

    const/4 v8, 0x1

    invoke-direct {v4, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v8

    const/16 v4, 0x1c

    invoke-direct {v2, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x2

    aput-object v2, v3, v5

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v7, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0xe

    invoke-direct {v4, v5, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v7, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x13

    const/16 v6, 0xf

    invoke-direct {v4, v5, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v5, 0x1

    aput-object v4, v7, v5

    const/16 v4, 0x1c

    invoke-direct {v2, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/16 v2, 0x12

    invoke-direct {v0, v2, v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v18, v0

    const/16 v1, 0x3a

    const/16 v2, 0x56

    const/4 v3, 0x6

    const/16 v4, 0x1e

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x71

    const/4 v8, 0x3

    invoke-direct {v5, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x0

    aput-object v5, v6, v7

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x72

    invoke-direct {v5, v2, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v2, 0x1

    aput-object v5, v6, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v2, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v4, v3, v7

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x2c

    const/4 v8, 0x3

    invoke-direct {v4, v8, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v7

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0xb

    const/16 v7, 0x2d

    invoke-direct {v4, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/16 v4, 0x1a

    invoke-direct {v2, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v2, v3, v6

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v7, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x15

    const/16 v4, 0x11

    invoke-direct {v8, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v8, v7, v4

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x16

    const/4 v8, 0x4

    invoke-direct {v5, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v5, v7, v6

    const/16 v4, 0x1a

    invoke-direct {v2, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x2

    aput-object v2, v3, v5

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v7, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x9

    const/16 v4, 0xd

    invoke-direct {v5, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v5, v7, v4

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x10

    const/16 v8, 0xe

    invoke-direct {v4, v5, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v7, v6

    const/16 v4, 0x1a

    invoke-direct {v2, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/16 v2, 0x13

    invoke-direct {v0, v2, v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v19, v0

    const/16 v1, 0x3e

    const/16 v2, 0x5a

    const/16 v3, 0x22

    const/4 v4, 0x6

    filled-new-array {v4, v3, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x6b

    const/4 v7, 0x3

    invoke-direct {v4, v7, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x6c

    const/4 v8, 0x5

    invoke-direct {v4, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const/16 v4, 0x1c

    invoke-direct {v2, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v2, v3, v6

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x29

    const/4 v8, 0x3

    invoke-direct {v4, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x2a

    const/16 v8, 0xd

    invoke-direct {v4, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const/16 v4, 0x1a

    invoke-direct {v2, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v2, v3, v7

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0xf

    const/16 v7, 0x18

    invoke-direct {v8, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v5, v6

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x19

    const/4 v8, 0x5

    invoke-direct {v7, v8, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v7, v5, v6

    const/16 v7, 0x1e

    invoke-direct {v2, v7, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x2

    aput-object v2, v3, v5

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v7, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    invoke-direct {v5, v4, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v5, v7, v4

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0xa

    const/16 v8, 0x10

    invoke-direct {v4, v5, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v7, v6

    const/16 v4, 0x1c

    invoke-direct {v2, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x3

    aput-object v2, v3, v5

    const/16 v2, 0x14

    invoke-direct {v0, v2, v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v20, v0

    const/16 v1, 0x48

    const/16 v2, 0x5e

    const/16 v3, 0x32

    const/4 v5, 0x6

    filled-new-array {v5, v4, v3, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x74

    invoke-direct {v5, v2, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x0

    aput-object v5, v6, v7

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x75

    invoke-direct {v5, v2, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v2, 0x1

    aput-object v5, v6, v2

    const/16 v5, 0x1c

    invoke-direct {v4, v5, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v4, v3, v7

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v5, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x2a

    const/16 v2, 0x11

    invoke-direct {v6, v2, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v6, v5, v7

    const/16 v6, 0x1a

    invoke-direct {v4, v6, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v6, 0x2

    new-array v8, v6, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x16

    invoke-direct {v6, v2, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v6, v8, v7

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x17

    const/4 v6, 0x6

    invoke-direct {v2, v6, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v5, 0x1

    aput-object v2, v8, v5

    const/16 v2, 0x1c

    invoke-direct {v4, v2, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v2, 0x2

    aput-object v4, v3, v2

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v8, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x13

    const/16 v6, 0x10

    invoke-direct {v2, v5, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v2, v8, v7

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x11

    const/4 v6, 0x6

    invoke-direct {v2, v6, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v5, 0x1

    aput-object v2, v8, v5

    const/16 v2, 0x1e

    invoke-direct {v4, v2, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v2, 0x3

    aput-object v4, v3, v2

    const/16 v2, 0x15

    invoke-direct {v0, v2, v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v21, v0

    const/16 v1, 0x4a

    const/16 v2, 0x62

    const/16 v3, 0x32

    const/16 v4, 0x1a

    filled-new-array {v6, v4, v3, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x6f

    invoke-direct {v6, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v6, v5, v4

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x70

    const/4 v8, 0x7

    invoke-direct {v6, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/16 v6, 0x1c

    invoke-direct {v2, v6, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v2, v3, v4

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v5, v7, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x2e

    const/16 v7, 0x11

    invoke-direct {v8, v7, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v5, v4

    const/16 v6, 0x1c

    invoke-direct {v2, v6, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x1

    aput-object v2, v3, v5

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v6, 0x2

    new-array v7, v6, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x18

    const/4 v6, 0x7

    invoke-direct {v8, v6, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v7, v4

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x10

    const/16 v8, 0x19

    invoke-direct {v5, v6, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v5, v7, v6

    const/16 v5, 0x1e

    invoke-direct {v2, v5, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x2

    aput-object v2, v3, v5

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v5, v6, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x22

    const/16 v8, 0xd

    invoke-direct {v6, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v6, v5, v4

    const/16 v4, 0x18

    invoke-direct {v2, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/16 v2, 0x16

    invoke-direct {v0, v2, v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v22, v0

    const/16 v1, 0x4e

    const/16 v2, 0x66

    const/16 v3, 0x36

    const/4 v4, 0x6

    const/16 v5, 0x1e

    filled-new-array {v4, v5, v3, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x79

    invoke-direct {v5, v2, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x0

    aput-object v5, v6, v7

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x7a

    const/4 v2, 0x5

    invoke-direct {v5, v2, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v2, 0x1

    aput-object v5, v6, v2

    const/16 v5, 0x1e

    invoke-direct {v4, v5, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v4, v3, v7

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v2, 0x2f

    const/4 v5, 0x4

    invoke-direct {v8, v5, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v6, v7

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x30

    const/16 v7, 0xe

    invoke-direct {v2, v7, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v5, 0x1

    aput-object v2, v6, v5

    const/16 v2, 0x1c

    invoke-direct {v4, v2, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v4, v3, v5

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v6, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0xb

    const/16 v5, 0x18

    invoke-direct {v8, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v8, v6, v4

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x19

    invoke-direct {v5, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v8, 0x1

    aput-object v5, v6, v8

    const/16 v5, 0x1e

    invoke-direct {v2, v5, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v6, 0x2

    aput-object v2, v3, v6

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v5, v6, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0xf

    const/16 v8, 0x10

    invoke-direct {v6, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v6, v5, v4

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0xe

    invoke-direct {v4, v6, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/16 v4, 0x1e

    invoke-direct {v2, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/16 v2, 0x17

    invoke-direct {v0, v2, v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v23, v0

    const/16 v1, 0x50

    const/16 v2, 0x6a

    const/16 v3, 0x36

    const/4 v4, 0x6

    const/16 v5, 0x1c

    filled-new-array {v4, v5, v3, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v6, 0x2

    new-array v7, v6, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x75

    invoke-direct {v6, v4, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v6, v7, v4

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x76

    invoke-direct {v6, v2, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v2, 0x1

    aput-object v6, v7, v2

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v5, v3, v4

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v6, 0x2

    new-array v7, v6, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x2d

    const/4 v2, 0x6

    invoke-direct {v8, v2, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v7, v4

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0xe

    const/16 v8, 0x2e

    invoke-direct {v2, v6, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v2, v7, v6

    const/16 v2, 0x1c

    invoke-direct {v5, v2, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v5, v3, v6

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v7, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0xb

    const/16 v6, 0x18

    invoke-direct {v8, v5, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v7, v4

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x10

    const/16 v8, 0x19

    invoke-direct {v5, v6, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const/16 v5, 0x1e

    invoke-direct {v2, v5, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v7, 0x2

    aput-object v2, v3, v7

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v8, v7, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    invoke-direct {v7, v5, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v7, v8, v4

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/4 v6, 0x2

    const/16 v7, 0x11

    invoke-direct {v4, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v4, v8, v6

    invoke-direct {v2, v5, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/16 v2, 0x18

    invoke-direct {v0, v2, v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v24, v0

    const/16 v1, 0x54

    const/16 v2, 0x6e

    const/16 v3, 0x20

    const/16 v4, 0x3a

    const/4 v5, 0x6

    filled-new-array {v5, v3, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x8

    const/16 v8, 0x6a

    invoke-direct {v5, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x0

    aput-object v5, v6, v7

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x6b

    invoke-direct {v5, v2, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v2, 0x1

    aput-object v5, v6, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v2, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v4, v3, v7

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x8

    const/16 v8, 0x2f

    invoke-direct {v4, v6, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v7

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x30

    const/16 v8, 0xd

    invoke-direct {v4, v8, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/16 v4, 0x1c

    invoke-direct {v2, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v2, v3, v6

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/4 v4, 0x7

    const/16 v6, 0x18

    invoke-direct {v8, v4, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v5, v7

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x16

    const/16 v8, 0x19

    invoke-direct {v4, v6, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v8, 0x1

    aput-object v4, v5, v8

    const/16 v4, 0x1e

    invoke-direct {v2, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x2

    aput-object v2, v3, v5

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v4, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0xf

    invoke-direct {v5, v6, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v5, v4, v7

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x10

    const/16 v7, 0xd

    invoke-direct {v5, v7, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/16 v5, 0x1e

    invoke-direct {v2, v5, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/16 v2, 0x19

    invoke-direct {v0, v2, v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v25, v0

    const/16 v1, 0x56

    const/16 v2, 0x72

    const/16 v3, 0x3a

    const/4 v4, 0x6

    filled-new-array {v4, v5, v3, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0xa

    const/16 v8, 0x72

    invoke-direct {v6, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x73

    invoke-direct {v6, v4, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/16 v6, 0x1c

    invoke-direct {v2, v6, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v2, v3, v7

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x13

    const/16 v8, 0x2e

    invoke-direct {v4, v6, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v7

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/4 v6, 0x4

    const/16 v8, 0x2f

    invoke-direct {v4, v6, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/16 v4, 0x1c

    invoke-direct {v2, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v2, v3, v6

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v8, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x16

    invoke-direct {v5, v4, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v5, v8, v7

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x17

    const/4 v7, 0x6

    invoke-direct {v5, v7, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v5, v8, v6

    invoke-direct {v2, v4, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x2

    aput-object v2, v3, v4

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x21

    const/16 v8, 0x10

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x0

    aput-object v4, v5, v7

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/4 v7, 0x4

    const/16 v8, 0x11

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v6

    const/16 v4, 0x1e

    invoke-direct {v2, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/16 v2, 0x1a

    invoke-direct {v0, v2, v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v26, v0

    const/16 v1, 0x5a

    const/16 v2, 0x76

    const/16 v3, 0x22

    const/16 v4, 0x3e

    const/4 v5, 0x6

    filled-new-array {v5, v3, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x8

    const/16 v8, 0x7a

    invoke-direct {v5, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x0

    aput-object v5, v6, v7

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x7b

    invoke-direct {v5, v2, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v2, 0x1

    aput-object v5, v6, v2

    const/16 v5, 0x1e

    invoke-direct {v4, v5, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v4, v3, v7

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x2d

    const/16 v2, 0x16

    invoke-direct {v8, v2, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v6, v7

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/4 v5, 0x3

    const/16 v7, 0x2e

    invoke-direct {v2, v5, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v5, 0x1

    aput-object v2, v6, v5

    const/16 v2, 0x1c

    invoke-direct {v4, v2, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v4, v3, v5

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v6, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x8

    const/16 v4, 0x17

    invoke-direct {v7, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v7, v6, v4

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x18

    const/16 v8, 0x1a

    invoke-direct {v7, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v7, v6, v5

    const/16 v4, 0x1e

    invoke-direct {v2, v4, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v6, 0x2

    aput-object v2, v3, v6

    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v7, v6, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0xc

    const/16 v4, 0xf

    invoke-direct {v6, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v6, v7, v4

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x10

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v7, v5

    const/16 v4, 0x1e

    invoke-direct {v2, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/16 v2, 0x1b

    invoke-direct {v0, v2, v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v27, v0

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v1, 0x4

    new-array v3, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x75

    const/4 v7, 0x3

    invoke-direct {v4, v7, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0xa

    const/16 v8, 0x76

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x2d

    const/4 v8, 0x3

    invoke-direct {v4, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x17

    const/16 v8, 0x2e

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v7

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/4 v4, 0x4

    const/16 v7, 0x18

    invoke-direct {v8, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x1f

    const/16 v7, 0x19

    invoke-direct {v4, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x2

    aput-object v1, v3, v4

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0xb

    const/16 v7, 0xf

    invoke-direct {v4, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x1f

    const/16 v7, 0x10

    invoke-direct {v4, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/16 v1, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v28, v0

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v1, 0x4

    new-array v3, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x74

    const/4 v7, 0x7

    invoke-direct {v4, v7, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x75

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x15

    const/16 v8, 0x2d

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/4 v7, 0x7

    const/16 v8, 0x2e

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v7

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x17

    invoke-direct {v8, v7, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x25

    const/16 v6, 0x18

    invoke-direct {v4, v8, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v7

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x2

    aput-object v1, v3, v5

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0xf

    const/16 v8, 0x13

    invoke-direct {v5, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v5, v6, v4

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x10

    const/16 v8, 0x1a

    invoke-direct {v4, v8, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v6, v7

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/16 v1, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v29, v0

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v1, 0x4

    new-array v3, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x73

    const/4 v7, 0x5

    invoke-direct {v4, v7, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0xa

    const/16 v8, 0x74

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x13

    const/16 v8, 0x2f

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0xa

    const/16 v7, 0x30

    invoke-direct {v4, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x18

    const/16 v8, 0xf

    invoke-direct {v7, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v7, v5, v4

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x19

    invoke-direct {v7, v4, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v7, v5, v6

    const/16 v7, 0x1e

    invoke-direct {v1, v7, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x2

    aput-object v1, v3, v5

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v7, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x17

    invoke-direct {v5, v6, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v5, v7, v6

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x10

    invoke-direct {v5, v4, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x1

    aput-object v5, v7, v4

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x3

    aput-object v1, v3, v5

    invoke-direct {v0, v4, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v30, v0

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v1, 0x4

    new-array v3, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x73

    const/16 v7, 0xd

    invoke-direct {v4, v7, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x74

    const/4 v8, 0x3

    invoke-direct {v4, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x2e

    invoke-direct {v8, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v5, v6

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x1d

    const/16 v8, 0x2f

    invoke-direct {v6, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/16 v6, 0x1c

    invoke-direct {v1, v6, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v7

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x2a

    const/16 v4, 0x18

    invoke-direct {v6, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v6, v5, v4

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x19

    invoke-direct {v6, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v6, v5, v7

    const/16 v6, 0x1e

    invoke-direct {v1, v6, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x2

    aput-object v1, v3, v5

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v8, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x17

    const/16 v7, 0xf

    invoke-direct {v5, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v5, v8, v4

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x10

    const/16 v6, 0x1c

    invoke-direct {v4, v6, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v5, 0x1

    aput-object v4, v8, v5

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/16 v1, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v31, v0

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v1, 0x4

    new-array v3, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v4, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x73

    const/16 v7, 0x11

    invoke-direct {v5, v7, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/16 v5, 0x1e

    invoke-direct {v1, v5, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0xa

    const/16 v8, 0x2e

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x17

    const/16 v7, 0x2f

    invoke-direct {v4, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0xa

    const/16 v4, 0x18

    invoke-direct {v7, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v7, v5, v4

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x23

    const/16 v4, 0x19

    invoke-direct {v7, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v7, v5, v6

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x2

    aput-object v1, v3, v5

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v7, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0xf

    const/16 v8, 0x13

    invoke-direct {v5, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v5, v7, v4

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x23

    const/16 v8, 0x10

    invoke-direct {v4, v5, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v7, v6

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v32, v0

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v1, 0x4

    new-array v3, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x73

    const/16 v7, 0x11

    invoke-direct {v4, v7, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x74

    const/4 v8, 0x1

    invoke-direct {v4, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v8

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0xe

    const/16 v8, 0x2e

    invoke-direct {v7, v4, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v7, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x15

    const/16 v7, 0x2f

    invoke-direct {v4, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x1d

    const/16 v4, 0x18

    invoke-direct {v7, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v7, v5, v4

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x19

    const/16 v8, 0x13

    invoke-direct {v7, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v7, v5, v6

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x2

    aput-object v1, v3, v5

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v7, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0xb

    const/16 v4, 0xf

    invoke-direct {v5, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v5, v7, v4

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x10

    const/16 v8, 0x2e

    invoke-direct {v4, v8, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v7, v6

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/16 v1, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v33, v0

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x4

    new-array v4, v3, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x73

    const/16 v8, 0xd

    invoke-direct {v5, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x0

    aput-object v5, v6, v7

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x74

    invoke-direct {v5, v1, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v1, 0x1

    aput-object v5, v6, v1

    const/16 v5, 0x1e

    invoke-direct {v3, v5, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v3, v4, v7

    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v1, 0x2e

    const/16 v5, 0xe

    invoke-direct {v8, v5, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v6, v7

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x17

    const/16 v7, 0x2f

    invoke-direct {v1, v5, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v5, 0x1

    aput-object v1, v6, v5

    const/16 v1, 0x1c

    invoke-direct {v3, v1, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v3, v4, v5

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v3, 0x2

    new-array v6, v3, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x2c

    const/16 v3, 0x18

    invoke-direct {v7, v8, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v3, 0x0

    aput-object v7, v6, v3

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v3, 0x19

    const/4 v8, 0x7

    invoke-direct {v7, v8, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v7, v6, v5

    const/16 v3, 0x1e

    invoke-direct {v1, v3, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v6, 0x2

    aput-object v1, v4, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v7, v6, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x3b

    const/16 v3, 0x10

    invoke-direct {v6, v8, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v3, 0x0

    aput-object v6, v7, v3

    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x11

    invoke-direct {v3, v5, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v3, v7, v5

    const/16 v3, 0x1e

    invoke-direct {v1, v3, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v3, 0x3

    aput-object v1, v4, v3

    const/16 v1, 0x22

    invoke-direct {v0, v1, v2, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v34, v0

    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v1, 0x4

    new-array v3, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0xc

    const/16 v7, 0x79

    invoke-direct {v4, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x7a

    const/4 v8, 0x7

    invoke-direct {v4, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0xc

    const/16 v8, 0x2f

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x30

    const/16 v7, 0x1a

    invoke-direct {v4, v7, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x27

    const/16 v4, 0x18

    invoke-direct {v7, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v7, v5, v4

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x19

    const/16 v8, 0xe

    invoke-direct {v7, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v7, v5, v6

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x2

    aput-object v1, v3, v5

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v7, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0xf

    const/16 v8, 0x16

    invoke-direct {v5, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v5, v7, v4

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x29

    const/16 v8, 0x10

    invoke-direct {v4, v5, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v7, v6

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/16 v1, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v35, v0

    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/4 v1, 0x4

    new-array v3, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x79

    const/4 v7, 0x6

    invoke-direct {v4, v7, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x7a

    const/16 v7, 0xe

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/4 v7, 0x6

    const/16 v8, 0x2f

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x22

    const/16 v7, 0x30

    invoke-direct {v4, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x2e

    const/16 v8, 0x18

    invoke-direct {v7, v4, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v7, v5, v4

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0xa

    const/16 v4, 0x19

    invoke-direct {v7, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v7, v5, v6

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v5, 0x2

    aput-object v1, v3, v5

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v7, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0xf

    invoke-direct {v8, v5, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v8, v7, v4

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x40

    const/16 v8, 0x10

    invoke-direct {v4, v5, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v7, v6

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/16 v1, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v36, v0

    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/4 v1, 0x4

    new-array v3, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x7a

    const/16 v8, 0x11

    invoke-direct {v5, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x0

    aput-object v5, v6, v7

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x7b

    invoke-direct {v5, v1, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v1, 0x1

    aput-object v5, v6, v1

    const/16 v5, 0x1e

    invoke-direct {v4, v5, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v4, v3, v7

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x1d

    const/16 v1, 0x2e

    invoke-direct {v8, v5, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v6, v7

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0xe

    const/16 v8, 0x2f

    invoke-direct {v1, v5, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v5, 0x1

    aput-object v1, v6, v5

    const/16 v1, 0x1c

    invoke-direct {v4, v1, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v4, v3, v5

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v6, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x31

    const/16 v5, 0x18

    invoke-direct {v8, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v6, v7

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0xa

    const/16 v7, 0x19

    invoke-direct {v4, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v6, 0x2

    aput-object v1, v3, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v8, v6, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0xf

    invoke-direct {v6, v5, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v6, v8, v4

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x10

    const/16 v6, 0x2e

    invoke-direct {v4, v6, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v8, v7

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/16 v1, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v37, v0

    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/4 v1, 0x4

    new-array v3, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x7a

    invoke-direct {v5, v1, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v1, 0x0

    aput-object v5, v6, v1

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x12

    const/16 v8, 0x7b

    invoke-direct {v5, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const/16 v5, 0x1e

    invoke-direct {v4, v5, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v4, v3, v1

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0xd

    const/16 v7, 0x2e

    invoke-direct {v8, v5, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v8, v6, v1

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v5, 0x20

    const/16 v7, 0x2f

    invoke-direct {v1, v5, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v5, 0x1

    aput-object v1, v6, v5

    const/16 v1, 0x1c

    invoke-direct {v4, v1, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v4, v3, v5

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v6, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x30

    const/16 v4, 0x18

    invoke-direct {v7, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v7, v6, v4

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x19

    const/16 v8, 0xe

    invoke-direct {v7, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v7, v6, v5

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x2

    aput-object v1, v3, v4

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x2a

    const/16 v7, 0xf

    invoke-direct {v4, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x20

    const/16 v7, 0x10

    invoke-direct {v4, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/16 v1, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v38, v0

    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/4 v1, 0x4

    new-array v3, v1, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v5, 0x2

    new-array v6, v5, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x14

    const/16 v8, 0x75

    invoke-direct {v5, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x0

    aput-object v5, v6, v7

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x76

    invoke-direct {v5, v1, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v1, 0x1

    aput-object v5, v6, v1

    const/16 v1, 0x1e

    invoke-direct {v4, v1, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v4, v3, v7

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x28

    const/16 v8, 0x2f

    invoke-direct {v4, v6, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v7

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x30

    const/4 v7, 0x7

    invoke-direct {v4, v7, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/16 v4, 0x1c

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v1, v3, v6

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x2b

    const/16 v4, 0x18

    invoke-direct {v7, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v7, v5, v4

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v4, 0x19

    const/16 v8, 0x16

    invoke-direct {v7, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v7, v5, v6

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x2

    aput-object v1, v3, v4

    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0xa

    const/16 v7, 0xf

    invoke-direct {v4, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x43

    const/16 v7, 0x10

    invoke-direct {v4, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/16 v4, 0x1e

    invoke-direct {v1, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/16 v1, 0x27

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-object/from16 v39, v0

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    const/4 v2, 0x4

    new-array v2, v2, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x76

    const/16 v7, 0x13

    invoke-direct {v4, v7, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x77

    const/4 v8, 0x6

    invoke-direct {v4, v8, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const/16 v4, 0x1e

    invoke-direct {v3, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v3, v2, v6

    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x12

    const/16 v8, 0x2f

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v6

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x1f

    const/16 v7, 0x30

    invoke-direct {v4, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/16 v4, 0x1c

    invoke-direct {v3, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    aput-object v3, v2, v6

    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    const/4 v4, 0x2

    new-array v5, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v8, 0x22

    const/16 v4, 0x18

    invoke-direct {v7, v8, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v4, 0x0

    aput-object v7, v5, v4

    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v7, 0x22

    const/16 v8, 0x19

    invoke-direct {v4, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    aput-object v4, v5, v6

    const/16 v4, 0x1e

    invoke-direct {v3, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    new-array v4, v4, [Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x14

    const/16 v7, 0xf

    invoke-direct {v5, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;

    const/16 v6, 0x3d

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;-><init>(II)V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/16 v5, 0x1e

    invoke-direct {v3, v5, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;-><init>(I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$a;)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/16 v3, 0x28

    invoke-direct {v0, v3, v1, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;-><init>(I[I[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    move-object/from16 v5, v45

    move-object/from16 v6, v46

    move-object/from16 v7, v47

    move-object/from16 v8, v48

    filled-new-array/range {v0 .. v39}, [Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
    .end array-data

    :array_4
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
    .end array-data

    :array_7
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_8
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 47
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->c:I

    return v0
.end method

.method public a(Lcn/sharesdk/framework/utils/QRCodeUtil/f;)Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->e:[Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 55
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 59
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->c:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 219
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
