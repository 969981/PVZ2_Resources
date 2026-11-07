.class public Lcom/apm/insight/log/VLogConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/log/VLogConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bufferDirPath:Ljava/lang/String;

.field private compress:Z

.field private context:Landroid/content/Context;

.field private encrypt:Z

.field private level:I

.field private logDirPath:Ljava/lang/String;

.field private logFileExpDays:I

.field private mainThreadSpeedUp:Z

.field private maxDirSize:I

.field private offloadMainThreadWrite:Z

.field private perSize:I

.field private pubKey:Ljava/lang/String;

.field private subProcessMaxDirSizeRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    .line 142
    iput v0, p0, Lcom/apm/insight/log/VLogConfig$Builder;->logFileExpDays:I

    const/high16 v0, 0x1400000

    .line 143
    iput v0, p0, Lcom/apm/insight/log/VLogConfig$Builder;->maxDirSize:I

    const v0, 0x3dcccccd    # 0.1f

    .line 144
    iput v0, p0, Lcom/apm/insight/log/VLogConfig$Builder;->subProcessMaxDirSizeRatio:F

    const/high16 v0, 0x200000

    .line 145
    iput v0, p0, Lcom/apm/insight/log/VLogConfig$Builder;->perSize:I

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/apm/insight/log/VLogConfig$Builder;->compress:Z

    .line 149
    iput-boolean v0, p0, Lcom/apm/insight/log/VLogConfig$Builder;->encrypt:Z

    const/4 v1, 0x2

    .line 150
    iput v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->level:I

    const-string v1, "44817d17adcfd1bc735c022b368acfe0465c4bdbc5c77ca8efd6b578dad1177a65f83813d3f3da839778719efbb83d982737c55597b1a074f105d828a8163b42"

    .line 151
    iput-object v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->pubKey:Ljava/lang/String;

    .line 152
    iput-boolean v0, p0, Lcom/apm/insight/log/VLogConfig$Builder;->mainThreadSpeedUp:Z

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/apm/insight/log/VLogConfig$Builder;->offloadMainThreadWrite:Z

    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->context:Landroid/content/Context;

    return-void

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "context must not be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/apm/insight/log/VLogConfig;
    .locals 2

    .line 216
    new-instance v0, Lcom/apm/insight/log/VLogConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apm/insight/log/VLogConfig;-><init>(Lcom/apm/insight/log/VLogConfig$1;)V

    .line 217
    iget-object v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/apm/insight/log/VLogConfig;->setContext(Landroid/content/Context;)V

    .line 218
    iget v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->logFileExpDays:I

    invoke-virtual {v0, v1}, Lcom/apm/insight/log/VLogConfig;->setLogFileExpDays(I)V

    .line 219
    iget v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->maxDirSize:I

    invoke-virtual {v0, v1}, Lcom/apm/insight/log/VLogConfig;->setMaxDirSize(I)V

    .line 220
    iget v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->subProcessMaxDirSizeRatio:F

    invoke-virtual {v0, v1}, Lcom/apm/insight/log/VLogConfig;->setSubProcessMaxDirSizeRatio(F)V

    .line 221
    iget v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->perSize:I

    invoke-virtual {v0, v1}, Lcom/apm/insight/log/VLogConfig;->setPerSize(I)V

    .line 222
    iget-object v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->bufferDirPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/apm/insight/log/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->bufferDirPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/apm/insight/log/VLogConfig;->setBufferDirPath(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->logDirPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/apm/insight/log/c;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->logDirPath:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/apm/insight/log/VLogConfig;->setLogDirPath(Ljava/lang/String;)V

    .line 224
    iget-boolean v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->compress:Z

    invoke-virtual {v0, v1}, Lcom/apm/insight/log/VLogConfig;->setCompress(Z)V

    .line 225
    iget-boolean v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->encrypt:Z

    invoke-virtual {v0, v1}, Lcom/apm/insight/log/VLogConfig;->setEncrypt(Z)V

    .line 226
    iget v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->level:I

    invoke-virtual {v0, v1}, Lcom/apm/insight/log/VLogConfig;->setLevel(I)V

    .line 227
    iget-object v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->pubKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apm/insight/log/VLogConfig;->setPubKey(Ljava/lang/String;)V

    .line 228
    iget-boolean v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->mainThreadSpeedUp:Z

    invoke-virtual {v0, v1}, Lcom/apm/insight/log/VLogConfig;->setMainThreadSpeedUp(Z)V

    .line 229
    iget-boolean v1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->offloadMainThreadWrite:Z

    invoke-virtual {v0, v1}, Lcom/apm/insight/log/VLogConfig;->setOffloadMainThreadWrite(Z)V

    return-object v0
.end method

.method public setBufferDirPath(Ljava/lang/String;)Lcom/apm/insight/log/VLogConfig$Builder;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->bufferDirPath:Ljava/lang/String;

    return-object p0
.end method

.method public setCompress(Z)Lcom/apm/insight/log/VLogConfig$Builder;
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->compress:Z

    return-object p0
.end method

.method public setEncrypt(Z)Lcom/apm/insight/log/VLogConfig$Builder;
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->encrypt:Z

    return-object p0
.end method

.method public setLevel(I)Lcom/apm/insight/log/VLogConfig$Builder;
    .locals 0

    .line 196
    iput p1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->level:I

    return-object p0
.end method

.method public setLogDirPath(Ljava/lang/String;)Lcom/apm/insight/log/VLogConfig$Builder;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->logDirPath:Ljava/lang/String;

    return-object p0
.end method

.method public setLogFileExpDays(I)Lcom/apm/insight/log/VLogConfig$Builder;
    .locals 0

    .line 156
    iput p1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->logFileExpDays:I

    return-object p0
.end method

.method public setMainThreadSpeedUp(Z)Lcom/apm/insight/log/VLogConfig$Builder;
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->mainThreadSpeedUp:Z

    return-object p0
.end method

.method public setMaxDirSize(I)Lcom/apm/insight/log/VLogConfig$Builder;
    .locals 0

    .line 161
    iput p1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->maxDirSize:I

    return-object p0
.end method

.method public setOffloadMainThreadWrite(Z)Lcom/apm/insight/log/VLogConfig$Builder;
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->offloadMainThreadWrite:Z

    return-object p0
.end method

.method public setPerSize(I)Lcom/apm/insight/log/VLogConfig$Builder;
    .locals 0

    .line 171
    iput p1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->perSize:I

    return-object p0
.end method

.method public setPubKey(Ljava/lang/String;)Lcom/apm/insight/log/VLogConfig$Builder;
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->pubKey:Ljava/lang/String;

    return-object p0
.end method

.method public setSubProcessMaxDirSizeRatio(F)Lcom/apm/insight/log/VLogConfig$Builder;
    .locals 0

    .line 166
    iput p1, p0, Lcom/apm/insight/log/VLogConfig$Builder;->subProcessMaxDirSizeRatio:F

    return-object p0
.end method
