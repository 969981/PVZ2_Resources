.class public final Lct/bm;
.super Landroid/content/BroadcastReceiver;
.source "TL"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;
.implements Lcom/tencent/map/geolocation/TencentLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/bm$c;,
        Lct/bm$a;,
        Lct/bm$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lct/bu;

.field private final c:Landroid/os/PowerManager$WakeLock;

.field private final d:Landroid/os/PowerManager$WakeLock;

.field private final e:Lct/bm$a;

.field private final f:Lct/bm$c;

.field private g:Lct/bm$b;

.field private h:Z

.field private i:Landroid/app/PendingIntent;

.field private final j:Lcom/tencent/map/geolocation/TencentLocationRequest;

.field private k:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 158
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lct/bm;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4

    .line 136
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 85
    new-instance v0, Lct/bm$b;

    invoke-direct {v0}, Lct/bm$b;-><init>()V

    iput-object v0, p0, Lct/bm;->g:Lct/bm$b;

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lct/bm;->h:Z

    .line 162
    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationRequest;->create()Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setRequestLevel(I)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setInterval(J)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setAllowCache(Z)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v1

    iput-object v1, p0, Lct/bm;->j:Lcom/tencent/map/geolocation/TencentLocationRequest;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 668
    iput-wide v1, p0, Lct/bm;->k:D

    .line 137
    iput-object p1, p0, Lct/bm;->a:Landroid/content/Context;

    .line 138
    invoke-static {p1}, Lct/be;->a(Landroid/content/Context;)Lct/be;

    move-result-object p1

    .line 139
    new-instance v1, Lct/bu;

    invoke-direct {v1, p1}, Lct/bu;-><init>(Lct/be;)V

    iput-object v1, p0, Lct/bm;->b:Lct/bu;

    .line 144
    iget-object p1, p0, Lct/bm;->a:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "GeofenceManager"

    .line 146
    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lct/bm;->c:Landroid/os/PowerManager$WakeLock;

    const-string v2, "tencent_location"

    .line 148
    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lct/bm;->d:Landroid/os/PowerManager$WakeLock;

    .line 150
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 152
    new-instance p1, Lct/bm$a;

    invoke-direct {p1, p0, p2}, Lct/bm$a;-><init>(Lct/bm;Landroid/os/Looper;)V

    iput-object p1, p0, Lct/bm;->e:Lct/bm$a;

    .line 153
    new-instance p1, Lct/bm$c;

    invoke-direct {p1, v0}, Lct/bm$c;-><init>(B)V

    iput-object p1, p0, Lct/bm;->f:Lct/bm$c;

    .line 154
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.tencent.map.geolocation.wakeup"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p2, p0, Lct/bm;->a:Landroid/content/Context;

    iget-object v0, p0, Lct/bm;->e:Lct/bm$a;

    const/4 v1, 0x0

    invoke-virtual {p2, p0, p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private a(J)Landroid/app/PendingIntent;
    .locals 10

    .line 728
    iget-object v0, p0, Lct/bm;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    .line 733
    :cond_0
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 736
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "xiaomi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    move v8, v2

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 739
    :goto_0
    iget-object v2, p0, Lct/bm;->i:Landroid/app/PendingIntent;

    const/4 v9, 0x2

    if-eqz v2, :cond_2

    .line 740
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 741
    iput-object v0, p0, Lct/bm;->i:Landroid/app/PendingIntent;

    if-eqz v8, :cond_2

    .line 743
    iget-object v2, p0, Lct/bm;->e:Lct/bm$a;

    invoke-virtual {v2, v9}, Lct/bm$a;->removeMessages(I)V

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    .line 747
    iget-object v0, p0, Lct/bm;->a:Landroid/content/Context;

    invoke-static {}, Lct/bm;->k()Landroid/content/Intent;

    move-result-object v2

    const/high16 v4, 0x8000000

    invoke-static {v0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lct/bm;->i:Landroid/app/PendingIntent;

    .line 748
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v3, v2, p1

    const/4 v2, 0x2

    move-wide v5, p1

    move-object v7, v0

    .line 749
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    if-eqz v8, :cond_3

    .line 753
    iget-object v1, p0, Lct/bm;->e:Lct/bm$a;

    const-wide/16 v2, 0x2710

    add-long/2addr p1, v2

    invoke-virtual {v1, v9, p1, p2}, Lct/bm$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-object v0
.end method

.method private a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 7

    .line 704
    iget-object v0, p0, Lct/bm;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 706
    :try_start_0
    iget-object v2, p0, Lct/bm;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 709
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "removeFence: fence="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", intent="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p2, p0, Lct/bm;->g:Lct/bm$b;

    monitor-enter p2

    :try_start_1
    iget-object v0, p0, Lct/bm;->g:Lct/bm$b;

    iget-object v0, v0, Lct/bm$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lct/bl;

    iget-object v1, v1, Lct/bl;->d:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lct/bm;->i()V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    iget-object p1, p0, Lct/bm;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception p1

    .line 709
    monitor-exit p2

    throw p1
.end method

.method static synthetic a(Lct/bm;)V
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, v0}, Lct/bm;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 31

    move-object/from16 v1, p0

    .line 537
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 538
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 540
    iget-object v3, v1, Lct/bm;->g:Lct/bm$b;

    monitor-enter v3

    .line 541
    :try_start_0
    iget-object v4, v1, Lct/bm;->g:Lct/bm$b;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lct/bm$b;->e:Z

    .line 544
    invoke-direct/range {p0 .. p0}, Lct/bm;->h()V

    .line 549
    invoke-direct/range {p0 .. p0}, Lct/bm;->j()Landroid/location/Location;

    move-result-object v4

    .line 550
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updateFences: fresh_location="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 556
    iget-object v7, v1, Lct/bm;->g:Lct/bm$b;

    iget-object v7, v7, Lct/bm$b;->a:Ljava/util/List;

    .line 557
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    if-eqz v4, :cond_10

    .line 560
    invoke-static {v4}, Lct/b$a;->a(Landroid/location/Location;)V

    .line 561
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const-wide v15, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const/16 v18, 0x0

    if-eqz v17, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Lct/bl;

    .line 562
    iget-object v5, v10, Lct/bl;->g:Ljava/lang/Object;

    if-eq v4, v5, :cond_5

    iput-object v4, v10, Lct/bl;->g:Ljava/lang/Object;

    iget-wide v12, v10, Lct/bl;->f:D

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v21

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v23

    iget-object v5, v10, Lct/bl;->b:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v25

    iget-object v5, v10, Lct/bl;->b:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v27

    move-wide/from16 v29, v12

    invoke-static/range {v21 .. v28}, Lct/b$a;->a(DDDD)D

    move-result-wide v11

    iget-object v13, v10, Lct/bl;->b:Landroid/location/Location;

    invoke-virtual {v13}, Landroid/location/Location;->getTime()J

    move-result-wide v21

    move-object v13, v6

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    const-wide/16 v24, 0x0

    cmp-long v26, v21, v24

    if-eqz v26, :cond_2

    cmpl-double v26, v11, v29

    if-ltz v26, :cond_0

    const-wide/16 v21, 0x0

    move-object/from16 v25, v10

    goto :goto_2

    :cond_0
    cmpg-double v26, v11, v29

    if-gez v26, :cond_2

    sub-long v21, v5, v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(J)J

    move-result-wide v21

    const-wide/16 v26, 0x3e8

    div-long v21, v21, v26

    sub-double v26, v29, v11

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    cmp-long v28, v21, v24

    if-eqz v28, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v24, 0x1

    add-long v21, v21, v24

    :goto_1
    move-object/from16 v25, v10

    move-wide/from16 v9, v21

    long-to-double v9, v9

    div-double v21, v26, v9

    goto :goto_2

    :cond_2
    move-object/from16 v25, v10

    const-wide v21, -0x40af9db220000000L    # -0.0010000000474974513

    :goto_2
    move-wide/from16 v9, v21

    double-to-float v9, v9

    move-object/from16 v21, v14

    move-object/from16 v10, v25

    iget-object v14, v10, Lct/bl;->b:Landroid/location/Location;

    invoke-virtual {v14, v5, v6}, Landroid/location/Location;->setTime(J)V

    iget-object v5, v10, Lct/bl;->b:Landroid/location/Location;

    invoke-virtual {v5, v9}, Landroid/location/Location;->setSpeed(F)V

    iput-wide v11, v10, Lct/bl;->f:D

    iget v6, v10, Lct/bl;->e:I

    iget-wide v11, v10, Lct/bl;->f:D

    iget-object v5, v10, Lct/bl;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    invoke-virtual {v5}, Lcom/tencent/map/geolocation/TencentGeofence;->getRadius()F

    move-result v5

    move-object v9, v4

    float-to-double v4, v5

    cmpg-double v14, v11, v4

    if-gtz v14, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_4

    const/4 v4, 0x1

    iput v4, v10, Lct/bl;->e:I

    if-eq v6, v4, :cond_6

    goto :goto_4

    :cond_4
    const/4 v4, 0x1

    const/4 v5, 0x2

    iput v5, v10, Lct/bl;->e:I

    if-ne v6, v4, :cond_6

    const/4 v4, 0x2

    goto :goto_4

    :cond_5
    move-object v9, v4

    move-object v13, v6

    move-object/from16 v21, v14

    :cond_6
    const/4 v4, 0x0

    :goto_4
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_7

    .line 564
    iget-object v6, v10, Lct/bl;->d:Landroid/app/PendingIntent;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8

    .line 567
    iget-object v4, v10, Lct/bl;->d:Landroid/app/PendingIntent;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_8
    iget-wide v11, v10, Lct/bl;->f:D

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-nez v4, :cond_9

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_5

    :cond_9
    iget-object v4, v10, Lct/bl;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    invoke-virtual {v4}, Lcom/tencent/map/geolocation/TencentGeofence;->getRadius()F

    move-result v4

    float-to-double v4, v4

    iget-wide v11, v10, Lct/bl;->f:D

    sub-double/2addr v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    :goto_5
    cmpg-double v4, v5, v15

    if-gez v4, :cond_a

    move-wide v15, v5

    .line 580
    :cond_a
    iget v4, v10, Lct/bl;->e:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_b

    iget-object v4, v10, Lct/bl;->b:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getSpeed()F

    move-result v4

    cmpl-float v4, v4, v18

    if-ltz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_c

    .line 581
    invoke-virtual {v10}, Lct/bl;->a()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object v4, v9

    move-object v6, v13

    move-object/from16 v14, v21

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_d
    move-object v9, v4

    move-object v13, v6

    .line 586
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e

    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v13}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_7

    :cond_e
    const/high16 v4, 0x41c80000    # 25.0f

    :goto_7
    iget-object v5, v1, Lct/bm;->g:Lct/bm$b;

    iget-object v5, v5, Lct/bm$b;->f:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    cmpl-float v5, v5, v18

    if-lez v5, :cond_f

    iget-object v5, v1, Lct/bm;->g:Lct/bm$b;

    iget-object v5, v5, Lct/bm$b;->f:[F

    aget v10, v5, v6

    add-float/2addr v10, v4

    aput v10, v5, v6

    iget-object v4, v1, Lct/bm;->g:Lct/bm$b;

    iget-object v4, v4, Lct/bm$b;->f:[F

    aget v5, v4, v6

    float-to-double v10, v5

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v10, v10, v12

    double-to-float v5, v10

    aput v5, v4, v6

    goto :goto_8

    :cond_f
    iget-object v5, v1, Lct/bm;->g:Lct/bm$b;

    iget-object v5, v5, Lct/bm$b;->f:[F

    const/4 v6, 0x0

    aput v4, v5, v6

    :goto_8
    iget-object v4, v1, Lct/bm;->g:Lct/bm$b;

    iget-object v4, v4, Lct/bm$b;->f:[F

    move-wide v4, v15

    goto :goto_9

    :cond_10
    move-object v9, v4

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_9
    if-eqz v8, :cond_1b

    const/high16 v6, 0x3f800000    # 1.0f

    .line 594
    iget-object v10, v1, Lct/bm;->a:Landroid/content/Context;

    invoke-static {v10}, Lct/be;->a(Landroid/content/Context;)Lct/be;

    move-result-object v10

    invoke-static {v10}, Lct/b$a;->a(Lct/be;)Z

    move-result v10

    if-eqz v10, :cond_11

    const/high16 v10, 0x41700000    # 15.0f

    goto :goto_a

    :cond_11
    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v10, 0x41c80000    # 25.0f

    :goto_a
    iget-object v11, v1, Lct/bm;->g:Lct/bm$b;

    iget-object v11, v11, Lct/bm$b;->f:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    cmpl-float v12, v11, v6

    if-ltz v12, :cond_12

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/high16 v12, 0x41200000    # 10.0f

    add-float/2addr v12, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3fe999999999999aL    # 0.8

    mul-double v11, v11, v13

    add-float/2addr v10, v6

    float-to-double v13, v10

    const-wide v15, 0x3fb999999999999aL    # 0.1

    mul-double v13, v13, v15

    add-double/2addr v11, v13

    float-to-double v13, v6

    cmpg-double v6, v11, v13

    if-gez v6, :cond_14

    move-wide v11, v13

    goto :goto_b

    :cond_12
    iget-object v6, v1, Lct/bm;->a:Landroid/content/Context;

    invoke-static {v6}, Lct/b$a;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_13

    float-to-double v10, v10

    const-wide v12, 0x3fd3333333333333L    # 0.3

    mul-double v11, v10, v12

    goto :goto_b

    :cond_13
    float-to-double v11, v10

    :cond_14
    :goto_b
    const-wide/32 v15, 0x4a768

    if-eqz v9, :cond_15

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 596
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Double;->compare(DD)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_15

    const-wide v19, 0x408f400000000000L    # 1000.0

    mul-double v21, v4, v19

    div-double v13, v21, v11

    move-object v6, v2

    move-object v10, v3

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    .line 598
    :try_start_1
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    const-wide v2, 0x412b774000000000L    # 900000.0

    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-long v2, v2

    cmpg-double v13, v4, v19

    if-gez v13, :cond_16

    cmp-long v13, v2, v15

    if-lez v13, :cond_16

    move-wide v2, v15

    goto :goto_c

    :cond_15
    move-object v6, v2

    move-object v10, v3

    const-wide/32 v2, 0xea60

    :cond_16
    :goto_c
    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    cmpg-double v19, v11, v13

    if-gez v19, :cond_18

    const-wide/high16 v13, 0x4089000000000000L    # 800.0

    cmpl-double v19, v4, v13

    if-lez v19, :cond_18

    .line 612
    iget-wide v2, v1, Lct/bm;->k:D

    const-wide v13, 0x3ff051eb851eb852L    # 1.02

    mul-double v2, v2, v13

    iput-wide v2, v1, Lct/bm;->k:D

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v13

    const-wide v13, 0x40ed4c0000000000L    # 60000.0

    mul-double v2, v2, v13

    double-to-long v2, v2

    cmp-long v13, v2, v15

    if-lez v13, :cond_17

    goto :goto_d

    :cond_17
    move-wide v15, v2

    :goto_d
    move-wide v2, v15

    goto :goto_e

    :cond_18
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 617
    iput-wide v13, v1, Lct/bm;->k:D

    .line 620
    :goto_e
    iget-object v13, v1, Lct/bm;->g:Lct/bm$b;

    iput-wide v2, v13, Lct/bm$b;->c:J

    if-eqz p1, :cond_19

    if-nez v9, :cond_19

    const/4 v9, 0x1

    goto :goto_f

    :cond_19
    const/4 v9, 0x0

    .line 622
    :goto_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    const-string v14, "updateFences: needUpdates=%s, interval=%d, minDist=%5g, speed=%.2f, reschedule=%s, rate=%.2f"

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/16 v16, 0x0

    aput-object v8, v15, v16

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v15, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v15, v3

    const/4 v2, 0x3

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v2, 0x4

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v2, 0x5

    iget-wide v3, v1, Lct/bm;->k:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v15, v2

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 628
    iget-object v2, v1, Lct/bm;->g:Lct/bm$b;

    iget-boolean v2, v2, Lct/bm$b;->b:Z

    const-wide/16 v3, 0x2ee0

    if-nez v2, :cond_1a

    .line 629
    iget-object v2, v1, Lct/bm;->g:Lct/bm$b;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lct/bm$b;->b:Z

    .line 630
    iget-object v2, v1, Lct/bm;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 631
    iget-object v2, v1, Lct/bm;->b:Lct/bu;

    iget-object v3, v1, Lct/bm;->j:Lcom/tencent/map/geolocation/TencentLocationRequest;

    iget-object v4, v1, Lct/bm;->e:Lct/bm$a;

    invoke-virtual {v4}, Lct/bm$a;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lct/bu;->a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    goto :goto_10

    :cond_1a
    if-eqz v9, :cond_1c

    const-wide/16 v8, -0x1

    .line 634
    invoke-direct {v1, v8, v9}, Lct/bm;->a(J)Landroid/app/PendingIntent;

    .line 635
    iget-object v2, v1, Lct/bm;->g:Lct/bm$b;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lct/bm$b;->b:Z

    .line 636
    iget-object v2, v1, Lct/bm;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 637
    iget-object v2, v1, Lct/bm;->b:Lct/bu;

    iget-object v3, v1, Lct/bm;->j:Lcom/tencent/map/geolocation/TencentLocationRequest;

    iget-object v4, v1, Lct/bm;->e:Lct/bm$a;

    invoke-virtual {v4}, Lct/bm$a;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lct/bu;->a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    goto :goto_10

    :cond_1b
    move-object v6, v2

    move-object v10, v3

    .line 642
    iget-object v2, v1, Lct/bm;->g:Lct/bm$b;

    iget-boolean v2, v2, Lct/bm$b;->b:Z

    if-eqz v2, :cond_1c

    .line 643
    iget-object v2, v1, Lct/bm;->g:Lct/bm$b;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lct/bm$b;->b:Z

    .line 644
    invoke-direct/range {p0 .. p0}, Lct/bm;->g()V

    .line 645
    invoke-direct/range {p0 .. p0}, Lct/bm;->f()V

    .line 649
    :cond_1c
    :goto_10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 650
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lct/bl;

    .line 651
    iget-object v5, v4, Lct/bl;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    invoke-virtual {v5}, Lcom/tencent/map/geolocation/TencentGeofence;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 654
    invoke-virtual {v4}, Lct/bl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 656
    :cond_1d
    iget-object v3, v1, Lct/bm;->f:Lct/bm$c;

    iget-object v3, v3, Lct/bm$c;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 661
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendIntentExit: pendingIntent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "entering"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {v1, v3, v4}, Lct/bm;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_12

    .line 663
    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendIntentEnter: pendingIntent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "entering"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {v1, v2, v3}, Lct/bm;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_13

    :cond_1f
    return-void

    :catchall_0
    move-exception v0

    goto :goto_14

    :catchall_1
    move-exception v0

    move-object v10, v3

    .line 657
    :goto_14
    monitor-exit v10

    throw v0
.end method

.method static synthetic b(Lct/bm;)Landroid/content/Context;
    .locals 0

    .line 71
    iget-object p0, p0, Lct/bm;->a:Landroid/content/Context;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 442
    iget-object p1, p0, Lct/bm;->a:Landroid/content/Context;

    invoke-static {p1}, Lct/b$a;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 446
    :cond_0
    iget-object p1, p0, Lct/bm;->g:Lct/bm$b;

    iget-boolean p1, p1, Lct/bm$b;->e:Z

    if-nez p1, :cond_1

    .line 447
    iget-object p1, p0, Lct/bm;->g:Lct/bm$b;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lct/bm$b;->e:Z

    .line 449
    iget-object p1, p0, Lct/bm;->e:Lct/bm$a;

    invoke-virtual {p1, v0}, Lct/bm$a;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method static synthetic c()V
    .locals 0

    return-void
.end method

.method static synthetic d()Landroid/content/Intent;
    .locals 1

    .line 71
    invoke-static {}, Lct/bm;->k()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 2

    .line 266
    iget-boolean v0, p0, Lct/bm;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this object has been destroyed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 293
    invoke-direct {p0, v0, v1}, Lct/bm;->a(J)Landroid/app/PendingIntent;

    .line 294
    iget-object v0, p0, Lct/bm;->e:Lct/bm$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lct/bm$a;->removeMessages(I)V

    .line 295
    iget-object v0, p0, Lct/bm;->b:Lct/bu;

    invoke-virtual {v0}, Lct/bu;->b()V

    return-void
.end method

.method private g()V
    .locals 4

    .line 399
    iget-object v0, p0, Lct/bm;->g:Lct/bm$b;

    iget-object v1, v0, Lct/bm$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lct/bm$b;->b:Z

    const-wide/32 v2, 0xea60

    iput-wide v2, v0, Lct/bm$b;->c:J

    const/4 v2, 0x0

    iput-object v2, v0, Lct/bm$b;->d:Landroid/location/Location;

    iput-boolean v1, v0, Lct/bm$b;->e:Z

    return-void
.end method

.method private h()V
    .locals 6

    .line 430
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 431
    iget-object v2, p0, Lct/bm;->g:Lct/bm$b;

    iget-object v2, v2, Lct/bm$b;->a:Ljava/util/List;

    .line 432
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 433
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lct/bl;

    .line 435
    iget-wide v3, v3, Lct/bl;->c:J

    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    .line 436
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private i()V
    .locals 2

    .line 454
    iget-object v0, p0, Lct/bm;->g:Lct/bm$b;

    iget-boolean v0, v0, Lct/bm$b;->e:Z

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lct/bm;->g:Lct/bm$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lct/bm$b;->e:Z

    .line 457
    iget-object v0, p0, Lct/bm;->e:Lct/bm$a;

    invoke-virtual {v0, v1}, Lct/bm$a;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private j()Landroid/location/Location;
    .locals 7

    .line 473
    iget-object v0, p0, Lct/bm;->g:Lct/bm$b;

    iget-object v0, v0, Lct/bm$b;->d:Landroid/location/Location;

    .line 474
    iget-object v1, p0, Lct/bm;->g:Lct/bm$b;

    iget-object v1, v1, Lct/bm$b;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 475
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    iget-object v0, p0, Lct/bm;->b:Lct/bu;

    invoke-virtual {v0}, Lct/bu;->a()Lcom/tencent/map/geolocation/TencentLocation;

    move-result-object v0

    .line 479
    invoke-static {v0}, Lct/b$a;->a(Lcom/tencent/map/geolocation/TencentLocation;)Landroid/location/Location;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 489
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 490
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method private static k()Landroid/content/Intent;
    .locals 3

    .line 722
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.map.geolocation.wakeup"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tencent.map.geolocation.from_alarm"

    const/4 v2, 0x1

    .line 723
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 279
    iget-boolean v0, p0, Lct/bm;->h:Z

    if-nez v0, :cond_0

    .line 280
    invoke-direct {p0}, Lct/bm;->f()V

    .line 281
    iget-object v0, p0, Lct/bm;->g:Lct/bm$b;

    iget-object v0, v0, Lct/bm$b;->f:[F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 283
    iget-object v0, p0, Lct/bm;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    iget-object v0, p0, Lct/bm;->g:Lct/bm$b;

    monitor-enter v0

    .line 285
    :try_start_0
    invoke-direct {p0}, Lct/bm;->g()V

    .line 286
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lct/bm;->h:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 286
    monitor-exit v0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(Lcom/tencent/map/geolocation/TencentGeofence;)V
    .locals 3

    .line 366
    invoke-direct {p0}, Lct/bm;->e()V

    if-nez p1, :cond_0

    return-void

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeFence: fence="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lct/bm;->g:Lct/bm$b;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object v1, p0, Lct/bm;->g:Lct/bm$b;

    iget-object v1, v1, Lct/bm$b;->a:Ljava/util/List;

    .line 374
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 375
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lct/bl;

    .line 378
    iget-object v2, v2, Lct/bl;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    invoke-virtual {p1, v2}, Lcom/tencent/map/geolocation/TencentGeofence;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 383
    :cond_2
    invoke-direct {p0}, Lct/bm;->i()V

    .line 384
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Lcom/tencent/map/geolocation/TencentGeofence;Landroid/app/PendingIntent;)V
    .locals 6

    .line 309
    invoke-direct {p0}, Lct/bm;->e()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addFence: , geofence="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    new-instance v0, Lct/bl;

    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentGeofence;->getExpireAt()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2, p2}, Lct/bl;-><init>(Lcom/tencent/map/geolocation/TencentGeofence;JLandroid/app/PendingIntent;)V

    .line 318
    iget-object v1, p0, Lct/bm;->g:Lct/bm$b;

    iget-object v1, v1, Lct/bm$b;->a:Ljava/util/List;

    .line 319
    iget-object v2, p0, Lct/bm;->g:Lct/bm$b;

    monitor-enter v2

    .line 321
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    .line 322
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lct/bl;

    .line 323
    iget-object v5, v4, Lct/bl;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    invoke-virtual {p1, v5}, Lcom/tencent/map/geolocation/TencentGeofence;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, v4, Lct/bl;->d:Landroid/app/PendingIntent;

    invoke-virtual {p2, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 329
    :cond_1
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-direct {p0}, Lct/bm;->i()V

    .line 331
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 311
    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 411
    invoke-direct {p0}, Lct/bm;->e()V

    .line 414
    iget-object v0, p0, Lct/bm;->g:Lct/bm$b;

    monitor-enter v0

    .line 415
    :try_start_0
    iget-object v1, p0, Lct/bm;->g:Lct/bm$b;

    iget-object v1, v1, Lct/bm$b;->a:Ljava/util/List;

    .line 416
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 417
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 418
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lct/bl;

    .line 419
    iget-object v2, v2, Lct/bl;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    if-eqz v2, :cond_1

    .line 420
    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentGeofence;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 424
    :cond_2
    invoke-direct {p0}, Lct/bm;->i()V

    .line 426
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b()V
    .locals 2

    .line 391
    invoke-direct {p0}, Lct/bm;->e()V

    .line 392
    iget-object v0, p0, Lct/bm;->g:Lct/bm$b;

    monitor-enter v0

    .line 393
    :try_start_0
    iget-object v1, p0, Lct/bm;->b:Lct/bu;

    invoke-virtual {v1}, Lct/bu;->b()V

    .line 394
    invoke-direct {p0}, Lct/bm;->g()V

    .line 395
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V
    .locals 2

    .line 773
    invoke-static {p1}, Lct/b$a;->a(Lcom/tencent/map/geolocation/TencentLocation;)Landroid/location/Location;

    move-result-object p3

    .line 775
    invoke-static {p1, p2}, Lct/b$a;->a(Lcom/tencent/map/geolocation/TencentLocation;I)Ljava/lang/String;

    .line 776
    iget-object v0, p0, Lct/bm;->b:Lct/bu;

    invoke-virtual {v0}, Lct/bu;->b()V

    if-nez p2, :cond_2

    .line 786
    iget-object v0, p0, Lct/bm;->f:Lct/bm$c;

    invoke-virtual {v0, p2, p1}, Lct/bm$c;->a(ILcom/tencent/map/geolocation/TencentLocation;)V

    .line 788
    iget-object p1, p0, Lct/bm;->g:Lct/bm$b;

    monitor-enter p1

    .line 789
    :try_start_0
    iget-object p2, p0, Lct/bm;->g:Lct/bm$b;

    iget-boolean p2, p2, Lct/bm$b;->b:Z

    if-eqz p2, :cond_0

    .line 790
    iget-object p2, p0, Lct/bm;->g:Lct/bm$b;

    iput-object p3, p2, Lct/bm$b;->d:Landroid/location/Location;

    .line 795
    :cond_0
    iget-object p2, p0, Lct/bm;->g:Lct/bm$b;

    iget-boolean p2, p2, Lct/bm$b;->e:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 796
    iget-object p2, p0, Lct/bm;->e:Lct/bm$a;

    invoke-virtual {p2, p3}, Lct/bm$a;->removeMessages(I)V

    goto :goto_0

    .line 798
    :cond_1
    iget-object p2, p0, Lct/bm;->g:Lct/bm$b;

    iput-boolean p3, p2, Lct/bm$b;->e:Z

    .line 800
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 801
    invoke-direct {p0, p1}, Lct/bm;->a(Z)V

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 800
    monitor-exit p1

    throw p2

    .line 805
    :cond_2
    iget-object p3, p0, Lct/bm;->g:Lct/bm$b;

    const-wide/32 v0, 0xea60

    iput-wide v0, p3, Lct/bm$b;->c:J

    .line 806
    iget-object p3, p0, Lct/bm;->f:Lct/bm$c;

    invoke-virtual {p3, p2, p1}, Lct/bm$c;->a(ILcom/tencent/map/geolocation/TencentLocation;)V

    .line 810
    :goto_1
    iget-object p1, p0, Lct/bm;->g:Lct/bm$b;

    iget-boolean p1, p1, Lct/bm$b;->b:Z

    if-eqz p1, :cond_3

    .line 811
    iget-object p1, p0, Lct/bm;->g:Lct/bm$b;

    iget-wide p1, p1, Lct/bm$b;->c:J

    .line 814
    iget-object p1, p0, Lct/bm;->g:Lct/bm$b;

    iget-wide p1, p1, Lct/bm$b;->c:J

    invoke-direct {p0, p1, p2}, Lct/bm;->a(J)Landroid/app/PendingIntent;

    .line 816
    :cond_3
    iget-object p1, p0, Lct/bm;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 817
    iget-object p1, p0, Lct/bm;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 203
    iget-object p2, p0, Lct/bm;->g:Lct/bm$b;

    monitor-enter p2

    .line 204
    :try_start_0
    invoke-direct {p0}, Lct/bm;->j()Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "android.intent.action.SCREEN_ON"

    .line 205
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_7

    const-string p1, "onReceive: screen_on and no_fresh_location --> schedule update fence"

    .line 207
    invoke-direct {p0, p1}, Lct/bm;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v3, "com.tencent.map.geolocation.wakeup"

    .line 209
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 210
    iget-object p1, p0, Lct/bm;->a:Landroid/content/Context;

    sget-object v0, Lct/bn;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    sget-object v0, Lct/bn;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lct/bn;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string v0, "WakeLocker"

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    sput-object p1, Lct/bn;->a:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 211
    iget-object p1, p0, Lct/bm;->e:Lct/bm$a;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lct/bm$a;->removeMessages(I)V

    .line 212
    invoke-direct {p0}, Lct/bm;->i()V

    .line 213
    sget-object p1, Lct/bn;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_3

    sget-object p1, Lct/bn;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lct/bn;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    const/4 p1, 0x0

    sput-object p1, Lct/bn;->a:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :cond_4
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 214
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_7

    const-string p1, "onReceive: power_disconnected --> schedule update fence"

    .line 216
    invoke-direct {p0, p1}, Lct/bm;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 219
    iget-object p1, p0, Lct/bm;->a:Landroid/content/Context;

    invoke-static {p1}, Lct/b$a;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 221
    iget-object p1, p0, Lct/bm;->g:Lct/bm$b;

    iput-boolean v2, p1, Lct/bm$b;->b:Z

    .line 223
    iget-object p1, p0, Lct/bm;->g:Lct/bm$b;

    const-wide/32 v0, 0xea60

    iput-wide v0, p1, Lct/bm$b;->c:J

    .line 224
    invoke-direct {p0}, Lct/bm;->f()V

    :cond_6
    const-string p1, "onReceive: connected and no_fresh_location --> schedule update fence"

    .line 226
    invoke-direct {p0, p1}, Lct/bm;->b(Ljava/lang/String;)V

    .line 228
    :cond_7
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
.end method

.method public final onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 842
    iget-object p1, p0, Lct/bm;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public final onStatusUpdate(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method
