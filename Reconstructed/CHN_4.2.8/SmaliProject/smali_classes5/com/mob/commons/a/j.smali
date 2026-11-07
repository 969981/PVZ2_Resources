.class public Lcom/mob/commons/a/j;
.super Lcom/mob/commons/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/a/j$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0, v0}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 98
    :try_start_0
    sget-object v1, Lcom/mob/commons/j;->f:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/mob/tools/utils/ResHelper;->saveArrayListToFile(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 100
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 103
    :try_start_1
    sget-object v2, Lcom/mob/commons/j;->f:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lcom/mob/tools/utils/ResHelper;->saveArrayListToFile(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 105
    :catchall_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private a(JJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 165
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 166
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 167
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 168
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 170
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p2, p1}, Lcom/mob/commons/a/j;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/mob/commons/a/j;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "ALSIMT"

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/mob/commons/a/j;->a(JLjava/lang/String;Ljava/lang/Object;)V

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 119
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/mob/commons/a/j;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/mob/commons/a/j;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const-string v0, "ALSUMT"

    invoke-virtual {p0, v2, v3, v0, p1}, Lcom/mob/commons/a/j;->a(JLjava/lang/String;Ljava/lang/Object;)V

    move v0, v4

    :cond_1
    if-eqz v0, :cond_2

    .line 126
    invoke-direct {p0, p2}, Lcom/mob/commons/a/j;->a(Ljava/util/ArrayList;)V

    :cond_2
    return v4
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 135
    const-string v2, "003fMekgg"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 142
    const-string v5, "003f-ekgg"

    invoke-static {v5}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private n()Z
    .locals 1

    .line 38
    const-string v0, "003[egfefe"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private o()Z
    .locals 1

    .line 42
    const-string v0, "002)efel"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private p()Z
    .locals 1

    .line 46
    const-string v0, "002)edel"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 11

    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/DeviceHelper;->getIA(Z)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 56
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/mob/commons/a/j;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 66
    const-string v4, "004=eggh;f9eg"

    invoke-static {v4}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/32 v5, 0x278d00

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/mob/commons/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 67
    invoke-static {}, Lcom/mob/commons/v;->a()Lcom/mob/commons/v;

    move-result-object v6

    sget-object v7, Lcom/mob/commons/v;->d:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/mob/commons/v;->b(Ljava/lang/String;J)J

    move-result-wide v6

    .line 68
    invoke-direct {p0, v2, v3, v6, v7}, Lcom/mob/commons/a/j;->a(JJ)Z

    move-result v10

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gez v2, :cond_1

    if-nez v10, :cond_2

    .line 71
    :cond_1
    const-string v2, "004Beg4iDfe,j"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/mob/commons/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "ALSAMT"

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/mob/commons/a/j;->a(JLjava/lang/String;Ljava/lang/Object;)V

    .line 73
    invoke-static {}, Lcom/mob/commons/v;->a()Lcom/mob/commons/v;

    move-result-object v2

    sget-object v3, Lcom/mob/commons/v;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/mob/commons/v;->a(Ljava/lang/String;J)V

    .line 78
    :cond_2
    sget-object v2, Lcom/mob/commons/j;->f:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->readArrayListFromFile(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 79
    invoke-direct {p0}, Lcom/mob/commons/a/j;->o()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/mob/commons/a/j;->p()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v0, v3

    .line 80
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 82
    invoke-direct {p0, v1}, Lcom/mob/commons/a/j;->a(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 85
    invoke-direct {p0, v2, v1}, Lcom/mob/commons/a/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 89
    invoke-static {}, Lcom/mob/commons/a/j$a;->a()Lcom/mob/commons/a/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/a/j$a;->b()V

    goto :goto_2

    .line 92
    :cond_7
    invoke-static {}, Lcom/mob/commons/a/j$a;->a()Lcom/mob/commons/a/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/a/j$a;->c()V

    :goto_2
    return-void
.end method

.method protected e()Z
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/mob/commons/a/j;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mob/commons/a/j;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mob/commons/a/j;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mob/commons/a/j;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
