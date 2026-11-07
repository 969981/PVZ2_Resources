.class public abstract Lgbsdk/common/host/abxj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abxj$ac;,
        Lgbsdk/common/host/abxj$ab;
    }
.end annotation


# direct methods
.method private static a(Lgbsdk/common/host/abzy;Lgbsdk/common/host/abzf;I)V
    .locals 8

    .line 213
    invoke-interface {p1}, Lgbsdk/common/host/abzf;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    int-to-long v6, p2

    .line 216
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 217
    invoke-interface {p1, p0, v4, v5, v7}, Lgbsdk/common/host/abzf;->a(Lgbsdk/common/host/abzy;JI)V

    int-to-long v6, v7

    add-long/2addr v4, v6

    sub-long/2addr v0, v6

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a(Ljava/io/RandomAccessFile;Lgbsdk/common/host/abzh;[B[ILjava/nio/ByteBuffer;)[B
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 274
    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    aget v4, v2, v4

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget v5, v2, v5

    .line 275
    invoke-static {v3, v4, v5}, Lgbsdk/common/host/abxj;->b(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1230
    new-instance v5, Lgbsdk/common/host/abxj$ac;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v4, v6}, Lgbsdk/common/host/abxj$ac;-><init>([BLjava/nio/ByteBuffer;B)V

    .line 1233
    new-instance v4, Lgbsdk/common/host/abze;

    .line 1234
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    iget-wide v11, v0, Lgbsdk/common/host/abzh;->b:J

    const-wide/16 v9, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lgbsdk/common/host/abze;-><init>(Ljava/io/FileDescriptor;JJ)V

    const/high16 v7, 0x100000

    .line 1233
    invoke-static {v5, v4, v7}, Lgbsdk/common/host/abxj;->a(Lgbsdk/common/host/abzy;Lgbsdk/common/host/abzf;I)V

    .line 1239
    iget-wide v8, v0, Lgbsdk/common/host/abzh;->d:J

    const-wide/16 v10, 0x10

    add-long/2addr v8, v10

    .line 1240
    new-instance v4, Lgbsdk/common/host/abze;

    .line 1241
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    iget-wide v12, v0, Lgbsdk/common/host/abzh;->c:J

    iget-wide v14, v0, Lgbsdk/common/host/abzh;->c:J

    sub-long v14, v8, v14

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lgbsdk/common/host/abze;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 1240
    invoke-static {v5, v4, v7}, Lgbsdk/common/host/abxj;->a(Lgbsdk/common/host/abzy;Lgbsdk/common/host/abzf;I)V

    const/4 v4, 0x4

    .line 1246
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1247
    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1248
    iget-wide v10, v0, Lgbsdk/common/host/abzh;->b:J

    invoke-static {v10, v11}, Lgbsdk/common/host/abxj;->q(J)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1249
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1250
    invoke-virtual {v5, v4}, Lgbsdk/common/host/abxj$ac;->e(Ljava/nio/ByteBuffer;)V

    const-wide/16 v10, 0x4

    add-long v14, v8, v10

    .line 1254
    new-instance v0, Lgbsdk/common/host/abze;

    .line 1255
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    .line 1256
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    sub-long v16, v8, v14

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lgbsdk/common/host/abze;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 1254
    invoke-static {v5, v0, v7}, Lgbsdk/common/host/abxj;->a(Lgbsdk/common/host/abzy;Lgbsdk/common/host/abzf;I)V

    .line 1260
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x1000

    rem-long/2addr v7, v9

    long-to-int v0, v7

    const/16 v4, 0x1000

    if-eqz v0, :cond_0

    rsub-int v0, v0, 0x1000

    .line 1262
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lgbsdk/common/host/abxj$ac;->e(Ljava/nio/ByteBuffer;)V

    .line 1264
    :cond_0
    invoke-virtual {v5}, Lgbsdk/common/host/abxj$ac;->a()V

    .line 2134
    invoke-virtual {v5}, Lgbsdk/common/host/abxj$ac;->b()V

    .line 279
    array-length v0, v2

    add-int/lit8 v0, v0, -0x3

    :goto_0
    if-ltz v0, :cond_1

    add-int/lit8 v5, v0, 0x1

    .line 280
    aget v7, v2, v5

    add-int/lit8 v8, v0, 0x2

    aget v8, v2, v8

    invoke-static {v3, v7, v8}, Lgbsdk/common/host/abxj;->b(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 281
    aget v8, v2, v0

    aget v5, v2, v5

    invoke-static {v3, v8, v5}, Lgbsdk/common/host/abxj;->b(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 283
    new-instance v8, Lgbsdk/common/host/abxi;

    invoke-direct {v8, v7}, Lgbsdk/common/host/abxi;-><init>(Ljava/nio/ByteBuffer;)V

    .line 284
    new-instance v7, Lgbsdk/common/host/abxj$ac;

    invoke-direct {v7, v1, v5, v6}, Lgbsdk/common/host/abxj$ac;-><init>([BLjava/nio/ByteBuffer;B)V

    .line 285
    invoke-static {v7, v8, v4}, Lgbsdk/common/host/abxj;->a(Lgbsdk/common/host/abzy;Lgbsdk/common/host/abzf;I)V

    .line 286
    invoke-virtual {v7}, Lgbsdk/common/host/abxj$ac;->a()V

    .line 3134
    invoke-virtual {v7}, Lgbsdk/common/host/abxj$ac;->b()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 292
    new-instance v2, Lgbsdk/common/host/abxj$ac;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-direct {v2, v1, v5, v6}, Lgbsdk/common/host/abxj$ac;-><init>([BLjava/nio/ByteBuffer;B)V

    .line 293
    invoke-static {v3, v6, v4}, Lgbsdk/common/host/abxj;->b(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lgbsdk/common/host/abxj$ac;->e(Ljava/nio/ByteBuffer;)V

    .line 294
    invoke-virtual {v2}, Lgbsdk/common/host/abxj$ac;->a()V

    return-object v0
.end method

.method static b(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 429
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 431
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 432
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 433
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static d(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .line 440
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public static q(J)I
    .locals 4

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v3, v1, p0

    if-nez v3, :cond_0

    return v0

    .line 462
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static w(J)[I
    .locals 5

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    :goto_0
    invoke-static {p0, p1}, Lgbsdk/common/host/abxj;->x(J)J

    move-result-wide p0

    const-wide/16 v1, 0x20

    mul-long p0, p0, v1

    .line 396
    invoke-static {p0, p1}, Lgbsdk/common/host/abxj;->x(J)J

    move-result-wide v1

    const-wide/16 v3, 0x1000

    mul-long v1, v1, v3

    .line 397
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmp-long v1, p0, v3

    if-lez v1, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    .line 406
    aput p1, p0, p1

    .line 407
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 409
    aget v2, p0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lgbsdk/common/host/abxj;->q(J)I

    move-result p1

    add-int/2addr v2, p1

    aput v2, p0, v1

    move p1, v1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method private static x(J)J
    .locals 4

    const-wide/16 v0, 0x1000

    add-long/2addr p0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr p0, v2

    .line 447
    div-long/2addr p0, v0

    return-wide p0
.end method
