.class public Lcom/mob/tools/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private volatile c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/io/File;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mob/tools/a;->a:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mob/tools/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    .line 29
    iput p3, p0, Lcom/mob/tools/a;->e:I

    if-nez p2, :cond_0

    .line 31
    const-string p2, "null"

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 33
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 35
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/mob/tools/a;->f:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/mob/MobSDK;->getContextSafely()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/a;->d:Ljava/io/File;

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_2

    .line 38
    iget-object p1, p0, Lcom/mob/tools/a;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-void
.end method

.method private a(Z)Ljava/io/File;
    .locals 14

    .line 100
    iget-object v0, p0, Lcom/mob/tools/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    .line 101
    const-string v4, "_"

    if-eqz v0, :cond_4

    array-length v5, v0

    if-lez v5, :cond_4

    .line 103
    array-length v5, v0

    move v6, v3

    :goto_0
    if-ge v1, v5, :cond_3

    aget-object v7, v0, v1

    .line 104
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 105
    iget-object v9, p0, Lcom/mob/tools/a;->f:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 107
    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-nez p1, :cond_1

    .line 108
    array-length v10, v9

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    const/4 v10, 0x2

    .line 110
    :try_start_0
    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 111
    iget v11, p0, Lcom/mob/tools/a;->e:I

    if-ge v10, v11, :cond_1

    .line 112
    invoke-direct {p0, v8}, Lcom/mob/tools/a;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 114
    new-instance v8, Ljava/io/File;

    iget-object v11, p0, Lcom/mob/tools/a;->d:Ljava/io/File;

    iget-object v12, p0, Lcom/mob/tools/a;->f:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v12, v4, v13, v4, v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/mob/tools/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v11, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    return-object v8

    :cond_0
    return-object v7

    :catchall_0
    move-exception v7

    .line 124
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 127
    :cond_1
    array-length v7, v9

    if-le v7, v3, :cond_2

    .line 129
    :try_start_1
    aget-object v7, v9, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v7, v6, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_1
    move-exception v7

    .line 134
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_3
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/mob/tools/a;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/mob/tools/a;->f:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v4, v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    .line 141
    :cond_4
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/mob/tools/a;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/mob/tools/a;->f:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v4, v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    return-object p1
.end method

.method static synthetic a(Lcom/mob/tools/a;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mob/tools/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method private static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_2

    .line 215
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 61
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(J)V
    .locals 9

    .line 194
    sget-object v0, Lcom/mob/tools/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a;->d:Ljava/io/File;

    new-instance v2, Lcom/mob/tools/a$2;

    invoke-direct {v2, p0}, Lcom/mob/tools/a$2;-><init>(Lcom/mob/tools/a;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 200
    array-length v2, v1

    if-lez v2, :cond_1

    .line 202
    array-length v2, v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v6, v3

    :goto_0
    if-ge v6, v2, :cond_0

    aget-object v7, v1, v6

    .line 203
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    cmp-long p1, v4, p1

    if-ltz p1, :cond_1

    .line 206
    array-length p1, v1

    :goto_1
    if-ge v3, p1, :cond_1

    aget-object p2, v1, v3

    .line 207
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 211
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/mob/tools/a$a;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 155
    :cond_0
    sget-object v0, Lcom/mob/tools/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/a;->d:Ljava/io/File;

    new-instance v2, Lcom/mob/tools/a$1;

    invoke-direct {v2, p0}, Lcom/mob/tools/a$1;-><init>(Lcom/mob/tools/a;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 161
    array-length v2, v1

    if-lez v2, :cond_4

    .line 162
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 163
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 164
    invoke-direct {p0, v6}, Lcom/mob/tools/a;->b(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v7, :cond_1

    goto :goto_4

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 171
    :try_start_1
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 172
    :try_start_2
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    :goto_1
    :try_start_3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 175
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v7, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    const-string v12, "utf-8"

    invoke-direct {v11, v7, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {p1, v11}, Lcom/mob/tools/a$a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_2
    invoke-interface {p1}, Lcom/mob/tools/a$a;->a()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 178
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    :cond_3
    :try_start_4
    new-array v5, v8, [Ljava/io/Closeable;

    aput-object v10, v5, v3

    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 184
    new-array v5, v8, [Ljava/io/Closeable;

    aput-object v9, v5, v3

    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 186
    :goto_2
    invoke-direct {p0, v6}, Lcom/mob/tools/a;->c(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_0
    move-exception v5

    move-object v7, v10

    goto :goto_3

    :catchall_1
    move-exception v5

    goto :goto_3

    :catchall_2
    move-exception v5

    move-object v9, v7

    .line 181
    :goto_3
    :try_start_5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 183
    :try_start_6
    new-array v5, v8, [Ljava/io/Closeable;

    aput-object v7, v5, v3

    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 184
    new-array v5, v8, [Ljava/io/Closeable;

    aput-object v9, v5, v3

    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    goto :goto_2

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_3
    move-exception p1

    .line 183
    new-array v1, v8, [Ljava/io/Closeable;

    aput-object v7, v1, v3

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 184
    new-array v1, v8, [Ljava/io/Closeable;

    aput-object v9, v1, v3

    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 186
    invoke-direct {p0, v6}, Lcom/mob/tools/a;->c(Ljava/lang/String;)V

    .line 187
    throw p1

    .line 190
    :cond_4
    monitor-exit v0

    return-void

    :catchall_4
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 6

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 71
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 73
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object p1, v0

    .line 75
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 78
    :cond_1
    sget-object v1, Lcom/mob/tools/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_1
    invoke-direct {p0, p2}, Lcom/mob/tools/a;->a(Z)Ljava/io/File;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 83
    :try_start_2
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 84
    :try_start_3
    new-instance v5, Ljava/io/BufferedWriter;

    invoke-direct {v5, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 85
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 86
    invoke-virtual {v5, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 90
    :try_start_5
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v5, p1, v2

    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 91
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v4, p1, v2

    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 93
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1}, Lcom/mob/tools/a;->c(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v0, v5

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_2

    :catchall_3
    move-exception p1

    move-object v4, v0

    .line 88
    :goto_2
    :try_start_6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 90
    :try_start_7
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 91
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v4, p1, v2

    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 93
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 95
    :goto_3
    monitor-exit v1

    return-void

    :catchall_4
    move-exception p1

    .line 90
    new-array v5, v3, [Ljava/io/Closeable;

    aput-object v0, v5, v2

    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 91
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 93
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/mob/tools/a;->c(Ljava/lang/String;)V

    .line 94
    throw p1

    :catchall_5
    move-exception p1

    .line 95
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw p1
.end method
