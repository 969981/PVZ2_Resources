.class public Lgbsdk/common/host/abpy;
.super Ljava/lang/Object;
.source "FrankieCrashRescuer.java"


# static fields
.field private static final HOUR:J = 0x36ee80L

.field private static final MAX_COUNT:I = 0x2

.field private static final vO:Ljava/lang/String; = "crash_time"

.field private static final vP:Ljava/lang/String; = "crash_alarm"

.field private static final vQ:Ljava/lang/String; = ";"

.field private static volatile vR:Lgbsdk/common/host/abpy; = null

.field private static final vS:J = 0x3a98L

.field private static final vT:Ljava/lang/String; = "patch_applied_before_remote_fetched"

.field private static final vU:Ljava/lang/String; = "remote_fetched"

.field private static final vV:Ljava/lang/String; = "crash_before_remote_fetched_count"

.field private static final vW:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsMainProcess:Z

.field public vX:J

.field public vY:I

.field private vZ:Landroid/content/SharedPreferences;

.field private wa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private wb:Z

.field private wc:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3a98

    .line 51
    iput-wide v0, p0, Lgbsdk/common/host/abpy;->vX:J

    const/4 v0, 0x2

    .line 52
    iput v0, p0, Lgbsdk/common/host/abpy;->vY:I

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lgbsdk/common/host/abpy;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lgbsdk/common/host/abpy;->mIsMainProcess:Z

    .line 59
    iput-boolean v0, p0, Lgbsdk/common/host/abpy;->wb:Z

    .line 60
    iput-boolean v0, p0, Lgbsdk/common/host/abpy;->wc:Z

    const-string v1, "Frankie"

    if-nez p1, :cond_0

    const-string p1, "FrankieCrashRescuer constructor, context is null"

    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :cond_0
    iput-object p1, p0, Lgbsdk/common/host/abpy;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/gradle/compliance/ProcessUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lgbsdk/common/host/abpy;->mIsMainProcess:Z

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FrankieCrashRescuer constructor processName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mIsMainProcess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lgbsdk/common/host/abpy;->mIsMainProcess:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crash_alarm_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lgbsdk/common/host/abqb;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abpy;->vZ:Landroid/content/SharedPreferences;

    const-string v1, "crash_time"

    const-string v2, ""

    .line 75
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lgbsdk/common/host/abpy;->wa:Ljava/util/List;

    if-eqz p1, :cond_3

    const-string v1, ";"

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 80
    array-length v3, p1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, p1, v0

    .line 81
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 83
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long v6, v1, v4

    const-wide/32 v8, 0x36ee80

    cmp-long v10, v6, v8

    if-gez v10, :cond_2

    .line 85
    iget-object v6, p0, Lgbsdk/common/host/abpy;->wa:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static V(Landroid/content/Context;)Lgbsdk/common/host/abpy;
    .locals 2

    .line 41
    sget-object v0, Lgbsdk/common/host/abpy;->vR:Lgbsdk/common/host/abpy;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lgbsdk/common/host/abpy;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abpy;->vR:Lgbsdk/common/host/abpy;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lgbsdk/common/host/abpy;

    invoke-direct {v1, p0}, Lgbsdk/common/host/abpy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lgbsdk/common/host/abpy;->vR:Lgbsdk/common/host/abpy;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 48
    :cond_1
    :goto_0
    sget-object p0, Lgbsdk/common/host/abpy;->vR:Lgbsdk/common/host/abpy;

    return-object p0
.end method

