.class public Lgbsdk/common/host/abdb;
.super Ljava/lang/Object;


# static fields
.field static volatile a:Z = true

.field private static volatile cR:Z


# instance fields
.field b:Ljava/util/regex/Pattern;

.field private bD:Lorg/json/JSONObject;

.field private bJ:Lorg/json/JSONArray;

.field private bL:Lorg/json/JSONObject;

.field private final cB:Landroid/content/Context;

.field private cQ:Lgbsdk/common/host/abda;

.field private cS:Ljava/io/File;

.field private cT:Lorg/json/JSONObject;

.field private cU:Lorg/json/JSONObject;

.field private cV:Lorg/json/JSONArray;

.field private cW:Lorg/json/JSONArray;

.field private cX:Z

.field private final cY:Ljava/lang/Object;

.field private volatile cZ:Z

.field private da:J

.field private db:J

.field private final dc:Ljava/lang/Runnable;

.field private dd:I

.field private de:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private df:Ljava/io/File;

.field private volatile e:Z

.field private g:J

.field private i:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private r:I

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgbsdk/common/host/abdb;->g:J

    const/4 v2, 0x0

    iput-object v2, p0, Lgbsdk/common/host/abdb;->cS:Ljava/io/File;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lgbsdk/common/host/abdb;->i:Z

    const-string v3, "unknown"

    iput-object v3, p0, Lgbsdk/common/host/abdb;->l:Ljava/lang/String;

    iput-object v3, p0, Lgbsdk/common/host/abdb;->m:Ljava/lang/String;

    iput-object v3, p0, Lgbsdk/common/host/abdb;->n:Ljava/lang/String;

    const-string v3, "npth_inner_default"

    iput-object v3, p0, Lgbsdk/common/host/abdb;->o:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Lgbsdk/common/host/abdb;->r:I

    iput-wide v0, p0, Lgbsdk/common/host/abdb;->s:J

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lgbsdk/common/host/abdb;->cY:Ljava/lang/Object;

    iput-wide v0, p0, Lgbsdk/common/host/abdb;->da:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgbsdk/common/host/abdb;->db:J

    new-instance v0, Lgbsdk/common/host/abdb$1;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abdb$1;-><init>(Lgbsdk/common/host/abdb;)V

    iput-object v0, p0, Lgbsdk/common/host/abdb;->dc:Ljava/lang/Runnable;

    iput v3, p0, Lgbsdk/common/host/abdb;->dd:I

    iput-object v2, p0, Lgbsdk/common/host/abdb;->de:Ljava/util/List;

    iput-object v2, p0, Lgbsdk/common/host/abdb;->b:Ljava/util/regex/Pattern;

    iput-object v2, p0, Lgbsdk/common/host/abdb;->df:Ljava/io/File;

    iput-object p1, p0, Lgbsdk/common/host/abdb;->cB:Landroid/content/Context;

    return-void
.end method

.method private V()Ljava/io/File;
    .locals 6

    iget-object v0, p0, Lgbsdk/common/host/abdb;->df:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lgbsdk/common/host/abdb;->cB:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has_anr_signal_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lgbsdk/common/host/abdb;->cB:Landroid/content/Context;

    invoke-static {v3}, Lgbsdk/common/host/abhp;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lgbsdk/common/host/abdb;->df:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abdb;->df:Ljava/io/File;

    return-object v0
.end method

.method private static a(F)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const-string p0, "0%"

    return-object p0

    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    const-string p0, "0% - 10%"

    return-object p0

    :cond_1
    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2

    const-string p0, "10% - 30%"

    return-object p0

    :cond_2
    const v0, 0x3f19999a    # 0.6f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_3

    const-string p0, "30% - 60%"

    return-object p0

    :cond_3
    const v0, 0x3f666666    # 0.9f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_4

    const-string p0, "60% - 90%"

    return-object p0

    :cond_4
    const-string p0, "90% - 100%"

    return-object p0
.end method

