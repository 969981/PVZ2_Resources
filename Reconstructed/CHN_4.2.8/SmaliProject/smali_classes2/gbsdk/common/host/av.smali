.class public Lgbsdk/common/host/av;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/av$ac;
    }
.end annotation


# static fields
.field public static aN:J

.field public static aO:Lgbsdk/common/host/av$ac;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field public static o:J


# instance fields
.field public final aP:Lcom/apm/applog/AppLog;

.field public aQ:Lgbsdk/common/host/abaf;

.field public al:Lgbsdk/common/host/abaf;

.field public final an:Lgbsdk/common/host/ap;

.field public e:Ljava/lang/String;

.field public volatile f:J

.field public g:I

.field public h:J

.field public volatile i:Z

.field public j:J

.field public k:I

.field public l:Ljava/lang/String;

.field public volatile m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/ap;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lgbsdk/common/host/av;->h:J

    .line 18
    iput-object p1, p0, Lgbsdk/common/host/av;->an:Lgbsdk/common/host/ap;

    .line 19
    iget-object p1, p1, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 20
    invoke-virtual {p1}, Lgbsdk/common/host/abbf;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apm/applog/AppLog;->getInstance(Ljava/lang/String;)Lcom/apm/applog/AppLog;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/av;->aP:Lcom/apm/applog/AppLog;

    return-void
.end method

.method public static c(Lgbsdk/common/host/aban;)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lgbsdk/common/host/av;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "729ee54836fb9f43c8d22066f5d8d4cb"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v0, p0, Lgbsdk/common/host/abaf;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lgbsdk/common/host/abaf;

    .line 5
    invoke-virtual {p0}, Lgbsdk/common/host/abaf;->h()Z

    move-result p0

    return p0

    :cond_1
    return v2
.end method

