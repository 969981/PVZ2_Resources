.class final Lct/bt;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/LocationListener;


# instance fields
.field private a:J

.field private final b:Lct/be;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private volatile h:Z

.field private i:Z

.field private j:Lct/bq;

.field private final k:[D


# direct methods
.method public constructor <init>(Lct/be;Lct/bq;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lct/bt;->a:J

    const/16 v0, 0x400

    .line 54
    iput v0, p0, Lct/bt;->c:I

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lct/bt;->d:Z

    .line 57
    iput-boolean v0, p0, Lct/bt;->e:Z

    .line 59
    iput v0, p0, Lct/bt;->f:I

    .line 60
    iput v0, p0, Lct/bt;->g:I

    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 174
    iput-object v0, p0, Lct/bt;->k:[D

    .line 69
    iput-object p1, p0, Lct/bt;->b:Lct/be;

    .line 70
    iput-object p2, p0, Lct/bt;->j:Lct/bq;

    return-void
.end method

.method private a(Landroid/location/Location;)Z
    .locals 4

    .line 226
    sget-boolean v0, Lct/ci;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 231
    :try_start_0
    iget-object v2, p0, Lct/bt;->b:Lct/be;

    invoke-virtual {v2}, Lct/be;->c()Landroid/location/LocationManager;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    return v0

    :catch_0
    nop

    .line 239
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_2

    .line 240
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method private d()V
    .locals 3

    .line 197
    iget v0, p0, Lct/bt;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 209
    :goto_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x32c7

    .line 210
    iput v2, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x2ee2

    .line 211
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 212
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 213
    iget-object v0, p0, Lct/bt;->b:Lct/be;

    invoke-virtual {v0, v1}, Lct/be;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x0

    .line 370
    iput v0, p0, Lct/bt;->g:I

    iput v0, p0, Lct/bt;->f:I

    .line 372
    iget-object v0, p0, Lct/bt;->b:Lct/be;

    invoke-virtual {v0}, Lct/be;->c()Landroid/location/LocationManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 373
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v1

    .line 379
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 384
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lct/bt;->f:I

    if-gt v2, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 385
    iput v2, p0, Lct/bt;->f:I

    .line 386
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    iget v2, p0, Lct/bt;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lct/bt;->g:I

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 103
    iget-boolean v0, p0, Lct/bt;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lct/bt;->h:Z

    const-wide/16 v1, 0x0

    .line 108
    iput-wide v1, p0, Lct/bt;->a:J

    const/16 v1, 0x400

    .line 109
    iput v1, p0, Lct/bt;->c:I

    .line 110
    iput-boolean v0, p0, Lct/bt;->d:Z

    .line 111
    iput-boolean v0, p0, Lct/bt;->e:Z

    .line 112
    iput v0, p0, Lct/bt;->f:I

    .line 113
    iput v0, p0, Lct/bt;->g:I

    .line 114
    iput-boolean v0, p0, Lct/bt;->i:Z

    .line 115
    iget-object v0, p0, Lct/bt;->k:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 117
    iget-object v0, p0, Lct/bt;->b:Lct/be;

    invoke-virtual {v0, p0}, Lct/be;->b(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lct/bt;->b:Lct/be;

    invoke-virtual {v0}, Lct/be;->c()Landroid/location/LocationManager;

    move-result-object v0

    .line 121
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :catch_0
    :try_start_1
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public final a(Landroid/os/Handler;J)V
    .locals 10

    .line 74
    iget-boolean v0, p0, Lct/bt;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lct/bt;->h:Z

    .line 79
    iget-object v1, p0, Lct/bt;->b:Lct/be;

    invoke-virtual {v1, p0}, Lct/be;->a(Ljava/lang/Object;)V

    const-wide/16 v1, 0x3e8

    .line 81
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 83
    iget-object p2, p0, Lct/bt;->b:Lct/be;

    invoke-virtual {p2}, Lct/be;->c()Landroid/location/LocationManager;

    move-result-object v3

    .line 85
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    const-string v4, "gps"

    const/4 v7, 0x0

    .line 86
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v8, p0

    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    sput-boolean v0, Lct/cs;->a:Z

    .line 90
    :goto_0
    invoke-virtual {p0}, Lct/bt;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 95
    iput p1, p0, Lct/bt;->c:I

    .line 96
    invoke-direct {p0}, Lct/bt;->d()V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lct/bt;->i:Z

    return-void
.end method

.method public final b()Z
    .locals 6

    .line 132
    iget v0, p0, Lct/bt;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lct/bt;->a:J

    sub-long/2addr v0, v3

    invoke-static {}, Lct/bs;->a()Lct/bs;

    move-result-object v3

    invoke-virtual {v3}, Lct/bs;->b()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public final c()Z
    .locals 2

    .line 145
    iget-object v0, p0, Lct/bt;->b:Lct/be;

    invoke-virtual {v0}, Lct/be;->c()Landroid/location/LocationManager;

    move-result-object v0

    :try_start_0
    const-string v1, "gps"

    .line 147
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onDeflectedEvent(Landroid/location/Location;)V
    .locals 8

    .line 285
    sget-object v0, Lct/bp;->b:Landroid/location/Location;

    if-ne p1, v0, :cond_0

    .line 287
    new-instance v0, Lct/ce;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lct/ce;-><init>(Landroid/location/Location;JIII)V

    .line 288
    iget-object p1, p0, Lct/bt;->b:Lct/be;

    invoke-virtual {p1, v0}, Lct/be;->c(Ljava/lang/Object;)V

    return-void

    .line 291
    :cond_0
    new-instance v0, Lct/ce;

    iget-wide v3, p0, Lct/bt;->a:J

    iget v5, p0, Lct/bt;->f:I

    iget v6, p0, Lct/bt;->g:I

    iget v7, p0, Lct/bt;->c:I

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lct/ce;-><init>(Landroid/location/Location;JIII)V

    .line 293
    iget-object p1, p0, Lct/bt;->b:Lct/be;

    invoke-virtual {p1, v0}, Lct/be;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final onGpsStatusChanged(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    iget p1, p0, Lct/bt;->c:I

    or-int/2addr p1, v1

    iput p1, p0, Lct/bt;->c:I

    goto :goto_0

    .line 356
    :cond_1
    iput v0, p0, Lct/bt;->c:I

    goto :goto_0

    .line 353
    :cond_2
    iget p1, p0, Lct/bt;->c:I

    or-int/2addr p1, v2

    iput p1, p0, Lct/bt;->c:I

    .line 362
    :goto_0
    invoke-direct {p0}, Lct/bt;->e()V

    .line 366
    iget-object p1, p0, Lct/bt;->b:Lct/be;

    invoke-virtual {p1}, Lct/be;->c()Landroid/location/LocationManager;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object p1

    const/4 v4, -0x1

    if-nez p1, :cond_3

    :goto_1
    const/4 v6, -0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v5

    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    if-gt v6, v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object p1, p0, Lct/bt;->b:Lct/be;

    invoke-virtual {p1}, Lct/be;->c()Landroid/location/LocationManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v3

    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    if-gt v0, v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    move v4, v0

    :goto_5
    if-lez v6, :cond_9

    iput-boolean v2, p0, Lct/bt;->e:Z

    :cond_9
    if-lez v4, :cond_a

    iput-boolean v2, p0, Lct/bt;->d:Z

    :cond_a
    iget-boolean p1, p0, Lct/bt;->e:Z

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 12

    if-eqz p1, :cond_8

    .line 299
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 303
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 304
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const-wide v4, 0x403dffffe2000000L    # 29.999998211860657

    const/4 v6, 0x0

    cmpl-double v7, v0, v4

    if-eqz v7, :cond_4

    const-wide v4, 0x4059fffffc800000L    # 103.99999916553497

    cmpl-double v7, v2, v4

    if-nez v7, :cond_1

    goto :goto_0

    .line 305
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v7, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v9, v4, v7

    if-ltz v9, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v9, v4, v7

    if-ltz v9, :cond_3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v9, v0, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v11, v9, v7

    if-ltz v11, :cond_4

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v9, v4, v7

    if-gez v9, :cond_2

    goto :goto_0

    :cond_2
    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v7, v0, v4

    if-ltz v7, :cond_4

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v7, v0, v4

    if-gtz v7, :cond_4

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v4, v2, v0

    if-ltz v4, :cond_4

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v4, v2, v0

    if-lez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    :cond_4
    :goto_0
    if-nez v6, :cond_5

    return-void

    .line 309
    :cond_5
    invoke-direct {p0}, Lct/bt;->e()V

    .line 310
    iget v0, p0, Lct/bt;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lct/bt;->c:I

    .line 312
    iget-object v0, p0, Lct/bt;->b:Lct/be;

    iget-object v0, v0, Lct/be;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lct/bt;->a(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 316
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lct/bt;->a:J

    .line 318
    iget-boolean v0, p0, Lct/bt;->i:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lct/bt;->j:Lct/bq;

    invoke-virtual {v0, p1}, Lct/bq;->a(Landroid/location/Location;)V

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {p1, v0, v1, v2, v3}, Lct/bq;->a(Landroid/location/Location;DD)V

    new-instance v0, Lct/ce;

    iget-wide v6, p0, Lct/bt;->a:J

    iget v8, p0, Lct/bt;->f:I

    iget v9, p0, Lct/bt;->g:I

    iget v10, p0, Lct/bt;->c:I

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lct/ce;-><init>(Landroid/location/Location;JIII)V

    iget-object p1, p0, Lct/bt;->b:Lct/be;

    invoke-virtual {p1, v0}, Lct/be;->c(Ljava/lang/Object;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    const-string v0, "gps"

    .line 338
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 339
    iput p1, p0, Lct/bt;->g:I

    iput p1, p0, Lct/bt;->f:I

    .line 342
    iput p1, p0, Lct/bt;->c:I

    .line 343
    iput-boolean p1, p0, Lct/bt;->d:Z

    const-wide/16 v0, 0x0

    .line 344
    iput-wide v0, p0, Lct/bt;->a:J

    .line 345
    invoke-direct {p0}, Lct/bt;->d()V

    :cond_0
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "gps"

    .line 328
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 329
    iput p1, p0, Lct/bt;->c:I

    .line 331
    invoke-direct {p0}, Lct/bt;->d()V

    :cond_0
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
