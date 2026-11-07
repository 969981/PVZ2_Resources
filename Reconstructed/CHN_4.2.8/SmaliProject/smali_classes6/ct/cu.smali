.class public final Lct/cu;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field private static final a:Ljava/io/FilenameFilter;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lct/cu$1;

    invoke-direct {v0}, Lct/cu$1;-><init>()V

    sput-object v0, Lct/cu;->a:Ljava/io/FilenameFilter;

    return-void
.end method

.method public static declared-synchronized a(Lct/be;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .locals 9

    const-class v0, Lct/cu;

    monitor-enter v0

    .line 75
    :try_start_0
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 76
    new-instance v8, Lct/cu$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lct/cu$2;-><init>(Lct/be;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v8}, Lct/cu$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lct/be;Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    if-eqz p2, :cond_2

    .line 29
    sget-object v0, Lct/cu;->a:Ljava/io/FilenameFilter;

    invoke-virtual {p2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    :try_start_0
    invoke-static {v2}, Lct/b$a;->a(Ljava/io/File;)[B

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1, v3}, Lct/be;->a(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 29
    sget-boolean v0, Lct/cu;->b:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 29
    sput-boolean p0, Lct/cu;->b:Z

    return p0
.end method