.method public static d()J
    .locals 4

    .line 1
    sget-wide v0, Lgbsdk/common/host/av;->o:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lgbsdk/common/host/av;->o:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized a(Lgbsdk/common/host/aban;Ljava/util/ArrayList;Z)Lgbsdk/common/host/abad;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/common/host/aban;",
            "Ljava/util/ArrayList<",
            "Lgbsdk/common/host/aban;",
            ">;Z)",
            "Lgbsdk/common/host/abad;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, p3}, Ljava/lang/Byte;-><init>(B)V

    const/4 v4, 0x2

    aput-object v3, v0, v4

    sget-object v3, Lgbsdk/common/host/av;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v5, "ae8573d844ab7a3ae2fe06001fe2e759"

    invoke-static {v0, p0, v3, v1, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lgbsdk/common/host/abad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 14
    :cond_0
    :try_start_1
    instance-of v0, p1, Lgbsdk/common/host/av$ac;

    const-wide/16 v5, -0x1

    if-eqz v0, :cond_1

    move-wide v7, v5

    goto :goto_0

    :cond_1
    iget-wide v7, p1, Lgbsdk/common/host/aban;->b:J

    .line 16
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/av;->e:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 17
    iget-object v0, p0, Lgbsdk/common/host/av;->an:Lgbsdk/common/host/ap;

    iget-boolean v0, v0, Lgbsdk/common/host/ap;->r:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lgbsdk/common/host/av;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p0, Lgbsdk/common/host/av;->e:Ljava/lang/String;

    iput-object v0, p0, Lgbsdk/common/host/av;->m:Ljava/lang/String;

    :cond_2
    const-wide/16 v9, 0x2710

    .line 20
    sput-wide v9, Lgbsdk/common/host/av;->o:J

    .line 21
    iput-wide v7, p0, Lgbsdk/common/host/av;->h:J

    .line 22
    iput-boolean p3, p0, Lgbsdk/common/host/av;->i:Z

    const-wide/16 v9, 0x0

    .line 23
    iput-wide v9, p0, Lgbsdk/common/host/av;->j:J

    .line 24
    iput-wide v9, p0, Lgbsdk/common/host/av;->f:J

    if-eqz p3, :cond_5

    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v3, ""

    .line 28
    invoke-static {v3}, Lgbsdk/common/host/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v3, p0, Lgbsdk/common/host/av;->an:Lgbsdk/common/host/ap;

    .line 31
    iget-object v3, v3, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 32
    iget-object v4, p0, Lgbsdk/common/host/av;->l:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 33
    iget-object v4, v3, Lgbsdk/common/host/abbk;->aY:Landroid/content/SharedPreferences;

    const-string v9, "session_last_day"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    iput-object v4, p0, Lgbsdk/common/host/av;->l:Ljava/lang/String;

    .line 35
    iget-object v4, v3, Lgbsdk/common/host/abbk;->aY:Landroid/content/SharedPreferences;

    const-string v9, "session_order"

    invoke-interface {v4, v9, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 36
    iput v4, p0, Lgbsdk/common/host/av;->k:I

    .line 38
    :cond_3
    iget-object v4, p0, Lgbsdk/common/host/av;->l:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 39
    iput-object v0, p0, Lgbsdk/common/host/av;->l:Ljava/lang/String;

    .line 40
    iput v2, p0, Lgbsdk/common/host/av;->k:I

    goto :goto_1

    .line 42
    :cond_4
    iget v4, p0, Lgbsdk/common/host/av;->k:I

    add-int/2addr v4, v2

    iput v4, p0, Lgbsdk/common/host/av;->k:I

    .line 44
    :goto_1
    iget v4, p0, Lgbsdk/common/host/av;->k:I

    .line 45
    iget-object v3, v3, Lgbsdk/common/host/abbk;->aY:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v9, "session_last_day"

    invoke-interface {v3, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "session_order"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    iput v1, p0, Lgbsdk/common/host/av;->g:I

    .line 47
    iget-wide v3, p1, Lgbsdk/common/host/aban;->b:J

    iput-wide v3, p0, Lgbsdk/common/host/av;->f:J

    :cond_5
    const/4 p1, 0x0

    cmp-long v0, v7, v5

    if-eqz v0, :cond_8

    .line 53
    new-instance p1, Lgbsdk/common/host/abad;

    invoke-direct {p1}, Lgbsdk/common/host/abad;-><init>()V

    .line 54
    iget-object v0, p0, Lgbsdk/common/host/av;->e:Ljava/lang/String;

    iput-object v0, p1, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    .line 55
    iget-boolean v0, p0, Lgbsdk/common/host/av;->i:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p1, Lgbsdk/common/host/abad;->n:Z

    .line 56
    invoke-static {}, Lgbsdk/common/host/av;->d()J

    move-result-wide v3

    iput-wide v3, p1, Lgbsdk/common/host/aban;->c:J

    .line 57
    iget-wide v3, p0, Lgbsdk/common/host/av;->h:J

    invoke-virtual {p1, v3, v4}, Lgbsdk/common/host/aban;->a(J)V

    .line 58
    iget-object v0, p0, Lgbsdk/common/host/av;->an:Lgbsdk/common/host/ap;

    .line 59
    iget-object v0, v0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 60
    invoke-virtual {v0}, Lgbsdk/common/host/abbf;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lgbsdk/common/host/abad;->m:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lgbsdk/common/host/av;->an:Lgbsdk/common/host/ap;

    .line 62
    iget-object v0, v0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 63
    invoke-virtual {v0}, Lgbsdk/common/host/abbf;->H()I

    move-result v0

    iput v0, p1, Lgbsdk/common/host/abad;->bd:I

    .line 64
    sget-wide v3, Lgbsdk/common/host/av;->aN:J

    iput-wide v3, p1, Lgbsdk/common/host/aban;->bw:J

    .line 65
    iget-object v0, p0, Lgbsdk/common/host/av;->aP:Lcom/apm/applog/AppLog;

    invoke-virtual {v0}, Lcom/apm/applog/AppLog;->getUserUniqueID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lgbsdk/common/host/aban;->f:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lgbsdk/common/host/av;->aP:Lcom/apm/applog/AppLog;

    invoke-virtual {v0}, Lcom/apm/applog/AppLog;->getSsid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lgbsdk/common/host/aban;->g:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lgbsdk/common/host/av;->aP:Lcom/apm/applog/AppLog;

    invoke-virtual {v0}, Lcom/apm/applog/AppLog;->getAbSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lgbsdk/common/host/aban;->h:Ljava/lang/String;

    if-eqz p3, :cond_6

    .line 68
    iget-object v0, p0, Lgbsdk/common/host/av;->an:Lgbsdk/common/host/ap;

    .line 69
    iget-object v0, v0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 70
    invoke-virtual {v0}, Lgbsdk/common/host/abbk;->x()I

    :cond_6
    iput v1, p1, Lgbsdk/common/host/abad;->p:I

    if-eqz p3, :cond_7

    .line 71
    iget p3, p1, Lgbsdk/common/host/abad;->p:I

    if-ne p3, v2, :cond_7

    .line 72
    iget-object p3, p0, Lgbsdk/common/host/av;->an:Lgbsdk/common/host/ap;

    .line 73
    iget-object p3, p3, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 74
    invoke-virtual {p3}, Lgbsdk/common/host/abbk;->l()V

    .line 76
    :cond_7
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_8
    sget p2, Lcom/apm/applog/AppLog;->sLaunchFrom:I

    if-gtz p2, :cond_9

    const/4 p2, 0x6

    .line 79
    sput p2, Lcom/apm/applog/AppLog;->sLaunchFrom:I

    :cond_9
    const-string p2, "startSession, "

    .line 82
    invoke-static {p2}, Lgbsdk/common/host/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Lgbsdk/common/host/av;->i:Z

    if-eqz p3, :cond_a

    const-string p3, "fg"

    goto :goto_2

    :cond_a
    const-string p3, "bg"

    :goto_2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lgbsdk/common/host/av;->e:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/av;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8638c3b7382d05c0adc77a954260f700"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 153
    :cond_0
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/av;->an:Lgbsdk/common/host/ap;

    .line 154
    iget-object v0, v0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 155
    invoke-virtual {v0}, Lgbsdk/common/host/abbk;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/applog/AppLog;->getInstance(Ljava/lang/String;)Lcom/apm/applog/AppLog;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/apm/applog/AppLog;->getSessionTags()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lgbsdk/common/host/aban;Ljava/util/ArrayList;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/common/host/aban;",
            "Ljava/util/ArrayList<",
            "Lgbsdk/common/host/aban;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v5, 0x1

    aput-object v2, v3, v5

    sget-object v6, Lgbsdk/common/host/av;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v7, "99c42168efa3c1febd2a7135faa1ca7c"

    invoke-static {v3, v0, v6, v4, v7}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v1, v3, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 83
    :cond_0
    instance-of v3, v1, Lgbsdk/common/host/abaf;

    .line 84
    invoke-static/range {p1 .. p1}, Lgbsdk/common/host/av;->c(Lgbsdk/common/host/aban;)Z

    move-result v6

    .line 86
    iget-object v7, v0, Lgbsdk/common/host/av;->an:Lgbsdk/common/host/ap;

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_2

    .line 87
    iget-object v7, v7, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    if-eqz v7, :cond_2

    .line 88
    iget-boolean v7, v7, Lgbsdk/common/host/abbk;->q:Z

    if-eqz v7, :cond_2

    .line 89
    invoke-static {}, Lgbsdk/common/host/am;->A()Lgbsdk/common/host/abaf;

    move-result-object v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, v0, Lgbsdk/common/host/av;->i:Z

    goto :goto_2

    .line 91
    :cond_2
    iget-wide v10, v0, Lgbsdk/common/host/av;->h:J

    const-wide/16 v12, -0x1

    cmp-long v7, v10, v12

    if-nez v7, :cond_3

    .line 93
    invoke-static/range {p1 .. p1}, Lgbsdk/common/host/av;->c(Lgbsdk/common/host/aban;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Lgbsdk/common/host/av;->a(Lgbsdk/common/host/aban;Ljava/util/ArrayList;Z)Lgbsdk/common/host/abad;

    goto :goto_1

    .line 94
    :cond_3
    iget-boolean v7, v0, Lgbsdk/common/host/av;->i:Z

    if-nez v7, :cond_4

    if-eqz v6, :cond_4

    .line 96
    invoke-virtual {v0, v1, v2, v5}, Lgbsdk/common/host/av;->a(Lgbsdk/common/host/aban;Ljava/util/ArrayList;Z)Lgbsdk/common/host/abad;

    goto :goto_1

    .line 97
    :cond_4
    iget-wide v10, v0, Lgbsdk/common/host/av;->j:J

    cmp-long v7, v10, v8

    if-eqz v7, :cond_5

    iget-wide v12, v1, Lgbsdk/common/host/aban;->b:J

    iget-object v7, v0, Lgbsdk/common/host/av;->an:Lgbsdk/common/host/ap;

    .line 98
    iget-object v7, v7, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 99
    iget-object v7, v7, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    const-wide/16 v14, 0x7530

    const-string v4, "session_interval"

    invoke-interface {v7, v4, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    add-long/2addr v14, v10

    cmp-long v4, v12, v14

    if-lez v4, :cond_5

    .line 100
    invoke-virtual {v0, v1, v2, v6}, Lgbsdk/common/host/av;->a(Lgbsdk/common/host/aban;Ljava/util/ArrayList;Z)Lgbsdk/common/host/abad;

    goto :goto_1

    .line 101
    :cond_5
    iget-wide v10, v0, Lgbsdk/common/host/av;->h:J

    iget-wide v12, v1, Lgbsdk/common/host/aban;->b:J

    const-wide/32 v14, 0x6ddd00

    add-long/2addr v12, v14

    cmp-long v4, v10, v12

    if-lez v4, :cond_6

    .line 103
    invoke-virtual {v0, v1, v2, v6}, Lgbsdk/common/host/av;->a(Lgbsdk/common/host/aban;Ljava/util/ArrayList;Z)Lgbsdk/common/host/abad;

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-eqz v3, :cond_b

    .line 109
    move-object v3, v1

    check-cast v3, Lgbsdk/common/host/abaf;

    .line 110
    invoke-virtual {v3}, Lgbsdk/common/host/abaf;->h()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 111
    iput-wide v8, v0, Lgbsdk/common/host/av;->j:J

    .line 114
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v2, v3, Lgbsdk/common/host/abaf;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 117
    iget-object v2, v0, Lgbsdk/common/host/av;->aQ:Lgbsdk/common/host/abaf;

    const-wide/16 v5, 0x1f4

    if-eqz v2, :cond_7

    iget-wide v7, v3, Lgbsdk/common/host/aban;->b:J

    iget-wide v9, v2, Lgbsdk/common/host/aban;->b:J

    sub-long/2addr v7, v9

    iget-wide v9, v2, Lgbsdk/common/host/abaf;->bP:J

    sub-long/2addr v7, v9

    cmp-long v9, v7, v5

    if-gez v9, :cond_7

    .line 119
    iget-object v2, v2, Lgbsdk/common/host/abaf;->n:Ljava/lang/String;

    iput-object v2, v3, Lgbsdk/common/host/abaf;->m:Ljava/lang/String;

    goto :goto_3

    .line 120
    :cond_7
    iget-object v2, v0, Lgbsdk/common/host/av;->al:Lgbsdk/common/host/abaf;

    if-eqz v2, :cond_c

    iget-wide v7, v3, Lgbsdk/common/host/aban;->b:J

    iget-wide v9, v2, Lgbsdk/common/host/aban;->b:J

    sub-long/2addr v7, v9

    iget-wide v9, v2, Lgbsdk/common/host/abaf;->bP:J

    sub-long/2addr v7, v9

    cmp-long v9, v7, v5

    if-gez v9, :cond_c

    .line 122
    iget-object v2, v2, Lgbsdk/common/host/abaf;->n:Ljava/lang/String;

    iput-object v2, v3, Lgbsdk/common/host/abaf;->m:Ljava/lang/String;

    goto :goto_3

    .line 126
    :cond_8
    iget-wide v5, v1, Lgbsdk/common/host/aban;->b:J

    invoke-virtual {v0, v5, v6, v8, v9}, Lgbsdk/common/host/av;->b(JJ)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 128
    iget-object v6, v0, Lgbsdk/common/host/av;->aP:Lcom/apm/applog/AppLog;

    const-string v7, "play_session"

    invoke-virtual {v6, v7, v5}, Lcom/apm/applog/AppLog;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 131
    :cond_9
    iget-wide v5, v3, Lgbsdk/common/host/aban;->b:J

    iput-wide v5, v0, Lgbsdk/common/host/av;->j:J

    .line 133
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v2, v3, Lgbsdk/common/host/abaf;->n:Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 135
    iput-object v3, v0, Lgbsdk/common/host/av;->al:Lgbsdk/common/host/abaf;

    goto :goto_3

    .line 137
    :cond_a
    iput-object v3, v0, Lgbsdk/common/host/av;->aQ:Lgbsdk/common/host/abaf;

    const/4 v2, 0x0

    .line 138
    iput-object v2, v0, Lgbsdk/common/host/av;->al:Lgbsdk/common/host/abaf;

    goto :goto_3

    .line 141
    :cond_b
    instance-of v3, v1, Lgbsdk/common/host/av$ac;

    if-nez v3, :cond_c

    .line 142
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_c
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lgbsdk/common/host/av;->b(Lgbsdk/common/host/aban;)V

    return v4
.end method

.method public declared-synchronized b(JJ)Landroid/os/Bundle;
    .locals 7

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p3, p4}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lgbsdk/common/host/av;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "c970b52de891c8645268ca23027e71c4"

    invoke-static {v0, p0, v1, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-wide v1, p0, Lgbsdk/common/host/av;->f:J

    .line 2
    iget-object v4, p0, Lgbsdk/common/host/av;->an:Lgbsdk/common/host/ap;

    .line 3
    iget-object v4, v4, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 4
    iget-object v4, v4, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v4}, Lcom/apm/applog/InitConfig;->isPlayEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {p0}, Lgbsdk/common/host/av;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_1

    sub-long v1, p1, v1

    cmp-long v4, v1, p3

    if-lez v4, :cond_1

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    iget p3, p0, Lgbsdk/common/host/av;->k:I

    const-string p4, "session_no"

    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget p3, p0, Lgbsdk/common/host/av;->g:I

    add-int/2addr p3, v3

    iput p3, p0, Lgbsdk/common/host/av;->g:I

    const-string p4, "send_times"

    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-wide/16 p3, 0x3e8

    .line 9
    div-long/2addr v1, p3

    const-string p3, "current_duration"

    invoke-virtual {v0, p3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 10
    iget-wide p3, p0, Lgbsdk/common/host/av;->h:J

    .line 11
    sget-object v1, Lgbsdk/common/host/aban;->bv:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "session_start_time"

    .line 12
    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-wide p1, p0, Lgbsdk/common/host/av;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lgbsdk/common/host/aban;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/av;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "5376f839307226f4e240645298e826cf"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 146
    sget-wide v0, Lgbsdk/common/host/av;->aN:J

    iput-wide v0, p1, Lgbsdk/common/host/aban;->bw:J

    .line 147
    iget-object v0, p0, Lgbsdk/common/host/av;->aP:Lcom/apm/applog/AppLog;

    invoke-virtual {v0}, Lcom/apm/applog/AppLog;->getUserUniqueID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lgbsdk/common/host/aban;->f:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lgbsdk/common/host/av;->aP:Lcom/apm/applog/AppLog;

    invoke-virtual {v0}, Lcom/apm/applog/AppLog;->getSsid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lgbsdk/common/host/aban;->g:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lgbsdk/common/host/av;->e:Ljava/lang/String;

    iput-object v0, p1, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    .line 150
    invoke-static {}, Lgbsdk/common/host/av;->d()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/aban;->c:J

    .line 151
    iget-object v0, p0, Lgbsdk/common/host/av;->aP:Lcom/apm/applog/AppLog;

    invoke-virtual {v0}, Lcom/apm/applog/AppLog;->getAbSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lgbsdk/common/host/aban;->h:Ljava/lang/String;

    .line 152
    sget-object v0, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->UNKNOWN:Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;

    invoke-virtual {v0}, Lcom/bytedance/apm/common/utility/NetworkUtils$NetworkType;->getValue()I

    move-result v0

    iput v0, p1, Lgbsdk/common/host/aban;->i:I

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lgbsdk/common/host/av;->i:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lgbsdk/common/host/av;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/av;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3e3850f080298f0200b3626d994308a7"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/av;->e:Ljava/lang/String;

    .line 2
    invoke-static {}, Lgbsdk/common/host/am;->A()Lgbsdk/common/host/abaf;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lgbsdk/common/host/av;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
