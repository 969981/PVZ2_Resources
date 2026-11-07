.class public Lcom/bytedance/applog/log/LogInfo;
.super Ljava/lang/Object;
.source "LogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/log/LogInfo$Category;,
        Lcom/bytedance/applog/log/LogInfo$Level;
    }
.end annotation


# static fields
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
.field private appId:Ljava/lang/String;

.field private category:I

.field private level:I

.field private message:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private thread:Ljava/lang/String;

.field private throwable:Ljava/lang/Throwable;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/bytedance/applog/log/LogInfo$1;

    invoke-direct {v0}, Lcom/bytedance/applog/log/LogInfo$1;-><init>()V

    sput-object v0, Lcom/bytedance/applog/log/LogInfo;->threadLocalDateFormat:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 98
    iput v0, p0, Lcom/bytedance/applog/log/LogInfo;->level:I

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/bytedance/applog/log/LogInfo;->category:I

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/applog/log/LogInfo;->time:J

    return-void
.end method

.method private appendStackString(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V
    .locals 4

    .line 321
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    .line 323
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    const-string v3, "\n\tat "

    .line 324
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static builder()Lcom/bytedance/applog/log/LogInfoBuilder;
    .locals 1

    .line 126
    new-instance v0, Lcom/bytedance/applog/log/LogInfoBuilder;

    invoke-direct {v0}, Lcom/bytedance/applog/log/LogInfoBuilder;-><init>()V

    return-object v0
.end method

.method private getExceptionStackString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-eqz p1, :cond_0

    .line 308
    invoke-direct {p0, v0, p1}, Lcom/bytedance/applog/log/LogInfo;->appendStackString(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    .line 309
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/bytedance/applog/log/LogInfo;->category:I

    return v0
.end method

.method public getCategoryString()Ljava/lang/String;
    .locals 1

    .line 213
    iget v0, p0, Lcom/bytedance/applog/log/LogInfo;->category:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "DEFAULT"

    return-object v0

    :pswitch_0
    const-string v0, "ONE_ID"

    return-object v0

    :pswitch_1
    const-string v0, "COMPRESS"

    return-object v0

    :pswitch_2
    const-string v0, "EVENT_PRIORITY"

    return-object v0

    :pswitch_3
    const-string v0, "EVENT_SAMPLING"

    return-object v0

    :pswitch_4
    const-string v0, "REQUEST"

    return-object v0

    :pswitch_5
    const-string v0, "PICKER"

    return-object v0

    :pswitch_6
    const-string v0, "USER_PROFILE"

    return-object v0

    :pswitch_7
    const-string v0, "MONITOR"

    return-object v0

    :pswitch_8
    const-string v0, "VIEW_EXPOSURE"

    return-object v0

    :pswitch_9
    const-string v0, "EVENT_VERIFY"

    return-object v0

    :pswitch_a
    const-string v0, "DATABASE"

    return-object v0

    :pswitch_b
    const-string v0, "EVENT"

    return-object v0

    :pswitch_c
    const-string v0, "ALINK"

    return-object v0

    :pswitch_d
    const-string v0, "ABTEST"

    return-object v0

    :pswitch_e
    const-string v0, "DEVICE_REGISTER"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLevel()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/bytedance/applog/log/LogInfo;->level:I

    return v0
.end method

.method public getLevelString()Ljava/lang/String;
    .locals 2

    .line 194
    iget v0, p0, Lcom/bytedance/applog/log/LogInfo;->level:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "ASSERT"

    return-object v0

    :cond_1
    const-string v0, "ERROR"

    return-object v0

    :cond_2
    const-string v0, "WARN"

    return-object v0

    :cond_3
    const-string v0, "INFO"

    return-object v0

    :cond_4
    const-string v0, "DEBUG"

    return-object v0

    :cond_5
    const-string v0, "VERBOSE"

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTagString()Ljava/lang/String;
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfo;->tags:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 253
    :goto_0
    iget-object v2, p0, Lcom/bytedance/applog/log/LogInfo;->tags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/bytedance/applog/log/LogInfo;->tags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v2, p0, Lcom/bytedance/applog/log/LogInfo;->tags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, ","

    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfo;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getThread()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfo;->thread:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfo;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/bytedance/applog/log/LogInfo;->time:J

    return-wide v0
.end method

.method public getTimeString()Ljava/lang/String;
    .locals 5

    .line 265
    iget-wide v0, p0, Lcom/bytedance/applog/log/LogInfo;->time:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 266
    sget-object v0, Lcom/bytedance/applog/log/LogInfo;->threadLocalDateFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/bytedance/applog/log/LogInfo;->time:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "--"

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/bytedance/applog/log/LogInfo;->appId:Ljava/lang/String;

    return-void
.end method

.method public setCategory(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/bytedance/applog/log/LogInfo;->category:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/bytedance/applog/log/LogInfo;->level:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/bytedance/applog/log/LogInfo;->message:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/bytedance/applog/log/LogInfo;->tags:Ljava/util/List;

    return-void
.end method

.method public setThread(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/bytedance/applog/log/LogInfo;->thread:Ljava/lang/String;

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/bytedance/applog/log/LogInfo;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 134
    iput-wide p1, p0, Lcom/bytedance/applog/log/LogInfo;->time:J

    return-void
.end method

.method public toLiteString()Ljava/lang/String;
    .locals 2

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/applog/log/LogInfo;->getLevelString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/applog/log/LogInfo;->appId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bytedance/applog/log/LogInfo;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/applog/log/LogInfo;->message:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bytedance/applog/log/LogInfo;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toMessage()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/bytedance/applog/log/LogInfo;->message:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/applog/log/LogInfo;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/applog/log/LogInfo;->getTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/applog/log/LogInfo;->getLevelString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/applog/log/LogInfo;->appId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/bytedance/applog/log/LogInfo;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/applog/log/LogInfo;->thread:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/bytedance/applog/log/LogInfo;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/applog/log/LogInfo;->getCategoryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/applog/log/LogInfo;->getTagString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/applog/log/LogInfo;->message:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bytedance/applog/log/LogInfo;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {p0}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nstacktrace: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/applog/log/LogInfo;->getExceptionStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
