.class public final Lgbsdk/common/host/abgd;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationExitInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tProcess : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lgbsdk/common/host/abho;->ay()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tReason : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v2

    invoke-static {v2}, Lgbsdk/common/host/abgd;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tRSS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n\tPSS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n\tDescription : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tImportance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static i(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lgbsdk/common/host/abgd;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p0}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public static j(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "FREEZER"

    return-object p0

    :pswitch_1
    const-string p0, "OTHER KILLS BY SYSTEM"

    return-object p0

    :pswitch_2
    const-string p0, "DEPENDENCY DIED"

    return-object p0

    :pswitch_3
    const-string p0, "USER STOPPED"

    return-object p0

    :pswitch_4
    const-string p0, "USER REQUESTED"

    return-object p0

    :pswitch_5
    const-string p0, "EXCESSIVE RESOURCE USAGE"

    return-object p0

    :pswitch_6
    const-string p0, "PERMISSION CHANGE"

    return-object p0

    :pswitch_7
    const-string p0, "INITIALIZATION FAILURE"

    return-object p0

    :pswitch_8
    const-string p0, "ANR"

    return-object p0

    :pswitch_9
    const-string p0, "APP CRASH(NATIVE)"

    return-object p0

    :pswitch_a
    const-string p0, "APP CRASH(EXCEPTION)"

    return-object p0

    :pswitch_b
    const-string p0, "LOW_MEMORY"

    return-object p0

    :pswitch_c
    const-string p0, "SIGNALED"

    return-object p0

    :pswitch_d
    const-string p0, "EXIT_SELF"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static k(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "PACKAGE UPDATE"

    return-object p0

    :pswitch_1
    const-string p0, "KILL BACKGROUND"

    return-object p0

    :pswitch_2
    const-string p0, "STOP APP"

    return-object p0

    :pswitch_3
    const-string p0, "REMOVE TASK"

    return-object p0

    :pswitch_4
    const-string p0, "FORCE STOP"

    return-object p0

    :pswitch_5
    const-string p0, "FREEZER BINDER TRANSACTION"

    return-object p0

    :pswitch_6
    const-string p0, "FREEZER BINDER IOCTL"

    return-object p0

    :pswitch_7
    const-string p0, "CACHED IDLE FORCED APP STANDBY"

    return-object p0

    :pswitch_8
    const-string p0, "ISOLATED NOT NEEDED"

    return-object p0

    :pswitch_9
    const-string p0, "REMOVE LRU"

    return-object p0

    :pswitch_a
    const-string p0, "IMPERCEPTIBLE"

    return-object p0

    :pswitch_b
    const-string p0, "INVALID STATE"

    return-object p0

    :pswitch_c
    const-string p0, "INVALID START"

    return-object p0

    :pswitch_d
    const-string p0, "KILL PID"

    return-object p0

    :pswitch_e
    const-string p0, "KILL UID"

    return-object p0

    :pswitch_f
    const-string p0, "KILL ALL BG EXCEPT"

    return-object p0

    :pswitch_10
    const-string p0, "KILL ALL FG"

    return-object p0

    :pswitch_11
    const-string p0, "SYSTEM UPDATE_DONE"

    return-object p0

    :pswitch_12
    const-string p0, "EXCESSIVE CPU USAGE"

    return-object p0

    :pswitch_13
    const-string p0, "MEMORY PRESSURE"

    return-object p0

    :pswitch_14
    const-string p0, "LARGE CACHED"

    return-object p0

    :pswitch_15
    const-string p0, "TRIM EMPTY"

    return-object p0

    :pswitch_16
    const-string p0, "TOO MANY EMPTY PROCS"

    return-object p0

    :pswitch_17
    const-string p0, "TOO MANY CACHED PROCS"

    return-object p0

    :pswitch_18
    const-string p0, "WAIT FOR DEBUGGER"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static l(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    :try_start_0
    const-string p0, "not obtained"

    return-object p0

    :cond_0
    const-wide/16 v0, 0x400

    div-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_13

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    const-string p0, "[1~30MB]"

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x3c

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-gtz p1, :cond_2

    const-string p0, "(30~100MB]"

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long p1, v0, v4

    if-lez p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_3

    const-string p0, "(60~100MB]"

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0xc8

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-gtz p1, :cond_4

    const-string p0, "(100~150MB]"

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long p1, v0, v4

    if-lez p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_5

    const-string p0, "(200~300MB]"

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x190

    cmp-long p1, v0, v2

    if-lez p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-gtz p1, :cond_6

    const-string p0, "(300~400MB]"

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v4

    if-lez p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_7

    const-string p0, "(400~500MB]"

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x258

    cmp-long p1, v0, v2

    if-lez p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-gtz p1, :cond_8

    const-string p0, "(500~600MB]"

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x2bc

    cmp-long p1, v0, v4

    if-lez p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_9

    const-string p0, "(600~700MB]"

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x320

    cmp-long p1, v0, v2

    if-lez p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-gtz p1, :cond_a

    const-string p0, "(700~800MB]"

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x384

    cmp-long p1, v0, v4

    if-lez p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_b

    const-string p0, "(800~900MB]"

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    cmp-long p1, v0, v2

    if-lez p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-gtz p1, :cond_c

    const-string p0, "(900~1000MB]"

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x5dc

    cmp-long p1, v0, v4

    if-lez p1, :cond_d

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_d

    const-string p0, "(1GB~1.5GB]"

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x7d0

    cmp-long p1, v0, v2

    if-lez p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-gtz p1, :cond_e

    const-string p0, "(1.5GB~2GB]"

    goto :goto_0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    cmp-long p1, v0, v4

    if-lez p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_f

    const-string p0, "(2GB~3GB]"

    goto :goto_0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0xfa0

    cmp-long p1, v0, v2

    if-lez p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-gtz p1, :cond_10

    const-string p0, "(3GB~4GB]"

    goto :goto_0

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1770

    cmp-long p1, v0, v4

    if-lez p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_11

    const-string p0, "(4GB~6GB]"

    goto :goto_0

    :cond_11
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-lez p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v0, 0x1f40

    cmp-long v2, p0, v0

    if-gtz v2, :cond_12

    const-string p0, "(6GB~8GB]"

    goto :goto_0

    :cond_12
    const-string p0, ">8G"

    goto :goto_0

    :cond_13
    const-string p0, "< 1MB"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "invalid"

    :goto_0
    return-object p0
.end method

.method public static l(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
