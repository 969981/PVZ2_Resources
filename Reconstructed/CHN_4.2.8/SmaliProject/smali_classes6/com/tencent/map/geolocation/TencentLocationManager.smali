.class public final Lcom/tencent/map/geolocation/TencentLocationManager;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field public static final BUILD:Ljava/lang/String; = "161859-public"

.field public static final COORDINATE_TYPE_GCJ02:I = 0x1

.field public static final COORDINATE_TYPE_WGS84:I = 0x0

.field public static final VERSION:Ljava/lang/String; = "4.1"

.field private static d:Lcom/tencent/map/geolocation/TencentLocationManager;


# instance fields
.field private final a:[B

.field private final b:Lct/be;

.field private final c:Lct/bu;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 60
    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->a:[B

    .line 73
    invoke-static {p1}, Lct/be;->a(Landroid/content/Context;)Lct/be;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->b:Lct/be;

    .line 74
    new-instance p1, Lct/bu;

    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->b:Lct/be;

    invoke-direct {p1, v0}, Lct/bu;-><init>(Lct/be;)V

    iput-object p1, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lct/bu;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tencent/map/geolocation/TencentLocationManager;
    .locals 2

    const-class v0, Lcom/tencent/map/geolocation/TencentLocationManager;

    monitor-enter v0

    if-eqz p0, :cond_2

    .line 95
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 98
    sget-object v1, Lcom/tencent/map/geolocation/TencentLocationManager;->d:Lcom/tencent/map/geolocation/TencentLocationManager;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Lcom/tencent/map/geolocation/TencentLocationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/tencent/map/geolocation/TencentLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/map/geolocation/TencentLocationManager;->d:Lcom/tencent/map/geolocation/TencentLocationManager;

    .line 102
    :cond_0
    sget-object p0, Lcom/tencent/map/geolocation/TencentLocationManager;->d:Lcom/tencent/map/geolocation/TencentLocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 96
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "application context is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 93
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final varargs feedback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final getBuild()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->b:Lct/be;

    invoke-virtual {v0}, Lct/be;->i()Lct/bf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lct/bf;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "None"

    return-object v0
.end method

.method public final getCoordinateType()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lct/bu;

    invoke-virtual {v0}, Lct/bu;->c()I

    move-result v0

    return v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->b:Lct/be;

    invoke-virtual {v0}, Lct/be;->h()Lct/bf;

    move-result-object v0

    iget-object v0, v0, Lct/bf;->h:Ljava/lang/String;

    invoke-static {v0}, Lct/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLastKnownLocation()Lcom/tencent/map/geolocation/TencentLocation;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lct/bu;

    invoke-virtual {v0}, Lct/bu;->a()Lcom/tencent/map/geolocation/TencentLocation;

    move-result-object v0

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->b:Lct/be;

    invoke-virtual {v0}, Lct/be;->i()Lct/bf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lct/bf;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "None"

    return-object v0
.end method

.method public final removeUpdates(Lcom/tencent/map/geolocation/TencentLocationListener;)V
    .locals 1

    .line 219
    iget-object p1, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->a:[B

    monitor-enter p1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lct/bu;

    invoke-virtual {v0}, Lct/bu;->b()V

    .line 227
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final requestLocationUpdates(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;)I
    .locals 1

    .line 152
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/map/geolocation/TencentLocationManager;->requestLocationUpdates(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    move-result p1

    return p1
.end method

.method public final requestLocationUpdates(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 185
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->a:[B

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lct/bu;

    invoke-virtual {v1, p1, p2, p3}, Lct/bu;->a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 199
    monitor-exit v0

    throw p1

    .line 182
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "looper is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listener is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "request is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCoordinateType(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown coordinate type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->a:[B

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lct/bu;

    invoke-virtual {v1, p1}, Lct/bu;->a(I)V

    .line 121
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->b:Lct/be;

    invoke-virtual {v0}, Lct/be;->h()Lct/bf;

    move-result-object v0

    iput-object p1, v0, Lct/bf;->h:Ljava/lang/String;

    return-void

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
