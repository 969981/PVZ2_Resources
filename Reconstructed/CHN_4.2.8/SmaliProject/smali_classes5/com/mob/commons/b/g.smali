.class public abstract Lcom/mob/commons/b/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/b/g$c;,
        Lcom/mob/commons/b/g$a;,
        Lcom/mob/commons/b/g$b;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/mob/commons/b/g;->c:Z

    .line 24
    iput-boolean v0, p0, Lcom/mob/commons/b/g;->d:Z

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/mob/commons/b/g;->e:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/mob/commons/b/g;->f:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/mob/commons/b/g;->g:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/mob/commons/b/g;->h:Ljava/lang/String;

    .line 29
    iput v0, p0, Lcom/mob/commons/b/g;->i:I

    .line 32
    iput-object p1, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Lcom/mob/commons/b/g$c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "get binder "

    const-string v1, "bind service "

    .line 192
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 195
    new-instance v2, Lcom/mob/commons/b/g$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mob/commons/b/g$b;-><init>(Lcom/mob/commons/b/g;Lcom/mob/commons/b/g$1;)V

    .line 197
    const-string v3, " failed!"

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, p2, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/mob/commons/b/g;->d()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/mob/commons/b/g$b;->a(J)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p0, v1}, Lcom/mob/commons/b/g;->a(Landroid/os/IBinder;)Lcom/mob/commons/b/g$c;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 209
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 211
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    :goto_0
    return-object p2

    .line 202
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_1
    new-instance v0, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_2

    const-string p2, "null"

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    :goto_1
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    .line 209
    :try_start_3
    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 211
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    .line 213
    :goto_2
    throw p2

    .line 193
    :cond_3
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "unable to invoke in main thread!"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized a(Landroid/content/Intent;)Z
    .locals 7

    const-string v0, "oa use time: "

    monitor-enter p0

    .line 83
    :try_start_0
    iget v1, p0, Lcom/mob/commons/b/g;->i:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mob/commons/b/g;->i:I

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 87
    :try_start_1
    invoke-virtual {p0}, Lcom/mob/commons/b/g;->c()Lcom/mob/commons/b/g$c;

    move-result-object v5

    if-nez v5, :cond_0

    .line 89
    iget-object v5, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    invoke-direct {p0, v5, p1}, Lcom/mob/commons/b/g;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/mob/commons/b/g$c;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_1

    .line 92
    iget-boolean p1, v5, Lcom/mob/commons/b/g$c;->a:Z

    iput-boolean p1, p0, Lcom/mob/commons/b/g;->d:Z

    .line 93
    iget-object p1, v5, Lcom/mob/commons/b/g$c;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/mob/commons/b/g;->e:Ljava/lang/String;

    .line 94
    iget-object p1, v5, Lcom/mob/commons/b/g$c;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/mob/commons/b/g;->f:Ljava/lang/String;

    .line 95
    iget-object p1, v5, Lcom/mob/commons/b/g$c;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/mob/commons/b/g;->g:Ljava/lang/String;

    .line 96
    iget-object p1, v5, Lcom/mob/commons/b/g$c;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/mob/commons/b/g;->h:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 100
    :try_start_2
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    .line 102
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 103
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized j()V
    .locals 3

    monitor-enter p0

    .line 69
    :try_start_0
    iget-boolean v0, p0, Lcom/mob/commons/b/g;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 70
    monitor-exit p0

    return-void

    .line 72
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mob/commons/b/g;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/commons/b/g;->a(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 74
    iget v0, p0, Lcom/mob/commons/b/g;->i:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    .line 75
    iput-boolean v1, p0, Lcom/mob/commons/b/g;->c:Z

    goto :goto_0

    .line 78
    :cond_1
    iput-boolean v1, p0, Lcom/mob/commons/b/g;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)I
    .locals 4

    const-string v0, "getIntValue: "

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 166
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 167
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 168
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 169
    invoke-interface {p2, p4, v3, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 170
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 171
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 177
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_0
    if-eqz v3, :cond_1

    .line 180
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_1
    return p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-object p2, v2

    move-object v2, v3

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v3, v2

    goto :goto_1

    :catch_1
    move-object p2, v2

    .line 173
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " failed! (remoteException)"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz p2, :cond_2

    .line 177
    :try_start_4
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    :cond_2
    if-eqz v2, :cond_3

    .line 180
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_3
    return v1

    :catchall_4
    move-exception p1

    move-object v3, v2

    move-object v2, p2

    :goto_1
    if-eqz v2, :cond_4

    .line 177
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_4
    if-eqz v3, :cond_5

    .line 180
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 183
    :catchall_5
    :cond_5
    throw p1
.end method

.method protected a()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/os/IBinder;)Lcom/mob/commons/b/g$c;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected varargs a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 136
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 137
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 138
    :try_start_2
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 p3, 0x0

    if-eqz p5, :cond_0

    .line 139
    array-length v3, p5

    if-lez v3, :cond_0

    .line 140
    array-length v3, p5

    move v4, p3

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p5, v4

    .line 141
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-interface {p2, p4, v1, v2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 145
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 146
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 152
    :try_start_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_1
    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :cond_2
    return-object p1

    :catchall_1
    move-exception p2

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object v2, v0

    goto :goto_1

    :catchall_3
    move-exception p2

    move-object v1, v0

    move-object v2, v1

    .line 148
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "getStringValue: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " failed! "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v2, :cond_3

    .line 152
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_3
    if-eqz v1, :cond_4

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_4
    return-object v0

    :catchall_5
    move-exception p1

    if-eqz v2, :cond_5

    .line 152
    :try_start_6
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_5
    if-eqz v1, :cond_6

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 158
    :catchall_6
    :cond_6
    throw p1
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 53
    :try_start_0
    iput-object p1, p0, Lcom/mob/commons/b/g;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/b/g;->j()V

    .line 109
    iget-object v0, p0, Lcom/mob/commons/b/g;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 57
    :try_start_0
    iput-object p1, p0, Lcom/mob/commons/b/g;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected c()Lcom/mob/commons/b/g$c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected declared-synchronized c(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 65
    :try_start_0
    iput-object p1, p0, Lcom/mob/commons/b/g;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected d()J
    .locals 2

    const-wide/16 v0, 0x9c4

    return-wide v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/b/g;->j()V

    .line 114
    iget-object v0, p0, Lcom/mob/commons/b/g;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/b/g;->j()V

    .line 119
    iget-object v0, p0, Lcom/mob/commons/b/g;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 123
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/b/g;->j()V

    .line 124
    iget-object v0, p0, Lcom/mob/commons/b/g;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/b/g;->j()V

    .line 129
    iget-boolean v0, p0, Lcom/mob/commons/b/g;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected i()Ljava/lang/String;
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "009Xhgfnimhghgikkgimim"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "011ThgfnXjShnhj^j_hfDk(fghffe"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
