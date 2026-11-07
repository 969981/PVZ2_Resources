.class public Lgbsdk/common/host/abua;
.super Lcom/bytedance/common/utility/Logger$ILogWritter;
.source "ALoggerImpl.java"


# static fields
.field private static Ed:Ljava/lang/String; = "volc_log"

.field private static Ee:Ljava/lang/String; = "cache"

.field private static Ef:Ljava/lang/String; = "logs"

.field private static Eg:Z = false

.field private static Eh:Lcom/apm/insight/log/ILog; = null

.field private static TAG:Ljava/lang/String; = "ALoggerImpl"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/bytedance/common/utility/Logger$ILogWritter;-><init>()V

    return-void
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abua;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "cdc9704eca06c639817b4f23c6823ee3"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_3

    .line 130
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_2

    const-string p0, "OSDK:UnknownHostException"

    return-object p0

    .line 133
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_3
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 137
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 139
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :catchall_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 143
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lgbsdk/common/host/abua;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "c7613b8bde6362b783eb1fdcadbf15f1"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 53
    :cond_0
    sget-object v1, Lgbsdk/common/host/abqs;->BM:Lgbsdk/common/host/abqs;

    invoke-virtual {v1, p0}, Lgbsdk/common/host/abqs;->al(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lgbsdk/common/host/abua;->Eg:Z

    .line 57
    invoke-static {}, Lgbsdk/common/host/abqp;->dS()Lgbsdk/common/host/abqp;

    move-result-object v1

    iget-object v1, v1, Lgbsdk/common/host/abqp;->BA:Lgbsdk/common/host/abqp$ad;

    .line 63
    sget-boolean v3, Lgbsdk/common/host/abua;->Eg:Z

    if-eqz v3, :cond_1

    .line 66
    new-instance v0, Ljava/io/File;

    sget-object v3, Lgbsdk/common/host/abua;->Ed:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    sget-object v4, Lgbsdk/common/host/abua;->Ee:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 67
    new-instance v0, Ljava/io/File;

    sget-object v3, Lgbsdk/common/host/abua;->Ed:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    sget-object v5, Lgbsdk/common/host/abua;->Ef:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v3, v4

    const/4 v2, 0x1

    .line 86
    :goto_0
    new-instance v5, Lcom/apm/insight/log/VLogConfig$Builder;

    invoke-direct {v5, p0}, Lcom/apm/insight/log/VLogConfig$Builder;-><init>(Landroid/content/Context;)V

    iget v6, v1, Lgbsdk/common/host/abqp$ad;->BK:I

    .line 87
    invoke-virtual {v5, v6}, Lcom/apm/insight/log/VLogConfig$Builder;->setLogFileExpDays(I)Lcom/apm/insight/log/VLogConfig$Builder;

    move-result-object v5

    iget v6, v1, Lgbsdk/common/host/abqp$ad;->maxDirSize:I

    .line 88
    invoke-virtual {v5, v6}, Lcom/apm/insight/log/VLogConfig$Builder;->setMaxDirSize(I)Lcom/apm/insight/log/VLogConfig$Builder;

    move-result-object v5

    iget v6, v1, Lgbsdk/common/host/abqp$ad;->perSize:I

    .line 89
    invoke-virtual {v5, v6}, Lcom/apm/insight/log/VLogConfig$Builder;->setPerSize(I)Lcom/apm/insight/log/VLogConfig$Builder;

    move-result-object v5

    .line 90
    invoke-virtual {v5, v4}, Lcom/apm/insight/log/VLogConfig$Builder;->setBufferDirPath(Ljava/lang/String;)Lcom/apm/insight/log/VLogConfig$Builder;

    move-result-object v4

    .line 91
    invoke-virtual {v4, v3}, Lcom/apm/insight/log/VLogConfig$Builder;->setLogDirPath(Ljava/lang/String;)Lcom/apm/insight/log/VLogConfig$Builder;

    move-result-object v3

    .line 92
    invoke-virtual {v3, v0}, Lcom/apm/insight/log/VLogConfig$Builder;->setCompress(Z)Lcom/apm/insight/log/VLogConfig$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v2}, Lcom/apm/insight/log/VLogConfig$Builder;->setEncrypt(Z)Lcom/apm/insight/log/VLogConfig$Builder;

    move-result-object v0

    iget v2, v1, Lgbsdk/common/host/abqp$ad;->level:I

    .line 94
    invoke-virtual {v0, v2}, Lcom/apm/insight/log/VLogConfig$Builder;->setLevel(I)Lcom/apm/insight/log/VLogConfig$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v1}, Lgbsdk/common/host/abqp$ad;->dU()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/log/VLogConfig$Builder;->setSubProcessMaxDirSizeRatio(F)Lcom/apm/insight/log/VLogConfig$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/apm/insight/log/VLogConfig$Builder;->build()Lcom/apm/insight/log/VLogConfig;

    move-result-object v0

    .line 100
    sget-boolean v1, Lgbsdk/common/host/abua;->Eg:Z

    invoke-static {v1}, Lcom/apm/insight/log/VLog;->setDebug(Z)V

    const v1, 0x392f0

    .line 103
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apm/insight/log/VLog;->createInstance(Lcom/apm/insight/log/VLogConfig;Ljava/lang/String;)Lcom/apm/insight/log/ILog;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abua;->Eh:Lcom/apm/insight/log/ILog;

    .line 105
    new-instance v0, Lgbsdk/common/host/abua;

    invoke-direct {v0}, Lgbsdk/common/host/abua;-><init>()V

    invoke-static {v0}, Lcom/bytedance/common/utility/Logger;->registerLogHandler(Lcom/bytedance/common/utility/Logger$ILogWritter;)V

    .line 107
    sget-object v0, Lgbsdk/common/host/abqs;->BM:Lgbsdk/common/host/abqs;

    invoke-virtual {v0, p0}, Lgbsdk/common/host/abqs;->am(Landroid/content/Context;)I

    move-result p0

    const/4 v0, -0x1

    if-gt p0, v0, :cond_2

    const/4 p0, 0x4

    .line 111
    :cond_2
    invoke-static {p0}, Lcom/bytedance/common/utility/Logger;->setLogLevel(I)V

    return-void
