.class public final Lgbsdk/common/host/abef;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abef$ab;,
        Lgbsdk/common/host/abef$ac;
    }
.end annotation


# static fields
.field private static volatile eN:Lgbsdk/common/host/abef;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private eM:Landroid/content/Context;

.field private eO:Lgbsdk/common/host/abef$ac;

.field private eP:Ljava/lang/Runnable;

.field private eQ:Ljava/lang/Runnable;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abef$ac;",
            ">;"
        }
    .end annotation
.end field

.field public volatile h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abef;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abef;->b:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lgbsdk/common/host/abef;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgbsdk/common/host/abef;->h:Z

    new-instance v0, Lgbsdk/common/host/abef$1;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abef$1;-><init>(Lgbsdk/common/host/abef;)V

    iput-object v0, p0, Lgbsdk/common/host/abef;->eP:Ljava/lang/Runnable;

    new-instance v0, Lgbsdk/common/host/abef$2;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abef$2;-><init>(Lgbsdk/common/host/abef;)V

    iput-object v0, p0, Lgbsdk/common/host/abef;->eQ:Ljava/lang/Runnable;

    iput-object p1, p0, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    return-void
.end method

.method private F()V
    .locals 3

    iget-object v0, p0, Lgbsdk/common/host/abef;->eO:Lgbsdk/common/host/abef$ac;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lgbsdk/common/host/abef$ac;

    const-string v1, "old_uuid"

    invoke-direct {v0, v1}, Lgbsdk/common/host/abef$ac;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgbsdk/common/host/abef;->eO:Lgbsdk/common/host/abef$ac;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abef;->g:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lgbsdk/common/host/abef;->b(Ljava/util/HashMap;)V

    iget-object v0, p0, Lgbsdk/common/host/abef;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lgbsdk/common/host/abef;->eO:Lgbsdk/common/host/abef$ac;

    invoke-direct {p0, v0, v1}, Lgbsdk/common/host/abef;->b(Ljava/util/HashMap;Lgbsdk/common/host/abef$ac;)V

    iget-object v0, p0, Lgbsdk/common/host/abef;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lgbsdk/common/host/abef;->eO:Lgbsdk/common/host/abef$ac;

    invoke-direct {p0, v0, v1}, Lgbsdk/common/host/abef;->c(Ljava/util/HashMap;Lgbsdk/common/host/abef$ac;)V

    iget-object v0, p0, Lgbsdk/common/host/abef;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lgbsdk/common/host/abef;->eO:Lgbsdk/common/host/abef$ac;

    invoke-direct {p0, v0, v1}, Lgbsdk/common/host/abef;->a(Ljava/util/HashMap;Lgbsdk/common/host/abef$ac;)V

    iget-object v0, p0, Lgbsdk/common/host/abef;->eO:Lgbsdk/common/host/abef$ac;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lgbsdk/common/host/abef;->b(Lgbsdk/common/host/abef$ac;ZLcom/apm/insight/runtime/i;)V

    iget-object v0, p0, Lgbsdk/common/host/abef;->eO:Lgbsdk/common/host/abef$ac;

    invoke-direct {p0, v0, v1, v2}, Lgbsdk/common/host/abef;->a(Lgbsdk/common/host/abef$ac;ZLcom/apm/insight/runtime/i;)V

    iput-object v2, p0, Lgbsdk/common/host/abef;->eO:Lgbsdk/common/host/abef$ac;

    iget-object v0, p0, Lgbsdk/common/host/abef;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lgbsdk/common/host/abge;->q:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abga;->n(Landroid/content/Context;)V

    :cond_1
    invoke-direct {p0}, Lgbsdk/common/host/abef;->f()V

    return-void

    :cond_2
    invoke-direct {p0}, Lgbsdk/common/host/abef;->g()V

    return-void
.end method

