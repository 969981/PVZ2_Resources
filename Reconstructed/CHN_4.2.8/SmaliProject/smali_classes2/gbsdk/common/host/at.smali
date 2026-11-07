.class public Lgbsdk/common/host/at;
.super Lgbsdk/common/host/ao;
.source "Sender.java"


# static fields
.field public static final aK:[J

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public aM:Lgbsdk/common/host/abbr;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x2710

    aput-wide v2, v0, v1

    .line 1
    sput-object v0, Lgbsdk/common/host/at;->aK:[J

    return-void
.end method

.method public constructor <init>(Lgbsdk/common/host/ap;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lgbsdk/common/host/ao;-><init>(Lgbsdk/common/host/ap;)V

    .line 2
    new-instance v0, Lgbsdk/common/host/abbr;

    .line 3
    iget-object p1, p1, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    const-string v1, "sender_"

    .line 4
    invoke-direct {v0, v1, p1}, Lgbsdk/common/host/abbr;-><init>(Ljava/lang/String;Lgbsdk/common/host/abbk;)V

    iput-object v0, p0, Lgbsdk/common/host/at;->aM:Lgbsdk/common/host/abbr;

    return-void
.end method


# virtual methods
.method public B()[J
    .locals 1

    .line 1
    sget-object v0, Lgbsdk/common/host/at;->aK:[J

    return-object v0
.end method

.method public c()Z
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lgbsdk/common/host/at;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "1ff9f3d4b8c70e571177e3cceba2747f"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v2, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2
    iget-object v4, v0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 3
    iget-object v4, v4, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    if-eqz v4, :cond_1

    const-wide/32 v5, 0xc350

    .line 4
    invoke-virtual {v4, v2, v3, v5, v6}, Lgbsdk/common/host/av;->b(JJ)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v3, v0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 7
    iget-object v3, v3, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 8
    invoke-virtual {v3}, Lgbsdk/common/host/abbf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/apm/applog/AppLog;->getInstance(Ljava/lang/String;)Lcom/apm/applog/AppLog;

    move-result-object v3

    const-string v4, "play_session"

    invoke-virtual {v3, v4, v2}, Lcom/apm/applog/AppLog;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    iget-object v2, v0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 10
    iget-object v2, v2, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 11
    invoke-virtual {v2}, Lgbsdk/common/host/abbf;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apm/applog/AppLog;->getInstance(Ljava/lang/String;)Lcom/apm/applog/AppLog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apm/applog/AppLog;->flush()V

    .line 14
    :cond_1
    iget-object v2, v0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    invoke-virtual {v2}, Lgbsdk/common/host/ap;->D()Lgbsdk/common/host/abah;

    move-result-object v2

    .line 15
    iget-object v3, v0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 16
    iget-object v3, v3, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 17
    invoke-virtual {v3}, Lgbsdk/common/host/abbf;->J()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_24

    .line 18
    iget-object v4, v0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 19
    iget-object v4, v4, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    if-eqz v4, :cond_2

    .line 20
    invoke-virtual {v4}, Lgbsdk/common/host/av;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 21
    iget-object v4, v3, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/apm/common/utility/NetworkUtils;->getNetworkTypeFast(Landroid/content/Context;)Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/apm/common/utility/NetworkUtils;->getNetworkAccessType(Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "access"

    .line 22
    invoke-virtual {v3, v6, v4}, Lgbsdk/common/host/abbf;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 23
    :cond_2
    invoke-virtual {v3}, Lgbsdk/common/host/abbf;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lgbsdk/common/host/abdh;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_23

    .line 25
    invoke-static {}, Lcom/apm/applog/AppLog;->getHeaderCustomCallback()Lgbsdk/common/host/an;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 27
    invoke-interface {v6, v3}, Lgbsdk/common/host/an;->a(Lorg/json/JSONObject;)V

    .line 29
    :cond_3
    invoke-virtual {v2, v3}, Lgbsdk/common/host/abah;->o(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    .line 30
    iget-object v3, v0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    invoke-virtual {v3}, Lgbsdk/common/host/ap;->D()Lgbsdk/common/host/abah;

    move-result-object v3

    .line 31
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iget-object v8, v0, Lgbsdk/common/host/at;->aM:Lgbsdk/common/host/abbr;

    .line 34
    invoke-virtual {v8}, Lgbsdk/common/host/abbr;->a()Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_0

    .line 38
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 39
    iget-wide v11, v8, Lgbsdk/common/host/abbr;->f:J

    sub-long v11, v9, v11

    sget-object v13, Lgbsdk/common/host/abbr;->bl:[[J

    iget v14, v8, Lgbsdk/common/host/abbr;->c:I

    aget-object v15, v13, v14

    aget-wide v16, v15, v1

    cmp-long v15, v11, v16

    if-ltz v15, :cond_5

    .line 42
    iput v5, v8, Lgbsdk/common/host/abbr;->d:I

    .line 43
    iput-wide v9, v8, Lgbsdk/common/host/abbr;->f:J

    goto :goto_0

    .line 44
    :cond_5
    iget v9, v8, Lgbsdk/common/host/abbr;->d:I

    int-to-long v10, v9

    aget-object v12, v13, v14

    const/4 v13, 0x2

    aget-wide v13, v12, v13

    cmp-long v12, v10, v13

    if-gez v12, :cond_6

    add-int/2addr v9, v5

    .line 46
    iput v9, v8, Lgbsdk/common/host/abbr;->d:I

    :goto_0
    const/4 v8, 0x1

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_7

    .line 47
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-virtual {v3, v6, v7, v2}, Lgbsdk/common/host/abah;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_13

    .line 52
    :cond_7
    iget-object v8, v0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 53
    iget-object v9, v8, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 54
    iget-object v8, v8, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 55
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 57
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    :cond_8
    invoke-virtual {v3}, Lgbsdk/common/host/abah;->M()Ljava/util/ArrayList;

    move-result-object v11

    .line 60
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    .line 61
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    :cond_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_22

    .line 65
    iget-object v11, v0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    invoke-virtual {v8}, Lgbsdk/common/host/abbf;->d()Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v11, v8, v1}, Lgbsdk/common/host/ak;->a(Lgbsdk/common/host/ap;Lorg/json/JSONObject;Z)[Ljava/lang/String;

    move-result-object v8

    .line 66
    iget-boolean v11, v9, Lgbsdk/common/host/abbk;->q:Z

    .line 67
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgbsdk/common/host/abag;

    .line 68
    iget-object v14, v13, Lgbsdk/common/host/abag;->bE:[B

    if-eqz v14, :cond_1c

    array-length v14, v14

    if-gtz v14, :cond_a

    goto/16 :goto_e

    .line 69
    :cond_a
    iget v14, v9, Lgbsdk/common/host/abbk;->k:I

    if-lez v14, :cond_d

    .line 70
    invoke-virtual {v9}, Lgbsdk/common/host/abbk;->e()J

    move-result-wide v14

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v19, v2

    .line 72
    iget-wide v1, v9, Lgbsdk/common/host/abbk;->az:J

    add-long v20, v1, v14

    cmp-long v22, v16, v20

    if-gez v22, :cond_c

    .line 73
    iget v1, v9, Lgbsdk/common/host/abbk;->n:I

    iget v2, v9, Lgbsdk/common/host/abbk;->bd:I

    if-lt v1, v2, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 76
    iput v1, v9, Lgbsdk/common/host/abbk;->n:I

    goto :goto_3

    :cond_c
    sub-long v16, v16, v1

    .line 79
    div-long v16, v16, v14

    mul-long v16, v16, v14

    add-long v1, v16, v1

    iput-wide v1, v9, Lgbsdk/common/host/abbk;->az:J

    .line 80
    iput v5, v9, Lgbsdk/common/host/abbk;->n:I

    goto :goto_3

    :cond_d
    move-object/from16 v19, v2

    .line 83
    :goto_3
    iget v1, v9, Lgbsdk/common/host/abbk;->k:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_e

    goto :goto_4

    :cond_e
    if-lez v1, :cond_f

    if-ge v1, v2, :cond_f

    .line 85
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 86
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget v2, v9, Lgbsdk/common/host/abbk;->k:I

    if-ge v1, v2, :cond_f

    :goto_4
    const/4 v1, 0x1

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_11

    move-object/from16 v1, v19

    .line 87
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 88
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    move-object v2, v1

    const/4 v1, 0x0

    goto :goto_2

    :cond_11
    move-object/from16 v1, v19

    .line 96
    invoke-virtual {v13}, Lgbsdk/common/host/abag;->h()Z

    move-result v2

    if-nez v2, :cond_13

    if-eqz v11, :cond_12

    goto :goto_6

    :cond_12
    const-string v2, "no launch pack."

    .line 97
    invoke-static {v2, v4}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v2, 0xc8

    goto :goto_7

    .line 98
    :cond_13
    :goto_6
    iget-object v2, v13, Lgbsdk/common/host/abag;->bE:[B

    invoke-static {v8, v2, v9}, Lgbsdk/common/host/aj;->a([Ljava/lang/String;[BLgbsdk/common/host/abbk;)I

    move-result v2

    .line 103
    :goto_7
    invoke-static {v2}, Lgbsdk/common/host/aj;->g(I)Z

    move-result v15

    const-string v4, "downgrade_index"

    const-string v14, "downgrade_time"

    if-eqz v15, :cond_16

    .line 104
    iget-object v8, v0, Lgbsdk/common/host/at;->aM:Lgbsdk/common/host/abbr;

    .line 105
    invoke-virtual {v8}, Lgbsdk/common/host/abbr;->a()Z

    move-result v9

    if-nez v9, :cond_14

    :goto_8
    const/4 v5, 0x0

    goto :goto_9

    .line 110
    :cond_14
    iget v9, v8, Lgbsdk/common/host/abbr;->c:I

    sget-object v11, Lgbsdk/common/host/abbr;->bl:[[J

    array-length v11, v11

    sub-int/2addr v11, v5

    if-ge v9, v11, :cond_15

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 112
    iget v9, v8, Lgbsdk/common/host/abbr;->c:I

    add-int/2addr v9, v5

    iput v9, v8, Lgbsdk/common/host/abbr;->c:I

    .line 113
    iput v5, v8, Lgbsdk/common/host/abbr;->d:I

    const/4 v9, 0x0

    .line 114
    iput v9, v8, Lgbsdk/common/host/abbr;->e:I

    .line 115
    iput-wide v11, v8, Lgbsdk/common/host/abbr;->f:J

    .line 116
    iput-wide v11, v8, Lgbsdk/common/host/abbr;->g:J

    .line 117
    iget-object v9, v8, Lgbsdk/common/host/abbr;->bm:Lgbsdk/common/host/abbk;

    .line 118
    iget-object v9, v9, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    .line 119
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lgbsdk/common/host/abbr;->a:Ljava/lang/String;

    invoke-static {v15, v5, v14}, Lgbsdk/common/host/ab;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Lgbsdk/common/host/abbr;->a:Ljava/lang/String;

    invoke-static {v9, v11, v4}, Lgbsdk/common/host/ab;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v8, v8, Lgbsdk/common/host/abbr;->c:I

    .line 120
    invoke-interface {v5, v4, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_8

    :cond_15
    const/4 v5, 0x0

    .line 121
    iput v5, v8, Lgbsdk/common/host/abbr;->e:I

    .line 122
    :goto_9
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 123
    iput v2, v13, Lgbsdk/common/host/abag;->n:I

    .line 124
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_16
    const/4 v5, 0x0

    const/16 v15, 0xc8

    if-ne v2, v15, :cond_1b

    .line 128
    iget-object v2, v0, Lgbsdk/common/host/at;->aM:Lgbsdk/common/host/abbr;

    .line 129
    invoke-virtual {v2}, Lgbsdk/common/host/abbr;->a()Z

    move-result v15

    if-nez v15, :cond_17

    move-object v4, v6

    move-object/from16 v23, v8

    move-object/from16 v18, v9

    goto/16 :goto_d

    .line 133
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 134
    iget v15, v2, Lgbsdk/common/host/abbr;->e:I

    move-object/from16 v20, v6

    int-to-long v5, v15

    sget-object v22, Lgbsdk/common/host/abbr;->bl:[[J

    move-object/from16 v23, v8

    iget v8, v2, Lgbsdk/common/host/abbr;->c:I

    aget-object v8, v22, v8

    const/16 v17, 0x1

    aget-wide v24, v8, v17

    cmp-long v8, v5, v24

    if-gez v8, :cond_19

    iget-wide v5, v2, Lgbsdk/common/host/abbr;->g:J

    sub-long v18, v18, v5

    const-wide/32 v5, 0x1b7740

    cmp-long v8, v18, v5

    if-lez v8, :cond_18

    goto :goto_a

    :cond_18
    add-int/lit8 v15, v15, 0x1

    .line 141
    iput v15, v2, Lgbsdk/common/host/abbr;->e:I

    goto :goto_b

    .line 142
    :cond_19
    :goto_a
    iget v5, v2, Lgbsdk/common/host/abbr;->c:I

    if-lez v5, :cond_1a

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 144
    iget v8, v2, Lgbsdk/common/host/abbr;->c:I

    const/4 v15, 0x1

    sub-int/2addr v8, v15

    iput v8, v2, Lgbsdk/common/host/abbr;->c:I

    .line 145
    iput v15, v2, Lgbsdk/common/host/abbr;->d:I

    .line 146
    iput v15, v2, Lgbsdk/common/host/abbr;->e:I

    .line 147
    iput-wide v5, v2, Lgbsdk/common/host/abbr;->f:J

    .line 148
    iput-wide v5, v2, Lgbsdk/common/host/abbr;->g:J

    .line 149
    iget-object v8, v2, Lgbsdk/common/host/abbr;->bm:Lgbsdk/common/host/abbk;

    .line 150
    iget-object v8, v8, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    .line 151
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v9

    iget-object v9, v2, Lgbsdk/common/host/abbr;->a:Ljava/lang/String;

    invoke-static {v15, v9, v14}, Lgbsdk/common/host/ab;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lgbsdk/common/host/abbr;->a:Ljava/lang/String;

    invoke-static {v6, v8, v4}, Lgbsdk/common/host/ab;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v2, v2, Lgbsdk/common/host/abbr;->c:I

    .line 152
    invoke-interface {v5, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_c

    :cond_1a
    :goto_b
    move-object/from16 v18, v9

    :goto_c
    move-object/from16 v4, v20

    .line 153
    :goto_d
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1b
    move-object v4, v6

    move-object/from16 v23, v8

    move-object/from16 v18, v9

    .line 155
    iput v2, v13, Lgbsdk/common/host/abag;->n:I

    .line 156
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    goto :goto_10

    :cond_1c
    :goto_e
    move-object v1, v2

    move-object v4, v6

    move-object/from16 v23, v8

    move-object/from16 v18, v9

    .line 157
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    move-object v2, v1

    move-object v6, v4

    move-object/from16 v9, v18

    move-object/from16 v8, v23

    :goto_10
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_1d
    move-object v1, v2

    :cond_1e
    :goto_11
    move-object v4, v6

    .line 191
    iget-object v2, v0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1f

    const/4 v5, 0x1

    goto :goto_12

    :cond_1f
    const/4 v5, 0x0

    .line 192
    :goto_12
    iput-boolean v5, v2, Lgbsdk/common/host/ap;->v:Z

    .line 193
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_20

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_21

    .line 194
    :cond_20
    invoke-virtual {v3, v4, v7, v1}, Lgbsdk/common/host/abah;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 196
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sender"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 197
    invoke-static {v1, v2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    :goto_13
    const/4 v1, 0x1

    goto :goto_14

    :cond_23
    move-object v2, v4

    .line 198
    invoke-static {v2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    :cond_24
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "sender"

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()J
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/at;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b2d72ae4b563e519617c2f97a517724d"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 1
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/ao;->an:Lgbsdk/common/host/ap;

    .line 2
    iget-object v0, v0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 3
    invoke-virtual {v0}, Lgbsdk/common/host/abbk;->e()J

    move-result-wide v0

    return-wide v0
.end method
