.class public final Lgbsdk/common/host/abni;
.super Ljava/lang/Thread;
.source "LogSender.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Object;

.field private bw:J

.field private f:J

.field private g:J

.field private j:I

.field private final vf:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final vg:Lgbsdk/common/host/abnj;

.field private vh:Lgbsdk/common/host/abmn;

.field private final vi:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lgbsdk/common/host/abml;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lgbsdk/common/host/abmn;Ljava/util/LinkedList;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lgbsdk/common/host/abmn;",
            "Ljava/util/LinkedList<",
            "Lgbsdk/common/host/abml;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    const-string v0, "LogSender"

    .line 50
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abni;->b:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lgbsdk/common/host/abni;->bw:J

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lgbsdk/common/host/abni;->f:J

    const-wide/32 v0, 0x1d4c0

    .line 39
    iput-wide v0, p0, Lgbsdk/common/host/abni;->g:J

    .line 51
    iput-object p2, p0, Lgbsdk/common/host/abni;->vh:Lgbsdk/common/host/abmn;

    .line 52
    iput-object p1, p0, Lgbsdk/common/host/abni;->a:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lgbsdk/common/host/abni;->vi:Ljava/util/LinkedList;

    .line 54
    iput-object p4, p0, Lgbsdk/common/host/abni;->vf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    invoke-static {p1}, Lgbsdk/common/host/abnj;->T(Landroid/content/Context;)Lgbsdk/common/host/abnj;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abni;->vg:Lgbsdk/common/host/abnj;

    return-void
.end method

