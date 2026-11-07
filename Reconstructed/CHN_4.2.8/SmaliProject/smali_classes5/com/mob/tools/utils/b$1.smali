.class Lcom/mob/tools/utils/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/b;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/b;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/mob/tools/utils/b$1;->a:Lcom/mob/tools/utils/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/b$1;->a:Lcom/mob/tools/utils/b;

    invoke-static {v0}, Lcom/mob/tools/utils/b;->a(Lcom/mob/tools/utils/b;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 33
    iget-object v0, p0, Lcom/mob/tools/utils/b$1;->a:Lcom/mob/tools/utils/b;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/b;->a(Lcom/mob/tools/utils/b;Landroid/location/Location;)Landroid/location/Location;

    .line 34
    iget-object v0, p0, Lcom/mob/tools/utils/b$1;->a:Lcom/mob/tools/utils/b;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/b;->b(Lcom/mob/tools/utils/b;Landroid/location/Location;)Landroid/location/Location;

    .line 35
    iget-object p1, p0, Lcom/mob/tools/utils/b$1;->a:Lcom/mob/tools/utils/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/mob/tools/utils/b;->a(Lcom/mob/tools/utils/b;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    iget-object p1, p0, Lcom/mob/tools/utils/b$1;->a:Lcom/mob/tools/utils/b;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 41
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 42
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_1
    move-exception p1

    .line 37
    :try_start_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 40
    :try_start_5
    iget-object p1, p0, Lcom/mob/tools/utils/b$1;->a:Lcom/mob/tools/utils/b;

    monitor-enter p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 41
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 42
    monitor-exit p1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    :goto_0
    return-void

    :catchall_4
    move-exception p1

    .line 40
    :try_start_8
    iget-object v0, p0, Lcom/mob/tools/utils/b$1;->a:Lcom/mob/tools/utils/b;

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 41
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 42
    monitor-exit v0

    goto :goto_1

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 44
    :catchall_6
    :goto_1
    throw p1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
