.class public final Lcom/talkweb/network/NetworkModule;
.super Ljava/lang/Object;
.source "NetworkModule.java"


# static fields
.field private static volatile instance:Lcom/talkweb/network/ApiClient;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provide(Lcom/talkweb/network/config/NetworkConfig;)Lcom/talkweb/network/ApiClient;
    .locals 3

    .line 34
    sget-object v0, Lcom/talkweb/network/NetworkModule;->instance:Lcom/talkweb/network/ApiClient;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lcom/talkweb/network/NetworkModule;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/talkweb/network/NetworkModule;->instance:Lcom/talkweb/network/ApiClient;

    if-nez v0, :cond_0

    .line 39
    invoke-static {p0}, Lcom/talkweb/network/factory/OkHttpClientFactory;->create(Lcom/talkweb/network/config/NetworkConfig;)Lcom/talkweb/network/factory/NativeHttpEngine;

    move-result-object v0

    .line 40
    new-instance v2, Lcom/talkweb/network/ApiClient;

    invoke-direct {v2, v0, p0}, Lcom/talkweb/network/ApiClient;-><init>(Lcom/talkweb/network/factory/NativeHttpEngine;Lcom/talkweb/network/config/NetworkConfig;)V

    sput-object v2, Lcom/talkweb/network/NetworkModule;->instance:Lcom/talkweb/network/ApiClient;

    move-object v0, v2

    .line 42
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static reset()V
    .locals 2

    .line 49
    const-class v0, Lcom/talkweb/network/NetworkModule;

    monitor-enter v0

    const/4 v1, 0x0

    .line 50
    :try_start_0
    sput-object v1, Lcom/talkweb/network/NetworkModule;->instance:Lcom/talkweb/network/ApiClient;

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
