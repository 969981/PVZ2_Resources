.class public Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;
.super Ljava/lang/Object;
.source "LogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;,
        Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Level;
    }
.end annotation


# static fields
.field private static final NEW_LINE:Ljava/lang/String; = "\n"

.field private static final SPLIT_BEFORE_MESSAGE:Ljava/lang/String; = ": "

.field private static final SPLIT_BEFORE_TAG:Ljava/lang/String; = "/"

.field private static final SPLIT_BEFORE_TIPS:Ljava/lang/String; = " #### "

.field private static final SPLIT_SPACE:Ljava/lang/String; = " "

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static final threadLocalDateFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public level:I

.field public message:Ljava/lang/String;

.field public remind:Z

.field public tag:Ljava/lang/String;

.field public thread:Ljava/lang/String;

.field public throwable:Ljava/lang/Throwable;

.field public time:J

.field public tips:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$1;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$1;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->threadLocalDateFormat:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;-><init>()V

    return-void
.end method

.method public static builder()Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "c259d5511056193ed01325877678f37e"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;

    invoke-direct {v0, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$Builder;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo$1;)V

    return-object v0
.end method

.method public static getLevelByString(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "c987ddb5f7ef2e5894e592c899ffc44f"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 v1, -0x1

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "Verbose"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "Error"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v3, "Debug"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "Warn"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "Info"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v0, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x6

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0

    :cond_4
    return v4

    :cond_5
    return v5

    :cond_6
    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x22d8ce -> :sswitch_4
        0x2906a6 -> :sswitch_3
        0x3eda633 -> :sswitch_2
        0x401e1e8 -> :sswitch_1
        0x78261162 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getLevelString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "Error"

    return-object p0

    :cond_1
    const-string p0, "Warn"

    return-object p0

    :cond_2
    const-string p0, "Info"

    return-object p0

    :cond_3
    const-string p0, "Debug"

    return-object p0

    :cond_4
    const-string p0, "Verbose"

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "154819ccbf33a6364a4addcd4b5accc0"

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

    .line 216
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_2

    const-string p0, "OSDK:UnknownHostException"

    return-object p0

    .line 219
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 222
    :cond_3
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 223
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 225
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :catchall_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 229
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->level:I

    return v0
.end method

.method public getLevelString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6c95d9d169de8ab81fa42ca9f02748ab"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 197
    :cond_0
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->level:I

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->getLevelString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTraceString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ac23a22ff4f81e0a9bf2d26e26ab4b4b"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->throwable:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getThread()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->thread:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->time:J

    return-wide v0
.end method

.method public getTimeString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "aa9d9d075ec066e3a148de234b610fe8"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 189
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->time:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 190
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->threadLocalDateFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->time:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "--"

    return-object v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public isRemind()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->remind:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2fa840f79e808b52c7e899e112349315"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->getTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->getThread()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->getLevelString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->isRemind()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " #### "

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->getTips()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "\n"

    if-eqz v1, :cond_2

    .line 252
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/LogInfo;->getStackTraceString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
