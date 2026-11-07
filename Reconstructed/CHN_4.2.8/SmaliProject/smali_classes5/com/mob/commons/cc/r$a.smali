.class public Lcom/mob/commons/cc/r$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/cc/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/cc/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Number;

.field private b:Ljava/lang/Number;

.field private c:Ljava/lang/Number;

.field private d:Ljava/lang/Number;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x3

    .line 58
    new-array v3, v2, [Ljava/lang/Number;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const/4 v6, 0x2

    aput-object v1, v3, v6

    .line 59
    new-array v7, v2, [I

    aput v4, v7, v4

    aput v4, v7, v5

    aput v4, v7, v6

    move v8, v4

    :goto_0
    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    if-ge v8, v2, :cond_8

    .line 61
    aget-object v14, v3, v8

    if-eqz v14, :cond_7

    .line 63
    instance-of v15, v14, Ljava/lang/Byte;

    if-eqz v15, :cond_0

    .line 64
    aput v5, v7, v8

    goto :goto_1

    .line 65
    :cond_0
    instance-of v15, v14, Ljava/lang/Short;

    if-eqz v15, :cond_1

    .line 66
    aput v6, v7, v8

    goto :goto_1

    .line 67
    :cond_1
    instance-of v15, v14, Ljava/lang/Integer;

    if-eqz v15, :cond_2

    .line 68
    aput v2, v7, v8

    goto :goto_1

    .line 69
    :cond_2
    instance-of v15, v14, Ljava/lang/Long;

    if-eqz v15, :cond_3

    .line 70
    aput v13, v7, v8

    goto :goto_1

    .line 71
    :cond_3
    instance-of v13, v14, Ljava/lang/Float;

    if-eqz v13, :cond_4

    .line 72
    aput v12, v7, v8

    goto :goto_1

    .line 73
    :cond_4
    instance-of v12, v14, Ljava/lang/Double;

    if-eqz v12, :cond_5

    .line 74
    aput v11, v7, v8

    goto :goto_1

    .line 75
    :cond_5
    instance-of v11, v14, Ljava/math/BigInteger;

    if-eqz v11, :cond_6

    .line 76
    aput v10, v7, v8

    goto :goto_1

    .line 77
    :cond_6
    instance-of v10, v14, Ljava/math/BigDecimal;

    if-eqz v10, :cond_7

    .line 78
    aput v9, v7, v8

    :cond_7
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_8
    move v3, v4

    move v8, v3

    :goto_2
    if-ge v3, v2, :cond_a

    .line 84
    aget v14, v7, v3

    if-ge v8, v14, :cond_9

    move v8, v14

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    const/16 v3, 0x9

    if-nez p1, :cond_b

    .line 90
    new-array v7, v3, [Ljava/lang/Number;

    const/high16 v14, -0x80000000

    .line 91
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v7, v4

    const/16 v15, -0x80

    .line 92
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v7, v5

    const/16 v15, -0x8000

    invoke-static {v15}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    aput-object v15, v7, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v7, v2

    const-wide/high16 v14, -0x8000000000000000L

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v7, v13

    const/16 v16, 0x1

    .line 93
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v7, v12

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v7, v11

    new-instance v11, Ljava/math/BigInteger;

    .line 94
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v11, v7, v10

    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    aput-object v11, v7, v9

    .line 96
    aget-object v7, v7, v8

    goto/16 :goto_3

    :cond_b
    packed-switch v8, :pswitch_data_0

    move-object/from16 v7, p1

    goto/16 :goto_3

    .line 99
    :pswitch_0
    new-instance v7, Ljava/math/BigDecimal;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 100
    :pswitch_1
    new-instance v7, Ljava/math/BigInteger;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 101
    :pswitch_2
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    goto :goto_3

    .line 102
    :pswitch_3
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_3

    .line 103
    :pswitch_4
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_3

    .line 104
    :pswitch_5
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_3

    .line 105
    :pswitch_6
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->shortValue()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    goto :goto_3

    .line 106
    :pswitch_7
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->byteValue()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    :goto_3
    if-nez p2, :cond_c

    .line 111
    new-array v3, v3, [Ljava/lang/Number;

    const v11, 0x7fffffff

    .line 112
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v4

    const/16 v12, 0x7f

    .line 113
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v3, v5

    const/16 v12, 0x7fff

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    aput-object v12, v3, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    const-wide v11, 0x7fffffffffffffffL

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v3, v6

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 114
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v3, v6

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v3, v6

    new-instance v2, Ljava/math/BigInteger;

    .line 115
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v2, v3, v10

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v13, v14}, Ljava/math/BigDecimal;-><init>(D)V

    aput-object v2, v3, v9

    .line 117
    aget-object v2, v3, v8

    goto/16 :goto_4

    :cond_c
    packed-switch v8, :pswitch_data_1

    move-object/from16 v2, p2

    goto/16 :goto_4

    .line 120
    :pswitch_8
    new-instance v2, Ljava/math/BigDecimal;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 121
    :pswitch_9
    new-instance v2, Ljava/math/BigInteger;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 122
    :pswitch_a
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    goto :goto_4

    .line 123
    :pswitch_b
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_4

    .line 124
    :pswitch_c
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_4

    .line 125
    :pswitch_d
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    .line 126
    :pswitch_e
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_4

    .line 127
    :pswitch_f
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->byteValue()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 131
    :goto_4
    iput-object v7, v0, Lcom/mob/commons/cc/r$a;->a:Ljava/lang/Number;

    .line 132
    iput-object v2, v0, Lcom/mob/commons/cc/r$a;->b:Ljava/lang/Number;

    .line 133
    iput-object v1, v0, Lcom/mob/commons/cc/r$a;->c:Ljava/lang/Number;

    .line 134
    check-cast v7, Ljava/lang/Comparable;

    invoke-interface {v7, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_d

    move v4, v5

    :cond_d
    iput-boolean v4, v0, Lcom/mob/commons/cc/r$a;->e:Z

    .line 135
    iget-object v1, v0, Lcom/mob/commons/cc/r$a;->c:Ljava/lang/Number;

    if-nez v1, :cond_f

    if-eqz v4, :cond_e

    const/4 v5, -0x1

    .line 136
    :cond_e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/commons/cc/r$a;->c:Ljava/lang/Number;

    :cond_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic a(Lcom/mob/commons/cc/r$a;)Ljava/lang/Number;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/mob/commons/cc/r$a;->a:Ljava/lang/Number;

    return-object p0
.end method

.method static synthetic b(Lcom/mob/commons/cc/r$a;)Ljava/lang/Number;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/mob/commons/cc/r$a;->b:Ljava/lang/Number;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mob/commons/cc/i$a;)Lcom/mob/commons/cc/i$b;
    .locals 4

    const-string v0, "method name: "

    .line 176
    new-instance v1, Lcom/mob/commons/cc/i$b;

    invoke-direct {v1}, Lcom/mob/commons/cc/i$b;-><init>()V

    .line 178
    :try_start_0
    const-string v2, "hasNext"

    iget-object v3, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-nez v2, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/mob/commons/cc/r$a;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->a:Ljava/lang/Object;

    goto :goto_0

    .line 180
    :cond_0
    const-string v2, "next"

    iget-object v3, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/mob/commons/cc/i$a;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/mob/commons/cc/r$a;->b()Ljava/lang/Number;

    move-result-object p1

    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->a:Ljava/lang/Object;

    goto :goto_0

    .line 183
    :cond_1
    new-instance v2, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/mob/commons/cc/i$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at line: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/mob/commons/cc/i$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lcom/mob/commons/cc/i$a;->d:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/mob/commons/cc/i$b;->c:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 187
    iput-object p1, v1, Lcom/mob/commons/cc/i$b;->c:Ljava/lang/Throwable;

    :goto_0
    return-object v1
.end method

.method public a()Z
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/mob/commons/cc/r$a;->d:Ljava/lang/Number;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/commons/cc/r$a;->a:Ljava/lang/Number;

    .line 142
    :cond_0
    iget-boolean v1, p0, Lcom/mob/commons/cc/r$a;->e:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 143
    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/mob/commons/cc/r$a;->b:Ljava/lang/Number;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    .line 145
    :cond_2
    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/mob/commons/cc/r$a;->b:Ljava/lang/Number;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2
.end method

.method public b()Ljava/lang/Number;
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/mob/commons/cc/r$a;->d:Ljava/lang/Number;

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/mob/commons/cc/r$a;->a:Ljava/lang/Number;

    iput-object v0, p0, Lcom/mob/commons/cc/r$a;->d:Ljava/lang/Number;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/cc/r$a;->d:Ljava/lang/Number;

    .line 155
    iget-object v1, p0, Lcom/mob/commons/cc/r$a;->c:Ljava/lang/Number;

    instance-of v2, v1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_1

    .line 156
    move-object v2, v0

    check-cast v2, Ljava/math/BigDecimal;

    check-cast v1, Ljava/math/BigDecimal;

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/r$a;->d:Ljava/lang/Number;

    goto/16 :goto_0

    .line 157
    :cond_1
    instance-of v2, v1, Ljava/math/BigInteger;

    if-eqz v2, :cond_2

    .line 158
    move-object v2, v0

    check-cast v2, Ljava/math/BigInteger;

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/r$a;->d:Ljava/lang/Number;

    goto/16 :goto_0

    .line 159
    :cond_2
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_3

    .line 160
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lcom/mob/commons/cc/r$a;->c:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/r$a;->d:Ljava/lang/Number;

    goto :goto_0

    .line 161
    :cond_3
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 162
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/mob/commons/cc/r$a;->c:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/r$a;->d:Ljava/lang/Number;

    goto :goto_0

    .line 163
    :cond_4
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 164
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mob/commons/cc/r$a;->c:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/r$a;->d:Ljava/lang/Number;

    goto :goto_0

    .line 165
    :cond_5
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 166
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/mob/commons/cc/r$a;->c:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/r$a;->d:Ljava/lang/Number;

    goto :goto_0

    .line 167
    :cond_6
    instance-of v1, v1, Ljava/lang/Short;

    if-eqz v1, :cond_7

    .line 168
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    iget-object v2, p0, Lcom/mob/commons/cc/r$a;->c:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/r$a;->d:Ljava/lang/Number;

    goto :goto_0

    .line 170
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    iget-object v2, p0, Lcom/mob/commons/cc/r$a;->c:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/r$a;->d:Ljava/lang/Number;

    :goto_0
    return-object v0
.end method
