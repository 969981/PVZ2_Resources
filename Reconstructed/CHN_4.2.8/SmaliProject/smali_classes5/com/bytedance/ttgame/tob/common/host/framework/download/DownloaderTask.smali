.class public final Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;
.super Ljava/lang/Object;
.source "DownloaderTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 &2\u00020\u0001:\u0001&B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J0\u0010\t\u001a\u00020\n2\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000cj\u0008\u0012\u0004\u0012\u00020\r`\u000e2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0006\u0010\u0012\u001a\u00020\nJ\u0012\u0010\u0013\u001a\u00020\n2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J(\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0003J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\rH\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u0011H\u0002J\u0006\u0010$\u001a\u00020\nJ\u0010\u0010%\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0003H\u0003R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;",
        "",
        "initConfig",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;",
        "(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;)V",
        "downloaderStream",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;",
        "hasCanceled",
        "",
        "addRepeat",
        "",
        "list",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "item",
        "repeatCount",
        "",
        "cancelDownload",
        "checkIntercept",
        "interceptor",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInterceptor;",
        "downloadOnce",
        "url",
        "startTime",
        "",
        "info",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;",
        "getDownloadTime",
        "getDownloaderStream",
        "getOutputStream",
        "Ljava/io/FileOutputStream;",
        "file",
        "Ljava/io/File;",
        "isCompleteCode",
        "code",
        "startDownload",
        "startDownloadSubThread",
        "Companion",
        "ch_framework_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final CALLBACK_PROCESS_INTERVAL:I = 0x3

.field private static final CALLBACK_PROCESS_INTERVAL_TIME:I = 0x4b0

.field private static final CHECK_COUNT:I = 0x3f

.field public static final Companion:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask$Companion;

.field private static final NANO_UNIT:J = 0xf4240L

.field private static final TAG:Ljava/lang/String; = "DownloaderTask"

.field private static final WAIT_TIME:J = 0x64L

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static final completeCodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private downloaderStream:Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;

.field private hasCanceled:Z

.field private final initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask$Companion;

    const/4 v0, 0x4

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->completeCodeList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;)V
    .locals 1

    const-string v0, "initConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    return-void
.end method

