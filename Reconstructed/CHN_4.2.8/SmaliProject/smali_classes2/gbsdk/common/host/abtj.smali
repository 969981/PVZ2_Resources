.class public Lgbsdk/common/host/abtj;
.super Ljava/lang/Object;
.source "ImageStrategyController.java"

# interfaces
.implements Lgbsdk/common/host/abtg;


# static fields
.field private static final aGH:Ljava/lang/String; = "image_opt_table"

.field private static final aGI:Ljava/lang/String; = "image_opt_switch"

.field private static final aGJ:Ljava/lang/String; = "image_opt_black_interval"

.field private static final aGK:Ljava/lang/String; = "image_opt_failed_times"

.field private static final aGL:Ljava/lang/String; = "image_opt_limit_count"

.field public static volatile aGM:Lgbsdk/common/host/abtj;

.field private static volatile aGN:Landroid/content/SharedPreferences;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private volatile aGO:I

.field private volatile aGP:J

.field private volatile aGQ:I

.field private volatile iE:I

.field private volatile mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lgbsdk/common/host/abtj;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abtj;->mContext:Landroid/content/Context;

    .line 44
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abtj;->gV()V

    return-void
.end method

.method public static aH(Landroid/content/Context;)Lgbsdk/common/host/abtj;
    .locals 2

    .line 32
    sget-object v0, Lgbsdk/common/host/abtj;->aGM:Lgbsdk/common/host/abtj;

    if-nez v0, :cond_1

    .line 33
    sget-object v0, Lgbsdk/common/host/abtj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abtj;->aGM:Lgbsdk/common/host/abtj;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lgbsdk/common/host/abtj;

    invoke-direct {v1, p0}, Lgbsdk/common/host/abtj;-><init>(Landroid/content/Context;)V

    sput-object v1, Lgbsdk/common/host/abtj;->aGM:Lgbsdk/common/host/abtj;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 38
    :cond_1
    :goto_0
    sget-object p0, Lgbsdk/common/host/abtj;->aGM:Lgbsdk/common/host/abtj;

    return-object p0
.end method

.method private gV()V
    .locals 5

    .line 53
    :try_start_0
    invoke-direct {p0}, Lgbsdk/common/host/abtj;->gW()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "image_opt_switch"

    const/4 v2, 0x0

    .line 54
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lgbsdk/common/host/abtj;->aGO:I

    const-string v1, "image_opt_black_interval"

    const-wide/16 v3, 0x0

    .line 55
    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lgbsdk/common/host/abtj;->aGP:J

    const-string v1, "image_opt_failed_times"

    .line 56
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lgbsdk/common/host/abtj;->iE:I

    const-string v1, "image_opt_limit_count"

    .line 57
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lgbsdk/common/host/abtj;->aGQ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private gW()Landroid/content/SharedPreferences;
    .locals 3

    .line 93
    sget-object v0, Lgbsdk/common/host/abtj;->aGN:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lgbsdk/common/host/abtj;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "image_opt_table"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abtj;->aGN:Landroid/content/SharedPreferences;

    .line 95
    :cond_0
    sget-object v0, Lgbsdk/common/host/abtj;->aGN:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public J(Lorg/json/JSONObject;)V
    .locals 11

    const-string v0, "image_opt_limit_count"

    const-string v1, "image_opt_failed_times"

    const-string v2, "image_opt_black_interval"

    const-string v3, "image_opt_switch"

    if-eqz p1, :cond_5

    .line 65
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 67
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-wide/16 v6, 0x0

    .line 68
    invoke-virtual {p1, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 69
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 70
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 72
    invoke-direct {p0}, Lgbsdk/common/host/abtj;->gW()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 73
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 74
    iget v9, p0, Lgbsdk/common/host/abtj;->aGO:I

    if-eq v5, v9, :cond_1

    .line 75
    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 76
    :cond_1
    iget-wide v9, p0, Lgbsdk/common/host/abtj;->aGP:J

    cmp-long v3, v6, v9

    if-eqz v3, :cond_2

    .line 77
    invoke-interface {v4, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 78
    :cond_2
    iget v2, p0, Lgbsdk/common/host/abtj;->iE:I

    if-eq v8, v2, :cond_3

    .line 79
    invoke-interface {v4, v1, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 80
    :cond_3
    iget v1, p0, Lgbsdk/common/host/abtj;->aGQ:I

    if-eq p1, v1, :cond_4

    .line 81
    invoke-interface {v4, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    :cond_4
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    iput v5, p0, Lgbsdk/common/host/abtj;->aGO:I

    .line 84
    iput-wide v6, p0, Lgbsdk/common/host/abtj;->aGP:J

    .line 85
    iput v8, p0, Lgbsdk/common/host/abtj;->iE:I

    .line 86
    iput p1, p0, Lgbsdk/common/host/abtj;->aGQ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public cz(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public gQ()I
    .locals 1

    .line 100
    iget v0, p0, Lgbsdk/common/host/abtj;->aGO:I

    return v0
.end method

.method public gR()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lgbsdk/common/host/abtj;->aGP:J

    return-wide v0
.end method

.method public gS()I
    .locals 1

    .line 115
    iget v0, p0, Lgbsdk/common/host/abtj;->iE:I

    return v0
.end method

.method public gT()I
    .locals 1

    .line 120
    iget v0, p0, Lgbsdk/common/host/abtj;->aGQ:I

    return v0
.end method

.method public gU()Lcom/bytedance/common/utility/NetworkUtils$NetworkType;
    .locals 1

    .line 125
    iget-object v0, p0, Lgbsdk/common/host/abtj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/common/utility/NetworkUtils;->getNetworkType(Landroid/content/Context;)Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    move-result-object v0

    return-object v0
.end method
