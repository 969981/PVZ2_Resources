.class final Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;
.super Ljava/lang/Object;
.source "MatrixUtil.java"


# static fields
.field private static final a:[[I

.field private static final b:[[I

.field private static final c:[[I

.field private static final d:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 44

    const/4 v0, 0x7

    .line 11
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    new-array v3, v0, [I

    fill-array-data v3, :array_2

    new-array v4, v0, [I

    fill-array-data v4, :array_3

    new-array v5, v0, [I

    fill-array-data v5, :array_4

    new-array v6, v0, [I

    fill-array-data v6, :array_5

    new-array v7, v0, [I

    fill-array-data v7, :array_6

    filled-new-array/range {v1 .. v7}, [[I

    move-result-object v1

    sput-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a:[[I

    const/4 v1, 0x1

    .line 21
    filled-new-array {v1, v1, v1, v1, v1}, [I

    move-result-object v2

    const/4 v3, 0x0

    filled-new-array {v1, v3, v3, v3, v1}, [I

    move-result-object v4

    filled-new-array {v1, v3, v1, v3, v1}, [I

    move-result-object v5

    filled-new-array {v1, v3, v3, v3, v1}, [I

    move-result-object v6

    filled-new-array {v1, v1, v1, v1, v1}, [I

    move-result-object v7

    filled-new-array {v2, v4, v5, v6, v7}, [[I

    move-result-object v2

    sput-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->b:[[I

    .line 30
    new-array v2, v0, [I

    move-object v4, v2

    fill-array-data v2, :array_7

    new-array v2, v0, [I

    move-object v5, v2

    fill-array-data v2, :array_8

    new-array v2, v0, [I

    move-object v6, v2

    fill-array-data v2, :array_9

    new-array v2, v0, [I

    move-object v7, v2

    fill-array-data v2, :array_a

    new-array v2, v0, [I

    move-object v8, v2

    fill-array-data v2, :array_b

    new-array v2, v0, [I

    move-object v9, v2

    fill-array-data v2, :array_c

    new-array v2, v0, [I

    move-object v10, v2

    fill-array-data v2, :array_d

    new-array v2, v0, [I

    move-object v11, v2

    fill-array-data v2, :array_e

    new-array v2, v0, [I

    move-object v12, v2

    fill-array-data v2, :array_f

    new-array v2, v0, [I

    move-object v13, v2

    fill-array-data v2, :array_10

    new-array v2, v0, [I

    move-object v14, v2

    fill-array-data v2, :array_11

    new-array v2, v0, [I

    move-object v15, v2

    fill-array-data v2, :array_12

    new-array v2, v0, [I

    move-object/from16 v16, v2

    fill-array-data v2, :array_13

    new-array v2, v0, [I

    move-object/from16 v17, v2

    fill-array-data v2, :array_14

    new-array v2, v0, [I

    move-object/from16 v18, v2

    fill-array-data v2, :array_15

    new-array v2, v0, [I

    move-object/from16 v19, v2

    fill-array-data v2, :array_16

    new-array v2, v0, [I

    move-object/from16 v20, v2

    fill-array-data v2, :array_17

    new-array v2, v0, [I

    move-object/from16 v21, v2

    fill-array-data v2, :array_18

    new-array v2, v0, [I

    move-object/from16 v22, v2

    fill-array-data v2, :array_19

    new-array v2, v0, [I

    move-object/from16 v23, v2

    fill-array-data v2, :array_1a

    new-array v2, v0, [I

    move-object/from16 v24, v2

    fill-array-data v2, :array_1b

    new-array v2, v0, [I

    move-object/from16 v25, v2

    fill-array-data v2, :array_1c

    new-array v2, v0, [I

    move-object/from16 v26, v2

    fill-array-data v2, :array_1d

    new-array v2, v0, [I

    move-object/from16 v27, v2

    fill-array-data v2, :array_1e

    new-array v2, v0, [I

    move-object/from16 v28, v2

    fill-array-data v2, :array_1f

    new-array v2, v0, [I

    move-object/from16 v29, v2

    fill-array-data v2, :array_20

    new-array v2, v0, [I

    move-object/from16 v30, v2

    fill-array-data v2, :array_21

    new-array v2, v0, [I

    move-object/from16 v31, v2

    fill-array-data v2, :array_22

    new-array v2, v0, [I

    move-object/from16 v32, v2

    fill-array-data v2, :array_23

    new-array v2, v0, [I

    move-object/from16 v33, v2

    fill-array-data v2, :array_24

    new-array v2, v0, [I

    move-object/from16 v34, v2

    fill-array-data v2, :array_25

    new-array v2, v0, [I

    move-object/from16 v35, v2

    fill-array-data v2, :array_26

    new-array v2, v0, [I

    move-object/from16 v36, v2

    fill-array-data v2, :array_27

    new-array v2, v0, [I

    move-object/from16 v37, v2

    fill-array-data v2, :array_28

    new-array v2, v0, [I

    move-object/from16 v38, v2

    fill-array-data v2, :array_29

    new-array v2, v0, [I

    move-object/from16 v39, v2

    fill-array-data v2, :array_2a

    new-array v2, v0, [I

    move-object/from16 v40, v2

    fill-array-data v2, :array_2b

    new-array v2, v0, [I

    move-object/from16 v41, v2

    fill-array-data v2, :array_2c

    new-array v2, v0, [I

    move-object/from16 v42, v2

    fill-array-data v2, :array_2d

    new-array v2, v0, [I

    move-object/from16 v43, v2

    fill-array-data v2, :array_2e

    filled-new-array/range {v4 .. v43}, [[I

    move-result-object v2

    sput-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->c:[[I

    const/16 v2, 0x8

    .line 74
    filled-new-array {v2, v3}, [I

    move-result-object v4

    filled-new-array {v2, v1}, [I

    move-result-object v5

    const/4 v6, 0x2

    filled-new-array {v2, v6}, [I

    move-result-object v6

    const/4 v7, 0x3

    filled-new-array {v2, v7}, [I

    move-result-object v7

    const/4 v8, 0x4

    filled-new-array {v2, v8}, [I

    move-result-object v8

    const/4 v9, 0x5

    filled-new-array {v2, v9}, [I

    move-result-object v9

    filled-new-array {v2, v0}, [I

    move-result-object v10

    filled-new-array {v2, v2}, [I

    move-result-object v11

    filled-new-array {v0, v2}, [I

    move-result-object v12

    const/4 v0, 0x5

    filled-new-array {v0, v2}, [I

    move-result-object v13

    const/4 v0, 0x4

    filled-new-array {v0, v2}, [I

    move-result-object v14

    const/4 v0, 0x3

    filled-new-array {v0, v2}, [I

    move-result-object v15

    const/4 v0, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v16

    filled-new-array {v1, v2}, [I

    move-result-object v17

    filled-new-array {v3, v2}, [I

    move-result-object v18

    filled-new-array/range {v4 .. v18}, [[I

    move-result-object v0

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->d:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x6
        0x12
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x1a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x1e
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x16
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x18
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x1a
        0x2e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1c
        0x32
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x1e
        0x36
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x20
        0x3a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x22
        0x3e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
        -0x1
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        -0x1
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        -0x1
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        -0x1
        -0x1
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        -0x1
        -0x1
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        -0x1
        -0x1
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        -0x1
        -0x1
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
        -0x1
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        -0x1
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
        -0x1
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
        -0x1
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
        -0x1
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        -0x1
    .end array-data

    :array_28
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
        -0x1
    .end array-data

    :array_29
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_2a
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_2b
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_2c
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_2d
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_2e
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

.method static a(I)I
    .locals 0

    .line 253
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    return p0
.end method

.method static a(II)I
    .locals 2

    if-eqz p1, :cond_1

    .line 287
    invoke-static {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    shl-int/2addr p0, v1

    .line 290
    :goto_0
    invoke-static {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 291
    invoke-static {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a(I)I

    move-result v1

    sub-int/2addr v1, v0

    shl-int v1, p1, v1

    xor-int/2addr p0, v1

    goto :goto_0

    :cond_0
    return p0

    .line 283
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "0 polynomial"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(IILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    add-int v2, p0, v1

    .line 363
    invoke-virtual {p2, v2, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(II)B

    move-result v3

    invoke-static {v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    invoke-virtual {p2, v2, p1, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_0
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method static a(Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V
    .locals 1

    const/4 v0, -0x1

    .line 108
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(B)V

    return-void
.end method

.method static a(Lcn/sharesdk/framework/utils/QRCodeUtil/b;ILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    .line 205
    invoke-virtual {p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 206
    invoke-virtual {p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v5, v3

    :goto_0
    if-lez v0, :cond_6

    const/4 v6, 0x6

    if-ne v0, v6, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    :goto_1
    if-ltz v1, :cond_5

    .line 212
    invoke-virtual {p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a()I

    move-result v6

    if-ge v1, v6, :cond_5

    move v6, v2

    :goto_2
    const/4 v7, 0x2

    if-ge v6, v7, :cond_4

    sub-int v7, v0, v6

    .line 216
    invoke-virtual {p2, v7, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(II)B

    move-result v8

    invoke-static {v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->b(I)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_4

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 221
    invoke-virtual {p0, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(I)Z

    move-result v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    move v8, v2

    :goto_3
    if-eq p1, v3, :cond_3

    .line 230
    invoke-static {p1, v7, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/d;->a(III)Z

    move-result v9

    if-eqz v9, :cond_3

    xor-int/lit8 v8, v8, 0x1

    .line 233
    :cond_3
    invoke-virtual {p2, v7, v1, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(IIZ)V

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v1, v5

    goto :goto_1

    :cond_5
    neg-int v5, v5

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 242
    :cond_6
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a()I

    move-result p1

    if-ne v4, p1, :cond_7

    return-void

    .line 243
    :cond_7
    new-instance p1, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Not all bits consumed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(Lcn/sharesdk/framework/utils/QRCodeUtil/b;Lcn/sharesdk/framework/utils/QRCodeUtil/f;Lcn/sharesdk/framework/utils/QRCodeUtil/n;ILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    .line 115
    invoke-static {p4}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    .line 116
    invoke-static {p2, p4}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/n;Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    .line 118
    invoke-static {p1, p3, p4}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/f;ILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    .line 120
    invoke-static {p2, p4}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->b(Lcn/sharesdk/framework/utils/QRCodeUtil/n;Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    .line 122
    invoke-static {p0, p3, p4}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/b;ILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    return-void
.end method

.method static a(Lcn/sharesdk/framework/utils/QRCodeUtil/f;ILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    .line 146
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/b;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;-><init>()V

    .line 147
    invoke-static {p0, p1, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/f;ILcn/sharesdk/framework/utils/QRCodeUtil/b;)V

    const/4 p0, 0x0

    move p1, p0

    .line 149
    :goto_0
    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 152
    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(I)Z

    move-result v1

    .line 155
    sget-object v3, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->d:[[I

    aget-object v3, v3, p1

    .line 156
    aget v4, v3, p0

    .line 157
    aget v3, v3, v2

    .line 158
    invoke-virtual {p2, v4, v3, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(IIZ)V

    const/16 v3, 0x8

    if-ge p1, v3, :cond_0

    .line 162
    invoke-virtual {p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->b()I

    move-result v4

    sub-int/2addr v4, p1

    sub-int/2addr v4, v2

    .line 164
    invoke-virtual {p2, v4, v3, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(IIZ)V

    goto :goto_1

    .line 168
    :cond_0
    invoke-virtual {p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    add-int/lit8 v4, p1, -0x8

    add-int/2addr v2, v4

    .line 169
    invoke-virtual {p2, v3, v2, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(IIZ)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static a(Lcn/sharesdk/framework/utils/QRCodeUtil/f;ILcn/sharesdk/framework/utils/QRCodeUtil/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    .line 302
    invoke-static {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->a()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    const/4 p1, 0x5

    .line 306
    invoke-virtual {p2, p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    const/16 p1, 0x537

    .line 308
    invoke-static {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a(II)I

    move-result p0

    const/16 p1, 0xa

    .line 309
    invoke-virtual {p2, p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    .line 311
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/b;

    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;-><init>()V

    const/16 p1, 0x5412

    const/16 v0, 0xf

    .line 312
    invoke-virtual {p0, p1, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    .line 313
    invoke-virtual {p2, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->b(Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V

    .line 315
    invoke-virtual {p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a()I

    move-result p0

    if-ne p0, v0, :cond_0

    return-void

    .line 316
    :cond_0
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "should not happen but we got: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 303
    :cond_1
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    const-string p1, "Invalid mask pattern"

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Lcn/sharesdk/framework/utils/QRCodeUtil/n;Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    .line 133
    invoke-static {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->d(Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    .line 135
    invoke-static {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->c(Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    .line 138
    invoke-static {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->c(Lcn/sharesdk/framework/utils/QRCodeUtil/n;Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    .line 140
    invoke-static {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->b(Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    return-void
.end method

.method static a(Lcn/sharesdk/framework/utils/QRCodeUtil/n;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->a()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    .line 324
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->a()I

    move-result p0

    const/16 v0, 0x1f25

    invoke-static {p0, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a(II)I

    move-result p0

    const/16 v0, 0xc

    .line 325
    invoke-virtual {p1, p0, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(II)V

    .line 327
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a()I

    move-result p0

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    return-void

    .line 328
    :cond_0
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "should not happen but we got: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(IILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    add-int v2, p1, v1

    .line 372
    invoke-virtual {p2, p0, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(II)B

    move-result v3

    invoke-static {v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    invoke-virtual {p2, p0, v2, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_0
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method private static b(Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V
    .locals 6

    const/16 v0, 0x8

    move v1, v0

    .line 340
    :goto_0
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->b()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 341
    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x6

    .line 343
    invoke-virtual {p0, v1, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(II)B

    move-result v5

    invoke-static {v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->b(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 344
    invoke-virtual {p0, v1, v4, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(III)V

    .line 347
    :cond_0
    invoke-virtual {p0, v4, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(II)B

    move-result v5

    invoke-static {v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->b(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 348
    invoke-virtual {p0, v4, v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(III)V

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method static b(Lcn/sharesdk/framework/utils/QRCodeUtil/n;Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->a()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/b;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;-><init>()V

    .line 181
    invoke-static {p0, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/n;Lcn/sharesdk/framework/utils/QRCodeUtil/b;)V

    const/4 p0, 0x0

    const/16 v1, 0x11

    move v2, p0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    move v3, p0

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 187
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/b;->a(I)Z

    move-result v4

    add-int/lit8 v1, v1, -0x1

    .line 190
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v2, v5, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(IIZ)V

    .line 192
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v5, v2, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(IIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static b(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static c(IILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 381
    sget-object v3, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->b:[[I

    aget-object v3, v3, v1

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_0

    add-int v5, p0, v4

    add-int v6, p1, v1

    .line 383
    aget v7, v3, v4

    invoke-virtual {p2, v5, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static c(Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a()I

    move-result v0

    const/16 v1, 0x8

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(II)B

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(III)V

    return-void

    .line 356
    :cond_0
    new-instance p0, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;

    invoke-direct {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;-><init>()V

    throw p0
.end method

.method private static c(Lcn/sharesdk/framework/utils/QRCodeUtil/n;Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V
    .locals 8

    .line 431
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->a()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 435
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->c:[[I

    aget-object p0, v0, p0

    .line 436
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p0, v2

    if-ltz v3, :cond_2

    .line 438
    array-length v4, p0

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, p0, v5

    if-ltz v6, :cond_1

    .line 439
    invoke-virtual {p1, v6, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(II)B

    move-result v7

    invoke-static {v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->b(I)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v7, v3, -0x2

    .line 443
    invoke-static {v6, v7, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->c(IILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static d(IILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 390
    sget-object v3, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a:[[I

    aget-object v3, v3, v1

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_0

    add-int v5, p0, v4

    add-int v6, p1, v1

    .line 392
    aget v7, v3, v4

    invoke-virtual {p2, v5, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static d(Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    .line 400
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    .line 402
    invoke-static {v1, v1, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->d(IILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    .line 404
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->b()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2, v1, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->d(IILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    .line 406
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->b()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->d(IILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    const/4 v0, 0x7

    .line 411
    invoke-static {v1, v0, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a(IILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    .line 413
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-static {v2, v0, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a(IILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    .line 416
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-static {v1, v2, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->a(IILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    .line 421
    invoke-static {v0, v1, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->b(IILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    .line 423
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-static {v2, v1, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->b(IILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    .line 425
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v0, v1, p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/e;->b(IILcn/sharesdk/framework/utils/QRCodeUtil/a/b;)V

    return-void
.end method
