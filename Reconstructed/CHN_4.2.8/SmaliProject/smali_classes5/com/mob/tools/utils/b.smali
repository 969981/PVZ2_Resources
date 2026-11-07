.class public Lcom/mob/tools/utils/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/tools/utils/b;


# instance fields
.field private b:Landroid/location/Location;

.field private c:Landroid/location/Location;

.field private d:Landroid/location/LocationManager;

.field private e:Landroid/location/LocationListener;

.field private f:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/mob/tools/utils/b$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/b$1;-><init>(Lcom/mob/tools/utils/b;)V

    iput-object v0, p0, Lcom/mob/tools/utils/b;->e:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/b;J)J
    .locals 0

    .line 14
    iput-wide p1, p0, Lcom/mob/tools/utils/b;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/mob/tools/utils/b;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/mob/tools/utils/b;->c:Landroid/location/Location;

    return-object p1
.end method

.method private a(Z)Landroid/location/Location;
    .locals 4

    if-nez p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/mob/tools/utils/b;->b:Landroid/location/Location;

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mob/tools/utils/b;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 196
    new-instance p1, Landroid/location/Location;

    iget-object v0, p0, Lcom/mob/tools/utils/b;->b:Landroid/location/Location;

    invoke-direct {p1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/mob/tools/utils/b;)Landroid/location/LocationManager;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/mob/tools/utils/b;->d:Landroid/location/LocationManager;

    return-object p0
.end method

.method public static a()Lcom/mob/tools/utils/b;
    .locals 2

    .line 62
    sget-object v0, Lcom/mob/tools/utils/b;->a:Lcom/mob/tools/utils/b;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Lcom/mob/tools/utils/b;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/b;->a:Lcom/mob/tools/utils/b;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/mob/tools/utils/b;

    invoke-direct {v1}, Lcom/mob/tools/utils/b;-><init>()V

    sput-object v1, Lcom/mob/tools/utils/b;->a:Lcom/mob/tools/utils/b;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/tools/utils/b;->a:Lcom/mob/tools/utils/b;

    return-object v0
.end method

.method private b(Landroid/content/Context;IIZ)Landroid/location/Location;
    .locals 8

    const/4 v0, 0x0

    .line 122
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    .line 123
    const-string v2, "039Degel4iWeifdefYi0fm)fj[ei^mHefghgheffdelfmfkhghghdfifieeiefhfghdeeflglhgfkfjfhglfg"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    iget-object v2, p0, Lcom/mob/tools/utils/b;->d:Landroid/location/LocationManager;

    if-nez v2, :cond_0

    .line 126
    const-string v2, "location"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/mob/tools/utils/b;->d:Landroid/location/LocationManager;

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/utils/b;->d:Landroid/location/LocationManager;

    if-nez v1, :cond_1

    return-object v0

    .line 132
    :cond_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz p2, :cond_2

    .line 135
    :try_start_1
    iget-object v1, p0, Lcom/mob/tools/utils/b;->d:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    .line 137
    :try_start_2
    invoke-static {p1}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v2

    const-string v1, "003Pgg@fJgh"

    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/mob/tools/utils/b;->e:Landroid/location/LocationListener;

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/mob/tools/a/f;->a(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v1, p2

    .line 138
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 140
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 143
    :goto_0
    iget-object p2, p0, Lcom/mob/tools/utils/b;->d:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mob/tools/utils/b;->e:Landroid/location/LocationListener;

    invoke-virtual {p2, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 148
    iget-object p2, p0, Lcom/mob/tools/utils/b;->d:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {p2, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_3

    .line 150
    :try_start_4
    invoke-static {p1}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v1

    const-string p2, "007 el4jeIgefdeiek"

    invoke-static {p2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/mob/tools/utils/b;->e:Landroid/location/LocationListener;

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/mob/tools/a/f;->a(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long p2, p3

    .line 151
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    .line 153
    :try_start_5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 155
    :goto_2
    iget-object p2, p0, Lcom/mob/tools/utils/b;->d:Landroid/location/LocationManager;

    iget-object p3, p0, Lcom/mob/tools/utils/b;->e:Landroid/location/LocationListener;

    invoke-virtual {p2, p3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 157
    :cond_3
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    .line 160
    :cond_4
    :goto_4
    iget-object p2, p0, Lcom/mob/tools/utils/b;->c:Landroid/location/Location;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez p2, :cond_5

    if-eqz p4, :cond_5

    .line 162
    :try_start_7
    invoke-static {p1}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object p2

    const-string p3, "003Qgg;fRgh"

    invoke-static {p3}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/mob/tools/a/f;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p2

    iput-object p2, p0, Lcom/mob/tools/utils/b;->c:Landroid/location/Location;

    if-nez p2, :cond_5

    .line 164
    invoke-static {p1}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object p1

    const-string p2, "007Yel5jeUgefdeiek"

    invoke-static {p2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mob/tools/a/f;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/b;->c:Landroid/location/Location;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    .line 167
    :try_start_8
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 171
    :cond_5
    :goto_5
    iget-object p1, p0, Lcom/mob/tools/utils/b;->c:Landroid/location/Location;

    if-eqz p1, :cond_6

    .line 172
    new-instance p1, Landroid/location/Location;

    iget-object p2, p0, Lcom/mob/tools/utils/b;->c:Landroid/location/Location;

    invoke-direct {p1, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object p1, p0, Lcom/mob/tools/utils/b;->b:Landroid/location/Location;

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mob/tools/utils/b;->f:J

    .line 175
    new-instance p1, Landroid/location/Location;

    iget-object p2, p0, Lcom/mob/tools/utils/b;->c:Landroid/location/Location;

    invoke-direct {p1, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 177
    :try_start_9
    iput-object v0, p0, Lcom/mob/tools/utils/b;->c:Landroid/location/Location;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v0, p1

    goto :goto_7

    :catchall_4
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_6

    :catchall_5
    move-exception p1

    .line 180
    :goto_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_6
    :goto_7
    return-object v0
.end method

.method static synthetic b(Lcom/mob/tools/utils/b;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/mob/tools/utils/b;->b:Landroid/location/Location;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;IIZ)Landroid/location/Location;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 86
    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/utils/b;->a(Landroid/content/Context;IIZZ)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;IIZZ)Landroid/location/Location;
    .locals 2

    .line 105
    invoke-direct {p0, p5}, Lcom/mob/tools/utils/b;->a(Z)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    .line 108
    const-class v1, Lcom/mob/tools/utils/b;

    monitor-enter v1

    .line 109
    :try_start_0
    invoke-direct {p0, p5}, Lcom/mob/tools/utils/b;->a(Z)Landroid/location/Location;

    move-result-object p5

    if-nez p5, :cond_0

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mob/tools/utils/b;->b(Landroid/content/Context;IIZ)Landroid/location/Location;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p5

    .line 113
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-object v0
.end method
