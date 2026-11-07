.class public Lcom/mob/commons/a/i;
.super Lcom/mob/commons/a/c;


# static fields
.field private static c:Lcom/mob/commons/h;

.field private static final d:Ljava/lang/String;


# instance fields
.field private e:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-string v0, "0146bh6gUbgbbbdbeMbKbc\'hgEbbcbcadd"

    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/a/i;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 26
    const-string v0, "002,dabc"

    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "005BdabcddbdRc"

    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1e

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    .line 27
    invoke-virtual {p0}, Lcom/mob/commons/a/i;->c()V

    .line 28
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/commons/a/i;->e:Lcom/mob/tools/utils/SharePrefrenceHelper;

    .line 29
    const-string v1, "008bUcaJc?bb-bZbc(jg"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;)V

    return-void
.end method

.method private a(JJ)V
    .locals 2

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/a/i;->e:Lcom/mob/tools/utils/SharePrefrenceHelper;

    sget-object v1, Lcom/mob/commons/a/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p1, p0, Lcom/mob/commons/a/i;->e:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 88
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private b(J)V
    .locals 7

    .line 66
    invoke-static {}, Lcom/mob/commons/i;->a()Lcom/mob/commons/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lcom/mob/commons/a/o;->a()Lcom/mob/commons/a/o;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mob/commons/a/i;->k()J

    move-result-wide v2

    const/4 v0, -0x1

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Long;

    const-wide/16 v5, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v5

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v5

    .line 68
    const-class v4, Lcom/mob/commons/a/i;

    invoke-virtual/range {v1 .. v6}, Lcom/mob/commons/a/o;->a(JLjava/lang/Class;[Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 7

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/a/i;->e:Lcom/mob/tools/utils/SharePrefrenceHelper;

    sget-object v1, Lcom/mob/commons/a/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v1, v4, v2

    .line 102
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 103
    const-string v6, "005.babiUb%bccb"

    invoke-static {v6}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v4, "0084bfbabiMb$bcGjgMde"

    invoke-static {v4}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "BKIOMT"

    invoke-virtual {p0, v1, v3}, Lcom/mob/commons/a/i;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/a/i;->e:Lcom/mob/tools/utils/SharePrefrenceHelper;

    sget-object v1, Lcom/mob/commons/a/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 111
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private static declared-synchronized o()Z
    .locals 3

    const-class v0, Lcom/mob/commons/a/i;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-object v1, Lcom/mob/commons/a/i;->c:Lcom/mob/commons/h;

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Lcom/mob/commons/a/i$1;

    invoke-direct {v1}, Lcom/mob/commons/a/i$1;-><init>()V

    sput-object v1, Lcom/mob/commons/a/i;->c:Lcom/mob/commons/h;

    .line 144
    invoke-static {}, Lcom/mob/commons/i;->a()Lcom/mob/commons/i;

    move-result-object v1

    sget-object v2, Lcom/mob/commons/a/i;->c:Lcom/mob/commons/h;

    invoke-virtual {v1, v2}, Lcom/mob/commons/i;->a(Lcom/mob/commons/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 147
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected a()V
    .locals 10

    .line 33
    invoke-virtual {p0}, Lcom/mob/commons/a/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/mob/commons/a/i;->o()Z

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/a/i;->a:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Long;

    check-cast v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    .line 38
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 39
    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    cmp-long v5, v1, v5

    if-nez v5, :cond_1

    .line 41
    array-length v6, v0

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    .line 45
    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v0, v1, v8

    if-nez v0, :cond_2

    .line 49
    invoke-direct {p0}, Lcom/mob/commons/a/i;->n()V

    .line 51
    invoke-direct {p0, v3, v4, v6, v7}, Lcom/mob/commons/a/i;->a(JJ)V

    .line 52
    invoke-direct {p0, v3, v4}, Lcom/mob/commons/a/i;->b(J)V

    goto :goto_2

    :cond_2
    const-wide/16 v8, 0x1

    cmp-long v0, v1, v8

    if-eqz v0, :cond_4

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v8, 0x2

    cmp-long v0, v1, v8

    if-nez v0, :cond_5

    .line 59
    invoke-direct {p0, v3, v4, v6, v7}, Lcom/mob/commons/a/i;->a(JJ)V

    .line 60
    invoke-direct {p0}, Lcom/mob/commons/a/i;->n()V

    goto :goto_2

    .line 55
    :cond_4
    :goto_1
    invoke-direct {p0, v3, v4, v6, v7}, Lcom/mob/commons/a/i;->a(JJ)V

    .line 56
    invoke-direct {p0, v3, v4}, Lcom/mob/commons/a/i;->b(J)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method
