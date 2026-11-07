.class public Lcom/mob/tools/a/b;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/mob/tools/a/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/mob/tools/utils/a;

.field private k:Ljava/lang/Object;

.field private l:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/mob/tools/a/b;->b:Ljava/lang/String;

    .line 115
    const-string v0, "-1"

    iput-object v0, p0, Lcom/mob/tools/a/b;->e:Ljava/lang/String;

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/mob/tools/a/b;->f:I

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/a/b;->i:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    .line 125
    iput-wide v0, p0, Lcom/mob/tools/a/b;->l:J

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    .line 140
    new-instance p1, Lcom/mob/tools/utils/a;

    invoke-direct {p1}, Lcom/mob/tools/utils/a;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mob/tools/a/b;
    .locals 2

    const-class v0, Lcom/mob/tools/a/b;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lcom/mob/tools/a/b;->c:Lcom/mob/tools/a/b;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 129
    new-instance v1, Lcom/mob/tools/a/b;

    invoke-direct {v1, p0}, Lcom/mob/tools/a/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/tools/a/b;->c:Lcom/mob/tools/a/b;

    .line 131
    :cond_0
    sget-object p0, Lcom/mob/tools/a/b;->c:Lcom/mob/tools/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 307
    const-string v0, "017YgeceCi$cedkdccecjeedkfccbcjNcNcdUkh"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    const-string v1, "0101ee$hcGfccbcj:cXcd=kh"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 309
    const-string v1, "004hTck$hTcf"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v0, v1, p0, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 3475
    :try_start_0
    const-string p1, "-1"

    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->P:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3476
    iget-object p1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object p1, p1, Lcom/mob/tools/utils/a;->P:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 3481
    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/f;->a()Ljava/lang/String;

    move-result-object p1

    .line 3482
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object p1, v0, Lcom/mob/tools/utils/a;->P:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3484
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3486
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1

    .line 3526
    iget-object p1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object p1, p1, Lcom/mob/tools/utils/a;->U:Ljava/lang/String;

    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3527
    iget-object p1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object p1, p1, Lcom/mob/tools/utils/a;->U:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 3532
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mob/tools/a/f;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 3533
    iget-object p2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object p1, p2, Lcom/mob/tools/utils/a;->U:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 3535
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-object p1
.end method

