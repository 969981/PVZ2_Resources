.class public Lcom/bytedance/common/utility/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/common/utility/Logger$DefaultLogHandler;,
        Lcom/bytedance/common/utility/Logger$ILogWritter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Logger"

.field private static mLevel:I = 0x4

.field private static sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 197
    invoke-static {}, Lcom/bytedance/common/utility/Logger$DefaultLogHandler;->getInstance()Lcom/bytedance/common/utility/Logger$DefaultLogHandler;

    move-result-object v0

    sput-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alertErrorInfo(Ljava/lang/String;)V
    .locals 1

    .line 192
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/common/utility/Logger;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Logger"

    .line 55
    invoke-static {v0, p0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/common/utility/Logger$ILogWritter;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static debug()Z
    .locals 2

    .line 29
    sget v0, Lcom/bytedance/common/utility/Logger;->mLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Logger"

    .line 121
    invoke-static {v0, p0}, Lcom/bytedance/common/utility/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 137
    :cond_0
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/common/utility/Logger$ILogWritter;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .line 25
    sget v0, Lcom/bytedance/common/utility/Logger;->mLevel:I

    return v0
.end method

.method private static getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2e

    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 178
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Logger"

    .line 77
    invoke-static {v0, p0}, Lcom/bytedance/common/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 84
    :cond_0
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->logI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 93
    :cond_0
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/common/utility/Logger$ILogWritter;->logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Logger"

    .line 144
    invoke-static {v0, p0}, Lcom/bytedance/common/utility/Logger;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->logK(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static registerLogHandler(Lcom/bytedance/common/utility/Logger$ILogWritter;)V
    .locals 0

    .line 200
    sput-object p0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 21
    sput p0, Lcom/bytedance/common/utility/Logger;->mLevel:I

    return-void
.end method

.method public static st(Ljava/lang/String;I)V
    .locals 5

    .line 157
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 161
    :goto_0
    array-length v4, v0

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_1

    if-le v3, v2, :cond_0

    const-string v4, "\n"

    .line 163
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/common/utility/Logger;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    .line 166
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static throwException(Ljava/lang/Throwable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error! Now in debug, we alert to you to correct it !"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/common/utility/Logger;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Logger"

    .line 33
    invoke-static {v0, p0}, Lcom/bytedance/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->logV(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 49
    :cond_0
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/common/utility/Logger$ILogWritter;->logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Logger"

    .line 99
    invoke-static {v0, p0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->logW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 115
    :cond_0
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/Logger$ILogWritter;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    sget-object v0, Lcom/bytedance/common/utility/Logger;->sLogWriter:Lcom/bytedance/common/utility/Logger$ILogWritter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/common/utility/Logger$ILogWritter;->logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
