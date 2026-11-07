.class final Lct/bk;
.super Lct/bi;
.source "TL"


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "load libtencentloc.so myself"

    .line 23
    invoke-direct {p0, p2, v0}, Lct/bi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lct/bk;->a:Landroid/content/Context;

    .line 25
    new-instance p1, Lct/bk$1;

    invoke-direct {p1, p0}, Lct/bk$1;-><init>(Lct/bk;)V

    invoke-virtual {p1}, Lct/bk$1;->start()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/BufferedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 109
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 110
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)Z
    .locals 7

    .line 41
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lct/bk;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "libtencentloc.so"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 46
    invoke-virtual {p0}, Lct/bk;->b()V

    .line 51
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 54
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    return v2
.end method

.method final b()V
    .locals 8

    .line 63
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lct/bk;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "libtencentloc.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 68
    :try_start_0
    iget-object v3, p0, Lct/bk;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "libtencentloc"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    invoke-static {v3, v4}, Lct/bk;->a(Ljava/io/InputStream;Ljava/io/BufferedOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 77
    :goto_0
    invoke-static {v4}, Lct/b$a;->a(Ljava/io/Closeable;)V

    .line 78
    invoke-static {v3}, Lct/b$a;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-object v4, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_5

    :catch_1
    move-object v3, v1

    move-object v4, v3

    :catch_2
    :goto_1
    :try_start_3
    const-string v0, "/res/raw/libtencentloc"

    .line 74
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lct/bk;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {v0, v2}, Lct/bk;->a(Ljava/io/InputStream;Ljava/io/BufferedOutputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {v2}, Lct/b$a;->a(Ljava/io/Closeable;)V

    :goto_2
    invoke-static {v0}, Lct/b$a;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-object v1, v2

    goto :goto_4

    :catchall_3
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_3
    invoke-static {v2}, Lct/b$a;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lct/b$a;->a(Ljava/io/Closeable;)V

    throw v1

    :catch_4
    move-object v0, v1

    :catch_5
    :goto_4
    invoke-static {v1}, Lct/b$a;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object v1, v4

    .line 77
    :goto_5
    invoke-static {v1}, Lct/b$a;->a(Ljava/io/Closeable;)V

    .line 78
    invoke-static {v3}, Lct/b$a;->a(Ljava/io/Closeable;)V

    throw v0
.end method