.method private a(Ljava/io/File;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1069
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 1073
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1074
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1075
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    long-to-int p1, v5

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1076
    :goto_0
    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-lez v5, :cond_0

    goto :goto_0

    .line 1080
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 1081
    iget-object v5, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mob/tools/a/b;->a(Landroid/content/Context;)Lcom/mob/tools/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mob/tools/a/b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/mob/tools/a/b;->a(Ljava/lang/String;[B)Ljava/util/HashMap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1085
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v0, v3, v2

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v4, v0

    .line 1083
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1085
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v4, p1, v2

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_2
    move-exception p1

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v4, v3, v2

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 1086
    throw p1

    .line 1088
    :cond_1
    :goto_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private a(Ljava/lang/String;[B)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1093
    :try_start_0
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 1094
    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1097
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 1099
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[J)V
    .locals 3

    .line 2984
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 2987
    const-string v0, " \\d+ "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    .line 2989
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 2991
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    aput-wide v1, p3, p2

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2993
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    const/4 v0, 0x1

    aput-wide p1, p3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3000
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1370
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v1, "0043dkcecjef"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ResHelper;->saveObjectToFile(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1373
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .line 1417
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1418
    :goto_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x80

    if-ne p1, v1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method private aM()Z
    .locals 8

    const/4 v0, 0x0

    .line 154
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "025fKefchefCchkfYceEddf8dgcbEdhYcgcbef2hKcgdkceMd_ci"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0x10

    .line 157
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "012fg@ceUcVce+f%dcdbcfcedcFf"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "016fgFceCcJce.fJdcdbcfcedc1fUebcdcj)f"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "017fg4ce c$ceTfHdcdbcfcedc f1ckebcdcj:f"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "006f9efebcdcj;f"

    .line 158
    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, "008f(efcb6f2ebcdcjYf"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string v4, "012f[efchef chkfBebcdcj=f"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string v4, "017fUefchef2chkfPebcdcjNf+dk(h5ck;cf"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string v4, "021f efchefUchkfPebcdcj!f9egcecddcefceeg\'hf"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string v4, "016f0efchef9chkf)ef.gf*ckebcdcjAf"

    .line 159
    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string v4, "025fQefchef;chkf-cbefcg?f5ec5h,ghcjDhhgOghcgdbdbFcf"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string v4, "013fQefchefEchkf9ckebcdcjSf"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string v4, "013f]efchef@chkfOefebcdcj+f"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string v4, "012fih*cjFg6dbcg1f[ebcdcj=f"

    .line 160
    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string v4, "006fPcfcecf0bh"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string v4, "005fg.ce[c[ce"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string v4, "004fghi"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xf

    aput-object v4, v3, v5

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 161
    aget-object v5, v3, v4

    .line 162
    new-instance v6, Ljava/io/File;

    const-string v7, "002Oefcb"

    invoke-static {v7}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_4

    .line 166
    aget-object v5, v3, v4

    .line 167
    new-instance v6, Ljava/io/File;

    const-string v7, "007-ebcbefchebdbck"

    invoke-static {v7}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v4, v0

    :goto_2
    if-ge v4, v1, :cond_6

    .line 171
    aget-object v5, v3, v4

    .line 172
    new-instance v6, Ljava/io/File;

    const-string v7, "006k)ceeecdefci"

    invoke-static {v7}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_5

    return v2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 177
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_6
    return v0
.end method

.method private aN()Z
    .locals 12

    .line 183
    const-string v0, "007gh0efBc!cgdbch"

    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v1, v1, Lcom/mob/tools/utils/a;->ad:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->ad:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 189
    :try_start_0
    const-string v3, "0076eeQhcd*cgdb7d"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/a/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 190
    const-string v3, "014Nee7hc]dfcj8d_cb>cDdg)c)cg.h@ceDk"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    if-nez v3, :cond_2

    .line 192
    iget-object v3, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/mob/tools/utils/a;->ad:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_1

    .line 220
    :try_start_1
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    return v1

    .line 195
    :cond_2
    :try_start_2
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v3, "\\A"

    invoke-virtual {v4, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 198
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 199
    const-string v5, "013Mcgdbdk0ghSebcbeeeeceebdc8h"

    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v5, "009AcgdbdkefOhRcfcbcg9h"

    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    array-length v5, v3

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_6

    aget-object v7, v3, v6

    .line 202
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 203
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 204
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 205
    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 206
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 208
    iget-object v3, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v3, Lcom/mob/tools/utils/a;->ad:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_4

    .line 220
    :try_start_3
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :cond_4
    return v4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    :try_start_4
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_2
    move-exception v3

    .line 216
    :try_start_5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v2, :cond_7

    .line 220
    :try_start_6
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 224
    :catchall_3
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/mob/tools/utils/a;->ad:Ljava/lang/Boolean;

    return v1

    :catchall_4
    move-exception v3

    if-eqz v2, :cond_8

    .line 220
    :try_start_7
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 223
    :catchall_5
    :cond_8
    throw v3
.end method

.method private aO()Z
    .locals 17

    .line 230
    const-string v0, ","

    const-string v1, "007ghWef!c cgdbch"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 232
    :try_start_0
    const-string v4, "005kIdbcbcj?c"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/a/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 233
    const-string v4, "014 eeRhcEdfcj$dFcbLc1dgVc-cgJhPceFk"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    .line 264
    :try_start_1
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    return v2

    .line 237
    :cond_1
    :try_start_2
    new-instance v5, Ljava/util/Scanner;

    invoke-direct {v5, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v4, "\\A"

    invoke-virtual {v5, v4}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 240
    const-string v5, "068fYefchef3chk?id+fCefchefVchkf_ebcdcjid1f<efchefMchkf=efebcdcjidUf8efchef9chkfLckebcdcjid1fihCcj)g!dbcg[f8ebcdcjid[fRefebcdcjidFfhcKcf"

    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 241
    array-length v6, v4

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_6

    aget-object v8, v4, v7

    .line 242
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 243
    array-length v9, v8

    const/4 v10, 0x4

    if-lt v9, v10, :cond_5

    const/4 v9, 0x1

    .line 244
    aget-object v10, v8, v9

    const/4 v11, 0x3

    .line 245
    aget-object v8, v8, v11

    .line 246
    array-length v11, v5

    move v12, v2

    :goto_1
    if-ge v12, v11, :cond_5

    aget-object v13, v5, v12

    if-eqz v10, :cond_4

    .line 247
    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 248
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 249
    array-length v14, v13

    move v15, v2

    :goto_2
    if-ge v15, v14, :cond_4

    aget-object v9, v13, v15

    if-eqz v9, :cond_3

    .line 250
    const-string v16, "002[cgec"

    invoke-static/range {v16 .. v16}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_2

    .line 264
    :try_start_3
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :cond_2
    const/4 v2, 0x1

    return v2

    :cond_3
    const/4 v2, 0x1

    add-int/lit8 v15, v15, 0x1

    move v9, v2

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move v2, v9

    add-int/lit8 v12, v12, 0x1

    move v9, v2

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    :try_start_4
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 260
    :try_start_5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v3, :cond_7

    .line 264
    :try_start_6
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v2, 0x0

    :try_start_7
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_3
    :cond_7
    :goto_3
    const/4 v2, 0x0

    :catchall_4
    :goto_4
    return v2

    :catchall_5
    move-exception v0

    const/4 v2, 0x0

    if-eqz v3, :cond_8

    :try_start_8
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 267
    :catchall_6
    :cond_8
    throw v0
.end method

.method private aP()Z
    .locals 8

    .line 272
    const-string v0, "007gh8ef5cMcgdbch"

    const-string v1, "007gh^ef\'c,cgdbch"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 276
    :try_start_0
    const-string v5, "008<ecRb5cdcf2b_hbefcb"

    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/tools/a/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 277
    const-string v5, "014Mee>hcYdfcj@dRcbGc(dgVc3cgFh9ce)k"

    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    if-eqz v5, :cond_0

    .line 279
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v4, :cond_2

    .line 285
    :try_start_1
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v6}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catchall_0
    if-eqz v4, :cond_1

    :try_start_2
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_1
    move v5, v3

    .line 290
    :catchall_2
    :cond_2
    :goto_1
    :try_start_3
    const-string v1, "021fRefchef+chkfIckebcdcj7f!ec0b cdcf%b]hbefcb"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/a/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 291
    const-string v1, "0147ee<hc5dfcj4dYcb6c,dgGc]cg6hMce1k"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v6}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    if-eqz v1, :cond_3

    .line 293
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    if-eqz v4, :cond_5

    .line 299
    :try_start_4
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v6}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto :goto_3

    :catchall_3
    if-eqz v4, :cond_4

    :try_start_5
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_4
    move v1, v3

    :catchall_5
    :cond_5
    :goto_3
    if-nez v5, :cond_7

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :cond_7
    :goto_4
    return v2
.end method

.method private aQ()Ljava/lang/String;
    .locals 4

    const-string v0, "null:"

    .line 936
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->f()Ljava/lang/String;

    move-result-object v1

    .line 937
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->d()Ljava/lang/String;

    move-result-object v2

    .line 938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->SHA1(Ljava/lang/String;)[B

    move-result-object v0

    .line 940
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->byteToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 942
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private aR()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "null:"

    const/4 v1, 0x0

    .line 976
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->aS()Ljava/util/HashMap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 978
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_0

    return-object v1

    .line 985
    :cond_0
    const-string v3, "010ghiVcdcfDhVdfcjegdb"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_1

    return-object v1

    .line 994
    :cond_1
    :try_start_1
    const-string v3, "iemt"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 995
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 996
    const-string v3, "snmt"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 998
    :cond_2
    const-string v4, "005k3dbEgh2dc"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 999
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1000
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->SHA1(Ljava/lang/String;)[B

    move-result-object v0

    .line 1001
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->byteToHex([B)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 1003
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    return-object v1
.end method

.method private aS()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1023
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v2, "0144cfdb5kkfg:ebef^fYdk5gIcbcdPg"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1024
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v2, :cond_3

    .line 1032
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1033
    :try_start_2
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1034
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_0
    move-object v3, v0

    goto :goto_0

    :catchall_1
    move-object v2, v0

    move-object v3, v2

    :catchall_2
    :goto_0
    move-object v4, v0

    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_0

    .line 1039
    :try_start_4
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1041
    :cond_0
    invoke-direct {p0, v1}, Lcom/mob/tools/a/b;->a(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v4

    .line 1043
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1044
    const-string v1, "010ghi6cdcfQh5dfcjegdb"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1049
    :try_start_5
    new-array v4, v7, [Ljava/io/Closeable;

    aput-object v2, v4, v6

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return-object v1

    :cond_2
    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v6

    aput-object v3, v1, v5

    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_3
    move-exception v1

    .line 1047
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1049
    :try_start_7
    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v6

    aput-object v3, v1, v5

    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_4
    move-exception v1

    new-array v4, v7, [Ljava/io/Closeable;

    aput-object v2, v4, v6

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 1050
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v1

    .line 1053
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-object v0
.end method

.method private aT()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1103
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->G()Ljava/lang/String;

    move-result-object v0

    .line 1105
    new-instance v1, Ljava/io/File;

    const-string v2, "008)dg4b(cecg^hXdgehgi"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    new-instance v0, Ljava/io/File;

    const-string v2, "003(dk0g4ci"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1109
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v2, "003Odk=g-ci"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getCacheRootFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1110
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1111
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v1, "003Rdk^gPci"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getCacheRootFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1117
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1123
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1124
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1125
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1127
    instance-of v5, v4, [C

    if-eqz v5, :cond_2

    .line 1128
    check-cast v4, [C

    check-cast v4, [C

    .line 1129
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1133
    :cond_2
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_0
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 1134
    throw v1
.end method

.method private aU()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1354
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v1, "004(dkcecjef"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->readObjectFromFile(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1358
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 1359
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v1, "004Ydkcecjef"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 1361
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private aV()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1378
    const-string v0, "007gh!ef7c+cgdbch"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1379
    const-string v2, "005khWcdekcb"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1382
    :try_start_0
    const-string v4, "016dk hbdccdef+cVhbTdFcecfciceee6hAef"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/a/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1383
    const-string v4, "014-eeDhcWdfcjAd]cbZcIdg4cBcgCh$ce+k"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    .line 1384
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "utf-8"

    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1385
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1386
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_1

    .line 1388
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1389
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-le v6, v7, :cond_0

    .line 1390
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1391
    const-string v8, "008dYcecfciceeeChe"

    invoke-static {v8}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1392
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1393
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1394
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1400
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 1407
    :try_start_1
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 1403
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_3

    .line 1407
    :try_start_3
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_1
    move-exception v1

    if-eqz v3, :cond_2

    :try_start_4
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1411
    :catchall_2
    :cond_2
    throw v1

    :catchall_3
    :cond_3
    :goto_1
    return-object v1
.end method

.method private aW()Ljava/lang/Object;
    .locals 4

    .line 3560
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->k:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mob/tools/a/b;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 3561
    iget-object v0, p0, Lcom/mob/tools/a/b;->k:Ljava/lang/Object;

    return-object v0

    .line 3563
    :cond_0
    const-string v0, "041[cecj,gVcgdbcdSgXdk:dh[cg3k?cdefefcddbcjdkdifefefbdgdgccfeejdifcdgfbccdjejfedidhdfejde"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3564
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3566
    const-string v1, "0156eeRhcKfe9hIdcdcdjdbcfceWcNcddbcj"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3567
    iput-object v0, p0, Lcom/mob/tools/a/b;->k:Ljava/lang/Object;

    .line 3568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/a/b;->l:J

    .line 3569
    iget-object v0, p0, Lcom/mob/tools/a/b;->k:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3573
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private b(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    .line 3543
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->aK()Ljava/lang/String;

    move-result-object v1

    .line 3544
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3545
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3546
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catchall_0
    move-exception p1

    .line 3553
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MobPush checkIsInMainProcess: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private declared-synchronized b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 3497
    :try_start_0
    const-string p1, "-1"

    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3498
    iget-object p1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object p1, p1, Lcom/mob/tools/utils/a;->Q:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 3503
    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/f;->b()Ljava/lang/String;

    move-result-object p1

    .line 3504
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object p1, v0, Lcom/mob/tools/utils/a;->Q:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3506
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3508
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1011
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->aS()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1013
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1016
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private l(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1138
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v1, "003HdkEgWci"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getCacheRootFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1139
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1140
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1145
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1146
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1147
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 1148
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1149
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1151
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v3, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 1152
    throw p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 2

    .line 840
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 841
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "004)cjdbcj.h"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 845
    :cond_0
    const-string v1, "004^eccdegcd"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 846
    const-string v0, "004@eccdegcd"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 847
    :cond_1
    const-string v1, "002<gdee"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 848
    const-string v0, "002Hgdee"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 849
    :cond_2
    const-string v1, "002=ihee"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 850
    const-string v0, "002Eihee"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 851
    :cond_3
    const-string v1, "002$ibee"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 852
    const-string v0, "002Vibee"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 853
    :cond_4
    const-string v1, "002Lfiee"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 854
    const-string v0, "002*fiee"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 855
    :cond_5
    const-string v1, "009Iebdccb?hc*dbdb)cb"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 856
    const-string v0, "009Qebdccb^hcTdbdbXcb"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0

    .line 842
    :cond_7
    :goto_0
    const-string v0, "004<cjdbcjYh"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 861
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 862
    const-string v0, "004GcjdbcjAh"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 873
    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .line 1157
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->p:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->p:Ljava/lang/String;

    return-object v0

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->p:Ljava/lang/String;

    .line 1161
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 4

    .line 1166
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->q:Ljava/lang/String;

    return-object v0

    .line 1170
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1171
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1173
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_1

    const-string v2, ".*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_1

    .line 1175
    :try_start_1
    invoke-static {v1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1180
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object v1, v0, Lcom/mob/tools/utils/a;->q:Ljava/lang/String;

    .line 1181
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->q:Ljava/lang/String;

    return-object v0

    .line 1185
    :catchall_0
    :cond_2
    :goto_0
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-lez v2, :cond_3

    .line 1188
    :try_start_3
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 1190
    :try_start_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1193
    :cond_3
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1195
    :goto_1
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object v1, v0, Lcom/mob/tools/utils/a;->q:Ljava/lang/String;

    .line 1196
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->q:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v0

    :catchall_2
    move-exception v0

    .line 1198
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 1200
    const-string v0, ""

    return-object v0
.end method

.method public E()I
    .locals 5

    .line 1225
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget v0, v0, Lcom/mob/tools/utils/a;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget v0, v0, Lcom/mob/tools/utils/a;->r:I

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1229
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/mob/tools/a/f;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1230
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    .line 1231
    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    long-to-int v1, v3

    iput v1, v2, Lcom/mob/tools/utils/a;->r:I

    .line 1232
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget v0, v1, Lcom/mob/tools/utils/a;->r:I

    return v0

    .line 1234
    :cond_1
    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, v2, Lcom/mob/tools/utils/a;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1236
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 1237
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput v0, v1, Lcom/mob/tools/utils/a;->r:I

    .line 1239
    :goto_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget v0, v0, Lcom/mob/tools/utils/a;->r:I

    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 3

    .line 1244
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->s:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->s:Ljava/lang/String;

    return-object v0

    .line 1248
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mob/tools/a/f;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1249
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, v1, Lcom/mob/tools/utils/a;->s:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1251
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 1252
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    const-string v1, "1.0"

    iput-object v1, v0, Lcom/mob/tools/utils/a;->s:Ljava/lang/String;

    .line 1254
    :goto_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1452
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v1, v1, Lcom/mob/tools/utils/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1453
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v1, Lcom/mob/tools/utils/a;->a:Ljava/lang/String;

    return-object v0

    .line 1456
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, v2, :cond_1

    const-string v1, "mounted"

    .line 1457
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1459
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mob/tools/utils/a;->a:Ljava/lang/String;

    goto :goto_0

    .line 1462
    :cond_1
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mob/tools/utils/a;->a:Ljava/lang/String;

    .line 1464
    :goto_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v1, Lcom/mob/tools/utils/a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized I()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 1498
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1499
    monitor-exit p0

    return-object v1

    .line 1502
    :cond_0
    :try_start_1
    const-string v0, "-1"

    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v2, v2, Lcom/mob/tools/utils/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-2"

    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v2, v2, Lcom/mob/tools/utils/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1503
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object v0

    .line 1507
    :cond_1
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_3

    const-string v0, "035_cecjAg?cgdbcdRgMdk(dhNcgZkKcdefefcddbcjdkfcfbdiehccffgbejdefbccdgdhdidhfb"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1508
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 1510
    monitor-exit p0

    return-object v1

    .line 1512
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-direct {p0, v0}, Lcom/mob/tools/a/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mob/tools/utils/a;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1515
    :try_start_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    .line 1519
    :cond_3
    :goto_0
    const-string v0, "-2"

    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v1, v1, Lcom/mob/tools/utils/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "-1"

    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v1, v1, Lcom/mob/tools/utils/a;->d:Ljava/lang/String;

    .line 1520
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xf

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_6

    .line 1521
    :cond_4
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->J()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1522
    array-length v2, v0

    if-lez v2, :cond_5

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v1, :cond_5

    .line 1523
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/mob/tools/utils/a;->d:Ljava/lang/String;

    .line 1526
    :cond_5
    const-string v0, "-1"

    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v1, v1, Lcom/mob/tools/utils/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1527
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    const-string v1, "-2"

    iput-object v1, v0, Lcom/mob/tools/utils/a;->d:Ljava/lang/String;

    .line 1530
    :cond_6
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->d:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized J()[Ljava/lang/String;
    .locals 7

    monitor-enter p0

    .line 1535
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1536
    monitor-exit p0

    return-object v1

    .line 1540
    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_5

    const-string v0, "035?cecjOg!cgdbcd.g!dk?dhPcgQkBcdefefcddbcjdkfcfbdiehccffgbejdefbccdgdhdidhfb"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1541
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1542
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1543
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->t:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v2, v2, Lcom/mob/tools/utils/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1545
    :cond_1
    monitor-exit p0

    return-object v1

    .line 1548
    :cond_2
    :try_start_2
    const-string v0, "021=eeef$kHdkefcd=k1dkdbBdh(cgceNcVdbcgdkcd@kDefcd"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1549
    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/mob/tools/utils/a;->t:Ljava/util/ArrayList;

    .line 1550
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1551
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1552
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 1553
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1554
    iget-object v6, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v6, v6, Lcom/mob/tools/utils/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1555
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1558
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1559
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1563
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1565
    :cond_5
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public K()I
    .locals 4

    const/4 v0, -0x1

    .line 1653
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->aW()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1654
    const-string v2, "016<fe;gk6cefeJhTdcdcdjdbcfceYc_cddbcj"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1655
    const-string v2, "006Gee7hc6fecd^g"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 1658
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public L()I
    .locals 4

    const/4 v0, -0x1

    .line 1666
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->aW()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1667
    const-string v2, "016Tfe(gk0cefeTh6dcdcdjdbcfceKcRcddbcj"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1668
    const-string v2, "006[ee3hcDdjcecf"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 1671
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public M()I
    .locals 4

    const/4 v0, -0x1

    .line 1679
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->aW()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1680
    const-string v2, "016;feOgk_cefe$h2dcdcdjdbcfce2cIcddbcj"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1681
    const-string v2, "006,eeChc_ffefcf"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 1684
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public N()I
    .locals 4

    const/4 v0, -0x1

    .line 1693
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->aW()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1694
    const-string v2, "0169feJgkPcefeJhMdcdcdjdbcfceQc)cddbcj"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1695
    const-string v2, "022Qee.hc?eiceef8h>dgEcAce*c?cddbcjdjce@c cdDc>cbOgh"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1698
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    move v1, v0

    :goto_0
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public O()I
    .locals 4

    const/4 v0, -0x1

    .line 1710
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->aW()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1711
    const-string v2, "016IfeVgkOcefe+hIdcdcdjdbcfceBcJcddbcj"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1712
    const-string v2, "0230ee]hc eiceefTh%dgRcMce.cQcddbcjdjdbcjeecdQc7cbAgh"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1715
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    move v1, v0

    :goto_0
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public P()I
    .locals 4

    const/4 v0, -0x1

    .line 1726
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->aW()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1727
    const-string v2, "016Lfe\'gk cefeCh0dcdcdjdbcfceYc8cddbcj"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1728
    const-string v2, "016@ee)hcWeiceef:hXdgOc9ce7cOcddbcjdfEg"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 1731
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public Q()I
    .locals 4

    const/4 v0, -0x1

    .line 1739
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->aW()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1740
    const-string v2, "016@fe>gk-cefe6h*dcdcdjdbcfce9cQcddbcj"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1741
    const-string v2, "011Eee@hc\'dgchefAchk>dfVg"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 1744
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public R()I
    .locals 4

    const/4 v0, -0x1

    .line 1752
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->aW()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1753
    const-string v2, "016Bfe0gkRcefe h$dcdcdjdbcfceUc_cddbcj"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1754
    const-string v2, "012Bee=hcAdeOhc$ecdbcgcidfDg"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 1757
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public S()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1766
    :try_start_0
    const-string v0, "041)cecj\'g=cgdbcd9gUdk[dh)cg3k@cdefefcddbcjdkdifefefbdgdgccfeejdifcdgfbccdjejfedidhdfejde"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->aq()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1767
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1769
    const-string v1, "022PeeJhcXde+hLcdee2b]ebdbcgcdcjeefe2h\'dcdcdfcjegdb"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1770
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1771
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1773
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1774
    const-string v4, "006Pee.hc?fecdCg"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1775
    const-string v6, "006.eeWhc=djcecf"

    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1776
    const-string v7, "007 eeXhcVfcefefcd"

    invoke-static {v7}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1777
    const-string v8, "006XeeFhc-ffefcf"

    invoke-static {v8}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v3, v8, v9}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1778
    const-string v9, "014GeeBhc8deOhcYecdbcgcidhchQdh"

    invoke-static {v9}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v3, v9, v10}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v5, :cond_0

    if-eq v6, v5, :cond_0

    .line 1780
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1781
    const-string v9, "004ZcfOh[dcdc"

    invoke-static {v9}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    const-string v4, "003Ldccecf"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    const-string v4, "004Ocgefefcd"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    const-string v4, "003d^efcf"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    const-string v4, "011UcjYhc)ecdbcgcidhch_dh"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1789
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_2

    return-object v1

    :catchall_0
    move-exception v0

    .line 1796
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public T()Ljava/lang/String;
    .locals 2

    .line 1803
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->u:Ljava/lang/String;

    return-object v0

    .line 1807
    :cond_0
    :try_start_0
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz v0, :cond_1

    .line 1809
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1818
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    goto :goto_0

    .line 1817
    :pswitch_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    const-string v1, "009Tfdfcgbfbdiehdgfbdh"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->u:Ljava/lang/String;

    goto :goto_1

    .line 1816
    :pswitch_1
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    const-string v1, "005Rfkdidhfegb"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->u:Ljava/lang/String;

    goto :goto_1

    .line 1815
    :pswitch_2
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    const-string v1, "009>diffffdjdfdidefefb"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->u:Ljava/lang/String;

    goto :goto_1

    .line 1814
    :pswitch_3
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    const-string v1, "010 dhfbdjfbfddfdgdfejde"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->u:Ljava/lang/String;

    goto :goto_1

    .line 1813
    :pswitch_4
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    const-string v1, "003Kfedifc"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->u:Ljava/lang/String;

    goto :goto_1

    .line 1812
    :pswitch_5
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    const-string v1, "004Tehfbdggi"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->u:Ljava/lang/String;

    goto :goto_1

    .line 1811
    :pswitch_6
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    const-string v1, "005Udeejccdddf"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->u:Ljava/lang/String;

    goto :goto_1

    .line 1818
    :goto_0
    const-string v1, "0095dddeehfbgcdfdefbeh"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1822
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 1823
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    const-string v1, "009Jdddeehfbgcdfdefbeh"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->u:Ljava/lang/String;

    .line 1825
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->u:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public U()Ljava/lang/Object;
    .locals 5

    .line 1890
    new-instance v0, Lcom/mob/tools/a/b$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/a/b$1;-><init>(Lcom/mob/tools/a/b;)V

    .line 1902
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    const/4 v1, 0x0

    .line 1903
    invoke-interface {v0, v1}, Lcom/mob/tools/utils/ReflectHelper$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 1909
    :cond_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 1910
    new-array v2, v2, [Ljava/lang/Object;

    .line 1911
    monitor-enter v1

    .line 1912
    :try_start_0
    new-instance v3, Lcom/mob/tools/a/b$2;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/mob/tools/a/b$2;-><init>(Lcom/mob/tools/a/b;Ljava/lang/Object;[Ljava/lang/Object;Lcom/mob/tools/utils/ReflectHelper$a;)V

    const/4 v0, 0x0

    invoke-static {v0, v3}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1931
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 1933
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 1935
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1936
    aget-object v0, v2, v0

    return-object v0

    :catchall_1
    move-exception v0

    .line 1935
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public V()Landroid/content/Context;
    .locals 3

    .line 1941
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->U()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1943
    const-string v1, "014(ee0hc2diBddZdccdcfce%cGcddbcj"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1946
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public W()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1953
    :try_start_0
    const-string v0, "036RcecjKg9cgdbcd0g.dkZdh@cg_kScdefefcddbcjdkdifefefbdgdgccfkdfgcdfccdgdhdidhfb"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1956
    const-string v1, "017]eeWhcJfedbcjcj)h^cf?cKcddbcjdfcjegdb"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1958
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1959
    const-string v3, "bsmt"

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1960
    const-string v3, "ssmt"

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1964
    :try_start_1
    const-string v3, "013BeeKhc!gbcdPgghTcjdgdgdfeh"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1965
    const-string v4, "006bGcdCgghQcj"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1969
    :catchall_0
    :try_start_2
    const-string v3, "012DeeOhcWdjcdcjcidg>dhhg"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1970
    const-string v4, "spmt"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1974
    :catchall_1
    :try_start_3
    const-string v3, "012CeeZhcLde0hc-ecdbcgcidf g"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1975
    const-string v4, "0098cjDhc1ecdbcgcidf1g"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1979
    :catchall_2
    :try_start_4
    const-string v3, "007Cee)hcKfcefefcd"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1980
    const-string v4, "005%dcPhihRdc"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1984
    :catchall_3
    :try_start_5
    const-string v3, "012(ee hc)gccg9hj*cbPhRcjcfch"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1985
    const-string v2, "009 egcgKhj6cbTh?cjcfch"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    return-object v1

    :catchall_5
    move-exception v0

    .line 1992
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public X()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1999
    :try_start_0
    const-string v1, "0366cecjWg2cgdbcd(g*dkGdhVcg kPcdefefcddbcjdkdifefefbdgdgccfkdfgcdfccdgdhdidhfb"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2000
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 2005
    :cond_0
    const-string v2, "014>ee!hcKdgcfcecjfcLh5efcbdc*cMef"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    return-object v0

    .line 2012
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/16 v4, 0x1b

    const-string v5, ","

    if-le v2, v4, :cond_2

    .line 2013
    :try_start_1
    const-string v2, "086:dgdgdfehideidgdgdfehidcfceZd5ceebcddccdYc[cdLh?efiddcQhih_dcidegcgKhjZcbOhCcjcfchidcfQbQcecjcjCh$dcfkcdUgcb2idcf^h^cjTchNcggccgEhj@edidcf$hGcj;chAcggccgThj;fjidQcHcd^khMefVcXceVkd"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2014
    const-string v4, "031ih5cjcbLh9deceVkh3idhbdbTdh(cgceVc+dbcggccgcdLhDcj3gMdcchdeceFkh"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2018
    :cond_2
    const-string v2, "SSID,BSSID,hessid,anqpDomainId,capabilities,level,frequency,channelWidth,centerFreq0,centerFreq1,timestamp,seen,isAutoJoinCandidate,numIpConfigFailures,blackListTimestamp,untrusted,numConnection,numUsage,distanceCm,distanceSdCm,flags"

    .line 2021
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2022
    const-string v4, "039MeccdegcddgefcdHg]idMih3cjcbHh.deceJkh+iddb!dh3cgce7c+dbcggccgcd3h:cj=g$dcchdeceFkh"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2026
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2027
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 2028
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2030
    array-length v8, v2

    move-object v10, v0

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_7

    aget-object v11, v2, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 2032
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 2033
    const-string v12, "004Fdgdgdfeh"

    invoke-static {v12}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2034
    invoke-static {v6, v11}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2035
    :try_start_3
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v12

    goto :goto_4

    .line 2039
    :cond_3
    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-object v10, v12

    goto :goto_3

    .line 2040
    :cond_4
    :try_start_4
    const-string v12, "012(cfceUdIceebcddccd7c]cd@h;ef"

    invoke-static {v12}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2041
    invoke-static {v6, v11}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 2042
    const-string v13, "[IBSS]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v10, v0

    goto :goto_4

    .line 2047
    :cond_5
    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2049
    :cond_6
    invoke-static {v6, v11}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2055
    :cond_7
    :goto_4
    :try_start_5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_1

    .line 2059
    :cond_8
    array-length v8, v4

    move v9, v3

    :goto_5
    if-ge v9, v8, :cond_a

    aget-object v10, v4, v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 2061
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 2062
    invoke-static {v6, v10}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_9

    move-object v11, v0

    goto :goto_6

    .line 2063
    :cond_9
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_6
    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2069
    :cond_a
    :try_start_7
    const-string v8, "018Gcdeffhedfifjfj=kGcffcRh%ef@dLdbcjYgh]cg"

    invoke-static {v8}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 2070
    const-string v9, "021,cdeffhedfifjfjfgcffcdhdhfcYh8ef-dOdbcj ghTcg"

    invoke-static {v9}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2075
    :catchall_3
    :try_start_8
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-ge v8, v9, :cond_c

    .line 2076
    const-string v8, "0091cecjSjdSdjcdcj2hRef"

    invoke-static {v8}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2077
    const-string v8, "0093cecj]jdRdjcdcjOh)ef"

    invoke-static {v8}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v6, :cond_b

    move-object v9, v0

    goto :goto_7

    :cond_b
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_7
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 2081
    :catchall_4
    :cond_c
    :try_start_9
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto/16 :goto_1

    :cond_d
    return-object v5

    :catchall_5
    move-exception v1

    .line 2086
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_e
    return-object v0
.end method

.method public Y()Z
    .locals 4

    const/4 v0, 0x0

    .line 2093
    :try_start_0
    const-string v1, "036[cecjNgQcgdbcdFgNdk^dh3cg!kVcdefefcddbcjdkfegbdidegjfbccfkdfgcdfccdgdhdidhfb"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2094
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 2098
    :cond_0
    const-string v2, "009CefQc[cecg^c<dgcfcecj"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 2101
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    return v0
.end method

.method public Z()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2139
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "013fd7cgdbcf2fPcfGd_cbcdcjegdb"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2140
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2141
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2142
    const-string v4, "010dOcgdbcf,hZefefdbcgef"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    :cond_0
    :goto_0
    move-object v5, v4

    .line 2146
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 2147
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v5, :cond_0

    .line 2149
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2154
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2155
    const-string v7, "009dLcgdbcf(hXefefdbcg"

    invoke-static {v7}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v5, :cond_3

    .line 2157
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2159
    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2161
    :cond_4
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2162
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    const/4 v7, 0x0

    if-nez v5, :cond_5

    .line 2164
    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2166
    :cond_5
    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2170
    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 2171
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 2173
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_2
    return-object v0
.end method

.method public a(IIZ)Landroid/location/Location;
    .locals 2

    .line 1571
    :try_start_0
    const-string v0, "039ScecjWg5cgdbcd9g^dkCdh4cg1k8cdefefcddbcjdkdifefefbdgdgccgcdfdefbccdjejfedidhdfejde"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    const-string v0, "045*cecj,gGcgdbcd3g!dk=dhScg<kXcdefefcddbcjdkdifefefbdgdgcceidifegigjfcejdddeehccdjejfedidhdfejde"

    .line 1572
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1574
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1577
    invoke-static {}, Lcom/mob/tools/utils/b;->a()Lcom/mob/tools/utils/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/mob/tools/utils/b;->a(Landroid/content/Context;IIZ)Landroid/location/Location;

    move-result-object p1

    return-object p1

    .line 1575
    :cond_1
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "Method \'getLocation\' can not be called from Main Thread"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 1580
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)Ljava/lang/String;
    .locals 6

    .line 950
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 951
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    xor-long/2addr v0, v2

    .line 953
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 954
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 956
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, p1, :cond_2

    const/4 v4, 0x2

    .line 958
    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    rem-int/2addr v5, v4

    if-nez v5, :cond_0

    const-string v4, "004*cfJb%cecg"

    goto :goto_1

    :cond_0
    const-string v4, "003Ecjcb!k"

    :goto_1
    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 959
    const-string v5, "0046cfWbYcecg"

    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1a

    .line 961
    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    add-int/lit8 v5, v3, 0x1

    .line 962
    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 965
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->insert(II)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 968
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x28

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 600
    const-string v0, "\n"

    const/4 v1, 0x0

    .line 602
    :try_start_0
    invoke-static {p2, p1}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 604
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 605
    const-string p1, ""

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 608
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v1
.end method

.method public a(Z)Ljava/lang/String;
    .locals 3

    .line 877
    iget-object v0, p0, Lcom/mob/tools/a/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    iget-object p1, p0, Lcom/mob/tools/a/b;->b:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 883
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->aR()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 885
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v1, v0

    :goto_0
    const/16 v2, 0x28

    if-nez p1, :cond_2

    .line 889
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v2, :cond_2

    .line 891
    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/a/b;->aQ()Ljava/lang/String;

    move-result-object v1

    .line 895
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v2, :cond_3

    .line 896
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/a/b;->b:Ljava/lang/String;

    return-object p1

    .line 902
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/mob/tools/a/b;->aT()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 904
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 907
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v2, :cond_4

    .line 908
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/a/b;->b:Ljava/lang/String;

    return-object p1

    .line 912
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v2, :cond_6

    .line 914
    :cond_5
    invoke-virtual {p0, v2}, Lcom/mob/tools/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_7

    .line 920
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 921
    invoke-direct {p0, v0}, Lcom/mob/tools/a/b;->l(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 923
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_7
    :goto_2
    return-object v0
.end method

.method public a(ZZZ)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1279
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/a/b;->aV()Ljava/util/ArrayList;

    move-result-object v0

    .line 1280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1281
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 1285
    invoke-direct {p0}, Lcom/mob/tools/a/b;->aU()Ljava/util/HashMap;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 1287
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    move v6, v5

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1290
    :try_start_1
    iget-object v8, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v8}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v8

    invoke-interface {v8, v7, v5}, Lcom/mob/tools/a/f;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    .line 1292
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v7, v3

    :goto_2
    if-eqz v7, :cond_9

    if-eqz p1, :cond_2

    .line 1296
    invoke-direct {p0, v7}, Lcom/mob/tools/a/b;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 1300
    invoke-direct {p0, v7}, Lcom/mob/tools/a/b;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 1304
    :cond_3
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1305
    const-string v9, "003dCciee"

    invoke-static {v9}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_7

    if-eqz v4, :cond_4

    .line 1310
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_3

    .line 1312
    :cond_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v9, v3

    .line 1314
    :goto_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v10, :cond_6

    .line 1322
    :try_start_3
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 1325
    :catchall_1
    :try_start_4
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v6, v9, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-object v6, v3

    :goto_4
    if-nez v6, :cond_5

    .line 1328
    :try_start_5
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_5

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5
    move-object v9, v6

    .line 1329
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    .line 1332
    :cond_6
    const-string v10, "004>cjceCkh"

    invoke-static {v10}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    :cond_7
    const-string v9, "007ihAcgefcddbcj"

    invoke-static {v9}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    const-string v9, "006hDcjceebdcWh"

    invoke-static {v9}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v10, v10, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v10, :cond_8

    const-string v10, "1"

    goto :goto_6

    :cond_8
    const-string v10, "0"

    :goto_6
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    const-string v9, "0169egcdcgefLcIdfcjefYc3cedcdcdhcdCkh"

    invoke-static {v9}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v7, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    const-string v9, "0148dcceef7c:ddNdg!ceWch*dhcdCkh"

    invoke-static {v9}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz p3, :cond_1

    if-eqz v6, :cond_1

    .line 1341
    invoke-direct {p0, v4}, Lcom/mob/tools/a/b;->a(Ljava/util/HashMap;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_1

    :cond_a
    return-object v1

    :catchall_3
    move-exception p1

    .line 1346
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 1347
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 1476
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1481
    :cond_0
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1482
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public a(Lcom/mob/tools/utils/ReflectHelper$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/utils/ReflectHelper$a<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 2216
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2217
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2218
    new-instance v1, Lcom/mob/tools/a/b$3;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/a/b$3;-><init>(Lcom/mob/tools/a/b;Lcom/mob/tools/utils/ReflectHelper$a;)V

    .line 2233
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v3, "016<cgWh^eecdef ch7cgfcOhZcf+h@cd$ihTcg"

    .line 2234
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const-class v4, Landroid/content/IntentFilter;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 2233
    invoke-static {v2, v3, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2237
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2239
    invoke-interface {p1, v0}, Lcom/mob/tools/utils/ReflectHelper$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->ac:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->ac:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 147
    :cond_0
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v3, "009chDefTcCghci4h chef"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 148
    :goto_0
    iget-object v3, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/mob/tools/a/b;->aM()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/mob/tools/a/b;->aP()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/mob/tools/a/b;->aO()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/mob/tools/a/b;->aN()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/mob/tools/utils/a;->ac:Ljava/lang/Boolean;

    .line 149
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->ac:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aA()Ljava/lang/String;
    .locals 2

    .line 2963
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->F:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2964
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->F:Ljava/lang/String;

    return-object v0

    .line 2968
    :cond_0
    :try_start_0
    const-string v0, "0174cgdbdkebdbcecg$gAdk5d+dcceVc9egdbcgVk"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2970
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 2972
    :goto_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object v0, v1, Lcom/mob/tools/utils/a;->F:Ljava/lang/String;

    return-object v0
.end method

.method public aB()I
    .locals 1

    .line 3024
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/NtFetcher;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/NtFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/NtFetcher;->getDtNtType()I

    move-result v0

    return v0
.end method

.method public aC()Ljava/lang/String;
    .locals 3

    .line 3037
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->G:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3038
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->G:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3042
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    .line 3043
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    .line 3042
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3046
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3048
    const-string v2, "001f"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3051
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 3053
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object v0, v1, Lcom/mob/tools/utils/a;->G:Ljava/lang/String;

    return-object v0
.end method

.method public aD()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3058
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->H:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 3059
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->H:Ljava/util/HashMap;

    return-object v0

    .line 3061
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/mob/tools/utils/a;->H:Ljava/util/HashMap;

    .line 3062
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3064
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->aC()Ljava/lang/String;

    move-result-object v1

    .line 3065
    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3066
    const-string v3, "0041cjce9kh"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3067
    const-string v2, "003dNciee"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3069
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 3071
    :goto_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v1, v1, Lcom/mob/tools/utils/a;->H:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public aE()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 3083
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->I:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3084
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->I:Ljava/util/ArrayList;

    return-object v0

    .line 3086
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/mob/tools/utils/a;->I:Ljava/util/ArrayList;

    .line 3087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3089
    :try_start_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 3090
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 3092
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v2, :cond_1

    .line 3094
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3095
    iget-object v4, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 3096
    const-string v5, "004XcjceUkh"

    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3097
    const-string v4, "003d@ciee"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3098
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3102
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 3104
    :cond_2
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v1, v1, Lcom/mob/tools/utils/a;->I:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public aF()Ljava/lang/String;
    .locals 2

    .line 3114
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->J:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3115
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->J:Ljava/lang/String;

    return-object v0

    .line 3117
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, v0, Lcom/mob/tools/utils/a;->J:Ljava/lang/String;

    .line 3118
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->J:Ljava/lang/String;

    return-object v0
.end method

.method public aG()Z
    .locals 6

    const/4 v0, 0x0

    .line 3128
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 3129
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3135
    :cond_0
    new-instance v1, Lcom/mob/tools/utils/f;

    invoke-direct {v1}, Lcom/mob/tools/utils/f;-><init>()V

    .line 3136
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/f;->a(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    .line 3140
    :goto_0
    iget-object v4, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/mob/tools/utils/f;->b(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    const/4 v4, 0x2

    if-lt v2, v4, :cond_3

    .line 3145
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/a/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3147
    :cond_3
    iget-object v5, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/mob/tools/utils/f;->c(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    if-lt v2, v4, :cond_5

    .line 3152
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/a/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3154
    :cond_5
    iget-object v5, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/mob/tools/utils/f;->d(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v3, :cond_6

    add-int/lit8 v2, v2, 0x1

    :cond_6
    if-lt v2, v4, :cond_7

    .line 3159
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/a/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3161
    :cond_7
    invoke-virtual {v1}, Lcom/mob/tools/utils/f;->a()I

    move-result v5

    if-ne v5, v3, :cond_8

    add-int/lit8 v2, v2, 0x1

    :cond_8
    if-lt v2, v4, :cond_9

    .line 3166
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/a/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_9
    if-lt v2, v4, :cond_a

    .line 3169
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/a/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3171
    :cond_a
    iget-object v5, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/mob/tools/utils/f;->e(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v3, :cond_b

    add-int/lit8 v2, v2, 0x1

    :cond_b
    if-lt v2, v4, :cond_c

    .line 3176
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/a/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3178
    :cond_c
    iget-object v5, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/mob/tools/utils/f;->f(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v3, :cond_d

    add-int/lit8 v2, v2, 0x1

    :cond_d
    if-lt v2, v4, :cond_e

    .line 3183
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/a/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3185
    :cond_e
    invoke-virtual {v1}, Lcom/mob/tools/utils/f;->b()I

    move-result v1

    if-ne v1, v3, :cond_f

    add-int/lit8 v2, v2, 0x1

    :cond_f
    if-lt v2, v4, :cond_10

    .line 3190
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/a/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_10
    if-lt v2, v4, :cond_11

    .line 3193
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/a/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 3196
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 3198
    :cond_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/a/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aH()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 3284
    :try_start_0
    const-string v2, "013fd-cgdbcfJfkhkVcdcjegdb"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3285
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3287
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3288
    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3289
    array-length v2, v1

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    const/4 v2, 0x0

    .line 3290
    aget-object v2, v1, v2

    .line 3292
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    .line 3294
    const-string v1, "MemTotal:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3295
    const-string v1, "015c9dbLc0cedcfgVhkGdbcgchdgcdekFh"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3296
    :cond_1
    const-string v1, "008[fg9hkFgccg]hhe"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3297
    const-string v1, "0143egcgDhh8fgYhkWdbcgchdgcdekEh"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3298
    :cond_2
    const-string v1, "013Vfg@hkSdi?i)cecddcceebdcNhe"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3299
    const-string v1, "019FceSi.cecddcceebdcLh8fg6hk:dbcgchdgcdek-h"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3300
    :cond_3
    const-string v1, "007Wdicf;c_cdGihe"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3301
    const-string v1, "016Ncecf4c=cd_ihKfg@hk1dbcgchdgcdek*h"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3302
    :cond_4
    const-string v1, "Inactive:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3303
    const-string v1, "018$cdcjcecf$c=cdLihPfgYhkIdbcgchdgcdekVh"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 3312
    :cond_5
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 3308
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v3, :cond_6

    .line 3312
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    .line 3314
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return-object v0

    :catchall_3
    move-exception v0

    if-eqz v3, :cond_7

    .line 3312
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v1

    .line 3314
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 3317
    :cond_7
    :goto_3
    throw v0
.end method

.method public aI()Z
    .locals 6

    .line 3354
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->L:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 3355
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->L:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3359
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 3360
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->ag()Ljava/lang/String;

    move-result-object v2

    .line 3362
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_1

    .line 3363
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3365
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0xc

    if-lt v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :catchall_0
    :cond_1
    move v2, v0

    .line 3378
    :goto_0
    :try_start_2
    const-string v3, "006?ckcdcedbAkQcd"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    move v0, v4

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 3383
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3385
    const-string v1, ""

    .line 3387
    :cond_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3389
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/mob/tools/utils/a;->L:Ljava/lang/Boolean;

    return v0
.end method

.method public aJ()Z
    .locals 2

    .line 3425
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->X:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 3426
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->X:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3428
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/mob/tools/a/b;->b(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->X:Ljava/lang/Boolean;

    .line 3429
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->X:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aK()Ljava/lang/String;
    .locals 6

    .line 3433
    const-string v0, ""

    const/4 v1, 0x0

    .line 3435
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 3436
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3438
    :cond_0
    const-string v2, "026Ycecj=gCcgdbcdWgRdkce5ddQdkdicf9c=cdJiKcd.c%chdhJb?cg%h@ce)g"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/app/Application;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentProcessName"

    new-array v4, v1, [Ljava/lang/Class;

    check-cast v4, [Ljava/lang/Class;

    .line 3439
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    .line 3440
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3441
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3442
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 3443
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 3447
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MobPush getProcessName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public aL()J
    .locals 3

    .line 3459
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mob/tools/a/f;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3460
    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 3462
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public aa()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2182
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_5

    const/4 v1, 0x0

    .line 2184
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "017fd,cgdbcf\'fcc4chYfgOcgcd9ihIcgef"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2185
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2188
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2189
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 2192
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2193
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2194
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 2195
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2196
    array-length v6, v4

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v4, v7

    .line 2197
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2198
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2201
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2204
    :cond_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 2205
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 2207
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_5
    :goto_2
    return-object v0
.end method

.method public ab()I
    .locals 2

    .line 2248
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2249
    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2251
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public ac()I
    .locals 2

    .line 2260
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2261
    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2263
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public ad()Ljava/lang/String;
    .locals 3

    .line 2270
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v0

    const-string v1, "0144cgdbdkci\'h=cgcj\'h$dcdk5jhkCcb"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/mob/tools/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public ae()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 2283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x2

    .line 2284
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "006Zef^gGcfcecg)g"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "004g3ceHcHce"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 2285
    :goto_0
    const-string v3, "available"

    if-ge v4, v1, :cond_0

    aget-object v5, v2, v4

    .line 2286
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v7, -0x1

    .line 2287
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    const-string v3, "004EegcgVhh"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2289
    const-string v3, "005c-dbUcQcedc"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2293
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2295
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->G()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2297
    const-string v4, "006RefTgWcfcecgYg"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2301
    :catchall_0
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2303
    const-string v4, "004gRceIc$ce"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2307
    :catchall_1
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2311
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/StatFs;

    .line 2317
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v7

    mul-long/2addr v5, v7

    .line 2318
    invoke-virtual {v4}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v7

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v9

    mul-long/2addr v7, v9

    .line 2319
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v9

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v11

    mul-long/2addr v9, v11

    .line 2321
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 2322
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2323
    const-string v4, "004(egcg2hh"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2324
    const-string v4, "005c)db5cAcedc"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public af()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v1, -0x1

    .line 2336
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "available"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2337
    const-string v3, "005cUdb7cBcedc"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2338
    const-string v3, "005Ocdefdjdbec"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2339
    const-string v3, "009cb>cg=h ef5b!dbdcKg"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2342
    :try_start_0
    const-string v1, "008Rcecf^cJcd=i9cd2cRch"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2343
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 2344
    const-string v4, "013<ee=hc0fgKhkXdbcgchdfcjegdb"

    invoke-static {v4}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2345
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    const-string v1, "005c0db1c-cedc"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2349
    const-string v1, "005!cdefdjdbec"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v3, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eqz v2, :cond_0

    const-wide/16 v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2350
    const-string v1, "009cbDcg-h7ef\'bOdbdc2g"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v3, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public ag()Ljava/lang/String;
    .locals 2

    .line 2390
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->aa:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2391
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->aa:Ljava/lang/String;

    return-object v0

    .line 2393
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {}, Lcom/mob/tools/utils/c;->a()Lcom/mob/tools/utils/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/utils/c;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->aa:Ljava/lang/String;

    .line 2394
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public ah()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public ai()Z
    .locals 8

    .line 2447
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->ab:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2448
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->ab:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x4

    .line 2451
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "020Qcfdb_kNdk3c3dbDdTgedb<b:cjeccbdkUkUceeecdefci"

    .line 2452
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "032ghXdkcgdbebXi]dkcecj4g=cgdbcd4gRdkckRdAdbefBhgWdkcdcjef@cXcedcdcKhEcg"

    .line 2453
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "028AdbcgeedkQkhNdbeccfce;c_dk%hgTckNd7dbefQhgOdkHkLcecjceee<hWcg"

    .line 2454
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "027kCdb@hUdkefYbOcdekcbcicbdkcg2hg+cdcg%hZcfScPefFc2dbcgceeeUh"

    .line 2455
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2457
    aget-object v5, v1, v2

    .line 2459
    :try_start_0
    iget-object v6, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Lcom/mob/tools/a/f;->b(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2460
    iget-object v5, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/mob/tools/utils/a;->ab:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :catchall_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2468
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "test"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 2470
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v5, v0, v2

    .line 2471
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "035ghYdkcgdbeb]i8dkcecj_g5cgdbcd4g!dkckXdAdbefOhgSdkgf4d-dbefKhgUeicgcd@gOee,h"

    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2472
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->ab:Ljava/lang/Boolean;

    return v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2480
    :cond_4
    :try_start_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "036ghVdkcgdbebOi>dkcecjLg=cgdbcdCgUdkckYd7dbef_hgXdkgfHdEdbefYhgEgbFhQdc<dhZcgef"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2482
    :try_start_3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "035ghHdkcgdbebNiTdkcecj*g[cgdbcd5g4dkck=d*dbef@hg dkgf[dEdbefNhgXeicgcdAg+ee4h"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 2483
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->ab:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return v4

    .line 2489
    :catch_0
    :try_start_4
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->ab:Ljava/lang/Boolean;

    return v4

    .line 2486
    :catch_1
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->ab:Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return v4

    :catchall_2
    const/4 v0, 0x0

    .line 2505
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "006fd:cgdbcfIf"

    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "005fk<ceDdLef"

    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move v0, v3

    .line 2508
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    .line 2509
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "006]ck(d%dbef2hg"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_2

    .line 2511
    :cond_5
    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/mob/tools/utils/a;->ab:Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2518
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 2520
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_3
    return v0

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 2514
    :goto_4
    :try_start_8
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v1, :cond_6

    .line 2518
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 2520
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 2524
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->ab:Ljava/lang/Boolean;

    return v3

    :catchall_5
    move-exception v0

    if-eqz v1, :cond_7

    .line 2518
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    .line 2520
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 2523
    :cond_7
    :goto_6
    throw v0

    .line 2496
    :catch_5
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->ab:Ljava/lang/Boolean;

    return v4

    .line 2493
    :catch_6
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->ab:Ljava/lang/Boolean;

    return v4
.end method

.method public aj()Z
    .locals 3

    .line 2552
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->w:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2553
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 2555
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->w:Ljava/lang/Boolean;

    .line 2557
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ak()Z
    .locals 3

    const/4 v0, 0x0

    .line 2579
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    .line 2580
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    .line 2579
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public al()Z
    .locals 3

    const/4 v0, 0x0

    .line 2598
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    .line 2599
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "development_settings_enabled"

    .line 2598
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public am()Z
    .locals 8

    const/4 v0, 0x0

    .line 2614
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2617
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v3, "016McgRhLeecdef%chZcgfc[hYcf?h:cd.ihQcg"

    .line 2618
    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/BroadcastReceiver;

    aput-object v6, v5, v0

    const-class v6, Landroid/content/IntentFilter;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 2617
    invoke-static {v2, v3, v1, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2620
    const-string v2, "plugged"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v4, :cond_0

    move v0, v7

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    .line 2623
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return v0
.end method

.method public an()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ao()Z
    .locals 4

    .line 2636
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->x:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2637
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->x:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2640
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/mob/tools/a/f;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2641
    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcom/mob/tools/utils/a;->x:Ljava/lang/Boolean;

    .line 2642
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v1, v1, Lcom/mob/tools/utils/a;->x:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 2644
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 2646
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/mob/tools/utils/a;->x:Ljava/lang/Boolean;

    .line 2647
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->x:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ap()Z
    .locals 4

    const/4 v0, 0x0

    .line 2658
    :try_start_0
    const-string v1, "014bccd$dk!d]cgdbckchgbdbef^c"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2659
    const-string v2, "014bccd@dkXd8cgdbckchffdbcgBc"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2662
    :cond_0
    :try_start_1
    const-string v2, "-1"

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move v2, v3

    .line 2668
    :goto_1
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_1

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    :catchall_1
    :cond_1
    return v0
.end method

.method public aq()Z
    .locals 5

    .line 2679
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->y:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2680
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 2682
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 2683
    :goto_0
    iget-object v4, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v4, v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 2684
    :goto_1
    iget-object v4, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/mob/tools/utils/a;->y:Ljava/lang/Boolean;

    .line 2685
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ar()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public as()Ljava/lang/String;
    .locals 2

    .line 2700
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2701
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->z:Ljava/lang/String;

    return-object v0

    .line 2705
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->z:Ljava/lang/String;

    .line 2706
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2707
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->z:Ljava/lang/String;

    return-object v0

    .line 2710
    :cond_1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 2711
    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 2712
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 2713
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_2

    .line 2715
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2717
    :cond_2
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2720
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mob/tools/utils/a;->z:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2723
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 2725
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->z:Ljava/lang/String;

    return-object v0
.end method

.method public at()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2733
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->A:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2734
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->A:Ljava/util/HashMap;

    return-object v0

    .line 2736
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/mob/tools/utils/a;->A:Ljava/util/HashMap;

    .line 2737
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2739
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_1

    .line 2742
    :try_start_1
    const-string v2, "mbmt"

    const-string v3, "026@cecjLg^cgdbcd;g_dk!bHcecg3g!eccecg*h.dk.ch,dcWhdb8dbcjch"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2747
    :catchall_0
    :try_start_2
    const-string v2, "wmt"

    const-string v3, "021Tcecj_g9cgdbcd6g-dkRb6cecgHgFeccecgChUdkeccdegcd"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2752
    :catchall_1
    :try_start_3
    const-string v2, "gmt"

    const-string v3, "029@cecj)g^cgdbcdMgKdkBb7cecgCg<eccecg h?dkdcdbcfce9c6cddbcjdkee-dKef"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2757
    :catchall_2
    :try_start_4
    const-string v2, "nmt"

    const-string v3, "020Zcecj3gQcgdbcd-g.dkFbJcecg)gVeccecgUhBdkcjegcf"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2762
    :catchall_3
    :try_start_5
    const-string v2, "003Fdb=c(ee"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "025*cecjYgLcgdbcdYg)dk.bDcecg[g:eccecgSh!dkcbefebdkYbXdbef:c"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 2768
    :catchall_4
    :cond_1
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v1, v1, Lcom/mob/tools/utils/a;->A:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public au()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2776
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2777
    const-string v1, "053fWefchef,fghiFcdcfKhVefZfEefchef(chkf?cf_d1cb_fZcfNdTcbed!fYcfAd)cbegcgPhjf-efcfcedccdcjeecccfcbcgccegcgXhj"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2778
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2779
    const-string v2, "012Zcfcbcgcg(h cjXc]feAd7cbgbek"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2782
    :cond_0
    const-string v1, "053f4efchefYfghiAcdcf=h1efGfQefchef8chkf8cfXd$cbDfJcf$dXcbed fQcfId3cbegcgNhjfBcf$d)cbcdcjegdbccGkCcdcjccegcg3hj"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2783
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2784
    const-string v2, "008k+cdcjfePdTcbgbek"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2787
    :cond_1
    const-string v1, "053fNefchef6fghiLcdcfDhHefVfPefchef.chkf-cf.d@cb+fBcf]dOcbed)fTcf3d5cbegcg>hjfYcf2d7cbcdcjegdbccLk,ceckccegcgWhj"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2788
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2789
    const-string v2, "008k]ceckfe.d1cbgbek"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public av()Ljava/lang/String;
    .locals 3

    .line 2819
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->B:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2820
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->B:Ljava/lang/String;

    return-object v0

    .line 2823
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/mob/tools/utils/a;->B:Ljava/lang/String;

    .line 2824
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->B:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2826
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public aw()Ljava/lang/String;
    .locals 2

    .line 2837
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->C:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2838
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->C:Ljava/lang/String;

    return-object v0

    .line 2843
    :cond_0
    :try_start_0
    const-string v0, "015Ccgdbdkebcbcddc0g4dkegdcce3iHdbcg"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2845
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 2847
    :goto_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object v0, v1, Lcom/mob/tools/utils/a;->C:Ljava/lang/String;

    return-object v0
.end method

.method public ax()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2859
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2861
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    const/4 v1, 0x0

    .line 2865
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "013fd2cgdbcfGf\'cj@hcfghi"

    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2866
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2867
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2868
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2870
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    .line 2872
    new-array v5, v4, [J

    .line 2873
    const-string v6, "006@ecdccecjed$e"

    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v6, v5}, Lcom/mob/tools/a/b;->a(Ljava/lang/String;Ljava/lang/String;[J)V

    .line 2875
    const-string v6, "012gKdbeccjgcdcdbecfkcdegcd"

    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-wide v8, v5, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2877
    const-string v6, "014Hcb4d]eccecgRg!gcdcdbecfkcdegcd"

    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-wide v8, v5, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2878
    new-array v4, v4, [J

    .line 2879
    const-string v5, "007Ocg7kCcjAhcMed?e"

    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5, v4}, Lcom/mob/tools/a/b;->a(Ljava/lang/String;Ljava/lang/String;[J)V

    .line 2881
    const-string v1, "016gSdbeccjgcdcdbecfeMhPdcdccbdccecg"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-wide v5, v4, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2883
    const-string v1, "018FcbBdQeccecg2gMgcdcdbecfe-h$dcdccbdccecg"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-wide v5, v4, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2890
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .line 2886
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_3

    .line 2890
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    .line 2892
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_3
    move-exception v0

    if-eqz v2, :cond_2

    .line 2890
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v1

    .line 2892
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 2895
    :cond_2
    :goto_2
    throw v0

    .line 2899
    :cond_3
    :goto_3
    :try_start_6
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 2902
    :try_start_7
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2903
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2904
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2906
    const-string v2, "013;cb@d@eccecg@g(gcdcdbecdi2dd"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2908
    const-string v2, "011gTdbeccjgcdcdbecdi]dd"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v1

    .line 2910
    :try_start_8
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_4

    :catchall_6
    move-exception v1

    .line 2914
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_4
    return-object v0
.end method

.method public ay()Ljava/lang/String;
    .locals 2

    .line 2925
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->D:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2926
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->D:Ljava/lang/String;

    return-object v0

    .line 2930
    :cond_0
    :try_start_0
    const-string v0, "020Leeef[kBdk3ihUcgefcddbcjdkebceefIhAebcecjUg"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2932
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 2934
    :goto_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object v0, v1, Lcom/mob/tools/utils/a;->D:Ljava/lang/String;

    return-object v0
.end method

.method public az()Ljava/lang/String;
    .locals 2

    .line 2944
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->E:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2945
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->E:Ljava/lang/String;

    return-object v0

    .line 2949
    :cond_0
    :try_start_0
    const-string v0, "016Wcgdbdk.d@cgdb_g?cbcf=cYdkebdbcecgLg"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2951
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 2953
    :goto_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object v0, v1, Lcom/mob/tools/utils/a;->E:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 315
    :try_start_0
    const-string v1, "-1"

    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v2, v2, Lcom/mob/tools/utils/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v1, Lcom/mob/tools/utils/a;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 319
    :cond_0
    :try_start_1
    const-string v1, "036LcecjMgDcgdbcdBg+dk9dhCcgJk]cdefefcddbcjdkdifefefbdgdgccfkdfgcdfccdgdhdidhfb"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object v0, v1, Lcom/mob/tools/utils/a;->f:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    monitor-exit p0

    return-object v0

    .line 326
    :cond_1
    :try_start_2
    const-string v2, "017See=hc9fedbcjcj!hVcfTc]cddbcjdfcjegdb"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 328
    const-string v2, "007)ee]hcLdgdgdfeh"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v2, Lcom/mob/tools/utils/a;->f:Ljava/lang/String;

    .line 330
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v1, Lcom/mob/tools/utils/a;->f:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    .line 334
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 336
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .line 1487
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1492
    :cond_0
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1493
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    return-void
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 341
    :try_start_0
    const-string v1, "-1"

    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v2, v2, Lcom/mob/tools/utils/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v1, Lcom/mob/tools/utils/a;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 345
    :cond_0
    :try_start_1
    const-string v1, "036Fcecj9g>cgdbcd3g2dk dhAcg:kXcdefefcddbcjdkdifefefbdgdgccfkdfgcdfccdgdhdidhfb"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 346
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object v0, v1, Lcom/mob/tools/utils/a;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    monitor-exit p0

    return-object v0

    .line 352
    :cond_1
    :try_start_2
    const-string v2, "017<ee3hc fedbcjcjRhPcf$c_cddbcjdfcjegdb"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 354
    const-string v2, "008@ee8hcVeidgdgdfeh"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 355
    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    iput-object v1, v2, Lcom/mob/tools/utils/a;->e:Ljava/lang/String;

    .line 356
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v1, Lcom/mob/tools/utils/a;->e:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    .line 360
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 362
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v0

    const/16 v1, 0x40

    invoke-interface {v0, p1, v1}, Lcom/mob/tools/a/f;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 778
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    .line 779
    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/Data;->MD5([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 781
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 792
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 794
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->Z:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->Z:Ljava/lang/String;

    return-object v0

    .line 370
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 371
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 372
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object v0, v1, Lcom/mob/tools/utils/a;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->g:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->g:Ljava/lang/String;

    return-object v0

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/mob/tools/utils/a;->g:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1212
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1213
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1214
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lcom/mob/tools/a/f;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1215
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1218
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 395
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->h()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->j()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1431
    :try_start_0
    const-string v1, "023]cecj2gAcgdbcdCg4dkcfdbcj1chHcj;cRdkfedbcjRch+ckZc"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 1432
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v2, "019BcfQbh<cfcidgAhVdcegffJhFcgUk!cdefefcddbcj"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1433
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1435
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->M:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized h()Ljava/lang/String;
    .locals 8

    monitor-enter p0

    .line 414
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->j()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 415
    monitor-exit p0

    return-object v1

    .line 418
    :cond_0
    :try_start_1
    const-string v0, "-1"

    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v2, v2, Lcom/mob/tools/utils/a;->M:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->M:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    monitor-exit p0

    return-object v0

    .line 421
    :cond_1
    :try_start_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-nez v0, :cond_2

    .line 423
    monitor-exit p0

    return-object v1

    .line 430
    :cond_2
    :try_start_3
    const-string v2, "035BcecjXg cgdbcdFg8dkFdh8cgWk0cdefefcddbcjdkfcfbdiehccffgbejdefbccdgdhdidhfb"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_3

    const-string v2, "-1"

    iget-object v3, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v3, v3, Lcom/mob/tools/utils/a;->M:Ljava/lang/String;

    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-eqz v2, :cond_3

    .line 433
    :try_start_4
    invoke-direct {p0, v0}, Lcom/mob/tools/a/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 434
    :try_start_5
    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object v0, v2, Lcom/mob/tools/utils/a;->M:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v0, v1

    .line 436
    :goto_0
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 440
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 441
    const-string v2, "iemt"

    invoke-direct {p0, v2}, Lcom/mob/tools/a/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 443
    iget-object v5, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v6, "008Kcfdb]kkf4dk>g cd"

    invoke-static {v6}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mob/tools/utils/ResHelper;->getCacheRootFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 444
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 445
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 448
    :try_start_7
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 449
    :try_start_8
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 450
    instance-of v6, v1, [C

    if-eqz v6, :cond_4

    .line 451
    check-cast v1, [C

    check-cast v1, [C

    .line 452
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v2, v1

    .line 455
    :cond_4
    :try_start_9
    new-array v1, v4, [Ljava/io/Closeable;

    aput-object v5, v1, v3

    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_2
    move-exception v1

    goto :goto_2

    :catchall_3
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    :goto_2
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v5, v2, v3

    invoke-static {v2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 456
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 459
    :cond_5
    :goto_3
    monitor-exit p0

    return-object v2

    .line 461
    :cond_6
    :try_start_a
    iget-object v2, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    const-string v5, "008Xcfdb-kkfTdkIg-cd"

    invoke-static {v5}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mob/tools/utils/ResHelper;->getCacheRootFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 462
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 463
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 467
    :cond_7
    :try_start_b
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 468
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 469
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 470
    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 471
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 473
    :try_start_d
    new-array v1, v4, [Ljava/io/Closeable;

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_4
    move-exception v1

    goto :goto_4

    :catchall_5
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    :goto_4
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v2, v4, v3

    invoke-static {v4}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 474
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception v1

    goto :goto_5

    :catchall_7
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 477
    :goto_5
    :try_start_e
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 480
    :goto_6
    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 2128
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/mob/tools/a/f;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2797
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2798
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2800
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2801
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2802
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2803
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2805
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2807
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 2808
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 2810
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 2812
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized i()[Ljava/lang/String;
    .locals 14

    monitor-enter p0

    .line 485
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->j()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 486
    monitor-exit p0

    return-object v1

    .line 489
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 491
    :try_start_2
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_1

    .line 493
    monitor-exit p0

    return-object v1

    .line 496
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->h()Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 498
    const-string v3, "-1"

    .line 500
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v3, p0, Lcom/mob/tools/a/b;->g:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 504
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 505
    :cond_3
    const-string v3, "035Ececj*g$cgdbcdPg%dk*dhCcgZk cdefefcddbcjdkfcfbdiehccffgbejdefbccdgdhdidhfb"

    invoke-static {v3}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-ge v3, v5, :cond_5

    .line 506
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mob/tools/a/b;->g:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v3, v4

    :goto_0
    const/4 v5, 0x5

    if-gt v3, v5, :cond_5

    .line 510
    :try_start_4
    invoke-direct {p0, v2, v3}, Lcom/mob/tools/a/b;->a(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-object v5, v1

    .line 514
    :goto_1
    :try_start_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 515
    const-string v5, "-1"

    .line 517
    :cond_4
    iget-object v6, p0, Lcom/mob/tools/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    const/4 v2, 0x4

    .line 523
    new-array v3, v2, [[Ljava/lang/String;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "012 cgcddcdkeeefEkHdkcdUkh6cd"

    .line 524
    invoke-static {v7}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v6, v3, v4

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "017^cgdbdkcgcddcdk_kAcdcbcddkcdDkhOcded"

    .line 525
    invoke-static {v8}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "017UcgdbdkcgcddcdkGkScdcbcddkcd!khNcdfj"

    invoke-static {v8}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    aput-object v7, v3, v5

    new-array v7, v5, [Ljava/lang/String;

    const-string v8, "015AcgdbdkcgcddcdkdbMhk2dkcd,khWcd"

    .line 526
    invoke-static {v8}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    aput-object v7, v3, v6

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "016:cgdbdkcgcddcdkdb+hk;dkcdGkhScdfj"

    .line 527
    invoke-static {v7}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "016Tcgdbdkcgcddcdkdb6hk6dkcd+khTcdfi"

    invoke-static {v7}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v5, 0x3

    aput-object v6, v3, v5

    .line 530
    iget-object v5, p0, Lcom/mob/tools/a/b;->h:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    .line 531
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 533
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mob/tools/a/b;->h:Ljava/util/ArrayList;

    move v5, v4

    :goto_3
    if-ge v5, v2, :cond_a

    .line 534
    aget-object v6, v3, v5

    .line 535
    array-length v7, v6

    move v8, v4

    :goto_4
    if-ge v8, v7, :cond_9

    aget-object v9, v6, v8

    .line 536
    invoke-virtual {p0, v9}, Lcom/mob/tools/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 537
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 538
    array-length v10, v9

    move v11, v4

    :goto_5
    if-ge v11, v10, :cond_8

    aget-object v12, v9, v11

    .line 539
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 540
    iget-object v13, p0, Lcom/mob/tools/a/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catchall_1
    move-exception v2

    .line 548
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 551
    :cond_a
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 552
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception v0

    .line 555
    :try_start_7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 557
    :cond_b
    monitor-exit p0

    return-object v1

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 3333
    :try_start_0
    const-string v1, "037Hcecj\'g;cgdbcd=g2ckdkcfdbcgThUdkce5ddRdkdi<dd_ej]dReffgcecjceeeThEcgfedb]kd9ceVc"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3334
    const-string v2, "014dhRcgPk7cdefefcddbcjdhdbejOd"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3335
    const-string v2, "0116cjdbWchVffcgdbckchej6d"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->C()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, p1, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3343
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 5

    .line 572
    const-string v0, ""

    const-string v1, "|"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->m()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 573
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->B()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .line 577
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_1

    const/4 v3, 0x0

    .line 578
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 580
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/mob/tools/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 582
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 3

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->m()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 590
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/a/b;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget v0, v0, Lcom/mob/tools/utils/a;->h:I

    if-lez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget v0, v0, Lcom/mob/tools/utils/a;->h:I

    return v0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v1, v0, Lcom/mob/tools/utils/a;->h:I

    .line 619
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget v0, v0, Lcom/mob/tools/utils/a;->h:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .line 625
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v1, v1, Lcom/mob/tools/utils/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->i:Ljava/lang/String;

    return-object v0

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/mob/tools/utils/a;->i:Ljava/lang/String;

    .line 629
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .line 637
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->j:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->j:Ljava/lang/String;

    return-object v0

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->j:Ljava/lang/String;

    .line 641
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .line 646
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->k:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->k:Ljava/lang/String;

    return-object v0

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->k:Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->l:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->l:Ljava/lang/String;

    return-object v0

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/tools/utils/a;->l:Ljava/lang/String;

    .line 659
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 5

    .line 665
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 667
    iget-object v1, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const-string v3, "x"

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 672
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 4

    .line 679
    const-string v0, "-1"

    :try_start_0
    const-string v1, "-2"

    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v2, v2, Lcom/mob/tools/utils/a;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v1, Lcom/mob/tools/utils/a;->m:Ljava/lang/String;

    return-object v0

    .line 682
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 684
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object v0, v1, Lcom/mob/tools/utils/a;->m:Ljava/lang/String;

    .line 685
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v1, Lcom/mob/tools/utils/a;->m:Ljava/lang/String;

    return-object v0

    .line 688
    :cond_1
    const-string v2, "014)ee7hc7dgcd]k3ej0dh2cgce-c^dbcg"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 689
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 692
    :cond_2
    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object v1, v2, Lcom/mob/tools/utils/a;->m:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 695
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 696
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object v0, v1, Lcom/mob/tools/utils/a;->m:Ljava/lang/String;

    .line 697
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 4

    .line 702
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->n:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->n:Ljava/lang/String;

    return-object v0

    .line 706
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/mob/tools/a/b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->n:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 712
    :try_start_0
    const-string v2, "035Zcecj^g6cgdbcdMg5dkOdh8cg)kHcdefefcddbcjdkfcfbdiehccffgbejdefbccdgdhdidhfb"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mob/tools/a/b;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 713
    const-string v2, "0182eeLhc5dgcd:kLej;dh2cgce,cXdbcgdeceVkh"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 714
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 717
    :cond_2
    iget-object v2, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iput-object v0, v2, Lcom/mob/tools/utils/a;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 721
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_3
    return-object v1
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 751
    const-string v0, "-1"

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 3

    .line 761
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->o:Ljava/lang/String;

    return-object v0

    .line 765
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v0

    .line 766
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->C()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    .line 765
    invoke-interface {v0, v1, v2}, Lcom/mob/tools/a/f;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 767
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 768
    iget-object v1, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mob/tools/utils/a;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 770
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 772
    :goto_0
    iget-object v0, p0, Lcom/mob/tools/a/b;->j:Lcom/mob/tools/utils/a;

    iget-object v0, v0, Lcom/mob/tools/utils/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/mob/tools/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/NtFetcher;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/NtFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/NtFetcher;->getNtType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Z
    .locals 3

    const/4 v0, 0x0

    .line 806
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->A()Ljava/lang/String;

    move-result-object v1

    .line 807
    const-string v2, "004>eccdegcd"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0026gdee"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "002<ihee"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "002,ibee"

    .line 808
    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "002Ofiee"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    .line 810
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 2

    .line 817
    invoke-virtual {p0}, Lcom/mob/tools/a/b;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 818
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "004ZcjdbcjYh"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 822
    :cond_0
    const-string v1, "002Jgdee"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "002>ihee"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "002Pibee"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "002Afiee"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 826
    :cond_1
    const-string v1, "0042eccdegcd"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 827
    const-string v0, "004^eccdegcd"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 831
    :cond_2
    const-string v0, "005$db.cbh1cg"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 823
    :cond_3
    :goto_0
    const-string v0, "004 cf]h\'dcdc"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 819
    :cond_4
    :goto_1
    const-string v0, "004,cjdbcjVh"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