.method private static a(FF)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    div-float/2addr p0, p1

    invoke-static {p0}, Lgbsdk/common/host/abdb;->a(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    const-string p0, "100%"

    goto :goto_0

    :cond_1
    const-string p0, "0%"

    :goto_0
    return-object p0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const-string v2, "\n"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    array-length v10, v2

    const-string v11, "unknown"

    move-object v15, v11

    move-object/from16 v16, v15

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_0
    const-string v12, "total"

    if-ge v13, v10, :cond_31

    aget-object v3, v2, v13

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v2

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move/from16 v19, v10

    move-object/from16 v22, v11

    const/4 v7, 0x3

    goto/16 :goto_19

    :cond_0
    move-object/from16 v18, v2

    const-string v2, ""

    move/from16 v19, v10

    const/4 v10, 0x1

    if-eqz v14, :cond_2e

    if-eq v14, v10, :cond_23

    const/4 v10, 0x2

    if-eq v14, v10, :cond_22

    const/4 v10, 0x3

    if-eq v14, v10, :cond_1

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v22, v11

    move/from16 v23, v14

    goto/16 :goto_16

    :cond_1
    const-string v10, "\\s"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move-object/from16 v22, v11

    array-length v11, v10

    move/from16 v23, v14

    const/4 v14, 0x2

    if-ge v11, v14, :cond_4

    move-object/from16 v25, v7

    :cond_2
    move-object/from16 v26, v8

    :cond_3
    move-object/from16 v27, v9

    goto/16 :goto_16

    :cond_4
    const/4 v11, 0x0

    aget-object v14, v10, v11

    const-string v11, "CPU"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    aget-object v14, v10, v11

    const-string v11, "usage"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v2, "ago"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v17, 0x1

    :cond_5
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move/from16 v14, v23

    const/4 v0, 0x4

    const/4 v7, 0x3

    goto/16 :goto_18

    :cond_7
    :goto_1
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    const/4 v0, 0x4

    const/4 v7, 0x3

    const/4 v14, 0x4

    goto/16 :goto_18

    :cond_8
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    aget-object v14, v10, v11

    const-string v11, "TOTAL:"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    move-object v11, v2

    move-object v0, v5

    move-object/from16 v25, v7

    goto/16 :goto_4

    :cond_a
    iget-object v11, v0, Lgbsdk/common/host/abdb;->cB:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    move-object v11, v2

    const/4 v3, 0x0

    :goto_2
    array-length v14, v10

    if-ge v3, v14, :cond_c

    aget-object v14, v10, v3

    move-object/from16 v24, v11

    iget-object v11, v0, Lgbsdk/common/host/abdb;->cB:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v10, v3

    aget-object v0, v10, v3

    move-object/from16 v25, v7

    const/16 v7, 0x2f

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v7, 0x1

    add-int/2addr v0, v7

    aget-object v21, v10, v3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v1, v21, -0x1

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_b
    move-object/from16 v25, v7

    move-object/from16 v11, v24

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v7, v25

    goto :goto_2

    :cond_c
    move-object/from16 v25, v7

    move-object/from16 v24, v11

    move-object/from16 v0, v25

    goto :goto_4

    :cond_d
    move-object/from16 v25, v7

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "system_server:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v11, v2

    move-object v0, v6

    goto :goto_4

    :cond_e
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "kswapd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v11, v2

    move-object v0, v9

    goto :goto_4

    :cond_f
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "dex2oat"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v11, v2

    move-object v0, v8

    goto :goto_4

    :cond_10
    move-object v11, v2

    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_11
    aget-object v3, v10, v1

    const-string v7, "%"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    add-int/lit8 v1, v1, 0x1

    array-length v3, v10

    if-lt v1, v3, :cond_11

    :cond_12
    :try_start_0
    aget-object v14, v10, v1

    invoke-virtual {v14, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v5, :cond_13

    move-object/from16 v26, v8

    goto :goto_5

    :cond_13
    move-object/from16 v26, v8

    :try_start_1
    invoke-static {}, Lgbsdk/common/host/abhq;->J()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v14, v8

    :goto_5
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_0
    move-object/from16 v26, v8

    :catchall_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v0, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v1, v1, 0x3

    const/4 v3, 0x0

    :goto_7
    array-length v8, v10

    if-ge v1, v8, :cond_3

    const-string v8, "kernel"

    const-string v14, "softirq"

    move-object/from16 v27, v9

    if-eqz v3, :cond_18

    const/4 v9, 0x1

    if-eq v3, v9, :cond_17

    const/4 v9, 0x2

    if-eq v3, v9, :cond_16

    const/4 v8, 0x3

    if-eq v3, v8, :cond_15

    const/4 v8, 0x4

    if-eq v3, v8, :cond_14

    const/4 v8, 0x5

    move/from16 v28, v3

    if-eq v3, v8, :cond_1d

    goto/16 :goto_c

    :cond_14
    move/from16 v28, v3

    const/16 v20, 0x5

    goto :goto_b

    :cond_15
    move/from16 v28, v3

    const/16 v20, 0x5

    goto :goto_a

    :cond_16
    move/from16 v28, v3

    const/16 v20, 0x5

    goto :goto_9

    :cond_17
    const/4 v9, 0x2

    const/16 v20, 0x5

    move/from16 v28, v3

    goto :goto_8

    :cond_18
    const/16 v20, 0x5

    aget-object v9, v10, v1

    move/from16 v28, v3

    const-string v3, "user"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v8, "user"

    const/4 v3, 0x1

    goto :goto_d

    :cond_19
    :goto_8
    aget-object v3, v10, v1

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x2

    goto :goto_d

    :cond_1a
    :goto_9
    aget-object v3, v10, v1

    const-string v8, "iowait"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v8, "iowait"

    const/4 v3, 0x3

    goto :goto_d

    :cond_1b
    :goto_a
    aget-object v3, v10, v1

    const-string v8, "irq"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v8, "irq"

    const/4 v3, 0x4

    goto :goto_d

    :cond_1c
    :goto_b
    aget-object v3, v10, v1

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object v8, v14

    const/4 v3, 0x5

    goto :goto_d

    :cond_1d
    aget-object v3, v10, v1

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x6

    move-object v8, v14

    goto :goto_d

    :cond_1e
    :goto_c
    move/from16 v3, v28

    const/4 v8, 0x0

    :goto_d
    if-eqz v8, :cond_20

    add-int/lit8 v9, v1, -0x1

    :try_start_2
    aget-object v9, v10, v9

    invoke-virtual {v9, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v5, :cond_1f

    move-object/from16 v20, v7

    goto :goto_e

    :cond_1f
    move-object/from16 v20, v7

    :try_start_3
    invoke-static {}, Lgbsdk/common/host/abhq;->J()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v9, v7

    :goto_e
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_f

    :catchall_2
    move-object/from16 v20, v7

    :catchall_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_20
    move-object/from16 v20, v7

    :goto_f
    const/high16 v8, -0x40800000    # -1.0f

    :goto_10
    const/4 v7, 0x6

    if-lt v3, v7, :cond_21

    goto/16 :goto_16

    :cond_21
    add-int/lit8 v1, v1, 0x3

    move-object/from16 v7, v20

    move-object/from16 v9, v27

    goto/16 :goto_7

    :cond_22
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v22, v11

    move/from16 v23, v14

    goto/16 :goto_14

    :cond_23
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v22, v11

    move/from16 v23, v14

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shortmsg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v7, 0x3a

    if-eqz v1, :cond_24

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    const/4 v10, 0x0

    goto :goto_11

    :cond_24
    const-string v1, "reason:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    const/4 v10, 0x1

    :goto_11
    const-string v1, "input dispatch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v7, "executing service"

    if-eqz v1, :cond_25

    const-string v0, "Input dispatching timed out"

    :goto_12
    move-object/from16 v16, v0

    goto :goto_13

    :cond_25
    const-string v1, "broadcast of intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v0, "Broadcast of Intent"

    goto :goto_12

    :cond_26
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v0, "null"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "service "

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    :cond_27
    move-object/from16 v16, v7

    goto :goto_13

    :cond_28
    const-string v1, "service.startforeground"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "not call Service.startForeground"

    goto :goto_12

    :cond_29
    move-object/from16 v16, v22

    :goto_13
    if-eqz v10, :cond_2a

    const/4 v0, 0x4

    const/4 v7, 0x3

    const/4 v14, 0x2

    goto/16 :goto_18

    :cond_2a
    :goto_14
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Load:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v7, 0x3

    if-ne v7, v1, :cond_2b

    const/4 v1, 0x0

    :goto_15
    array-length v2, v0

    if-ge v1, v2, :cond_2b

    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2b
    const/4 v0, 0x4

    const/4 v14, 0x3

    goto :goto_18

    :cond_2c
    :goto_16
    const/4 v7, 0x3

    goto :goto_17

    :cond_2d
    const/4 v7, 0x3

    const-string v1, "appfreeze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xa

    const-string v1, "AppFreeze"

    move-object/from16 v16, v1

    const/4 v0, 0x4

    const/16 v14, 0xa

    goto :goto_18

    :cond_2e
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v22, v11

    move/from16 v23, v14

    const/4 v7, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    const/4 v0, 0x4

    const/4 v14, 0x1

    goto :goto_18

    :cond_2f
    :goto_17
    move/from16 v14, v23

    const/4 v0, 0x4

    :goto_18
    if-lt v14, v0, :cond_30

    goto :goto_1a

    :cond_30
    :goto_19
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v10, v19

    move-object/from16 v11, v22

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    const/4 v3, 0x3

    goto/16 :goto_0

    :cond_31
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    :goto_1a
    move-object/from16 v0, v16

    const-string v1, "anr_tag"

    move-object/from16 v2, p2

    invoke-virtual {v2, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "anr_has_ago"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "anr_reason"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app"

    move-object/from16 v1, v25

    invoke-static {v1, v2, v0}, Lgbsdk/common/host/abdb;->a(Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v5, v2, v12}, Lgbsdk/common/host/abdb;->a(Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "npth_anr_systemserver_total"

    const-string v3, "not found"

    if-eqz v0, :cond_32

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1b

    :cond_32
    invoke-static {v6}, Lgbsdk/common/host/abic;->e(Ljava/util/Map;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lgbsdk/common/host/abdb;->b(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1b
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "npth_anr_kswapd_total"

    if-eqz v0, :cond_33

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1c

    :cond_33
    invoke-static/range {v27 .. v27}, Lgbsdk/common/host/abic;->e(Ljava/util/Map;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lgbsdk/common/host/abdb;->b(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1c
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "npth_anr_dex2oat_total"

    if-eqz v0, :cond_34

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1d

    :cond_34
    invoke-static/range {v26 .. v26}, Lgbsdk/common/host/abic;->e(Ljava/util/Map;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lgbsdk/common/host/abdb;->b(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1d
    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private static a(Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "npth_anr_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "_total"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "not found"

    :goto_0
    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "user"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v0, v6

    goto :goto_1

    :cond_2
    const-string v8, "kernel"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v2, v6

    goto :goto_1

    :cond_3
    const-string v8, "iowait"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v3, v6

    goto :goto_1

    :cond_4
    const-string v8, "irq"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v4, v6

    goto :goto_1

    :cond_5
    const-string v8, "softirq"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_1

    :cond_6
    add-float/2addr v0, v2

    add-float/2addr v0, v3

    add-float/2addr v0, v4

    add-float/2addr v0, v5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lgbsdk/common/host/abdb;->b(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_kernel_user_ratio"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0}, Lgbsdk/common/host/abdb;->a(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_iowait_user_ratio"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v0}, Lgbsdk/common/host/abdb;->a(FF)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    :goto_2
    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v1, Lgbsdk/common/host/abdb;->cT:Lorg/json/JSONObject;

    iput-object v3, v1, Lgbsdk/common/host/abdb;->bD:Lorg/json/JSONObject;

    const/4 v4, 0x0

    iput v4, v1, Lgbsdk/common/host/abdb;->r:I

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v7, "unknown"

    iput-object v7, v1, Lgbsdk/common/host/abdb;->l:Ljava/lang/String;

    iput-object v7, v1, Lgbsdk/common/host/abdb;->m:Ljava/lang/String;

    iput-object v7, v1, Lgbsdk/common/host/abdb;->n:Ljava/lang/String;

    sget-object v7, Lgbsdk/common/host/abge;->eh:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    const/4 v10, 0x3

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    move-object v11, v0

    move-object v0, v3

    move-object v14, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v12, v15, :cond_1c

    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    const-string v3, "NPTH_CATCH"

    const-string v4, "main"

    if-eqz v16, :cond_a

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8

    iget-object v15, v1, Lgbsdk/common/host/abdb;->cT:Lorg/json/JSONObject;

    if-nez v15, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-direct {v1, v11}, Lgbsdk/common/host/abdb;->c(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v15

    iput-object v15, v1, Lgbsdk/common/host/abdb;->cT:Lorg/json/JSONObject;

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_1
    if-eqz v8, :cond_2

    if-nez v14, :cond_2

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-direct {v1, v11}, Lgbsdk/common/host/abdb;->c(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v14

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {v1, v0, v11}, Lgbsdk/common/host/abdb;->b(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v5, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    :goto_2
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x28

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v15, 0x0

    invoke-virtual {v0, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    move-object v4, v0

    invoke-direct {v1, v4}, Lgbsdk/common/host/abdb;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :try_start_1
    invoke-direct {v1, v11}, Lgbsdk/common/host/abdb;->b(Lorg/json/JSONArray;)[I

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v15, v0

    sget-object v0, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    invoke-virtual {v0, v3, v15}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catchall_1
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    aget v15, v0, v3

    aget v9, v10, v3

    if-le v15, v9, :cond_6

    aget v9, v0, v3

    aput v9, v10, v3

    iput-object v4, v1, Lgbsdk/common/host/abdb;->l:Ljava/lang/String;

    :cond_6
    const/4 v3, 0x1

    aget v9, v0, v3

    aget v15, v10, v3

    if-le v9, v15, :cond_7

    aget v9, v0, v3

    aput v9, v10, v3

    iput-object v4, v1, Lgbsdk/common/host/abdb;->m:Ljava/lang/String;

    :cond_7
    const/4 v3, 0x2

    aget v9, v0, v3

    aget v15, v10, v3

    if-le v9, v15, :cond_8

    aget v0, v0, v3

    aput v0, v10, v3

    iput-object v4, v1, Lgbsdk/common/host/abdb;->n:Ljava/lang/String;

    :cond_8
    :goto_4
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_9

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v11, v0

    :cond_9
    move-object/from16 v17, v7

    const/4 v0, 0x0

    :goto_5
    const/4 v4, 0x1

    goto/16 :goto_e

    :cond_a
    if-eqz v13, :cond_19

    const/4 v9, 0x1

    if-eq v13, v9, :cond_b

    move-object/from16 v17, v7

    goto :goto_5

    :cond_b
    const-string v9, " prio="

    invoke-virtual {v15, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_15

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_15

    iget-object v9, v1, Lgbsdk/common/host/abdb;->cT:Lorg/json/JSONObject;

    if-nez v9, :cond_c

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-direct {v1, v11}, Lgbsdk/common/host/abdb;->c(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v9

    iput-object v9, v1, Lgbsdk/common/host/abdb;->cT:Lorg/json/JSONObject;

    if-eqz v8, :cond_e

    goto :goto_6

    :cond_c
    if-eqz v8, :cond_d

    if-nez v14, :cond_d

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-direct {v1, v11}, Lgbsdk/common/host/abdb;->c(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v14

    goto :goto_7

    :cond_d
    :goto_6
    invoke-direct {v1, v0, v11}, Lgbsdk/common/host/abdb;->b(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_e
    :goto_7
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const/16 v9, 0x28

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_f
    move-object v2, v0

    invoke-direct {v1, v2}, Lgbsdk/common/host/abdb;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    :try_start_3
    invoke-direct {v1, v11}, Lgbsdk/common/host/abdb;->b(Lorg/json/JSONArray;)[I

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v9, v0

    sget-object v0, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    invoke-virtual {v0, v3, v9}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catchall_3
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_10

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    aget v9, v0, v3

    move-object/from16 v17, v7

    aget v7, v10, v3

    if-le v9, v7, :cond_11

    aget v7, v0, v3

    aput v7, v10, v3

    iput-object v2, v1, Lgbsdk/common/host/abdb;->l:Ljava/lang/String;

    :cond_11
    const/4 v7, 0x1

    aget v9, v0, v7

    aget v3, v10, v7

    if-le v9, v3, :cond_12

    aget v3, v0, v7

    aput v3, v10, v7

    iput-object v2, v1, Lgbsdk/common/host/abdb;->m:Ljava/lang/String;

    :cond_12
    const/4 v3, 0x2

    aget v7, v0, v3

    aget v9, v10, v3

    if-le v7, v9, :cond_14

    aget v0, v0, v3

    aput v0, v10, v3

    iput-object v2, v1, Lgbsdk/common/host/abdb;->n:Ljava/lang/String;

    goto :goto_a

    :cond_13
    :goto_9
    move-object/from16 v17, v7

    :cond_14
    :goto_a
    move-object v0, v2

    goto :goto_b

    :cond_15
    move-object/from16 v17, v7

    :goto_b
    const/16 v2, 0x22

    const/4 v3, 0x1

    :try_start_4
    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    invoke-virtual {v15, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v15, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    const/4 v4, 0x1

    add-int/2addr v2, v4

    :try_start_5
    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_c

    :catchall_4
    nop

    goto :goto_c

    :catchall_5
    :cond_16
    const/4 v4, 0x1

    :goto_c
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_17

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    :cond_17
    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_e

    :cond_18
    move-object/from16 v17, v7

    const/4 v4, 0x1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_d

    :cond_19
    move-object/from16 v17, v7

    const/4 v4, 0x1

    const-string v2, "DALVIK THREADS"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "suspend"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "\""

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1a
    const/4 v13, 0x1

    :cond_1b
    :goto_d
    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_e
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p1

    move-object/from16 v7, v17

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_1c
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1d

    iput-object v6, v1, Lgbsdk/common/host/abdb;->cV:Lorg/json/JSONArray;

    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v1, Lgbsdk/common/host/abdb;->bD:Lorg/json/JSONObject;

    const-string v2, "thread_all_count"

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, v1, Lgbsdk/common/host/abdb;->bD:Lorg/json/JSONObject;

    const-string v2, "thread_stacks"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_f

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1d
    :goto_f
    if-eqz v14, :cond_1e

    iput-object v14, v1, Lgbsdk/common/host/abdb;->cT:Lorg/json/JSONObject;

    :cond_1e
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lgbsdk/common/host/abdb;)Z
    .locals 0

    iget-boolean p0, p0, Lgbsdk/common/host/abdb;->i:Z

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lgbsdk/common/host/abdb;->de:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/apm/insight/runtime/a;->c()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lgbsdk/common/host/abdb;->de:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lgbsdk/common/host/abdb;->o:Ljava/lang/String;

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lgbsdk/common/host/abdb;->de:Ljava/util/List;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abdb;->de:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abdb;->de:Ljava/util/List;

    const-string v3, "^main$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lgbsdk/common/host/abdb;->de:Ljava/util/List;

    const-string v3, "^default_npth_thread$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lgbsdk/common/host/abdb;->de:Ljava/util/List;

    const-string v3, "^RenderThread$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lgbsdk/common/host/abdb;->de:Ljava/util/List;

    const-string v3, "^Jit thread pool worker thread.*$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/abdb;->de:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_3
    return v1
.end method

.method private static b(F)Ljava/lang/String;
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Lgbsdk/common/host/abdb;->a(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/16 v1, 0x100

    const/16 v2, 0x80

    invoke-static {v1, v2, p2}, Lgbsdk/common/host/abie;->a(IILorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-eq v2, p2, :cond_0

    iget p2, p0, Lgbsdk/common/host/abdb;->r:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lgbsdk/common/host/abdb;->r:I

    :cond_0
    :try_start_0
    const-string p2, "thread_name"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "thread_stack"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(J)V
    .locals 16

    move-object/from16 v1, p0

    iget-wide v2, v1, Lgbsdk/common/host/abdb;->db:J

    iget-wide v4, v1, Lgbsdk/common/host/abdb;->da:J

    const-string v0, "anr_trace"

    const-string v6, "\n"

    const-string v7, ".txt"

    const/16 v8, 0x5f

    const/16 v9, 0x3a

    const/4 v10, 0x0

    const/16 v11, 0x15

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v14, "NPTH_CATCH"

    cmp-long v15, v2, v4

    if-eqz v15, :cond_4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lgbsdk/common/host/abdb;->s:J

    invoke-static {}, Lgbsdk/common/host/abcy;->c()Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, v1, Lgbsdk/common/host/abdb;->cW:Lorg/json/JSONArray;

    const/16 v2, 0x64

    move-wide/from16 v3, p1

    invoke-static {v2, v3, v4}, Lgbsdk/common/host/abcu;->a(IJ)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, v1, Lgbsdk/common/host/abdb;->bJ:Lorg/json/JSONArray;

    invoke-static/range {p1 .. p2}, Lgbsdk/common/host/abcy;->a(J)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lgbsdk/common/host/abdb;->cU:Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, v1, Lgbsdk/common/host/abdb;->bL:Lorg/json/JSONObject;

    iget-object v3, v1, Lgbsdk/common/host/abdb;->cB:Landroid/content/Context;

    invoke-static {v3, v2}, Lgbsdk/common/host/abhp;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-direct/range {p0 .. p0}, Lgbsdk/common/host/abdb;->g()Z

    move-result v2

    iput-boolean v2, v1, Lgbsdk/common/host/abdb;->cX:Z

    invoke-static {}, Lcom/apm/insight/Npth;->hasCrash()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lgbsdk/common/host/abdb;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_2

    iget-wide v2, v1, Lgbsdk/common/host/abdb;->s:J

    iput-wide v2, v1, Lgbsdk/common/host/abdb;->g:J

    sget-boolean v2, Lgbsdk/common/host/abge;->s:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lgbsdk/common/host/abif;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lgbsdk/common/host/abdb;->cB:Landroid/content/Context;

    invoke-static {v5}, Lgbsdk/common/host/abif;->w(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "trace_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lgbsdk/common/host/abdb;->cB:Landroid/content/Context;

    invoke-static {v10}, Lgbsdk/common/host/abhp;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lgbsdk/common/host/abho;->ay()Ljava/text/DateFormat;

    move-result-object v5

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Lgbsdk/common/host/abhg;->a(Ljava/io/File;Ljava/lang/String;Z)V

    invoke-static {v0, v2}, Lcom/apm/insight/runtime/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/nativecrash/NativeImpl;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abhg;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, v1, Lgbsdk/common/host/abdb;->cV:Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lgbsdk/common/host/abdb;->a(Lorg/json/JSONArray;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    sget-object v2, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    invoke-virtual {v2, v14, v0}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-static {v10}, Lcom/apm/insight/nativecrash/NativeImpl;->i(Ljava/lang/String;)V

    :catch_0
    :cond_2
    :goto_1
    iget-object v0, v1, Lgbsdk/common/host/abdb;->cT:Lorg/json/JSONObject;

    if-nez v0, :cond_3

    invoke-static {v13}, Lgbsdk/common/host/abcz;->j(Z)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lgbsdk/common/host/abdb;->cT:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    sget-object v2, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    invoke-virtual {v2, v14, v0}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    invoke-static {}, Lgbsdk/common/host/abhn;->a()V

    goto/16 :goto_4

    :cond_4
    :try_start_4
    iget-wide v2, v1, Lgbsdk/common/host/abdb;->s:J

    iput-wide v2, v1, Lgbsdk/common/host/abdb;->g:J

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_6

    sget-boolean v2, Lgbsdk/common/host/abge;->s:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lgbsdk/common/host/abif;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lgbsdk/common/host/abdb;->cB:Landroid/content/Context;

    invoke-static {v5}, Lgbsdk/common/host/abif;->w(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "trace"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lgbsdk/common/host/abdb;->cB:Landroid/content/Context;

    invoke-static {v10}, Lgbsdk/common/host/abhp;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lgbsdk/common/host/abho;->ay()Ljava/text/DateFormat;

    move-result-object v5

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Lgbsdk/common/host/abhg;->a(Ljava/io/File;Ljava/lang/String;Z)V

    invoke-static {v0, v2}, Lcom/apm/insight/runtime/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/nativecrash/NativeImpl;->i(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abhg;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, v1, Lgbsdk/common/host/abdb;->cV:Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lgbsdk/common/host/abdb;->a(Lorg/json/JSONArray;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_6
    sget-object v2, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    invoke-virtual {v2, v14, v0}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-static {v10}, Lcom/apm/insight/nativecrash/NativeImpl;->i(Ljava/lang/String;)V

    :catch_1
    :cond_6
    :goto_3
    iget-object v0, v1, Lgbsdk/common/host/abdb;->cT:Lorg/json/JSONObject;

    if-nez v0, :cond_7

    invoke-static {v13}, Lgbsdk/common/host/abcz;->j(Z)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lgbsdk/common/host/abdb;->cT:Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    sget-object v2, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    invoke-virtual {v2, v14, v0}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    iget-wide v2, v1, Lgbsdk/common/host/abdb;->da:J

    iput-wide v2, v1, Lgbsdk/common/host/abdb;->db:J

    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lgbsdk/common/host/abdb;->da:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    const-wide/16 v2, 0x1

    sub-long/2addr v4, v2

    iput-wide v4, v1, Lgbsdk/common/host/abdb;->db:J

    :cond_8
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/apm/insight/runtime/p;->a()Lcom/apm/insight/runtime/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apm/insight/ICrashCallback;

    :try_start_0
    sget-object v2, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p0, v3}, Lcom/apm/insight/ICrashCallback;->onCrash(Lcom/apm/insight/CrashType;Ljava/lang/String;Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v3, "NPTH_CATCH"

    invoke-virtual {v2, v3, v1}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Lorg/json/JSONArray;)[I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "utm="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    :goto_1
    if-lez v3, :cond_2

    iget-object p1, p0, Lgbsdk/common/host/abdb;->b:Ljava/util/regex/Pattern;

    if-nez p1, :cond_1

    const-string p1, "[^0-9]+"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abdb;->b:Ljava/util/regex/Pattern;

    :cond_1
    iget-object p1, p0, Lgbsdk/common/host/abdb;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_3

    const/4 v1, 0x1

    :try_start_0
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v5, 0x3

    new-array v5, v5, [I

    aput v4, v5, v0

    aput p1, v5, v1

    add-int/2addr v4, p1

    aput v4, v5, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    :catchall_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Err stack line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/16 v1, 0x100

    const/16 v2, 0x80

    invoke-static {v1, v2, p1}, Lgbsdk/common/host/abie;->a(IILorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v3, 0x1

    if-eq v2, p1, :cond_0

    iget p1, p0, Lgbsdk/common/host/abdb;->r:I

    add-int/2addr p1, v3

    iput p1, p0, Lgbsdk/common/host/abdb;->r:I

    :cond_0
    :try_start_0
    const-string p1, "thread_number"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "mainStackFromTrace"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private g()Z
    .locals 6

    iget-object v0, p0, Lgbsdk/common/host/abdb;->cB:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abhp;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/apm/insight/runtime/a/b;->d()Lcom/apm/insight/runtime/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/a/b;->e()J

    move-result-wide v1

    const-wide/16 v3, 0x7d0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private h(J)Z
    .locals 2

    iget-boolean v0, p0, Lgbsdk/common/host/abdb;->cZ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lgbsdk/common/host/abdb;->cZ:Z

    invoke-direct {p0, p1, p2}, Lgbsdk/common/host/abdb;->b(J)V

    :cond_0
    return v1
.end method

.method private i(J)Ljava/lang/String;
    .locals 3

    sget-wide v0, Lgbsdk/common/host/abge;->c:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7530

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-string p1, "0 - 30s"

    return-object p1

    :cond_0
    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "30s - 1min"

    return-object p1

    :cond_1
    const-wide/32 v0, 0x1d4c0

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    const-string p1, "1min - 2min"

    return-object p1

    :cond_2
    const-wide/32 v0, 0x493e0

    cmp-long v2, p1, v0

    if-gez v2, :cond_3

    const-string p1, "2min - 5min"

    return-object p1

    :cond_3
    const-wide/32 v0, 0x927c0

    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    const-string p1, "5min - 10min"

    return-object p1

    :cond_4
    const-wide/32 v0, 0x1b7740

    cmp-long v2, p1, v0

    if-gez v2, :cond_5

    const-string p1, "10min - 30min"

    return-object p1

    :cond_5
    const-wide/32 v0, 0x36ee80

    cmp-long v2, p1, v0

    if-gez v2, :cond_6

    const-string p1, "30min - 1h"

    return-object p1

    :cond_6
    const-string p1, "1h - "

    return-object p1
.end method

.method private i()Z
    .locals 1

    invoke-static {}, Lcom/apm/insight/runtime/a;->i()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public F()V
    .locals 2

    sget-boolean v0, Lgbsdk/common/host/abdb;->cR:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abdb;->cY:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lgbsdk/common/host/abdb;->cR:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lgbsdk/common/host/abdb;->dc:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a()V
    .locals 2

    iget-boolean v0, p0, Lgbsdk/common/host/abdb;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lgbsdk/common/host/abda;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abda;-><init>(Lgbsdk/common/host/abdb;)V

    iput-object v0, p0, Lgbsdk/common/host/abdb;->cQ:Lgbsdk/common/host/abda;

    sget-wide v0, Lgbsdk/common/host/abge;->c:J

    iput-wide v0, p0, Lgbsdk/common/host/abdb;->g:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgbsdk/common/host/abdb;->e:Z

    return-void
.end method

.method a(II)Z
    .locals 28

    move-object/from16 v1, p0

    invoke-static {}, Lgbsdk/common/host/abcv;->a()Z

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lgbsdk/common/host/abdb;->h(J)Z

    move-result v4

    iget-object v5, v1, Lgbsdk/common/host/abdb;->cB:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lgbsdk/common/host/abcz;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v9, "normal"

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    if-eqz v4, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const-string v12, "unknown"

    const-string v13, "unknown"

    const-string v14, "unknown"

    const-wide/16 v15, 0x4e20

    if-nez v4, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v14

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object v14, v13

    move-object v13, v12

    move-object v12, v9

    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_2
    :goto_1
    iget-object v4, v1, Lgbsdk/common/host/abdb;->cY:Ljava/lang/Object;

    monitor-enter v4

    if-nez v10, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    :try_start_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    iget-object v4, v1, Lgbsdk/common/host/abdb;->cT:Lorg/json/JSONObject;

    if-eqz v4, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move v8, v7

    iget-wide v6, v1, Lgbsdk/common/host/abdb;->g:J

    sub-long/2addr v12, v6

    cmp-long v4, v12, v15

    if-gtz v4, :cond_6

    if-eqz v10, :cond_4

    const-string v4, "trace_only"

    goto :goto_3

    :cond_4
    const-string v4, "trace_last"

    :goto_3
    move-object v9, v4

    goto :goto_4

    :cond_5
    move v8, v7

    :cond_6
    iget-boolean v4, v1, Lgbsdk/common/host/abdb;->cZ:Z

    if-eqz v4, :cond_7

    iput-boolean v11, v1, Lgbsdk/common/host/abdb;->cZ:Z

    const-string v9, "trace_after"

    :cond_7
    invoke-direct {v1, v2, v3}, Lgbsdk/common/host/abdb;->b(J)V

    :goto_4
    iget-object v4, v1, Lgbsdk/common/host/abdb;->cT:Lorg/json/JSONObject;

    iget-object v12, v1, Lgbsdk/common/host/abdb;->l:Ljava/lang/String;

    iget-object v13, v1, Lgbsdk/common/host/abdb;->m:Ljava/lang/String;

    iget-object v14, v1, Lgbsdk/common/host/abdb;->n:Ljava/lang/String;

    iget-object v6, v1, Lgbsdk/common/host/abdb;->cV:Lorg/json/JSONArray;

    iget-object v7, v1, Lgbsdk/common/host/abdb;->cW:Lorg/json/JSONArray;

    iget-object v15, v1, Lgbsdk/common/host/abdb;->bJ:Lorg/json/JSONArray;

    iget-object v11, v1, Lgbsdk/common/host/abdb;->bL:Lorg/json/JSONObject;

    move-object/from16 v19, v4

    iget-object v4, v1, Lgbsdk/common/host/abdb;->cU:Lorg/json/JSONObject;

    move-object/from16 v20, v4

    iget-boolean v4, v1, Lgbsdk/common/host/abdb;->cX:Z

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    iget-wide v6, v1, Lgbsdk/common/host/abdb;->s:J

    move/from16 v23, v4

    if-nez v10, :cond_8

    const/4 v4, 0x0

    iput-object v4, v1, Lgbsdk/common/host/abdb;->cT:Lorg/json/JSONObject;

    iput-object v4, v1, Lgbsdk/common/host/abdb;->cV:Lorg/json/JSONArray;

    iput-object v4, v1, Lgbsdk/common/host/abdb;->bJ:Lorg/json/JSONArray;

    iput-object v4, v1, Lgbsdk/common/host/abdb;->cU:Lorg/json/JSONObject;

    iput-object v4, v1, Lgbsdk/common/host/abdb;->cW:Lorg/json/JSONArray;

    const-string v4, "unknown"

    iput-object v4, v1, Lgbsdk/common/host/abdb;->l:Ljava/lang/String;

    const-string v4, "unknown"

    iput-object v4, v1, Lgbsdk/common/host/abdb;->m:Ljava/lang/String;

    const-string v4, "unknown"

    iput-object v4, v1, Lgbsdk/common/host/abdb;->n:Ljava/lang/String;

    const/4 v4, 0x0

    iput v4, v1, Lgbsdk/common/host/abdb;->r:I

    :cond_8
    move-object/from16 v4, v21

    move-object/from16 v21, v22

    move-object/from16 v27, v9

    move v9, v8

    move-wide v7, v6

    move-object v6, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v27

    :goto_5
    if-nez v10, :cond_d

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_d

    iget-object v0, v1, Lgbsdk/common/host/abdb;->cT:Lorg/json/JSONObject;

    if-eqz v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lgbsdk/common/host/abdb;->g:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v0, v2, v4

    if-lez v0, :cond_a

    const/4 v2, 0x0

    iput-object v2, v1, Lgbsdk/common/host/abdb;->cT:Lorg/json/JSONObject;

    iput-object v2, v1, Lgbsdk/common/host/abdb;->cV:Lorg/json/JSONArray;

    iput-object v2, v1, Lgbsdk/common/host/abdb;->bJ:Lorg/json/JSONArray;

    iput-object v2, v1, Lgbsdk/common/host/abdb;->cU:Lorg/json/JSONObject;

    iput-object v2, v1, Lgbsdk/common/host/abdb;->cW:Lorg/json/JSONArray;

    const-string v0, "unknown"

    iput-object v0, v1, Lgbsdk/common/host/abdb;->l:Ljava/lang/String;

    const-string v0, "unknown"

    iput-object v0, v1, Lgbsdk/common/host/abdb;->m:Ljava/lang/String;

    const-string v0, "unknown"

    iput-object v0, v1, Lgbsdk/common/host/abdb;->n:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v1, Lgbsdk/common/host/abdb;->r:I

    iget-object v0, v1, Lgbsdk/common/host/abdb;->cS:Ljava/io/File;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    :cond_9
    const/4 v3, 0x0

    iput-object v3, v1, Lgbsdk/common/host/abdb;->cS:Ljava/io/File;

    return v2

    :cond_a
    iget-object v0, v1, Lgbsdk/common/host/abdb;->cT:Lorg/json/JSONObject;

    if-eqz v0, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lgbsdk/common/host/abdb;->g:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-lez v0, :cond_c

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct/range {p0 .. p0}, Lgbsdk/common/host/abdb;->V()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    :cond_b
    const/4 v2, 0x0

    return v2

    :cond_c
    const/4 v2, 0x0

    return v2

    :cond_d
    if-nez v19, :cond_f

    if-nez v15, :cond_e

    :try_start_1
    invoke-static {}, Lgbsdk/common/host/abcy;->c()Lorg/json/JSONArray;

    move-result-object v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v18, v11

    const/16 v11, 0x64

    :try_start_2
    invoke-static {v11, v2, v3}, Lgbsdk/common/host/abcu;->a(IJ)Lorg/json/JSONArray;

    move-result-object v15

    invoke-static {v2, v3}, Lgbsdk/common/host/abcy;->a(J)Lorg/json/JSONObject;

    move-result-object v20

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v3, v1, Lgbsdk/common/host/abdb;->cB:Landroid/content/Context;

    invoke-static {v3, v2}, Lgbsdk/common/host/abhp;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v11, v2

    goto :goto_6

    :catchall_0
    move-object v11, v2

    goto :goto_7

    :catchall_1
    move-object/from16 v11, v18

    goto :goto_7

    :catchall_2
    move-object/from16 v18, v11

    move-object/from16 v17, v21

    goto :goto_7

    :cond_e
    move-object/from16 v18, v11

    move-object/from16 v17, v21

    :goto_6
    :try_start_4
    sget-boolean v2, Lgbsdk/common/host/abdb;->a:Z

    invoke-static {v2}, Lgbsdk/common/host/abcz;->j(Z)Lorg/json/JSONObject;

    move-result-object v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :goto_7
    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move/from16 v17, v9

    move-object/from16 v9, v20

    goto :goto_8

    :cond_f
    move-object/from16 v18, v11

    move/from16 v17, v9

    move-object/from16 v3, v19

    move-object/from16 v9, v20

    move-object/from16 v2, v21

    :goto_8
    if-eqz v3, :cond_24

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v18

    if-lez v18, :cond_24

    move-object/from16 v18, v5

    :try_start_5
    const-string v5, "pid"

    move/from16 v19, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "package"

    iget-object v5, v1, Lgbsdk/common/host/abdb;->cB:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_remote_process"

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "is_new_stack"

    const/16 v5, 0xa

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v0, Lgbsdk/common/host/abfl;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v5}, Lgbsdk/common/host/abfl;-><init>(Lorg/json/JSONObject;)V

    const-string v5, "data"

    move-object/from16 v21, v6

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "is_anr"

    move-object/from16 p1, v3

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "anrType"

    invoke-virtual {v0, v3, v12}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "history_message"

    invoke-virtual {v0, v3, v2}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "current_message"

    invoke-virtual {v0, v2, v9}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "pending_messages"

    invoke-virtual {v0, v2, v15}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "anr_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "crash_time"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lgbsdk/common/host/abfq;->b()Z

    invoke-virtual {v0, v11}, Lgbsdk/common/host/abfl;->k(Lorg/json/JSONObject;)V

    const-string v2, "anr_info"

    if-eqz v10, :cond_10

    const-string v3, "\u6ca1\u6709\u6293\u5230ANR_INFO, \u539f\u56e0\u53ef\u80fd\u662f:\n1. \u7528\u6237\u4ee5\u6781\u5feb\u7684\u624b\u901f\u5728ANR\u5f39\u7a97\u51fa\u73b0\u65f6\u70b9\u51fb\u4e86\u5173\u95ed\u5e94\u7528.\n2. \u7528\u6237\u96be\u4ee5\u5fcd\u53d7\u5361\u987f\u800c\u5f3a\u884c\u5173\u95ed\u4e86\u5e94\u7528.\n3. \u67d0\u65e0\u826f\u7cfb\u7edf\u5728ANR\u65f6\u4e0d\u7ed9\u4efb\u4f55\u901a\u77e5\u76f4\u63a5\u5f3a\u6740\u5e94\u7528\u8fdb\u7a0b\u7ec4.\n\n\u8be5ANR\u53ea\u4f1a\u5728\u4ee5\u4e0b\u60c5\u51b5\u4e0a\u62a5:\n1. \u6536\u5230ANR\u4fe1\u53f7(SIGQUIT).\n2. \u5e94\u7528\u5904\u4e8e\u524d\u53f0\u62162\u79d2\u524d\u5728\u524d\u53f0.\n3. \u4e3b\u8fdb\u7a0b\u53d1\u751f.\n4. \u8fdb\u7a0b\u786e\u5b9e\u88ab\u6740."

    goto :goto_9

    :cond_10
    move-object/from16 v3, v18

    :goto_9
    invoke-virtual {v0, v2, v3}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v4, :cond_11

    const-string v2, "dump_trace"

    invoke-virtual {v0, v2, v4}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    sget-object v2, Lgbsdk/common/host/abge;->eh:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v4, v3

    goto :goto_a

    :cond_12
    const/4 v4, 0x0

    :goto_a
    if-nez v10, :cond_14

    iget-object v3, v1, Lgbsdk/common/host/abdb;->bD:Lorg/json/JSONObject;

    if-eqz v3, :cond_13

    iget-object v3, v1, Lgbsdk/common/host/abdb;->bD:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_14

    :cond_13
    const/4 v3, 0x0

    invoke-static {v3, v2, v4}, Lgbsdk/common/host/abhz;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_b

    :cond_14
    iget-object v2, v1, Lgbsdk/common/host/abdb;->bD:Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    :goto_b
    if-eqz v4, :cond_15

    :try_start_6
    const-string v3, "mainStackFromTrace"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "package"

    iget-object v5, v1, Lgbsdk/common/host/abdb;->cB:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "is_remote_process"

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "is_new_stack"

    const/16 v5, 0xa

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "data"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    :catch_0
    :cond_15
    :try_start_7
    const-string v3, "all_thread_stacks"

    invoke-virtual {v0, v3, v2}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/apm/insight/runtime/a/f;->a()Lcom/apm/insight/runtime/a/f;

    move-result-object v2

    sget-object v3, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    invoke-virtual {v2, v3, v0}, Lcom/apm/insight/runtime/a/f;->a(Lcom/apm/insight/CrashType;Lgbsdk/common/host/abfl;)Lgbsdk/common/host/abfl;

    move-result-object v2

    const-string v0, "is_background"

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-boolean v0, Lgbsdk/common/host/abge;->z:Z

    if-eqz v0, :cond_16

    const-string v0, "logcat"

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/apm/insight/runtime/l;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    const-string v0, "has_dump"

    const-string v3, "true"

    invoke-virtual {v2, v0, v3}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "crash_uuid"

    sget-object v3, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    const/4 v5, 0x0

    invoke-static {v7, v8, v3, v5, v5}, Lgbsdk/common/host/abge;->a(JLcom/apm/insight/CrashType;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "jiffy"

    invoke-static {}, Lcom/apm/insight/runtime/r$a;->a()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v2, Lgbsdk/common/host/abfl;->a:Lorg/json/JSONObject;

    const-string v3, "filters"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, v2, Lgbsdk/common/host/abfl;->a:Lorg/json/JSONObject;

    invoke-static {v3}, Lgbsdk/common/host/abfe;->b(Lorg/json/JSONObject;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    if-nez v0, :cond_17

    :try_start_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    const-string v0, "filters"

    invoke-virtual {v2, v0, v3}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_c

    :catchall_4
    move-object v0, v3

    :catchall_5
    move-object/from16 v5, v18

    goto/16 :goto_10

    :cond_17
    move-object v3, v0

    :goto_c
    :try_start_a
    const-string v0, "anrType"

    invoke-virtual {v3, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "max_utm_thread"

    invoke-virtual {v3, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "max_stm_thread"

    invoke-virtual {v3, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "max_utm_stm_thread"

    move-object/from16 v14, v21

    invoke-virtual {v3, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "max_utm_thread_version"

    iget-object v5, v1, Lgbsdk/common/host/abdb;->o:Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "crash_length"

    invoke-direct {v1, v7, v8}, Lgbsdk/common/host/abdb;->i(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "disable_looper_monitor"

    invoke-static {}, Lcom/apm/insight/runtime/a;->d()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "npth_force_apm_crash"

    invoke-static {}, Lgbsdk/common/host/abfq;->b()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk_version"

    const-string v5, "1.5.10-rc.4"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "has_logcat"

    invoke-virtual {v2}, Lgbsdk/common/host/abfl;->a()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "memory_leak"

    invoke-virtual {v2}, Lgbsdk/common/host/abfl;->f()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "fd_leak"

    invoke-virtual {v2}, Lgbsdk/common/host/abfl;->d()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "threads_leak"

    invoke-virtual {v2}, Lgbsdk/common/host/abfl;->e()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_64_devices"

    invoke-static {}, Lcom/apm/insight/entity/Header;->a()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_64_runtime"

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->e()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_x86_devices"

    invoke-static {}, Lcom/apm/insight/entity/Header;->b()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "has_meminfo_file"

    invoke-virtual {v2}, Lgbsdk/common/host/abfl;->g()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_root"

    invoke-static {}, Lcom/apm/insight/nativecrash/b;->l()Z

    move-result v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v5, :cond_18

    :try_start_b
    const-string v5, "true"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_d

    :cond_18
    :try_start_c
    const-string v5, "false"

    :goto_d
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "anr_normal_trace"

    iget-boolean v5, v1, Lgbsdk/common/host/abdb;->cZ:Z

    if-nez v5, :cond_19

    goto :goto_e

    :cond_19
    const/4 v6, 0x0

    :goto_e
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "anr_no_run"

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "crash_after_crash"

    invoke-static {}, Lcom/apm/insight/Npth;->hasCrash()Z

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz v5, :cond_1a

    :try_start_d
    const-string v5, "true"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_f

    :cond_1a
    :try_start_e
    const-string v5, "false"

    :goto_f
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "from_file"

    sget-boolean v5, Lgbsdk/common/host/abcz;->c:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "has_dump"

    const-string v5, "true"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "from_kill"

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lgbsdk/common/host/abge;->al()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-eqz v0, :cond_1b

    :try_start_f
    const-string v0, "last_resume_activity"

    invoke-static {}, Lcom/apm/insight/runtime/a/b;->d()Lcom/apm/insight/runtime/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/apm/insight/runtime/a/b;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :cond_1b
    :try_start_10
    iget v0, v1, Lgbsdk/common/host/abdb;->r:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-lez v0, :cond_1c

    :try_start_11
    const-string v0, "may_have_stack_overflow"

    iget v5, v1, Lgbsdk/common/host/abdb;->r:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :cond_1c
    if-nez v10, :cond_1d

    move-object/from16 v5, v18

    :try_start_12
    invoke-direct {v1, v5, v3}, Lgbsdk/common/host/abdb;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_11

    :catchall_6
    move-exception v0

    move-object v6, v0

    :try_start_13
    sget-object v0, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v9, "NPTH_CATCH"

    invoke-virtual {v0, v9, v6}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :cond_1d
    move-object/from16 v5, v18

    invoke-direct/range {p0 .. p0}, Lgbsdk/common/host/abdb;->i()Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "aid"

    invoke-virtual {v2}, Lgbsdk/common/host/abfl;->ac()Lcom/apm/insight/entity/Header;

    move-result-object v6

    invoke-virtual {v6}, Lcom/apm/insight/entity/Header;->g()Lorg/json/JSONObject;

    move-result-object v6

    const-string v9, "aid"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    goto :goto_11

    :catchall_7
    move-object/from16 v5, v18

    :catchall_8
    move-object v0, v3

    :goto_10
    move-object v3, v0

    :cond_1e
    :goto_11
    if-eqz v10, :cond_1f

    :try_start_14
    invoke-static {}, Lgbsdk/common/host/abfd;->y()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lgbsdk/common/host/abdb;->cB:Landroid/content/Context;

    invoke-static {v4}, Lgbsdk/common/host/abif;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    sget-object v5, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    const/4 v6, 0x0

    invoke-static {v7, v8, v5, v6, v6}, Lgbsdk/common/host/abge;->a(JLcom/apm/insight/CrashType;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v1, Lgbsdk/common/host/abdb;->cS:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lgbsdk/common/host/abfl;->a:Lorg/json/JSONObject;

    invoke-static {}, Lgbsdk/common/host/abfd;->b()Z

    move-result v5

    invoke-static {v3, v4, v0, v2, v5}, Lgbsdk/common/host/abhg;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/String;

    goto/16 :goto_14

    :cond_1f
    iget-object v0, v1, Lgbsdk/common/host/abdb;->cS:Ljava/io/File;

    if-eqz v0, :cond_20

    iget-object v0, v1, Lgbsdk/common/host/abdb;->cS:Ljava/io/File;

    invoke-static {v0}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    const/4 v6, 0x0

    iput-object v6, v1, Lgbsdk/common/host/abdb;->cS:Ljava/io/File;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    :cond_20
    :try_start_15
    invoke-static {}, Lgbsdk/common/host/abhn;->aC()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x400

    cmp-long v0, v9, v11

    if-lez v0, :cond_21

    const-string v0, "has_system_traces"

    const-string v6, "true"

    invoke-virtual {v2, v0, v6}, Lgbsdk/common/host/abfl;->l(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abfl;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :catchall_9
    :cond_21
    :try_start_16
    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abif;->J(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgbsdk/common/host/abif;->K(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/apm/insight/nativecrash/c;->a(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v6, "leak_threads_count"

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_22

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgbsdk/common/host/abif;->L(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v0, v6}, Lgbsdk/common/host/abhg;->a(Ljava/io/File;Lorg/json/JSONArray;Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    goto :goto_12

    :catchall_a
    nop

    :cond_22
    :goto_12
    if-nez v4, :cond_23

    :try_start_17
    const-string v0, "mainStackFromTrace"

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_23
    const-string v0, "mainStackFromTrace"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-static {v0}, Lgbsdk/common/host/abfk;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {}, Lgbsdk/common/host/abch;->T()Lgbsdk/common/host/abch;

    move-result-object v4

    sget-object v6, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    const-string v9, "main"

    invoke-virtual {v4, v6, v0, v9}, Lgbsdk/common/host/abch;->a(Lcom/apm/insight/CrashType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lgbsdk/common/host/abch;->T()Lgbsdk/common/host/abch;

    move-result-object v21

    sget-object v22, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    invoke-static {}, Lgbsdk/common/host/abge;->d()Ljava/lang/String;

    move-result-object v25

    move-wide/from16 v23, v7

    move-object/from16 v26, v3

    invoke-virtual/range {v21 .. v26}, Lgbsdk/common/host/abch;->a(Lcom/apm/insight/CrashType;JLjava/lang/String;Lorg/json/JSONArray;)V

    iget-object v0, v2, Lgbsdk/common/host/abfl;->a:Lorg/json/JSONObject;

    new-instance v2, Lgbsdk/common/host/abdb$2;

    invoke-direct {v2, v1, v7, v8}, Lgbsdk/common/host/abdb$2;-><init>(Lgbsdk/common/host/abdb;J)V

    invoke-static {v0, v3, v2}, Lgbsdk/common/host/abfk;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Lgbsdk/common/host/abfk$ab;)V

    invoke-static {v5}, Lgbsdk/common/host/abdb;->b(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    goto :goto_14

    :catchall_b
    move-exception v0

    sget-object v2, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v3, "NPTH_CATCH"

    invoke-virtual {v2, v3, v0}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_24
    :goto_14
    return v17

    :catchall_c
    move-exception v0

    :try_start_18
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    throw v0
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lgbsdk/common/host/abdb;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgbsdk/common/host/abdb;->e:Z

    iget-object v0, p0, Lgbsdk/common/host/abdb;->cQ:Lgbsdk/common/host/abda;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lgbsdk/common/host/abda;->b()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lgbsdk/common/host/abdb;->cQ:Lgbsdk/common/host/abda;

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lgbsdk/common/host/abdb;->cQ:Lgbsdk/common/host/abda;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgbsdk/common/host/abda;->a()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lgbsdk/common/host/abdb;->V()Ljava/io/File;

    move-result-object v0

    iget v2, p0, Lgbsdk/common/host/abdb;->dd:I

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lgbsdk/common/host/abhg;->a(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v3, "NPTH_CATCH"

    invoke-virtual {v2, v3, v0}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lgbsdk/common/host/abdb;->da:J

    iput-boolean v1, p0, Lgbsdk/common/host/abdb;->cZ:Z

    return-void
.end method

.method public f()V
    .locals 4

    invoke-direct {p0}, Lgbsdk/common/host/abdb;->V()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgbsdk/common/host/abhg;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lgbsdk/common/host/abdb;->dd:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/apm/insight/nativecrash/NativeImpl;->a(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/apm/insight/nativecrash/NativeImpl;->a(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-static {v0}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    goto :goto_0

    :catch_0
    invoke-static {v1}, Lcom/apm/insight/nativecrash/NativeImpl;->a(Z)V

    :goto_0
    return-void
.end method
