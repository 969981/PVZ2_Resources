.class public final Lcom/tencent/open/utils/ApkExternalInfoTool;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/utils/ApkExternalInfoTool$ApkExternalInfo;
    }
.end annotation


# static fields
.field public static final CHANNELID:Ljava/lang/String; = "channelNo"

.field private static final a:Lcom/tencent/open/utils/ZipLong;

.field private static final b:Lcom/tencent/open/utils/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 116
    new-instance v0, Lcom/tencent/open/utils/ZipLong;

    const-wide/32 v1, 0x6054b50

    invoke-direct {v0, v1, v2}, Lcom/tencent/open/utils/ZipLong;-><init>(J)V

    sput-object v0, Lcom/tencent/open/utils/ApkExternalInfoTool;->a:Lcom/tencent/open/utils/ZipLong;

    .line 119
    new-instance v0, Lcom/tencent/open/utils/ZipShort;

    const v1, 0x96fb

    invoke-direct {v0, v1}, Lcom/tencent/open/utils/ZipShort;-><init>(I)V

    sput-object v0, Lcom/tencent/open/utils/ApkExternalInfoTool;->b:Lcom/tencent/open/utils/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/tencent/open/utils/ZipShort;
    .locals 1

    .line 14
    sget-object v0, Lcom/tencent/open/utils/ApkExternalInfoTool;->b:Lcom/tencent/open/utils/ZipShort;

    return-object v0
.end method

.method private static a(Ljava/io/RandomAccessFile;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    .line 178
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 179
    sget-object v2, Lcom/tencent/open/utils/ApkExternalInfoTool;->a:Lcom/tencent/open/utils/ZipLong;

    invoke-virtual {v2}, Lcom/tencent/open/utils/ZipLong;->getBytes()[B

    move-result-object v2

    .line 180
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x0

    .line 186
    aget-byte v4, v2, v4

    if-ne v3, v4, :cond_1

    .line 188
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    const/4 v4, 0x1

    .line 189
    aget-byte v4, v2, v4

    if-ne v3, v4, :cond_1

    .line 191
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    const/4 v4, 0x2

    .line 192
    aget-byte v5, v2, v4

    if-ne v3, v5, :cond_1

    .line 194
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    const/4 v5, 0x3

    .line 195
    aget-byte v5, v2, v5

    if-ne v3, v5, :cond_1

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    .line 212
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 214
    new-array v0, v4, [B

    .line 215
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 217
    new-instance v1, Lcom/tencent/open/utils/ZipShort;

    invoke-direct {v1, v0}, Lcom/tencent/open/utils/ZipShort;-><init>([B)V

    invoke-virtual {v1}, Lcom/tencent/open/utils/ZipShort;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 222
    :cond_0
    new-array v0, v0, [B

    .line 223
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    return-object v0

    :cond_1
    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    .line 203
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 204
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    goto :goto_0

    .line 208
    :cond_2
    new-instance p0, Ljava/util/zip/ZipException;

    const-string v0, "archive is not a ZIP archive"

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 134
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    invoke-static {v1}, Lcom/tencent/open/utils/ApkExternalInfoTool;->a(Ljava/io/RandomAccessFile;)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    .line 140
    :cond_0
    :try_start_2
    new-instance v2, Lcom/tencent/open/utils/ApkExternalInfoTool$ApkExternalInfo;

    invoke-direct {v2, v0}, Lcom/tencent/open/utils/ApkExternalInfoTool$ApkExternalInfo;-><init>(Lcom/tencent/open/utils/ApkExternalInfoTool$1;)V

    .line 141
    invoke-virtual {v2, p0}, Lcom/tencent/open/utils/ApkExternalInfoTool$ApkExternalInfo;->a([B)V

    .line 142
    iget-object p0, v2, Lcom/tencent/open/utils/ApkExternalInfoTool$ApkExternalInfo;->a:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    throw p0
.end method

.method public static readChannelId(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const-string v0, "channelNo"

    invoke-static {p0, v0}, Lcom/tencent/open/utils/ApkExternalInfoTool;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