.method private a(Ljava/io/File;Lcom/apm/insight/CrashType;Ljava/lang/String;JJ)Lgbsdk/common/host/abfh;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-wide/from16 v2, p4

    const-string v4, "data"

    const-string v5, "unauthentic_version"

    const-string v6, "unknown"

    const-string v7, "true"

    const-string v8, "has_dump"

    const-string v9, "header"

    const-string v10, "lastAliveTime"

    const-string v11, "filters"

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v13, :cond_0

    :try_start_1
    invoke-static/range {p1 .. p1}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v12, 0x0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    :goto_0
    const/4 v12, 0x0

    goto/16 :goto_7

    :cond_0
    :try_start_2
    sget-object v13, Lcom/apm/insight/CrashType;->LAUNCH:Lcom/apm/insight/CrashType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-ne v0, v13, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    if-nez v0, :cond_2

    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v3, p1

    :try_start_4
    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abhg;->D(Ljava/lang/String;)Lgbsdk/common/host/abfh;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_0

    :cond_2
    :try_start_5
    invoke-static/range {p1 .. p2}, Lgbsdk/common/host/abhg;->b(Ljava/io/File;Lcom/apm/insight/CrashType;)Lgbsdk/common/host/abfh;

    move-result-object v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    iget-object v15, v14, Lgbsdk/common/host/abfh;->b:Lorg/json/JSONObject;

    iget-object v12, v14, Lgbsdk/common/host/abfh;->b:Lorg/json/JSONObject;

    if-eqz v12, :cond_d

    sget-object v12, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    if-ne v0, v12, :cond_3

    return-object v14

    :cond_3
    const-string v0, "crash_time"

    invoke-virtual {v15, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "app_start_time"

    move-object v12, v4

    move-object/from16 v18, v5

    move-wide/from16 v4, p6

    invoke-virtual {v15, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/apm/insight/entity/Header;->a(Landroid/content/Context;J)Lcom/apm/insight/entity/Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/entity/Header;->g()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_2

    :cond_4
    if-eqz v13, :cond_5

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_5
    :goto_2
    const-string v4, "sdk_version_name"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sdk_version"

    if-nez v4, :cond_6

    const-string v4, "1.5.10-rc.4"

    :cond_6
    invoke-static {v15, v11, v5, v4}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, Lgbsdk/common/host/abge;->z:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const-string v5, "logcat"

    if-eqz v4, :cond_7

    :try_start_7
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lgbsdk/common/host/abhg;->d(Lorg/json/JSONArray;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static/range {p3 .. p3}, Lcom/apm/insight/runtime/l;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v15, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    invoke-static {v15, v11, v8, v7}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "has_logcat"

    invoke-static {v15, v5}, Lgbsdk/common/host/abie;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const/16 v16, 0x1

    goto :goto_3

    :cond_8
    const/16 v16, 0x0

    :goto_3
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v11, v4, v5}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "memory_leak"

    invoke-static/range {p3 .. p3}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v11, v4, v5}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "fd_leak"

    invoke-static/range {p3 .. p3}, Lgbsdk/common/host/abfl;->c(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v11, v4, v5}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "threads_leak"

    invoke-static/range {p3 .. p3}, Lgbsdk/common/host/abfl;->d(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v11, v4, v5}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_64_devices"

    invoke-static {}, Lcom/apm/insight/entity/Header;->a()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v11, v4, v5}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_64_runtime"

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->e()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v11, v4, v5}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_x86_devices"

    invoke-static {}, Lcom/apm/insight/entity/Header;->b()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v11, v4, v5}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "has_meminfo_file"

    invoke-static/range {p3 .. p3}, Lgbsdk/common/host/abfl;->a(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v11, v4, v5}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_root"

    invoke-static {}, Lcom/apm/insight/nativecrash/b;->l()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v11, v4, v5}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "launch_did"

    iget-object v5, v1, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    invoke-static {v5}, Lgbsdk/common/host/abem;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "crash_uuid"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "jiffy"

    move-object/from16 p2, v12

    move/from16 v16, v13

    invoke-static {}, Lcom/apm/insight/runtime/r$a;->a()J

    move-result-wide v12

    invoke-virtual {v15, v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v4, p3

    :try_start_8
    invoke-static {v2, v3, v4}, Lcom/apm/insight/runtime/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v12, 0xea60

    cmp-long v17, v2, v12

    if-gez v17, :cond_9

    const-string v2, "< 60s"

    goto :goto_4

    :cond_9
    const-string v2, "> 60s"

    :goto_4
    invoke-static {v15, v11, v10, v2}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5

    :catchall_2
    :try_start_9
    invoke-virtual {v15, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v15, v11, v10, v6}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v15, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "storage"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a

    sget-object v2, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {v2}, Lgbsdk/common/host/abhy;->C(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v15, v2}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_a
    invoke-static {v0}, Lcom/apm/insight/entity/Header;->b(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v2, v18

    invoke-static {v15, v11, v2, v2}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-static {v15}, Lgbsdk/common/host/abfe;->b(Lorg/json/JSONObject;)V

    iget-object v2, v14, Lgbsdk/common/host/abfh;->b:Lorg/json/JSONObject;

    const-string v3, "upload_scene"

    const-string v4, "launch_scan"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v16, :cond_c

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "event_type"

    const-string v4, "start_crash"

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "stack"

    move-object/from16 v4, p2

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iput-object v2, v14, Lgbsdk/common/host/abfh;->b:Lorg/json/JSONObject;

    goto :goto_6

    :cond_c
    const-string v0, "isJava"

    const/4 v2, 0x1

    invoke-virtual {v15, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_6

    :cond_d
    invoke-static/range {p1 .. p1}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_6
    move-object v12, v14

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v12, v14

    goto :goto_7

    :catchall_4
    move-exception v0

    const/4 v5, 0x0

    move-object v12, v5

    :goto_7
    invoke-static/range {p1 .. p1}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    sget-object v2, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v3, "NPTH_CATCH"

    invoke-virtual {v2, v3, v0}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    return-object v12
.end method

.method private a(Lgbsdk/common/host/abef$ac;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lgbsdk/common/host/abef$ac;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    iget-object v1, p1, Lgbsdk/common/host/abef$ac;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lgbsdk/common/host/abif;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    iget-object v0, p0, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    iget-object p1, p1, Lgbsdk/common/host/abef$ac;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lgbsdk/common/host/abif;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method private a(Lgbsdk/common/host/abef$ac;ZLcom/apm/insight/runtime/i;)V
    .locals 24

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "crash_thread_name"

    const-string v11, "aid"

    const-string v12, "NPTH_CATCH"

    iget-object v0, v8, Lgbsdk/common/host/abef$ac;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v8, Lgbsdk/common/host/abef$ac;->eZ:Lgbsdk/common/host/abef$ab;

    if-nez v0, :cond_1

    iget-object v0, v8, Lgbsdk/common/host/abef$ac;->eY:Lgbsdk/common/host/abef$ab;

    iput-object v0, v8, Lgbsdk/common/host/abef$ac;->eZ:Lgbsdk/common/host/abef$ab;

    :cond_1
    iget-object v0, v8, Lgbsdk/common/host/abef$ac;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lgbsdk/common/host/abef$ab;

    :try_start_0
    iget-object v15, v14, Lgbsdk/common/host/abef$ab;->a:Ljava/io/File;

    iget-object v6, v14, Lgbsdk/common/host/abef$ab;->eT:Lcom/apm/insight/CrashType;

    sget-object v0, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-ne v6, v0, :cond_2

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v15, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lgbsdk/common/host/abhg;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "body"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    invoke-static {}, Lgbsdk/common/host/abfa;->au()Lgbsdk/common/host/abfa;

    move-result-object v16

    iget-wide v0, v14, Lgbsdk/common/host/abef$ab;->b:J

    const/16 v20, 0x1

    iget-object v2, v8, Lgbsdk/common/host/abef$ac;->a:Ljava/lang/String;

    const/16 v22, 0x0

    iget-object v3, v14, Lgbsdk/common/host/abef$ab;->e:Ljava/lang/String;

    move-wide/from16 v18, v0

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    invoke-virtual/range {v16 .. v23}, Lgbsdk/common/host/abfa;->a(Lorg/json/JSONObject;JZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    iput-boolean v0, v8, Lgbsdk/common/host/abef$ac;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    invoke-static {v15}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    goto :goto_0

    :cond_2
    iget-object v3, v8, Lgbsdk/common/host/abef$ac;->a:Ljava/lang/String;

    iget-wide v4, v14, Lgbsdk/common/host/abef$ab;->b:J

    iget-wide v1, v14, Lgbsdk/common/host/abef$ab;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v0, p0

    move-wide/from16 v16, v1

    move-object v1, v15

    move-object v2, v6

    move-object/from16 v18, v13

    move-object v13, v6

    move-wide/from16 v6, v16

    :try_start_3
    invoke-direct/range {v0 .. v7}, Lgbsdk/common/host/abef;->a(Ljava/io/File;Lcom/apm/insight/CrashType;Ljava/lang/String;JJ)Lgbsdk/common/host/abfh;

    move-result-object v3

    if-nez v3, :cond_3

    :goto_1
    invoke-static {v15}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    goto/16 :goto_7

    :cond_3
    iget-object v7, v3, Lgbsdk/common/host/abfh;->b:Lorg/json/JSONObject;

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "header"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    if-nez v13, :cond_7

    new-instance v1, Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v15, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_7

    :cond_6
    iget-object v0, v3, Lgbsdk/common/host/abfh;->a:Ljava/lang/String;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgbsdk/common/host/abfd;->o(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abhs;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abhs;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1

    :cond_7
    invoke-static {v15}, Lgbsdk/common/host/abfk;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    :try_start_4
    new-instance v6, Lorg/json/JSONArray;

    invoke-static {v1}, Lgbsdk/common/host/abhg;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    sget-object v1, Lcom/apm/insight/CrashType;->LAUNCH:Lcom/apm/insight/CrashType;

    if-ne v13, v1, :cond_9

    const-string v1, "data"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :cond_9
    move-object v1, v7

    :goto_2
    const-string v2, "ignore"

    const-string v4, "filters"

    if-nez p2, :cond_a

    :try_start_6
    iget-object v5, v8, Lgbsdk/common/host/abef$ac;->eZ:Lgbsdk/common/host/abef$ab;

    if-ne v5, v14, :cond_b

    :cond_a
    iget-object v5, v14, Lgbsdk/common/host/abef$ab;->e:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v5, :cond_c

    :cond_b
    :try_start_7
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v11, v0}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "has_ignore"

    iget-object v5, v14, Lgbsdk/common/host/abef$ab;->e:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v0, v2}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_8
    sget-object v2, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    invoke-virtual {v2, v12, v0}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_c
    if-eqz v9, :cond_d

    const-string v0, "crash_md5"

    const-string v2, "default"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/apm/insight/runtime/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v14, Lgbsdk/common/host/abef$ab;->a:Ljava/io/File;

    invoke-static {v0}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    goto :goto_7

    :cond_d
    :goto_3
    const-string v0, "start_uuid"

    iget-object v2, v8, Lgbsdk/common/host/abef$ac;->a:Ljava/lang/String;

    invoke-static {v1, v4, v0, v2}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "leak_threads_count"

    iget v2, v8, Lgbsdk/common/host/abef$ac;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v0, v2}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "unknown"

    invoke-virtual {v1, v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v10, v0}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/apm/common/utility/ToolUtils;->isHarmonyOs()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const-string v2, "is_harmony_os"

    if-eqz v0, :cond_e

    :try_start_9
    const-string v0, "1"

    :goto_4
    invoke-static {v1, v4, v2, v0}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    const-string v0, "0"

    goto :goto_4

    :goto_5
    invoke-static {v7}, Lgbsdk/common/host/abic;->a(Lorg/json/JSONObject;)V

    new-instance v0, Lgbsdk/common/host/abef$3;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v4, v15

    move-object/from16 v5, p1

    move-object v15, v6

    move-object v6, v13

    move-object v13, v7

    invoke-direct/range {v1 .. v7}, Lgbsdk/common/host/abef$3;-><init>(Lgbsdk/common/host/abef;Lgbsdk/common/host/abfh;Ljava/io/File;Lgbsdk/common/host/abef$ac;Lcom/apm/insight/CrashType;Lorg/json/JSONObject;)V

    invoke-static {v13, v15, v0}, Lgbsdk/common/host/abfk;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Lgbsdk/common/host/abfk$ab;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v18, v13

    :goto_6
    sget-object v1, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    invoke-virtual {v1, v12, v0}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v14, Lgbsdk/common/host/abef$ab;->a:Ljava/io/File;

    invoke-static {v0}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    :catchall_4
    :cond_f
    :goto_7
    move-object/from16 v13, v18

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/abef;)V
    .locals 0

    invoke-direct {p0}, Lgbsdk/common/host/abef;->g()V

    return-void
.end method

.method private a(Ljava/io/File;Lgbsdk/common/host/abef$ac;)V
    .locals 0

    return-void
.end method

.method private a(Ljava/util/HashMap;Lgbsdk/common/host/abef$ac;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abef$ac;",
            ">;",
            "Lgbsdk/common/host/abef$ac;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    invoke-static {p2}, Lgbsdk/common/host/abif;->u(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_4

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    aget-object v1, p2, v0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {v1}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgbsdk/common/host/abef$ac;

    if-nez v3, :cond_3

    new-instance v3, Lgbsdk/common/host/abef$ac;

    invoke-direct {v3, v2}, Lgbsdk/common/host/abef$ac;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, v3, Lgbsdk/common/host/abef$ac;->c:Ljava/util/List;

    new-instance v3, Lgbsdk/common/host/abef$ab;

    sget-object v4, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    invoke-direct {v3, v1, v4}, Lgbsdk/common/host/abef$ab;-><init>(Ljava/io/File;Lcom/apm/insight/CrashType;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v4, "NPTH_CATCH"

    invoke-virtual {v3, v4, v2}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private a(Ljava/util/HashMap;Lgbsdk/common/host/abef$ac;Ljava/io/File;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abef$ac;",
            ">;",
            "Lgbsdk/common/host/abef$ac;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-ge v5, v6, :cond_0

    iget-object v0, v1, Lgbsdk/common/host/abef$ac;->b:Ljava/util/List;

    new-instance v1, Lgbsdk/common/host/abef$ab;

    invoke-direct {v1, v2, v7}, Lgbsdk/common/host/abef$ab;-><init>(Ljava/io/File;Lcom/apm/insight/CrashType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v6, 0x4

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    aget-object v6, v4, v1

    const/4 v12, 0x1

    aget-object v4, v4, v12

    const/4 v13, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v15, -0x4226dc4d

    if-eq v14, v15, :cond_3

    const v5, 0x179e5

    if-eq v14, v5, :cond_2

    const v5, 0x31aa22

    if-eq v14, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "java"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const-string v5, "anr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x2

    goto :goto_1

    :cond_3
    const-string v14, "launch"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, -0x1

    :goto_1
    if-eqz v5, :cond_7

    if-eq v5, v12, :cond_6

    if-eq v5, v1, :cond_5

    goto :goto_2

    :cond_5
    sget-object v7, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    goto :goto_2

    :cond_6
    sget-object v7, Lcom/apm/insight/CrashType;->JAVA:Lcom/apm/insight/CrashType;

    goto :goto_2

    :cond_7
    sget-object v7, Lcom/apm/insight/CrashType;->LAUNCH:Lcom/apm/insight/CrashType;

    :goto_2
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abef$ac;

    if-nez v1, :cond_8

    new-instance v1, Lgbsdk/common/host/abef$ac;

    invoke-direct {v1, v6}, Lgbsdk/common/host/abef$ac;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    new-instance v0, Lgbsdk/common/host/abef$ab;

    invoke-direct {v0, v2, v8, v9, v7}, Lgbsdk/common/host/abef$ab;-><init>(Ljava/io/File;JLcom/apm/insight/CrashType;)V

    iput-wide v10, v0, Lgbsdk/common/host/abef$ab;->c:J

    iget-object v2, v1, Lgbsdk/common/host/abef$ac;->eY:Lgbsdk/common/host/abef$ab;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lgbsdk/common/host/abef$ac;->eY:Lgbsdk/common/host/abef$ab;

    iget-wide v4, v2, Lgbsdk/common/host/abef$ab;->b:J

    iget-wide v8, v0, Lgbsdk/common/host/abef$ab;->b:J

    cmp-long v2, v4, v8

    if-lez v2, :cond_a

    :cond_9
    if-eqz v7, :cond_a

    sget-object v2, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    if-eq v7, v2, :cond_a

    const-string v2, "ignore"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iput-object v0, v1, Lgbsdk/common/host/abef$ac;->eY:Lgbsdk/common/host/abef$ab;

    :cond_a
    iget-object v1, v1, Lgbsdk/common/host/abef$ac;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_0
    iget-object v0, v1, Lgbsdk/common/host/abef$ac;->b:Ljava/util/List;

    new-instance v1, Lgbsdk/common/host/abef$ab;

    invoke-direct {v1, v2, v7}, Lgbsdk/common/host/abef$ab;-><init>(Ljava/io/File;Lcom/apm/insight/CrashType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err format crashTime:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v2, "NPTH_CATCH"

    invoke-virtual {v0, v2, v1}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-static/range {p3 .. p3}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    :goto_3
    return-void
.end method

.method public static at()Lgbsdk/common/host/abef;
    .locals 3

    sget-object v0, Lgbsdk/common/host/abef;->eN:Lgbsdk/common/host/abef;

    if-nez v0, :cond_1

    const-class v0, Lgbsdk/common/host/abef;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgbsdk/common/host/abef;->eN:Lgbsdk/common/host/abef;

    if-nez v1, :cond_0

    new-instance v1, Lgbsdk/common/host/abef;

    sget-object v2, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lgbsdk/common/host/abef;-><init>(Landroid/content/Context;)V

    sput-object v1, Lgbsdk/common/host/abef;->eN:Lgbsdk/common/host/abef;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abef;->eN:Lgbsdk/common/host/abef;

    return-object v0
.end method

.method private b(Lcom/apm/insight/nativecrash/b;)Lorg/json/JSONObject;
    .locals 2

    invoke-virtual {p1}, Lcom/apm/insight/nativecrash/b;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    invoke-virtual {p1}, Lcom/apm/insight/nativecrash/b;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/apm/insight/nativecrash/b;->k()Z

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/apm/insight/nativecrash/b;->f()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/apm/insight/nativecrash/b;->k()Z

    return-object v1

    :cond_2
    invoke-virtual {p1}, Lcom/apm/insight/nativecrash/b;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/apm/insight/nativecrash/b;->k()Z

    return-object v1

    :cond_3
    invoke-virtual {p1}, Lcom/apm/insight/nativecrash/b;->e()V

    invoke-virtual {p1}, Lcom/apm/insight/nativecrash/b;->j()Lorg/json/JSONObject;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private b(Lgbsdk/common/host/abef$ac;ZLcom/apm/insight/runtime/i;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "aid"

    const-string v11, "crash_thread_name"

    iget-object v0, v8, Lgbsdk/common/host/abef$ac;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x1

    if-le v0, v12, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lgbsdk/common/host/abef$ac;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v8, Lgbsdk/common/host/abef$ac;->eY:Lgbsdk/common/host/abef$ab;

    iput-object v0, v8, Lgbsdk/common/host/abef$ac;->eZ:Lgbsdk/common/host/abef$ab;

    return-void

    :cond_1
    :goto_0
    iget-object v0, v7, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v13

    iget-object v0, v8, Lgbsdk/common/host/abef$ac;->eY:Lgbsdk/common/host/abef$ab;

    iput-object v0, v8, Lgbsdk/common/host/abef$ac;->eZ:Lgbsdk/common/host/abef$ab;

    new-instance v14, Lcom/apm/insight/nativecrash/b;

    iget-object v0, v7, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    invoke-direct {v14, v0}, Lcom/apm/insight/nativecrash/b;-><init>(Landroid/content/Context;)V

    iget-object v0, v8, Lgbsdk/common/host/abef$ac;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abef$ab;

    iget-object v6, v0, Lgbsdk/common/host/abef$ab;->a:Ljava/io/File;

    :try_start_0
    invoke-virtual {v14, v6}, Lcom/apm/insight/nativecrash/b;->a(Ljava/io/File;)V

    invoke-direct {v7, v14}, Lgbsdk/common/host/abef;->b(Lcom/apm/insight/nativecrash/b;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_b

    :cond_2
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-eqz v1, :cond_f

    const-string v1, "default"

    const-string v2, "filters"

    if-nez p2, :cond_9

    :try_start_1
    const-string v3, "crash_time"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v12, v8, Lgbsdk/common/host/abef$ac;->eZ:Lgbsdk/common/host/abef$ab;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v12, :cond_4

    :try_start_3
    iput-object v0, v8, Lgbsdk/common/host/abef$ac;->eZ:Lgbsdk/common/host/abef$ab;

    const/4 v3, 0x1

    iput-boolean v3, v8, Lgbsdk/common/host/abef$ac;->cR:Z

    if-eqz v9, :cond_3

    invoke-virtual {v9, v1}, Lcom/apm/insight/runtime/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v14}, Lcom/apm/insight/nativecrash/b;->k()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    move/from16 v17, v13

    const/4 v12, 0x1

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v17, v13

    :goto_3
    const/4 v12, 0x1

    goto/16 :goto_c

    :cond_4
    :try_start_4
    iget-boolean v12, v8, Lgbsdk/common/host/abef$ac;->cR:Z

    if-nez v12, :cond_7

    iget-object v12, v8, Lgbsdk/common/host/abef$ac;->eZ:Lgbsdk/common/host/abef$ab;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v17, v13

    :try_start_5
    iget-wide v12, v12, Lgbsdk/common/host/abef$ab;->b:J

    cmp-long v18, v3, v12

    if-gez v18, :cond_8

    iput-object v0, v8, Lgbsdk/common/host/abef$ac;->eZ:Lgbsdk/common/host/abef$ab;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v9, :cond_5

    :try_start_6
    invoke-virtual {v9, v1}, Lcom/apm/insight/runtime/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v14}, Lcom/apm/insight/nativecrash/b;->k()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move/from16 v13, v17

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v18, v6

    goto :goto_3

    :cond_5
    :try_start_7
    invoke-direct {v7, v6}, Lgbsdk/common/host/abef;->d(Ljava/io/File;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v0, :cond_6

    :try_start_8
    invoke-direct {v7, v6, v8}, Lgbsdk/common/host/abef;->a(Ljava/io/File;Lgbsdk/common/host/abef$ac;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_6
    const/4 v12, 0x1

    :try_start_9
    iput-boolean v12, v8, Lgbsdk/common/host/abef$ac;->cR:Z

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_7
    move/from16 v17, v13

    :cond_8
    const/4 v12, 0x1

    const-string v0, "header"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v10, v0}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catchall_3
    move-exception v0

    move/from16 v17, v13

    :goto_4
    const/4 v12, 0x1

    goto :goto_5

    :catchall_4
    move-exception v0

    move/from16 v17, v13

    :goto_5
    move-object/from16 v18, v6

    goto/16 :goto_c

    :cond_9
    move/from16 v17, v13

    if-eqz v9, :cond_a

    invoke-virtual {v9, v1}, Lcom/apm/insight/runtime/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v14}, Lcom/apm/insight/nativecrash/b;->k()Z

    goto/16 :goto_d

    :cond_a
    :goto_6
    const-string v0, "start_uuid"

    iget-object v1, v8, Lgbsdk/common/host/abef$ac;->a:Ljava/lang/String;

    invoke-static {v5, v2, v0, v1}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "unknown"

    invoke-virtual {v5, v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v11, v0}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/apm/common/utility/ToolUtils;->isHarmonyOs()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    const-string v1, "is_harmony_os"

    if-eqz v0, :cond_b

    :try_start_a
    const-string v0, "1"

    :goto_7
    invoke-static {v5, v2, v1, v0}, Lgbsdk/common/host/abfl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    const-string v0, "0"

    goto :goto_7

    :goto_8
    if-eqz v17, :cond_11

    new-instance v0, Lgbsdk/common/host/abfb$ab;

    sget-object v1, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    invoke-direct {v0, v5, v1}, Lgbsdk/common/host/abfb$ab;-><init>(Lorg/json/JSONObject;Lcom/apm/insight/CrashType;)V

    const/4 v1, 0x0

    invoke-static {v6}, Lgbsdk/common/host/abfk;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Lorg/json/JSONArray;

    invoke-static {v2}, Lgbsdk/common/host/abhg;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object v1, v3

    goto :goto_9

    :catchall_5
    nop

    :cond_c
    :goto_9
    if-nez v1, :cond_e

    :try_start_c
    invoke-static {}, Lcom/apm/insight/runtime/t;->a()Lcom/apm/insight/runtime/t;

    move-result-object v1

    invoke-virtual {v0}, Lgbsdk/common/host/abfb$ab;->b()J

    move-result-wide v2

    const-wide/16 v18, -0x1

    cmp-long v4, v2, v18

    if-nez v4, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_a

    :cond_d
    invoke-virtual {v0}, Lgbsdk/common/host/abfb$ab;->b()J

    move-result-wide v2

    :goto_a
    invoke-virtual {v1, v2, v3}, Lcom/apm/insight/runtime/t;->b(J)Lorg/json/JSONArray;

    move-result-object v1

    :cond_e
    invoke-virtual {v0}, Lgbsdk/common/host/abfb$ab;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lgbsdk/common/host/abfb$ab;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lgbsdk/common/host/abfk;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v13, Lgbsdk/common/host/abef$4;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v3, v6

    move-object/from16 v4, p1

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v18, v6

    move-object/from16 v6, v16

    :try_start_d
    invoke-direct/range {v1 .. v6}, Lgbsdk/common/host/abef$4;-><init>(Lgbsdk/common/host/abef;Ljava/io/File;Lgbsdk/common/host/abef$ac;Lcom/apm/insight/nativecrash/b;Lorg/json/JSONObject;)V

    move-object/from16 v1, v16

    invoke-static {v1, v0, v13}, Lgbsdk/common/host/abfk;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Lgbsdk/common/host/abfk$ab;)V

    goto :goto_d

    :catchall_6
    move-exception v0

    goto/16 :goto_5

    :cond_f
    move/from16 v17, v13

    goto :goto_d

    :cond_10
    :goto_b
    move-object/from16 v18, v6

    move/from16 v17, v13

    invoke-virtual {v14}, Lcom/apm/insight/nativecrash/b;->k()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception v0

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v17, v13

    :goto_c
    sget-object v1, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v2, "NPTH_CATCH"

    invoke-virtual {v1, v2, v0}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static/range {v18 .. v18}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    :cond_11
    :goto_d
    move/from16 v13, v17

    goto/16 :goto_1

    :cond_12
    return-void
.end method

.method static synthetic b(Lgbsdk/common/host/abef;)V
    .locals 0

    invoke-direct {p0}, Lgbsdk/common/host/abef;->e()V

    return-void
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abef$ac;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abif;->w(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_5

    const/4 v3, 0x5

    if-ge v2, v3, :cond_5

    aget-object v3, v0, v2

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-static {v3}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "G"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgbsdk/common/host/abef$ac;

    if-nez v5, :cond_3

    new-instance v5, Lgbsdk/common/host/abef$ac;

    invoke-direct {v5, v4}, Lgbsdk/common/host/abef$ac;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {v3}, Lgbsdk/common/host/abif;->u(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    invoke-static {v3}, Lgbsdk/common/host/abif;->v(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/apm/insight/nativecrash/c;->a(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    iput v6, v5, Lgbsdk/common/host/abef$ac;->g:I

    iget v5, v5, Lgbsdk/common/host/abef$ac;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v5, :cond_4

    :try_start_1
    invoke-static {v3}, Lgbsdk/common/host/abif;->w(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v4, v1}, Lgbsdk/common/host/abhg;->a(Ljava/io/File;Lorg/json/JSONArray;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v4

    sget-object v5, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v6, "NPTH_CATCH"

    invoke-virtual {v5, v6, v4}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    :catchall_1
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private b(Ljava/util/HashMap;Lgbsdk/common/host/abef$ac;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abef$ac;",
            ">;",
            "Lgbsdk/common/host/abef$ac;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abif;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    aget-object v2, v0, v1

    :try_start_0
    invoke-static {}, Lgbsdk/common/host/abfm;->ab()Lgbsdk/common/host/abfm;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgbsdk/common/host/abfm;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v2}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    goto :goto_2

    :cond_1
    invoke-static {v2}, Lgbsdk/common/host/abhg;->j(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lgbsdk/common/host/abfy;->ao()Lgbsdk/common/host/abfy;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgbsdk/common/host/abfy;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v2, v3}, Lgbsdk/common/host/abef;->a(Ljava/util/HashMap;Lgbsdk/common/host/abef$ac;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    sget-object v3, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v4, "NPTH_CATCH"

    invoke-virtual {v3, v4, v2}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method static synthetic c(Lgbsdk/common/host/abef;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    return-object p0
.end method

.method private c(Ljava/util/HashMap;Lgbsdk/common/host/abef$ac;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abef$ac;",
            ">;",
            "Lgbsdk/common/host/abef$ac;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    invoke-static {p1}, Lgbsdk/common/host/abif;->t(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    return-void
.end method

.method private d(Ljava/io/File;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private e()V
    .locals 4

    iget-boolean v0, p0, Lgbsdk/common/host/abef;->h:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lgbsdk/common/host/abef;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lgbsdk/common/host/abef;->f()V

    :cond_1
    invoke-direct {p0}, Lgbsdk/common/host/abef;->h()Z

    move-result v0

    new-instance v1, Lcom/apm/insight/runtime/i;

    iget-object v2, p0, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/apm/insight/runtime/i;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lgbsdk/common/host/abef;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgbsdk/common/host/abef$ac;

    invoke-direct {p0, v3, v0, v1}, Lgbsdk/common/host/abef;->b(Lgbsdk/common/host/abef$ac;ZLcom/apm/insight/runtime/i;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lgbsdk/common/host/abef;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgbsdk/common/host/abef$ac;

    invoke-direct {p0, v3, v0, v1}, Lgbsdk/common/host/abef;->a(Lgbsdk/common/host/abef$ac;ZLcom/apm/insight/runtime/i;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lgbsdk/common/host/abef;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/abef$ac;

    invoke-direct {p0, v2}, Lgbsdk/common/host/abef;->a(Lgbsdk/common/host/abef$ac;)V

    goto :goto_2

    :cond_4
    sget v0, Lgbsdk/common/host/abge;->q:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abga;->n(Landroid/content/Context;)V

    :cond_5
    invoke-virtual {v1}, Lcom/apm/insight/runtime/i;->a()V

    invoke-static {}, Lcom/apm/insight/runtime/b;->a()V

    invoke-direct {p0}, Lgbsdk/common/host/abef;->f()V

    :cond_6
    :goto_3
    return-void
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgbsdk/common/host/abef;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lgbsdk/common/host/abef;->g:Ljava/util/HashMap;

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->i()V

    return-void
.end method

.method private g()V
    .locals 7

    iget-boolean v0, p0, Lgbsdk/common/host/abef;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, 0x1388

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lgbsdk/common/host/abge;->c:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-gtz v0, :cond_1

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isApmExists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/apm/insight/Npth;->hasCrash()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lgbsdk/common/host/abef;->e()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    iget-object v3, p0, Lgbsdk/common/host/abef;->eP:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private h()Z
    .locals 4

    iget v0, p0, Lgbsdk/common/host/abef;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/apm/insight/runtime/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput v1, p0, Lgbsdk/common/host/abef;->e:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/apm/insight/runtime/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p0, Lgbsdk/common/host/abef;->e:I

    :cond_2
    :goto_0
    iget v0, p0, Lgbsdk/common/host/abef;->e:I

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private i()V
    .locals 9

    iget-object v0, p0, Lgbsdk/common/host/abef;->eM:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abif;->z(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".atmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lgbsdk/common/host/abch;->T()Lgbsdk/common/host/abch;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lgbsdk/common/host/abch;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgbsdk/common/host/abhg;->E(Ljava/lang/String;)Lgbsdk/common/host/abfh;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, v3, Lgbsdk/common/host/abfh;->b:Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lgbsdk/common/host/abfh;->b:Lorg/json/JSONObject;

    const-string v5, "upload_scene"

    const-string v6, "launch_scan"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-static {}, Lgbsdk/common/host/abfd;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lgbsdk/common/host/abfh;->f:Ljava/lang/String;

    iget-object v6, v3, Lgbsdk/common/host/abfh;->e:Ljava/lang/String;

    iget-object v7, v3, Lgbsdk/common/host/abfh;->g:Ljava/lang/String;

    iget-object v8, v3, Lgbsdk/common/host/abfh;->dW:Ljava/util/List;

    invoke-static {v4, v5, v6, v7, v8}, Lgbsdk/common/host/abfd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v2}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    iget-object v2, v3, Lgbsdk/common/host/abfh;->c:Ljava/lang/String;

    invoke-static {v2}, Lgbsdk/common/host/abhg;->a(Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v4, "NPTH_CATCH"

    invoke-virtual {v3, v4, v2}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    invoke-static {}, Lcom/apm/insight/Npth;->isStopUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lgbsdk/common/host/abef;->F()V

    invoke-direct {p0}, Lgbsdk/common/host/abef;->i()V

    invoke-static {}, Lgbsdk/common/host/abfr;->a()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lgbsdk/common/host/abef;->h:Z

    if-nez v0, :cond_1

    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abhp;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abef;->eQ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method
