.class public final Losdk/okhttp3/internal/connection/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Losdk/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final address:Losdk/okhttp3/Address;

.field public final call:Losdk/okhttp3/Call;

.field private final callStackTrace:Ljava/lang/Object;

.field private canceled:Z

.field private codec:Losdk/okhttp3/internal/http/HttpCodec;

.field private connection:Losdk/okhttp3/internal/connection/RealConnection;

.field private final connectionPool:Losdk/okhttp3/ConnectionPool;

.field public final eventListener:Losdk/okhttp3/EventListener;

.field protected recycleCount:I

.field private refusedStreamCount:I

.field private released:Z

.field private reportedAcquired:Z

.field private route:Losdk/okhttp3/Route;

.field private routeSelection:Losdk/okhttp3/internal/connection/RouteSelector$Selection;

.field private final routeSelector:Losdk/okhttp3/internal/connection/RouteSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Losdk/okhttp3/ConnectionPool;Losdk/okhttp3/Address;Losdk/okhttp3/Call;Losdk/okhttp3/EventListener;Ljava/lang/Object;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    .line 101
    iput-object p2, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->address:Losdk/okhttp3/Address;

    .line 102
    iput-object p3, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->call:Losdk/okhttp3/Call;

    .line 103
    iput-object p4, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->eventListener:Losdk/okhttp3/EventListener;

    .line 104
    new-instance p1, Losdk/okhttp3/internal/connection/RouteSelector;

    invoke-direct {p0}, Losdk/okhttp3/internal/connection/StreamAllocation;->routeDatabase()Losdk/okhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3, p4}, Losdk/okhttp3/internal/connection/RouteSelector;-><init>(Losdk/okhttp3/Address;Losdk/okhttp3/internal/connection/RouteDatabase;Losdk/okhttp3/Call;Losdk/okhttp3/EventListener;)V

    iput-object p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->routeSelector:Losdk/okhttp3/internal/connection/RouteSelector;

    .line 105
    iput-object p5, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    return-void
.end method