.end method


# virtual methods
.method public logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abua;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "73f0b40c2a8dd8b53f885993845f99ec"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    sget-object v0, Lgbsdk/common/host/abua;->Eh:Lcom/apm/insight/log/ILog;

    if-eqz v0, :cond_1

    .line 174
    invoke-interface {v0, p1, p2}, Lcom/apm/insight/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_1
    sget-boolean v0, Lgbsdk/common/host/abua;->Eg:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->isRunningCloud()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    sget-object v2, Lgbsdk/common/host/abua;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6f3e7ff4009661715940ea21f023571a"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 184
    invoke-virtual {p0, p1, p2}, Lgbsdk/common/host/abua;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lgbsdk/common/host/abua;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgbsdk/common/host/abua;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public logE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abua;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d15fa66c230fafdb6b3361f58d3b56bb"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 231
    :cond_0
    sget-object v0, Lgbsdk/common/host/abua;->Eh:Lcom/apm/insight/log/ILog;

    if-eqz v0, :cond_1

    .line 232
    invoke-interface {v0, p1, p2}, Lcom/apm/insight/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_1
    sget-boolean v0, Lgbsdk/common/host/abua;->Eg:Z

    if-nez v0, :cond_2

    .line 236
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    sget-object v2, Lgbsdk/common/host/abua;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1b858bad8c2f743eb42123fd30491f5e"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 243
    invoke-virtual {p0, p1, p2}, Lgbsdk/common/host/abua;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lgbsdk/common/host/abua;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgbsdk/common/host/abua;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public logI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abua;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "9d2f8b296c1bfe4851dce2adaedd6235"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    sget-object v0, Lgbsdk/common/host/abua;->Eh:Lcom/apm/insight/log/ILog;

    if-eqz v0, :cond_1

    .line 193
    invoke-interface {v0, p1, p2}, Lcom/apm/insight/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1
    sget-boolean v0, Lgbsdk/common/host/abua;->Eg:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->isRunningCloud()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    sget-object v2, Lgbsdk/common/host/abua;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d1ba38ced9a381682ed13a4603895d9f"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 203
    invoke-virtual {p0, p1, p2}, Lgbsdk/common/host/abua;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lgbsdk/common/host/abua;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgbsdk/common/host/abua;->logI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public logK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abua;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3717d91932f458f70f243d2fe8970692"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgbsdk/common/host/abua;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abua;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c81a4fcb89184746d8ad3ee1c5f2783e"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    sget-object v0, Lgbsdk/common/host/abua;->Eh:Lcom/apm/insight/log/ILog;

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {v0, p1, p2}, Lcom/apm/insight/log/ILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    sget-boolean v0, Lgbsdk/common/host/abua;->Eg:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->isRunningCloud()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    sget-object v2, Lgbsdk/common/host/abua;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "623e04a3f3e65c70453fd52c782f8616"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 165
    invoke-virtual {p0, p1, p2}, Lgbsdk/common/host/abua;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lgbsdk/common/host/abua;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgbsdk/common/host/abua;->logV(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public logW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abua;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3bbea7991e9b02ce961ec87a3555c63c"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    sget-object v0, Lgbsdk/common/host/abua;->Eh:Lcom/apm/insight/log/ILog;

    if-eqz v0, :cond_1

    .line 212
    invoke-interface {v0, p1, p2}, Lcom/apm/insight/log/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_1
    sget-boolean v0, Lgbsdk/common/host/abua;->Eg:Z

    if-nez v0, :cond_2

    .line 216
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    sget-object v2, Lgbsdk/common/host/abua;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "bbb42824cbbf928c224da0bd45ce4292"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 223
    invoke-virtual {p0, p1, p2}, Lgbsdk/common/host/abua;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lgbsdk/common/host/abua;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgbsdk/common/host/abua;->logW(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