.method private a(Lgbsdk/common/host/abmm;Ljava/lang/String;[B)Z
    .locals 1

    if-eqz p3, :cond_1

    .line 311
    array-length v0, p3

    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p1, p2, p3}, Lgbsdk/common/host/abmm;->b(Ljava/lang/String;[B)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private b()V
    .locals 8

    .line 62
    invoke-direct {p0}, Lgbsdk/common/host/abni;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abni;->vh:Lgbsdk/common/host/abmn;

    iget-object v0, v0, Lgbsdk/common/host/abmn;->c:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 69
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 70
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lgbsdk/common/host/abni;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgbsdk/common/host/abmm;

    if-nez v3, :cond_2

    goto :goto_0

    .line 78
    :cond_2
    iget-object v3, v3, Lgbsdk/common/host/abmm;->uW:Lgbsdk/common/host/abmm$ac;

    if-nez v3, :cond_3

    goto :goto_0

    .line 82
    :cond_3
    iget-object v4, p0, Lgbsdk/common/host/abni;->vg:Lgbsdk/common/host/abnj;

    invoke-interface {v3}, Lgbsdk/common/host/abmm$ac;->Z()I

    move-result v5

    invoke-interface {v3}, Lgbsdk/common/host/abmm$ac;->f()J

    move-result-wide v6

    invoke-virtual {v4, v2, v5, v6, v7}, Lgbsdk/common/host/abnj;->a(Ljava/lang/String;IJ)V

    goto :goto_0

    .line 86
    :cond_4
    :goto_1
    iget-object v0, p0, Lgbsdk/common/host/abni;->vg:Lgbsdk/common/host/abnj;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-wide/32 v3, 0x337f9800

    invoke-virtual {v0, v1, v2, v3, v4}, Lgbsdk/common/host/abnj;->a(Ljava/lang/String;IJ)V

    return-void
.end method

.method private c()Z
    .locals 6

    .line 95
    invoke-direct {p0}, Lgbsdk/common/host/abni;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 103
    iget-object v2, p0, Lgbsdk/common/host/abni;->vi:Ljava/util/LinkedList;

    monitor-enter v2

    .line 104
    :try_start_0
    invoke-direct {p0}, Lgbsdk/common/host/abni;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    monitor-exit v2

    return v1

    .line 107
    :cond_1
    iget-object v3, p0, Lgbsdk/common/host/abni;->vi:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 108
    iget-object v0, p0, Lgbsdk/common/host/abni;->vi:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abml;

    .line 110
    :cond_2
    iget-object v3, p0, Lgbsdk/common/host/abni;->vi:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    .line 111
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 114
    :try_start_1
    iget-object v2, p0, Lgbsdk/common/host/abni;->vg:Lgbsdk/common/host/abnj;

    iget-object v3, v0, Lgbsdk/common/host/abml;->f:Ljava/lang/String;

    iget-object v0, v0, Lgbsdk/common/host/abml;->b:[B

    invoke-virtual {v2, v3, v0}, Lgbsdk/common/host/abnj;->c(Ljava/lang/String;[B)J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    .line 123
    iget-object v0, p0, Lgbsdk/common/host/abni;->vg:Lgbsdk/common/host/abnj;

    invoke-virtual {v0}, Lgbsdk/common/host/abnj;->b()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    iget-object v0, p0, Lgbsdk/common/host/abni;->vg:Lgbsdk/common/host/abnj;

    invoke-virtual {v0}, Lgbsdk/common/host/abnj;->b()V

    :cond_4
    :goto_0
    return v1

    :catchall_0
    move-exception v0

    .line 111
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private d()Z
    .locals 19

    move-object/from16 v1, p0

    .line 141
    invoke-direct/range {p0 .. p0}, Lgbsdk/common/host/abni;->e()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 148
    :cond_0
    iget-wide v3, v1, Lgbsdk/common/host/abni;->bw:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v7, v1, Lgbsdk/common/host/abni;->f:J

    sub-long/2addr v3, v7

    const-wide/32 v7, 0x927c0

    cmp-long v0, v3, v7

    if-lez v0, :cond_1

    .line 150
    iput-wide v5, v1, Lgbsdk/common/host/abni;->bw:J

    .line 151
    invoke-direct/range {p0 .. p0}, Lgbsdk/common/host/abni;->b()V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lgbsdk/common/host/abni;->f:J

    .line 156
    :cond_1
    iget-object v0, v1, Lgbsdk/common/host/abni;->a:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abmo;->a(Landroid/content/Context;)Z

    move-result v0

    const-wide/32 v3, 0x1d4c0

    if-nez v0, :cond_2

    .line 160
    iput-wide v3, v1, Lgbsdk/common/host/abni;->g:J

    return v2

    .line 163
    :cond_2
    iget-object v0, v1, Lgbsdk/common/host/abni;->vg:Lgbsdk/common/host/abnj;

    iget-wide v7, v1, Lgbsdk/common/host/abni;->bw:J

    invoke-virtual {v0, v7, v8}, Lgbsdk/common/host/abnj;->r(J)Lgbsdk/common/host/abml;

    move-result-object v7

    const/4 v0, 0x0

    if-nez v7, :cond_5

    .line 165
    iget-wide v7, v1, Lgbsdk/common/host/abni;->bw:J

    cmp-long v9, v7, v5

    if-nez v9, :cond_3

    iget-object v7, v1, Lgbsdk/common/host/abni;->vg:Lgbsdk/common/host/abnj;

    invoke-virtual {v7, v0}, Lgbsdk/common/host/abnj;->bd(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-nez v0, :cond_3

    .line 166
    iput-wide v5, v1, Lgbsdk/common/host/abni;->g:J

    return v2

    .line 170
    :cond_3
    iget-wide v5, v1, Lgbsdk/common/host/abni;->bw:J

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-nez v0, :cond_4

    .line 171
    iput-wide v3, v1, Lgbsdk/common/host/abni;->g:J

    .line 173
    :cond_4
    iput-wide v7, v1, Lgbsdk/common/host/abni;->bw:J

    return v2

    .line 179
    :cond_5
    iget-wide v8, v1, Lgbsdk/common/host/abni;->bw:J

    iget-wide v10, v7, Lgbsdk/common/host/abml;->a:J

    cmp-long v12, v8, v10

    if-gez v12, :cond_6

    .line 180
    iget-wide v8, v7, Lgbsdk/common/host/abml;->a:J

    iput-wide v8, v1, Lgbsdk/common/host/abni;->bw:J

    goto :goto_0

    .line 182
    :cond_6
    iget-wide v8, v1, Lgbsdk/common/host/abni;->bw:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v1, Lgbsdk/common/host/abni;->bw:J

    .line 195
    :goto_0
    iget-object v8, v7, Lgbsdk/common/host/abml;->b:[B

    const/4 v9, 0x1

    if-eqz v8, :cond_13

    iget-object v8, v7, Lgbsdk/common/host/abml;->b:[B

    array-length v8, v8

    if-gtz v8, :cond_7

    goto/16 :goto_6

    .line 201
    :cond_7
    iget-object v0, v1, Lgbsdk/common/host/abni;->vh:Lgbsdk/common/host/abmn;

    iget-object v8, v7, Lgbsdk/common/host/abml;->f:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lgbsdk/common/host/abmn;->bc(Ljava/lang/String;)Lgbsdk/common/host/abmm;

    move-result-object v8

    if-nez v8, :cond_8

    return v9

    .line 210
    :cond_8
    iget-object v10, v8, Lgbsdk/common/host/abmm;->uW:Lgbsdk/common/host/abmm$ac;

    .line 211
    iget-object v0, v8, Lgbsdk/common/host/abmm;->uY:Lgbsdk/common/host/abmm$ad;

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 213
    invoke-interface {v10}, Lgbsdk/common/host/abmm$ac;->d()J

    move-result-wide v13

    if-eqz v0, :cond_b

    .line 215
    invoke-interface {v0}, Lgbsdk/common/host/abmm$ad;->a()Z

    move-result v15

    if-eqz v15, :cond_9

    move-object v0, v10

    const/4 v3, 0x1

    goto/16 :goto_7

    .line 219
    :cond_9
    invoke-interface {v0}, Lgbsdk/common/host/abmm$ad;->b()J

    move-result-wide v15

    cmp-long v17, v15, v5

    if-lez v17, :cond_a

    .line 220
    iget-wide v3, v8, Lgbsdk/common/host/abmm;->f:J

    sub-long v3, v11, v3

    cmp-long v18, v3, v15

    if-gez v18, :cond_a

    return v9

    .line 223
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v8, Lgbsdk/common/host/abmm;->f:J

    :cond_b
    cmp-long v3, v13, v5

    if-lez v3, :cond_c

    .line 227
    iget v3, v7, Lgbsdk/common/host/abml;->d:I

    if-lez v3, :cond_c

    iget-wide v3, v7, Lgbsdk/common/host/abml;->bw:J

    sub-long/2addr v11, v3

    iget v3, v7, Lgbsdk/common/host/abml;->d:I

    int-to-long v3, v3

    mul-long v13, v13, v3

    cmp-long v3, v11, v13

    if-gez v3, :cond_c

    return v9

    .line 232
    :cond_c
    iget-object v3, v8, Lgbsdk/common/host/abmm;->a:Ljava/lang/String;

    .line 233
    invoke-interface {v10}, Lgbsdk/common/host/abmm$ac;->b()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_d

    return v9

    .line 241
    :cond_d
    :try_start_0
    invoke-interface {v10}, Lgbsdk/common/host/abmm$ac;->e()Ljava/lang/String;

    move-result-object v11

    .line 242
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 244
    iget-object v0, v7, Lgbsdk/common/host/abml;->b:[B

    invoke-direct {v1, v8, v11, v0}, Lgbsdk/common/host/abni;->a(Lgbsdk/common/host/abmm;Ljava/lang/String;[B)Z

    move-result v0

    goto :goto_3

    .line 246
    :cond_e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 248
    iget-object v0, v7, Lgbsdk/common/host/abml;->b:[B

    invoke-direct {v1, v8, v3, v0}, Lgbsdk/common/host/abni;->a(Lgbsdk/common/host/abmm;Ljava/lang/String;[B)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_f

    :try_start_1
    const-string v0, ""

    .line 251
    iput-object v0, v8, Lgbsdk/common/host/abmm;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_f
    :goto_1
    move v0, v3

    goto :goto_3

    .line 256
    :cond_10
    :try_start_2
    invoke-interface {v0}, Lgbsdk/common/host/abmm$ad;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 258
    iget v0, v1, Lgbsdk/common/host/abni;->j:I

    add-int/2addr v0, v9

    iput v0, v1, Lgbsdk/common/host/abni;->j:I

    .line 260
    :cond_11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iget v3, v1, Lgbsdk/common/host/abni;->j:I

    if-le v0, v3, :cond_12

    iget v0, v1, Lgbsdk/common/host/abni;->j:I

    if-ltz v0, :cond_12

    .line 261
    iget v0, v1, Lgbsdk/common/host/abni;->j:I

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 263
    :cond_12
    iput v2, v1, Lgbsdk/common/host/abni;->j:I

    .line 264
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    :goto_2
    iget-object v3, v7, Lgbsdk/common/host/abml;->b:[B

    invoke-direct {v1, v8, v0, v3}, Lgbsdk/common/host/abni;->a(Lgbsdk/common/host/abmm;Ljava/lang/String;[B)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_f

    .line 269
    :try_start_3
    iput-object v0, v8, Lgbsdk/common/host/abmm;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_3
    move v3, v0

    goto :goto_5

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    .line 274
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "send log exception: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "LogSender"

    invoke-static {v4, v0}, Lgbsdk/common/host/abmn;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move-object v0, v10

    goto :goto_7

    :cond_13
    :goto_6
    move-object v8, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 278
    :goto_7
    invoke-direct/range {p0 .. p0}, Lgbsdk/common/host/abni;->e()Z

    move-result v4

    if-eqz v4, :cond_14

    return v9

    :cond_14
    if-eqz v2, :cond_15

    .line 282
    iget-object v10, v1, Lgbsdk/common/host/abni;->vg:Lgbsdk/common/host/abnj;

    iget-wide v11, v7, Lgbsdk/common/host/abml;->a:J

    const/4 v13, 0x1

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lgbsdk/common/host/abnj;->a(JZJI)Z

    goto :goto_9

    .line 284
    :cond_15
    iget-object v10, v1, Lgbsdk/common/host/abni;->vg:Lgbsdk/common/host/abnj;

    iget-wide v11, v7, Lgbsdk/common/host/abml;->a:J

    invoke-interface {v0}, Lgbsdk/common/host/abmm$ac;->f()J

    move-result-wide v14

    invoke-interface {v0}, Lgbsdk/common/host/abmm$ac;->Z()I

    move-result v16

    move v13, v3

    invoke-virtual/range {v10 .. v16}, Lgbsdk/common/host/abnj;->a(JZJI)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 286
    invoke-interface {v0}, Lgbsdk/common/host/abmm$ac;->d()J

    move-result-wide v10

    iget v0, v7, Lgbsdk/common/host/abml;->d:I

    add-int/2addr v0, v9

    int-to-long v12, v0

    mul-long v10, v10, v12

    cmp-long v0, v10, v5

    if-lez v0, :cond_16

    .line 288
    iput-wide v10, v1, Lgbsdk/common/host/abni;->g:J

    .line 290
    :cond_16
    iget-wide v4, v1, Lgbsdk/common/host/abni;->g:J

    const-wide/32 v10, 0x1d4c0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lgbsdk/common/host/abni;->g:J

    goto :goto_8

    :cond_17
    const-wide/32 v10, 0x1d4c0

    .line 292
    iput-wide v10, v1, Lgbsdk/common/host/abni;->g:J

    .line 294
    :goto_8
    iget-object v0, v7, Lgbsdk/common/host/abml;->b:[B

    invoke-virtual {v8, v0, v3}, Lgbsdk/common/host/abmm;->a([BZ)V

    :goto_9
    return v9
.end method

.method private e()Z
    .locals 1

    .line 376
    iget-object v0, p0, Lgbsdk/common/host/abni;->vf:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method


# virtual methods
.method a()V
    .locals 2

    .line 383
    iget-object v0, p0, Lgbsdk/common/host/abni;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abni;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 385
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 6

    const-string v0, "LogSender"

    const-string v1, "LogSender start"

    .line 335
    invoke-static {v0, v1}, Lgbsdk/common/host/abmn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_0
    invoke-direct {p0}, Lgbsdk/common/host/abni;->e()Z

    move-result v0

    if-nez v0, :cond_6

    .line 341
    invoke-direct {p0}, Lgbsdk/common/host/abni;->c()Z

    move-result v0

    .line 343
    invoke-direct {p0}, Lgbsdk/common/host/abni;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    .line 347
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abni;->d()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 349
    :goto_2
    invoke-direct {p0}, Lgbsdk/common/host/abni;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_5

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_0

    .line 357
    :cond_4
    iget-object v0, p0, Lgbsdk/common/host/abni;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-wide v1, p0, Lgbsdk/common/host/abni;->g:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_5

    .line 363
    iget-object v1, p0, Lgbsdk/common/host/abni;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 365
    :cond_5
    iget-object v1, p0, Lgbsdk/common/host/abni;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lgbsdk/common/host/abni;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    .line 370
    :catch_0
    :goto_3
    :try_start_1
    monitor-exit v0

    goto :goto_0

    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_6
    :goto_5
    const-string v0, "LogSender"

    const-string v1, "LogSender quit"

    .line 372
    invoke-static {v0, v1}, Lgbsdk/common/host/abmn;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