.method private cV()V
    .locals 4

    .line 133
    iget-object v0, p0, Lgbsdk/common/host/abpy;->wa:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 136
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abpy;->wa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 137
    iget v1, p0, Lgbsdk/common/host/abpy;->vY:I

    if-le v0, v1, :cond_1

    .line 138
    iget-object v2, p0, Lgbsdk/common/host/abpy;->wa:Ljava/util/List;

    sub-int v1, v0, v1

    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abpy;->wa:Ljava/util/List;

    .line 140
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 141
    iget-object v2, p0, Lgbsdk/common/host/abpy;->wa:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    .line 142
    iget-object v3, p0, Lgbsdk/common/host/abpy;->wa:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const-string v3, ";"

    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_3
    iget-object v3, p0, Lgbsdk/common/host/abpy;->wa:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    :goto_2
    const-string v0, ""

    .line 153
    :goto_3
    iget-object v1, p0, Lgbsdk/common/host/abpy;->vZ:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "crash_time"

    .line 154
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public cU()V
    .locals 9

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 109
    iget-wide v2, p0, Lgbsdk/common/host/abpy;->vX:J

    sub-long v2, v0, v2

    .line 111
    iget-object v4, p0, Lgbsdk/common/host/abpy;->wa:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rescueIfInitTooFrequently: now="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", timeSectionAgo="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Frankie"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lgbsdk/common/host/abpy;->wa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "crash time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v7, v5, v2

    if-ltz v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crashCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget v0, p0, Lgbsdk/common/host/abpy;->vY:I

    if-lt v4, v0, :cond_2

    iget-object v0, p0, Lgbsdk/common/host/abpy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abov;->isMessageProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crashCount >= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgbsdk/common/host/abpy;->vY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", clearPatchForCrash"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lgbsdk/common/host/abpy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abpt;->W(Landroid/content/Context;)Lgbsdk/common/host/abpt;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abpt;->da()Z

    .line 125
    iget-object v0, p0, Lgbsdk/common/host/abpy;->wa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    :cond_2
    invoke-direct {p0}, Lgbsdk/common/host/abpy;->cV()V

    return-void
.end method

.method public cW()V
    .locals 5

    .line 159
    iget-boolean v0, p0, Lgbsdk/common/host/abpy;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lgbsdk/common/host/abpy;->wc:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lgbsdk/common/host/abpy;->wb:Z

    if-nez v0, :cond_0

    const-string v0, "Frankie"

    const-string v1, "notifyPatchApplied"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 161
    iput-boolean v2, p0, Lgbsdk/common/host/abpy;->wb:Z

    .line 163
    :try_start_0
    iget-object v3, p0, Lgbsdk/common/host/abpy;->vZ:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "patch_applied_before_remote_fetched"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 165
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public cX()V
    .locals 5

    .line 171
    iget-boolean v0, p0, Lgbsdk/common/host/abpy;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lgbsdk/common/host/abpy;->wc:Z

    if-nez v0, :cond_0

    const-string v0, "Frankie"

    const-string v1, "notifyRemoteFetched"

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 173
    iput-boolean v2, p0, Lgbsdk/common/host/abpy;->wc:Z

    .line 175
    :try_start_0
    iget-object v3, p0, Lgbsdk/common/host/abpy;->vZ:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "remote_fetched"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 177
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public cY()V
    .locals 7

    .line 187
    iget-boolean v0, p0, Lgbsdk/common/host/abpy;->mIsMainProcess:Z

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abpy;->vZ:Landroid/content/SharedPreferences;

    const-string v1, "patch_applied_before_remote_fetched"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 191
    iget-object v3, p0, Lgbsdk/common/host/abpy;->vZ:Landroid/content/SharedPreferences;

    const-string v4, "remote_fetched"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 192
    iget-object v5, p0, Lgbsdk/common/host/abpy;->vZ:Landroid/content/SharedPreferences;

    const-string v6, "crash_before_remote_fetched_count"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescueIfCannotFetchRemote, crashBeforeRemoteFetchedCount:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Frankie"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-lt v5, v0, :cond_1

    .line 197
    iget-object v0, p0, Lgbsdk/common/host/abpy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abpt;->W(Landroid/content/Context;)Lgbsdk/common/host/abpt;

    move-result-object v0

    invoke-virtual {v0}, Lgbsdk/common/host/abpt;->da()Z

    .line 198
    iget-object v0, p0, Lgbsdk/common/host/abpy;->vZ:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "FrankieCrashRescuer.rescueIfCannotFetchRemote"

    const-string v3, "crashBeforeRemoteFetchedCount reach 2"

    .line 199
    invoke-static {v0, v3}, Lgbsdk/common/host/abrt;->M(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/abpy;->vZ:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Lgbsdk/common/host/abpy;->vZ:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    :goto_0
    iget-object v0, p0, Lgbsdk/common/host/abpy;->vZ:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 207
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
