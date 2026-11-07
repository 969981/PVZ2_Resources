.class public final Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    .line 23
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static a(I)I
    .locals 2

    .line 173
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 174
    aget p0, v0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)I
    .locals 2

    .line 40
    invoke-static {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/d;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)I

    move-result v0

    .line 41
    invoke-static {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/d;->b(Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    invoke-static {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/d;->c(Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    invoke-static {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/d;->d(Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static a(Lcn/sharesdk/framework/utils/QRCodeUtil/b;Lcn/sharesdk/framework/utils/QRCodeUtil/f;Lcn/sharesdk/framework/utils/QRCodeUtil/n;Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 238
    invoke-static {p0, p1, p2, v2, p3}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/b;Lcn/sharesdk/framework/utils/QRCodeUtil/f;Lcn/sharesdk/framework/utils/QRCodeUtil/n;ILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    .line 239
    invoke-static {p3}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)I

    move-result v3

    if-ge v3, v0, :cond_0

    move v1, v2

    move v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static a(Lcn/sharesdk/framework/utils/QRCodeUtil/i;Lcn/sharesdk/framework/utils/QRCodeUtil/b;Lcn/sharesdk/framework/utils/QRCodeUtil/b;Lcn/sharesdk/framework/utils/QRCodeUtil/n;)I
    .locals 0

    .line 165
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a()I

    move-result p1

    invoke-virtual {p0, p3}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/n;)I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(Ljava/lang/String;Lcn/sharesdk/framework/utils/QRCodeUtil/f;Ljava/util/Map;)Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/sharesdk/framework/utils/QRCodeUtil/f;",
            "Ljava/util/Map<",
            "Lcn/sharesdk/framework/utils/QRCodeUtil/e;",
            "*>;)",
            "Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 60
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 62
    sget-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 61
    :cond_1
    const-string v1, "ISO-8859-1"

    .line 67
    :goto_1
    invoke-static {p0, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    move-result-object v2

    .line 71
    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/b;

    invoke-direct {v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;-><init>()V

    .line 74
    sget-object v4, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    if-ne v2, v4, :cond_2

    if-eqz v0, :cond_2

    .line 75
    invoke-static {v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->a(Ljava/lang/String;)Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 77
    invoke-static {v0, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/d;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 82
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->l:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->l:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->h:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    invoke-static {v0, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/i;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V

    .line 89
    :cond_3
    invoke-static {v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/i;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V

    .line 93
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/b;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;-><init>()V

    .line 94
    invoke-static {p0, v2, v0, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Ljava/lang/String;Lcn/sharesdk/framework/utils/QRCodeUtil/i;Lcn/sharesdk/framework/utils/QRCodeUtil/b;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 97
    sget-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->k:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    sget-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->k:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 99
    invoke-static {p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->a(I)Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-result-object p2

    .line 100
    invoke-static {v2, v3, v0, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/i;Lcn/sharesdk/framework/utils/QRCodeUtil/b;Lcn/sharesdk/framework/utils/QRCodeUtil/b;Lcn/sharesdk/framework/utils/QRCodeUtil/n;)I

    move-result v1

    .line 101
    invoke-static {v1, p2, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(ILcn/sharesdk/framework/utils/QRCodeUtil/n;Lcn/sharesdk/framework/utils/QRCodeUtil/f;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 102
    :cond_4
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    const-string p1, "Data too big for requested version"

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_5
    invoke-static {p1, v2, v3, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/f;Lcn/sharesdk/framework/utils/QRCodeUtil/i;Lcn/sharesdk/framework/utils/QRCodeUtil/b;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-result-object p2

    .line 108
    :goto_2
    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/b;

    invoke-direct {v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;-><init>()V

    .line 109
    invoke-virtual {v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V

    .line 111
    sget-object v3, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    if-ne v2, v3, :cond_6

    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->b()I

    move-result p0

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 112
    :goto_3
    invoke-static {p0, p2, v2, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(ILcn/sharesdk/framework/utils/QRCodeUtil/n;Lcn/sharesdk/framework/utils/QRCodeUtil/i;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V

    .line 114
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V

    .line 116
    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/f;)Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    move-result-object p0

    .line 117
    invoke-virtual {p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->b()I

    move-result v0

    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;->c()I

    move-result v3

    sub-int/2addr v0, v3

    .line 120
    invoke-static {v0, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(ILcn/sharesdk/framework/utils/QRCodeUtil/b;)V

    .line 124
    invoke-virtual {p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->b()I

    move-result v3

    .line 126
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;->b()I

    move-result p0

    .line 123
    invoke-static {v1, v3, v0, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/b;III)Lcn/sharesdk/framework/utils/QRCodeUtil/b;

    move-result-object p0

    .line 128
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;-><init>()V

    .line 130
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/f;)V

    .line 131
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/i;)V

    .line 132
    invoke-virtual {v0, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/n;)V

    .line 135
    invoke-virtual {p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->c()I

    move-result v1

    .line 136
    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;

    invoke-direct {v2, v1, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;-><init>(II)V

    .line 137
    invoke-static {p0, p1, p2, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/b;Lcn/sharesdk/framework/utils/QRCodeUtil/f;Lcn/sharesdk/framework/utils/QRCodeUtil/n;Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)I

    move-result v1

    .line 138
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->a(I)V

    .line 141
    invoke-static {p0, p1, p2, v1, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/b;Lcn/sharesdk/framework/utils/QRCodeUtil/f;Lcn/sharesdk/framework/utils/QRCodeUtil/n;ILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    .line 142
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    return-object v0
.end method

.method static a(Lcn/sharesdk/framework/utils/QRCodeUtil/b;III)Lcn/sharesdk/framework/utils/QRCodeUtil/b;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->b()I

    move-result v0

    if-ne v0, v7, :cond_9

    .line 371
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_0
    if-ge v11, v8, :cond_0

    const/4 v0, 0x1

    .line 374
    new-array v15, v0, [I

    .line 375
    new-array v5, v0, [I

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v11

    move-object v4, v15

    move-object/from16 v16, v5

    .line 376
    invoke-static/range {v0 .. v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(IIII[I[I)V

    .line 380
    aget v0, v15, v10

    .line 381
    new-array v1, v0, [B

    mul-int/lit8 v2, v12, 0x8

    move-object/from16 v3, p0

    .line 382
    invoke-virtual {v3, v2, v1, v10, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(I[BII)V

    .line 383
    aget v2, v16, v10

    invoke-static {v1, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a([BI)[B

    move-result-object v2

    .line 384
    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/a/a;

    invoke-direct {v4, v1, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/a;-><init>([B[B)V

    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 387
    array-length v0, v2

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 388
    aget v0, v15, v10

    add-int/2addr v12, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    if-ne v7, v12, :cond_8

    .line 394
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/b;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;-><init>()V

    move v1, v10

    :goto_1
    const/16 v2, 0x8

    if-ge v1, v13, :cond_3

    .line 398
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/sharesdk/framework/utils/QRCodeUtil/a/a;

    .line 399
    invoke-virtual {v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/a;->a()[B

    move-result-object v4

    .line 400
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 401
    aget-byte v4, v4, v1

    invoke-virtual {v0, v4, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v10, v14, :cond_6

    .line 407
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sharesdk/framework/utils/QRCodeUtil/a/a;

    .line 408
    invoke-virtual {v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/a;->b()[B

    move-result-object v3

    .line 409
    array-length v4, v3

    if-ge v10, v4, :cond_4

    .line 410
    aget-byte v3, v3, v10

    invoke-virtual {v0, v3, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    goto :goto_4

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 414
    :cond_6
    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->b()I

    move-result v1

    if-ne v6, v1, :cond_7

    return-object v0

    .line 415
    :cond_7
    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interleaving error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " differ."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :cond_8
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_9
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcn/sharesdk/framework/utils/QRCodeUtil/i;
    .locals 5

    .line 188
    const-string v0, "Shift_JIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    sget-object p0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->g:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    .line 194
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 195
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1

    move v1, v4

    goto :goto_1

    .line 198
    :cond_1
    invoke-static {v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    move v0, v4

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 201
    :cond_2
    sget-object p0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    return-object p0

    :cond_3
    if-eqz v0, :cond_4

    .line 205
    sget-object p0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    return-object p0

    :cond_4
    if-eqz v1, :cond_5

    .line 208
    sget-object p0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    return-object p0

    .line 210
    :cond_5
    sget-object p0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    return-object p0
.end method

.method private static a(ILcn/sharesdk/framework/utils/QRCodeUtil/f;)Lcn/sharesdk/framework/utils/QRCodeUtil/n;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    .line 250
    invoke-static {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->a(I)Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-result-object v1

    .line 251
    invoke-static {p0, v1, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(ILcn/sharesdk/framework/utils/QRCodeUtil/n;Lcn/sharesdk/framework/utils/QRCodeUtil/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_1
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    const-string p1, "Data too big"

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcn/sharesdk/framework/utils/QRCodeUtil/f;Lcn/sharesdk/framework/utils/QRCodeUtil/i;Lcn/sharesdk/framework/utils/QRCodeUtil/b;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)Lcn/sharesdk/framework/utils/QRCodeUtil/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 156
    invoke-static {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->a(I)Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/i;Lcn/sharesdk/framework/utils/QRCodeUtil/b;Lcn/sharesdk/framework/utils/QRCodeUtil/b;Lcn/sharesdk/framework/utils/QRCodeUtil/n;)I

    move-result v0

    .line 157
    invoke-static {v0, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(ILcn/sharesdk/framework/utils/QRCodeUtil/f;)Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-result-object v0

    .line 160
    invoke-static {p1, p2, p3, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/i;Lcn/sharesdk/framework/utils/QRCodeUtil/b;Lcn/sharesdk/framework/utils/QRCodeUtil/b;Lcn/sharesdk/framework/utils/QRCodeUtil/n;)I

    move-result p1

    .line 161
    invoke-static {p1, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(ILcn/sharesdk/framework/utils/QRCodeUtil/f;)Lcn/sharesdk/framework/utils/QRCodeUtil/n;

    move-result-object p0

    return-object p0
.end method

.method static a(IIII[I[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    if-ge p3, p2, :cond_4

    .line 315
    rem-int v0, p0, p2

    sub-int v1, p2, v0

    .line 319
    div-int v2, p0, p2

    add-int/lit8 v3, v2, 0x1

    .line 323
    div-int/2addr p1, p2

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v2, p1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_3

    add-int v5, v1, v0

    if-ne p2, v5, :cond_2

    add-int p2, p1, v2

    mul-int/2addr p2, v1

    add-int v5, v4, v3

    mul-int/2addr v5, v0

    add-int/2addr p2, v5

    if-ne p0, p2, :cond_1

    const/4 p0, 0x0

    if-ge p3, v1, :cond_0

    .line 346
    aput p1, p4, p0

    .line 347
    aput v2, p5, p0

    goto :goto_0

    .line 349
    :cond_0
    aput v4, p4, p0

    .line 350
    aput v3, p5, p0

    :goto_0
    return-void

    .line 342
    :cond_1
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    const-string p1, "Total bytes mismatch"

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 337
    :cond_2
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    const-string p1, "RS blocks mismatch"

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 333
    :cond_3
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    const-string p1, "EC bytes mismatch"

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 312
    :cond_4
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    const-string p1, "Block ID too large"

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(ILcn/sharesdk/framework/utils/QRCodeUtil/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    mul-int/lit8 v0, p0, 0x8

    .line 280
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a()I

    move-result v1

    if-gt v1, v0, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 283
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 284
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/16 v3, 0x8

    if-lez v2, :cond_1

    :goto_1
    if-ge v2, v3, :cond_1

    .line 291
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 295
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->b()I

    move-result v2

    sub-int/2addr p0, v2

    :goto_2
    if-ge v1, p0, :cond_3

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0xec

    goto :goto_3

    :cond_2
    const/16 v2, 0x11

    .line 297
    :goto_3
    invoke-virtual {p1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 299
    :cond_3
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a()I

    move-result p0

    if-ne p0, v0, :cond_4

    return-void

    .line 300
    :cond_4
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    const-string p1, "Bits size does not equal capacity"

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 281
    :cond_5
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " > "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(ILcn/sharesdk/framework/utils/QRCodeUtil/n;Lcn/sharesdk/framework/utils/QRCodeUtil/i;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    .line 448
    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/n;)I

    move-result p1

    const/4 p2, 0x1

    shl-int v0, p2, p1

    if-ge p0, v0, :cond_0

    .line 452
    invoke-virtual {p3, p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    return-void

    .line 450
    :cond_0
    new-instance p1, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, " is bigger than "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sub-int/2addr v0, p2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lcn/sharesdk/framework/utils/QRCodeUtil/d;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V
    .locals 2

    .line 568
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->f:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->a()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    .line 570
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->a()I

    move-result p0

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    return-void
.end method

.method static a(Lcn/sharesdk/framework/utils/QRCodeUtil/i;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->a()I

    move-result p0

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    return-void
.end method

.method static a(Ljava/lang/CharSequence;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V
    .locals 6

    .line 478
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 481
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 484
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 485
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v2, v2, 0x64

    const/16 v5, 0xa

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 486
    invoke-virtual {p1, v2, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 490
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    const/4 v1, 0x7

    .line 491
    invoke-virtual {p1, v2, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    .line 495
    invoke-virtual {p1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static a(Ljava/lang/String;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    .line 541
    :try_start_0
    const-string v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 548
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 550
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    .line 551
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    const v3, 0x8140

    const/4 v4, -0x1

    if-lt v2, v3, :cond_0

    const v5, 0x9ffc

    if-gt v2, v5, :cond_0

    :goto_1
    sub-int/2addr v2, v3

    goto :goto_2

    :cond_0
    const v3, 0xe040

    if-lt v2, v3, :cond_1

    const v3, 0xebbf

    if-gt v2, v3, :cond_1

    const v3, 0xc140

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_2
    if-eq v2, v4, :cond_2

    shr-int/lit8 v3, v2, 0x8

    mul-int/lit16 v3, v3, 0xc0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    const/16 v2, 0xd

    .line 563
    invoke-virtual {p1, v3, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 560
    :cond_2
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    .line 546
    :cond_4
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    const-string p1, "Kanji byte size not even"

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 543
    new-instance p1, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    invoke-direct {p1, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static a(Ljava/lang/String;Lcn/sharesdk/framework/utils/QRCodeUtil/b;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    .line 529
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x8

    .line 534
    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 531
    new-instance p1, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    invoke-direct {p1, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static a(Ljava/lang/String;Lcn/sharesdk/framework/utils/QRCodeUtil/i;Lcn/sharesdk/framework/utils/QRCodeUtil/b;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    .line 459
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c$1;->a:[I

    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x4

    if-ne v0, p3, :cond_0

    .line 470
    invoke-static {p0, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Ljava/lang/String;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V

    goto :goto_0

    .line 473
    :cond_0
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid mode: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 467
    :cond_1
    invoke-static {p0, p2, p3}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Ljava/lang/String;Lcn/sharesdk/framework/utils/QRCodeUtil/b;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_2
    invoke-static {p0, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->b(Ljava/lang/CharSequence;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V

    goto :goto_0

    .line 461
    :cond_3
    invoke-static {p0, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Ljava/lang/CharSequence;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V

    :goto_0
    return-void
.end method

.method private static a(ILcn/sharesdk/framework/utils/QRCodeUtil/n;Lcn/sharesdk/framework/utils/QRCodeUtil/f;)Z
    .locals 1

    .line 265
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->b()I

    move-result v0

    .line 267
    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/f;)Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/n$b;->c()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 p0, p0, 0x7

    .line 271
    div-int/lit8 p0, p0, 0x8

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 216
    :try_start_0
    const-string v1, "Shift_JIS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    array-length v1, p0

    .line 221
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 225
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x81

    if-lt v3, v4, :cond_1

    const/16 v4, 0x9f

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0xe0

    if-lt v3, v4, :cond_3

    const/16 v4, 0xeb

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method static a([BI)[B
    .locals 5

    .line 422
    array-length v0, p0

    add-int v1, v0, p1

    .line 423
    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 425
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    :cond_0
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/m;

    sget-object v3, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    invoke-direct {p0, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/m;-><init>(Lcn/sharesdk/framework/utils/QRCodeUtil/g;)V

    invoke-virtual {p0, v1, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/m;->a([II)V

    .line 429
    new-array p0, p1, [B

    :goto_1
    if-ge v2, p1, :cond_1

    add-int v3, v0, v2

    .line 431
    aget v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method static b(Ljava/lang/CharSequence;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    .line 502
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 505
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_1

    .line 510
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(I)I

    move-result v4

    if-eq v4, v3, :cond_0

    mul-int/lit8 v2, v2, 0x2d

    add-int/2addr v2, v4

    const/16 v3, 0xb

    .line 515
    invoke-virtual {p1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 512
    :cond_0
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>()V

    throw p0

    :cond_1
    const/4 v1, 0x6

    .line 519
    invoke-virtual {p1, v2, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    move v1, v4

    goto :goto_0

    .line 507
    :cond_2
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method
