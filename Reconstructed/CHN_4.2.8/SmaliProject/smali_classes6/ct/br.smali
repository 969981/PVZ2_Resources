.class final Lct/br;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static volatile e:Lct/br;


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private final b:Z

.field private c:Z

.field private d:D


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sensor"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lct/br;->a:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    iput-boolean p1, p0, Lct/br;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lct/br;
    .locals 1

    .line 20
    sget-object v0, Lct/br;->e:Lct/br;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lct/br;

    invoke-direct {v0, p0}, Lct/br;-><init>(Landroid/content/Context;)V

    sput-object v0, Lct/br;->e:Lct/br;

    .line 23
    :cond_0
    sget-object p0, Lct/br;->e:Lct/br;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 35
    iget-boolean v0, p0, Lct/br;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-boolean v0, p0, Lct/br;->c:Z

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lct/br;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v2, p0, Lct/br;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lct/br;->c:Z

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 51
    iget-boolean v0, p0, Lct/br;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-boolean v0, p0, Lct/br;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lct/br;->c:Z

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 56
    iput-wide v0, p0, Lct/br;->d:D

    .line 57
    iget-object v0, p0, Lct/br;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    return-void
.end method

.method public final c()D
    .locals 2

    .line 67
    iget-boolean v0, p0, Lct/br;->c:Z

    if-eqz v0, :cond_0

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lct/br;->d:D

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 70
    monitor-exit p0

    throw v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 77
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-double v0, p1

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iput-wide v0, p0, Lct/br;->d:D

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