.method private final addRepeat(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x2

    aput-object v3, v0, v4

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "92184eaed6366c90e807a89dd93c0233"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-gt v2, p3, :cond_1

    .line 151
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v2, p3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final checkIntercept(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInterceptor;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "e78d6cb62f6005a12196bb555ce5befd"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 189
    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInterceptor;->intercept()Z

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 190
    :cond_2
    new-instance p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;

    const/4 v0, 0x4

    const-string v1, "download fail by downloader interceptor!"

    invoke-direct {p1, v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private final downloadOnce(Ljava/lang/String;JLcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;)V
    .locals 29

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const/4 v6, 0x1

    aput-object v5, v0, v6

    const/4 v5, 0x2

    aput-object p4, v0, v5

    const/4 v5, 0x3

    aput-object p5, v0, v5

    sget-object v7, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v8, "0ea8052909d3107ab5d0aec0e11b58d5"

    invoke-static {v0, v1, v7, v4, v8}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v14, -0x1

    const/4 v15, 0x0

    .line 94
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->getDownloaderStream(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->downloaderStream:Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;

    .line 95
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 96
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->getFullTempFileName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-direct {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->getOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v7, 0x2000

    :try_start_2
    new-array v10, v7, [B

    .line 102
    iget-object v7, v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->downloaderStream:Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->getContentLength()J

    move-result-wide v16

    const-wide/16 v7, 0x0

    move-wide/from16 v18, v7

    move-wide/from16 v20, v18

    const/4 v9, 0x0

    .line 106
    :goto_0
    invoke-virtual {v12, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-eq v11, v14, :cond_3

    .line 107
    invoke-virtual {v13, v10, v4, v11}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/lit8 v22, v9, 0x1

    int-to-long v4, v11

    add-long v20, v20, v4

    and-int/lit8 v4, v22, 0x3f

    if-nez v4, :cond_2

    const/16 v4, 0x64

    int-to-long v4, v4

    mul-long v4, v4, v20

    .line 111
    div-long v4, v4, v16

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v25, v4, v7

    const-wide/16 v27, 0x3

    cmp-long v9, v25, v27

    if-ltz v9, :cond_2

    sub-long v25, v23, v18

    const-wide/16 v27, 0x4b0

    cmp-long v9, v25, v27

    if-ltz v9, :cond_2

    .line 116
    invoke-virtual/range {p5 .. p5}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getDownloaderListener()Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->getDownloadTime(J)J

    move-result-wide v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v7, p4

    move-wide/from16 v8, v20

    move-object/from16 v25, v10

    move-object v6, v11

    move-wide/from16 v10, v16

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-wide/from16 v12, v18

    :try_start_3
    invoke-virtual/range {v7 .. v13}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->withProcessInfo(JJJ)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;->onProgress(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V

    goto :goto_1

    :cond_1
    move-object/from16 v25, v10

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    .line 117
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getDownloaderInterceptor()Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInterceptor;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->checkIntercept(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInterceptor;)V

    move-wide v7, v4

    move/from16 v9, v22

    move-wide/from16 v18, v23

    goto :goto_2

    :cond_2
    move-object/from16 v25, v10

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move/from16 v9, v22

    :goto_2
    move-object/from16 v10, v25

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v27, v12

    move-object/from16 v28, v13

    .line 122
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->flush()V

    .line 123
    invoke-virtual/range {p5 .. p5}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getDownloaderListener()Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-direct {v1, v2, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->getDownloadTime(J)J

    move-result-wide v12

    move-object/from16 v7, p4

    move-wide/from16 v8, v20

    move-wide/from16 v10, v16

    invoke-virtual/range {v7 .. v13}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->withProcessInfo(JJJ)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;->onProgress(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V

    .line 124
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->getFullFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 126
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 128
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 129
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    :cond_6
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;

    move-object/from16 v13, v28

    check-cast v13, Ljava/io/Closeable;

    invoke-virtual {v0, v13}, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->closeSafely(Ljava/io/Closeable;)V

    .line 143
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;

    move-object/from16 v12, v27

    check-cast v12, Ljava/io/Closeable;

    invoke-virtual {v0, v12}, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->closeSafely(Ljava/io/Closeable;)V

    .line 144
    iget-object v0, v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->downloaderStream:Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->readEnd()V

    .line 145
    :cond_7
    iput-object v15, v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->downloaderStream:Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v27, v12

    move-object v13, v15

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v12, v15

    move-object v13, v12

    .line 133
    :goto_3
    :try_start_4
    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->deleteAll()V

    .line 134
    instance-of v2, v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;

    if-nez v2, :cond_9

    .line 136
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_8

    .line 137
    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;

    const-string v3, "io exception when download!"

    const/4 v4, 0x3

    invoke-direct {v2, v4, v3, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 139
    :cond_8
    new-instance v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;

    const-string v3, "unknown error when download!"

    invoke-direct {v2, v14, v3, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 135
    :cond_9
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v0

    .line 142
    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;

    check-cast v13, Ljava/io/Closeable;

    invoke-virtual {v2, v13}, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->closeSafely(Ljava/io/Closeable;)V

    .line 143
    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;

    check-cast v12, Ljava/io/Closeable;

    invoke-virtual {v2, v12}, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->closeSafely(Ljava/io/Closeable;)V

    .line 144
    iget-object v2, v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->downloaderStream:Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->readEnd()V

    .line 145
    :cond_a
    iput-object v15, v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->downloaderStream:Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;

    throw v0
.end method

.method private final getDownloadTime(J)J
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e236fb396bf817a6b7dec25578ed0bc5"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 156
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method private final getDownloaderStream(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "2c0929fabc0370ac62f78cf61bddcfae"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;

    return-object p1

    .line 161
    :cond_0
    :try_start_0
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion;

    invoke-virtual {v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream$Companion;->createDownloaderStream(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 163
    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;

    const-string v2, "create downloader stream error!"

    invoke-direct {v1, v0, v2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final getOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "a581f036933a0213409270ef6cafca70"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/io/FileOutputStream;

    return-object p1

    .line 170
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 174
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 177
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not create file path, parent path = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 182
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 184
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;

    const/4 v1, 0x2

    const-string v2, "get output stream error!"

    invoke-direct {v0, v1, v2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final isCompleteCode(I)Z
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "10d46e8928ca504d5105ba0543a7272c"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 85
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->completeCodeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$ondA4u6lKCotbnG7fwZ5DTlbezA(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->startDownload$lambda-0(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;)V

    return-void
.end method

.method private static final startDownload$lambda-0(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "cb4ca3892569db753356da63dc7b1fd7"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->initConfig:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;

    invoke-direct {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->startDownloadSubThread(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;)V

    return-void
.end method

.method private final startDownloadSubThread(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "09caf997ae2b47a784c0edfcb641cbfe"

    invoke-static {v0, v7, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 42
    new-instance v6, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    .line 43
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;

    invoke-virtual {v0, v8}, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderUtils;->genDownloaderId(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;)Ljava/lang/String;

    move-result-object v13

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getUrl()Ljava/lang/String;

    move-result-object v14

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getSavePath()Ljava/lang/String;

    move-result-object v15

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getFileName()Ljava/lang/String;

    move-result-object v16

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getTempFileName()Ljava/lang/String;

    move-result-object v17

    move-object v12, v6

    .line 42
    invoke-direct/range {v12 .. v17}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getRetryCount()I

    move-result v2

    invoke-direct {v7, v12, v0, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->addRepeat(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getBackUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getRetryCount()I

    move-result v3

    invoke-direct {v7, v12, v2, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->addRepeat(Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getDownloaderListener()Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {v7, v10, v11}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->getDownloadTime(J)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->withDownloadTime(J)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;->onStart(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V

    .line 56
    :cond_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v15, v14, 0x1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v5

    move-wide v3, v10

    move-object v9, v5

    move-object v5, v6

    move-object v8, v6

    move-object/from16 v6, p1

    .line 58
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->downloadOnce(Ljava/lang/String;JLcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;)V

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getDownloaderListener()Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {v7, v10, v11}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->getDownloadTime(J)J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->withDownloadTime(J)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;->onSuccess(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V
    :try_end_0
    .catch Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloader error, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "DownloaderTask"

    invoke-static {v3, v1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-eq v14, v1, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;->getCode()I

    move-result v1

    invoke-direct {v7, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->isCompleteCode(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, v7, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->hasCanceled:Z

    if-eqz v1, :cond_3

    goto :goto_3

    .line 78
    :cond_3
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object v6, v8

    move v14, v15

    const/4 v9, 0x1

    move-object/from16 v8, p1

    goto/16 :goto_1

    .line 67
    :cond_4
    :goto_3
    iget-boolean v1, v7, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->hasCanceled:Z

    if-eqz v1, :cond_5

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getDownloaderListener()Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 69
    invoke-direct {v7, v10, v11}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->getDownloadTime(J)J

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->withDownloadTime(J)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    move-result-object v1

    .line 70
    new-instance v3, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;

    const/4 v4, 0x5

    const-string v5, "download has been canceled!"

    invoke-direct {v3, v4, v5, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    invoke-interface {v0, v1, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;->onFail(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;)V

    goto :goto_4

    .line 73
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInitConfig;->getDownloaderListener()Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-direct {v7, v10, v11}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->getDownloadTime(J)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;->withDownloadTime(J)Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderListener;->onFail(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderException;)V

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public final cancelDownload()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ef08da6401c0f0318d94393e9f983cde"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->hasCanceled:Z

    .line 36
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->downloaderStream:Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/http/DownloaderStream;->cancelRequest()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public final startDownload()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "5ac41d513aa531ddf2996870605b1be6"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DownloaderTask"

    const-string v1, "startDownload!"

    .line 30
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/utils/DownloaderExecutors;->getDownloadIO()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$DownloaderTask$ondA4u6lKCotbnG7fwZ5DTlbezA;

    invoke-direct {v1, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$DownloaderTask$ondA4u6lKCotbnG7fwZ5DTlbezA;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