.method private deallocate(ZZZ)Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 409
    iput-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->codec:Losdk/okhttp3/internal/http/HttpCodec;

    :cond_0
    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 412
    iput-boolean p3, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->released:Z

    .line 415
    :cond_1
    iget-object p2, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_2

    .line 417
    iput-boolean p3, p2, Losdk/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 419
    :cond_2
    iget-object p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->codec:Losdk/okhttp3/internal/http/HttpCodec;

    if-nez p1, :cond_5

    iget-boolean p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    iget-boolean p1, p1, Losdk/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz p1, :cond_5

    .line 420
    :cond_3
    iget-object p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    invoke-direct {p0, p1}, Losdk/okhttp3/internal/connection/StreamAllocation;->release(Losdk/okhttp3/internal/connection/RealConnection;)V

    .line 421
    iget-object p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    iget-object p1, p1, Losdk/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 422
    iget-object p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Losdk/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 423
    sget-object p1, Losdk/okhttp3/internal/Internal;->instance:Losdk/okhttp3/internal/Internal;

    iget-object p2, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    iget-object p3, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    invoke-virtual {p1, p2, p3}, Losdk/okhttp3/internal/Internal;->connectionBecameIdle(Losdk/okhttp3/ConnectionPool;Losdk/okhttp3/internal/connection/RealConnection;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 424
    iget-object p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    invoke-virtual {p1}, Losdk/okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v0

    .line 427
    :goto_0
    iput-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    move-object v0, p1

    :cond_5
    return-object v0
.end method

.method private findConnection(IIIIZ)Losdk/okhttp3/internal/connection/RealConnection;
    .locals 18

    move-object/from16 v1, p0

    .line 190
    iget-object v2, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    monitor-enter v2

    .line 191
    :try_start_0
    iget-boolean v0, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez v0, :cond_12

    .line 192
    iget-object v0, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->codec:Losdk/okhttp3/internal/http/HttpCodec;

    if-nez v0, :cond_11

    .line 193
    iget-boolean v0, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-nez v0, :cond_10

    .line 197
    iget-object v0, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    .line 198
    invoke-direct/range {p0 .. p0}, Losdk/okhttp3/internal/connection/StreamAllocation;->releaseIfNoNewStreams()Ljava/net/Socket;

    move-result-object v3

    .line 199
    iget-object v4, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 201
    iget-object v0, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    move-object v4, v5

    goto :goto_0

    :cond_0
    move-object v4, v0

    move-object v0, v5

    .line 204
    :goto_0
    iget-boolean v6, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    if-nez v6, :cond_1

    move-object v4, v5

    :cond_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_3

    .line 211
    sget-object v8, Losdk/okhttp3/internal/Internal;->instance:Losdk/okhttp3/internal/Internal;

    iget-object v9, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    iget-object v10, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->address:Losdk/okhttp3/Address;

    invoke-virtual {v8, v9, v10, v1, v5}, Losdk/okhttp3/internal/Internal;->get(Losdk/okhttp3/ConnectionPool;Losdk/okhttp3/Address;Losdk/okhttp3/internal/connection/StreamAllocation;Losdk/okhttp3/Route;)Losdk/okhttp3/internal/connection/RealConnection;

    .line 212
    iget-object v8, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    if-eqz v8, :cond_2

    .line 214
    iget-object v0, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    move-object v8, v5

    const/4 v9, 0x1

    goto :goto_2

    .line 216
    :cond_2
    iget-object v8, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->route:Losdk/okhttp3/Route;

    goto :goto_1

    :cond_3
    move-object v8, v5

    :goto_1
    const/4 v9, 0x0

    .line 219
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 220
    invoke-static {v3}, Losdk/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v4, :cond_4

    .line 223
    iget-object v2, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->eventListener:Losdk/okhttp3/EventListener;

    iget-object v3, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->call:Losdk/okhttp3/Call;

    invoke-virtual {v2, v3, v4}, Losdk/okhttp3/EventListener;->connectionReleased(Losdk/okhttp3/Call;Losdk/okhttp3/Connection;)V

    :cond_4
    if-eqz v9, :cond_5

    .line 226
    iget-object v2, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->eventListener:Losdk/okhttp3/EventListener;

    iget-object v3, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->call:Losdk/okhttp3/Call;

    invoke-virtual {v2, v3, v0}, Losdk/okhttp3/EventListener;->connectionAcquired(Losdk/okhttp3/Call;Losdk/okhttp3/Connection;)V

    :cond_5
    if-eqz v0, :cond_6

    return-object v0

    :cond_6
    if-nez v8, :cond_8

    .line 235
    iget-object v2, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->routeSelection:Losdk/okhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Losdk/okhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    .line 237
    :cond_7
    iget-object v2, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->routeSelector:Losdk/okhttp3/internal/connection/RouteSelector;

    invoke-virtual {v2}, Losdk/okhttp3/internal/connection/RouteSelector;->next()Losdk/okhttp3/internal/connection/RouteSelector$Selection;

    move-result-object v2

    iput-object v2, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->routeSelection:Losdk/okhttp3/internal/connection/RouteSelector$Selection;

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    .line 240
    :goto_3
    iget-object v3, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    monitor-enter v3

    .line 241
    :try_start_1
    iget-boolean v4, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-nez v4, :cond_f

    if-eqz v2, :cond_a

    .line 246
    iget-object v2, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->routeSelection:Losdk/okhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v2}, Losdk/okhttp3/internal/connection/RouteSelector$Selection;->getAll()Ljava/util/List;

    move-result-object v2

    .line 247
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v4, :cond_a

    .line 248
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Losdk/okhttp3/Route;

    .line 249
    sget-object v12, Losdk/okhttp3/internal/Internal;->instance:Losdk/okhttp3/internal/Internal;

    iget-object v13, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    iget-object v14, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->address:Losdk/okhttp3/Address;

    invoke-virtual {v12, v13, v14, v1, v11}, Losdk/okhttp3/internal/Internal;->get(Losdk/okhttp3/ConnectionPool;Losdk/okhttp3/Address;Losdk/okhttp3/internal/connection/StreamAllocation;Losdk/okhttp3/Route;)Losdk/okhttp3/internal/connection/RealConnection;

    .line 250
    iget-object v12, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    if-eqz v12, :cond_9

    .line 252
    iget-object v0, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    .line 253
    iput-object v11, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->route:Losdk/okhttp3/Route;

    const/4 v9, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    if-nez v9, :cond_c

    if-nez v8, :cond_b

    .line 261
    iget-object v0, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->routeSelection:Losdk/okhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v0}, Losdk/okhttp3/internal/connection/RouteSelector$Selection;->next()Losdk/okhttp3/Route;

    move-result-object v8

    .line 266
    :cond_b
    iput-object v8, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->route:Losdk/okhttp3/Route;

    .line 267
    iput v7, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 268
    new-instance v0, Losdk/okhttp3/internal/connection/RealConnection;

    iget-object v2, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    invoke-direct {v0, v2, v8}, Losdk/okhttp3/internal/connection/RealConnection;-><init>(Losdk/okhttp3/ConnectionPool;Losdk/okhttp3/Route;)V

    .line 269
    invoke-virtual {v1, v0, v7}, Losdk/okhttp3/internal/connection/StreamAllocation;->acquire(Losdk/okhttp3/internal/connection/RealConnection;Z)V

    .line 271
    :cond_c
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v9, :cond_d

    .line 275
    iget-object v2, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->eventListener:Losdk/okhttp3/EventListener;

    iget-object v3, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->call:Losdk/okhttp3/Call;

    invoke-virtual {v2, v3, v0}, Losdk/okhttp3/EventListener;->connectionAcquired(Losdk/okhttp3/Call;Losdk/okhttp3/Connection;)V

    return-object v0

    .line 281
    :cond_d
    iget-object v2, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->call:Losdk/okhttp3/Call;

    iget-object v3, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->eventListener:Losdk/okhttp3/EventListener;

    move-object v10, v0

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v10 .. v17}, Losdk/okhttp3/internal/connection/RealConnection;->connect(IIIIZLosdk/okhttp3/Call;Losdk/okhttp3/EventListener;)V

    .line 283
    invoke-direct/range {p0 .. p0}, Losdk/okhttp3/internal/connection/StreamAllocation;->routeDatabase()Losdk/okhttp3/internal/connection/RouteDatabase;

    move-result-object v2

    invoke-virtual {v0}, Losdk/okhttp3/internal/connection/RealConnection;->route()Losdk/okhttp3/Route;

    move-result-object v3

    invoke-virtual {v2, v3}, Losdk/okhttp3/internal/connection/RouteDatabase;->connected(Losdk/okhttp3/Route;)V

    .line 286
    iget-object v2, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    monitor-enter v2

    .line 287
    :try_start_2
    iput-boolean v6, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    .line 290
    sget-object v3, Losdk/okhttp3/internal/Internal;->instance:Losdk/okhttp3/internal/Internal;

    iget-object v4, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    invoke-virtual {v3, v4, v0}, Losdk/okhttp3/internal/Internal;->put(Losdk/okhttp3/ConnectionPool;Losdk/okhttp3/internal/connection/RealConnection;)V

    .line 294
    invoke-virtual {v0}, Losdk/okhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 295
    sget-object v0, Losdk/okhttp3/internal/Internal;->instance:Losdk/okhttp3/internal/Internal;

    iget-object v3, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    iget-object v4, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->address:Losdk/okhttp3/Address;

    invoke-virtual {v0, v3, v4, v1}, Losdk/okhttp3/internal/Internal;->deduplicate(Losdk/okhttp3/ConnectionPool;Losdk/okhttp3/Address;Losdk/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object v5

    .line 296
    iget-object v0, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    .line 298
    :cond_e
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    invoke-static {v5}, Losdk/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 301
    iget-object v2, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->eventListener:Losdk/okhttp3/EventListener;

    iget-object v3, v1, Losdk/okhttp3/internal/connection/StreamAllocation;->call:Losdk/okhttp3/Call;

    invoke-virtual {v2, v3, v0}, Losdk/okhttp3/EventListener;->connectionAcquired(Losdk/okhttp3/Call;Losdk/okhttp3/Connection;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 298
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 241
    :cond_f
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 271
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 193
    :cond_10
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "codec != null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 219
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private findHealthyConnection(IIIIZZ)Losdk/okhttp3/internal/connection/RealConnection;
    .locals 3

    .line 141
    :goto_0
    invoke-direct/range {p0 .. p5}, Losdk/okhttp3/internal/connection/StreamAllocation;->findConnection(IIIIZ)Losdk/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 145
    iget-object v1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    monitor-enter v1

    .line 146
    :try_start_0
    iget v2, v0, Losdk/okhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v2, :cond_0

    .line 147
    monitor-exit v1

    return-object v0

    .line 149
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {v0, p6}, Losdk/okhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    invoke-virtual {p0}, Losdk/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 149
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getConnectionIpStr(Losdk/okhttp3/internal/connection/RealConnection;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_1

    .line 171
    invoke-virtual {p1}, Losdk/okhttp3/internal/connection/RealConnection;->route()Losdk/okhttp3/Route;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p1}, Losdk/okhttp3/internal/connection/RealConnection;->route()Losdk/okhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Losdk/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    return-object p1

    .line 173
    :cond_1
    :goto_0
    invoke-virtual {p1}, Losdk/okhttp3/internal/connection/RealConnection;->route()Losdk/okhttp3/Route;

    move-result-object p1

    invoke-virtual {p1}, Losdk/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private release(Losdk/okhttp3/internal/connection/RealConnection;)V
    .locals 3

    .line 503
    iget-object v0, p1, Losdk/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 504
    iget-object v2, p1, Losdk/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 505
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 506
    iget-object p1, p1, Losdk/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private releaseIfNoNewStreams()Ljava/net/Socket;
    .locals 2

    .line 313
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_0

    .line 314
    iget-boolean v0, v0, Losdk/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 315
    invoke-direct {p0, v1, v1, v0}, Losdk/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private routeDatabase()Losdk/okhttp3/internal/connection/RouteDatabase;
    .locals 2

    .line 358
    sget-object v0, Losdk/okhttp3/internal/Internal;->instance:Losdk/okhttp3/internal/Internal;

    iget-object v1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    invoke-virtual {v0, v1}, Losdk/okhttp3/internal/Internal;->routeDatabase(Losdk/okhttp3/ConnectionPool;)Losdk/okhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private updateRequestIpInfo(Losdk/okhttp3/internal/connection/RealConnection;)V
    .locals 1

    .line 163
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->call:Losdk/okhttp3/Call;

    invoke-interface {v0}, Losdk/okhttp3/Call;->request()Losdk/okhttp3/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0, p1}, Losdk/okhttp3/internal/connection/StreamAllocation;->getConnectionIpStr(Losdk/okhttp3/internal/connection/RealConnection;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Losdk/okhttp3/Request;->setIpAddrStr(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public acquire(Losdk/okhttp3/internal/connection/RealConnection;Z)V
    .locals 1

    .line 494
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    if-nez v0, :cond_0

    .line 496
    iput-object p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    .line 497
    iput-boolean p2, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    .line 498
    iget-object p1, p1, Losdk/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    new-instance p2, Losdk/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    invoke-direct {p2, p0, v0}, Losdk/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;-><init>(Losdk/okhttp3/internal/connection/StreamAllocation;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 494
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public cancel()V
    .locals 3

    .line 436
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    monitor-enter v0

    const/4 v1, 0x1

    .line 437
    :try_start_0
    iput-boolean v1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->canceled:Z

    .line 438
    iget-object v1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->codec:Losdk/okhttp3/internal/http/HttpCodec;

    .line 439
    iget-object v2, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    .line 440
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 442
    invoke-interface {v1}, Losdk/okhttp3/internal/http/HttpCodec;->cancel()V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 444
    invoke-virtual {v2}, Losdk/okhttp3/internal/connection/RealConnection;->cancel()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 440
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public codec()Losdk/okhttp3/internal/http/HttpCodec;
    .locals 2

    .line 352
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    monitor-enter v0

    .line 353
    :try_start_0
    iget-object v1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->codec:Losdk/okhttp3/internal/http/HttpCodec;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 354
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized connection()Losdk/okhttp3/internal/connection/RealConnection;
    .locals 1

    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasMoreRoutes()Z
    .locals 1

    .line 537
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->route:Losdk/okhttp3/Route;

    if-nez v0, :cond_2

    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->routeSelection:Losdk/okhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Losdk/okhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->routeSelector:Losdk/okhttp3/internal/connection/RouteSelector;

    .line 539
    invoke-virtual {v0}, Losdk/okhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public newStream(Losdk/okhttp3/OkHttpClient;Losdk/okhttp3/Interceptor$Chain;Z)Losdk/okhttp3/internal/http/HttpCodec;
    .locals 7

    .line 110
    invoke-interface {p2}, Losdk/okhttp3/Interceptor$Chain;->connectTimeoutMillis()I

    move-result v1

    .line 111
    invoke-interface {p2}, Losdk/okhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v2

    .line 112
    invoke-interface {p2}, Losdk/okhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v3

    .line 113
    invoke-virtual {p1}, Losdk/okhttp3/OkHttpClient;->pingIntervalMillis()I

    move-result v4

    .line 114
    invoke-virtual {p1}, Losdk/okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v5

    move-object v0, p0

    move v6, p3

    .line 117
    :try_start_0
    invoke-direct/range {v0 .. v6}, Losdk/okhttp3/internal/connection/StreamAllocation;->findHealthyConnection(IIIIZZ)Losdk/okhttp3/internal/connection/RealConnection;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    :try_start_1
    invoke-virtual {p3, p1, p2, p0}, Losdk/okhttp3/internal/connection/RealConnection;->newCodec(Losdk/okhttp3/OkHttpClient;Losdk/okhttp3/Interceptor$Chain;Losdk/okhttp3/internal/connection/StreamAllocation;)Losdk/okhttp3/internal/http/HttpCodec;

    move-result-object p1

    .line 120
    invoke-direct {p0, p3}, Losdk/okhttp3/internal/connection/StreamAllocation;->updateRequestIpInfo(Losdk/okhttp3/internal/connection/RealConnection;)V

    .line 121
    iget-object p2, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    monitor-enter p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    :try_start_2
    iput-object p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->codec:Losdk/okhttp3/internal/http/HttpCodec;

    .line 123
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 124
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_0

    .line 127
    invoke-direct {p0, p3}, Losdk/okhttp3/internal/connection/StreamAllocation;->updateRequestIpInfo(Losdk/okhttp3/internal/connection/RealConnection;)V

    .line 129
    :cond_0
    new-instance p2, Losdk/okhttp3/internal/connection/RouteException;

    invoke-direct {p2, p1}, Losdk/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public noNewStreams()V
    .locals 4

    .line 387
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-object v1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 389
    invoke-direct {p0, v2, v3, v3}, Losdk/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 390
    iget-object v3, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 391
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-static {v2}, Losdk/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v1, :cond_1

    .line 394
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->eventListener:Losdk/okhttp3/EventListener;

    iget-object v2, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->call:Losdk/okhttp3/Call;

    invoke-virtual {v0, v2, v1}, Losdk/okhttp3/EventListener;->connectionReleased(Losdk/okhttp3/Call;Losdk/okhttp3/Connection;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 391
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public recycleCount()I
    .locals 1

    .line 546
    iget v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->recycleCount:I

    return v0
.end method

.method public release()V
    .locals 4

    .line 372
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object v1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 374
    invoke-direct {p0, v3, v2, v3}, Losdk/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 375
    iget-object v3, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 376
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-static {v2}, Losdk/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v1, :cond_1

    .line 379
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->eventListener:Losdk/okhttp3/EventListener;

    iget-object v2, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->call:Losdk/okhttp3/Call;

    invoke-virtual {v0, v2, v1}, Losdk/okhttp3/EventListener;->connectionReleased(Losdk/okhttp3/Call;Losdk/okhttp3/Connection;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 376
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public releaseAndAcquire(Losdk/okhttp3/internal/connection/RealConnection;)Ljava/net/Socket;
    .locals 3

    .line 523
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->codec:Losdk/okhttp3/internal/http/HttpCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Losdk/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 526
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Losdk/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 527
    invoke-direct {p0, v1, v2, v2}, Losdk/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 530
    iput-object p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    .line 531
    iget-object p1, p1, Losdk/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 523
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public route()Losdk/okhttp3/Route;
    .locals 1

    .line 362
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->route:Losdk/okhttp3/Route;

    return-object v0
.end method

.method public streamFailed(Ljava/io/IOException;)V
    .locals 6

    .line 453
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    monitor-enter v0

    .line 454
    :try_start_0
    instance-of v1, p1, Losdk/okhttp3/internal/http2/StreamResetException;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 455
    check-cast p1, Losdk/okhttp3/internal/http2/StreamResetException;

    .line 456
    iget-object v1, p1, Losdk/okhttp3/internal/http2/StreamResetException;->errorCode:Losdk/okhttp3/internal/http2/ErrorCode;

    sget-object v5, Losdk/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Losdk/okhttp3/internal/http2/ErrorCode;

    if-ne v1, v5, :cond_0

    .line 457
    iget v1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    add-int/2addr v1, v4

    iput v1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 461
    :cond_0
    iget-object p1, p1, Losdk/okhttp3/internal/http2/StreamResetException;->errorCode:Losdk/okhttp3/internal/http2/ErrorCode;

    sget-object v1, Losdk/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Losdk/okhttp3/internal/http2/ErrorCode;

    if-ne p1, v1, :cond_1

    iget p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    if-le p1, v4, :cond_6

    .line 463
    :cond_1
    iput-object v3, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->route:Losdk/okhttp3/Route;

    goto :goto_0

    .line 465
    :cond_2
    iget-object v1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    if-eqz v1, :cond_6

    iget-object v1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    .line 466
    invoke-virtual {v1}, Losdk/okhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p1, Losdk/okhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v1, :cond_6

    .line 470
    :cond_3
    iget-object v1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    iget v1, v1, Losdk/okhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v1, :cond_5

    .line 471
    iget-object v1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->route:Losdk/okhttp3/Route;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 472
    iget-object v1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->routeSelector:Losdk/okhttp3/internal/connection/RouteSelector;

    iget-object v5, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->route:Losdk/okhttp3/Route;

    invoke-virtual {v1, v5, p1}, Losdk/okhttp3/internal/connection/RouteSelector;->connectFailed(Losdk/okhttp3/Route;Ljava/io/IOException;)V

    .line 474
    :cond_4
    iput-object v3, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->route:Losdk/okhttp3/Route;

    :cond_5
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 477
    :goto_1
    iget-object v1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    .line 478
    invoke-direct {p0, p1, v2, v4}, Losdk/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 479
    iget-object v2, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    if-nez v2, :cond_8

    iget-boolean v2, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    move-object v3, v1

    .line 480
    :cond_8
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    invoke-static {p1}, Losdk/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v3, :cond_9

    .line 484
    iget-object p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->eventListener:Losdk/okhttp3/EventListener;

    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->call:Losdk/okhttp3/Call;

    invoke-virtual {p1, v0, v3}, Losdk/okhttp3/EventListener;->connectionReleased(Losdk/okhttp3/Call;Losdk/okhttp3/Connection;)V

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    .line 480
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public streamFinished(ZLosdk/okhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V
    .locals 2

    .line 321
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->eventListener:Losdk/okhttp3/EventListener;

    iget-object v1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->call:Losdk/okhttp3/Call;

    invoke-virtual {v0, v1, p3, p4}, Losdk/okhttp3/EventListener;->responseBodyEnd(Losdk/okhttp3/Call;J)V

    .line 326
    iget-object p3, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connectionPool:Losdk/okhttp3/ConnectionPool;

    monitor-enter p3

    if-eqz p2, :cond_5

    .line 327
    :try_start_0
    iget-object p4, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->codec:Losdk/okhttp3/internal/http/HttpCodec;

    if-ne p2, p4, :cond_5

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 331
    iget-object p4, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    iget v0, p4, Losdk/okhttp3/internal/connection/RealConnection;->successCount:I

    add-int/2addr v0, p2

    iput v0, p4, Losdk/okhttp3/internal/connection/RealConnection;->successCount:I

    .line 332
    iget-object p4, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    iget p4, p4, Losdk/okhttp3/internal/connection/RealConnection;->successCount:I

    iput p4, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->recycleCount:I

    .line 334
    :cond_0
    iget-object p4, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    const/4 v0, 0x0

    .line 335
    invoke-direct {p0, p1, v0, p2}, Losdk/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 336
    iget-object p2, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->connection:Losdk/okhttp3/internal/connection/RealConnection;

    if-eqz p2, :cond_1

    const/4 p4, 0x0

    .line 337
    :cond_1
    iget-boolean p2, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->released:Z

    .line 338
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-static {p1}, Losdk/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz p4, :cond_2

    .line 341
    iget-object p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->eventListener:Losdk/okhttp3/EventListener;

    iget-object p3, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->call:Losdk/okhttp3/Call;

    invoke-virtual {p1, p3, p4}, Losdk/okhttp3/EventListener;->connectionReleased(Losdk/okhttp3/Call;Losdk/okhttp3/Connection;)V

    :cond_2
    if-eqz p5, :cond_3

    .line 345
    iget-object p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->eventListener:Losdk/okhttp3/EventListener;

    iget-object p2, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->call:Losdk/okhttp3/Call;

    invoke-virtual {p1, p2, p5}, Losdk/okhttp3/EventListener;->callFailed(Losdk/okhttp3/Call;Ljava/io/IOException;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 347
    iget-object p1, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->eventListener:Losdk/okhttp3/EventListener;

    iget-object p2, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->call:Losdk/okhttp3/Call;

    invoke-virtual {p1, p2}, Losdk/okhttp3/EventListener;->callEnd(Losdk/okhttp3/Call;)V

    :cond_4
    :goto_0
    return-void

    .line 328
    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "expected "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->codec:Losdk/okhttp3/internal/http/HttpCodec;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " but was "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 338
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 550
    invoke-virtual {p0}, Losdk/okhttp3/internal/connection/StreamAllocation;->connection()Losdk/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0}, Losdk/okhttp3/internal/connection/RealConnection;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Losdk/okhttp3/internal/connection/StreamAllocation;->address:Losdk/okhttp3/Address;

    invoke-virtual {v0}, Losdk/okhttp3/Address;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
