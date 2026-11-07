.class final Lcn/sharesdk/framework/loopshare/watermark/c$2;
.super Ljava/lang/Object;
.source "FfmpegCommandCentre.java"

# interfaces
.implements Lcn/sharesdk/framework/utils/QRCodeUtil/QRCodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/loopshare/watermark/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;

.field final synthetic b:[Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;[ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->a:Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;

    iput-object p2, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->b:[Z

    iput-object p3, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 310
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QR code generation failed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ShareSDK"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 311
    iget-object p1, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->a:Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;

    if-eqz p1, :cond_0

    const/4 v0, -0x5

    .line 312
    invoke-interface {p1, v2, v0}, Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;->onFailed(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 9

    .line 184
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "QR code generated successfully "

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ShareSDK"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/sharesdk/framework/loopshare/watermark/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcn/sharesdk/framework/loopshare/watermark/c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcn/sharesdk/framework/loopshare/watermark/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->a:Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;

    if-eqz p1, :cond_0

    .line 188
    const-string v0, "QR code image storage failed"

    const/16 v1, -0x9

    invoke-interface {p1, v0, v1}, Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;->onFailed(Ljava/lang/String;I)V

    return-void

    .line 193
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The path where the image is saved is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 197
    iget-object p1, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->b:[Z

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_1

    .line 198
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "textMarkImage length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 199
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "imagePath length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 201
    iget-object v3, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->c:Ljava/lang/String;

    iget-object v6, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->d:Ljava/lang/String;

    iget-object v7, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->e:Ljava/lang/String;

    const/4 v8, 0x5

    const-string v5, ""

    invoke-static/range {v3 .. v8}, Lcn/sharesdk/framework/loopshare/watermark/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 204
    :cond_1
    iget-object v6, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->d:Ljava/lang/String;

    iget-object v7, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->e:Ljava/lang/String;

    const/4 v8, 0x5

    const-string v3, ""

    const-string v5, ""

    invoke-static/range {v3 .. v8}, Lcn/sharesdk/framework/loopshare/watermark/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 210
    :goto_0
    invoke-static {p1}, Lcom/arthenica/mobileffmpeg/FFmpeg;->execute([Ljava/lang/String;)I

    move-result p1

    .line 212
    const-string v0, "mobile-ffmpeg"

    if-nez p1, :cond_3

    .line 213
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v3, "Async command execution completed successfully."

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 214
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, " FFmpeg command line execution completed...onEnd "

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 217
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 218
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2

    .line 220
    invoke-static {v0}, Lcn/sharesdk/framework/loopshare/watermark/d;->a(Ljava/io/File;)V

    .line 223
    iget-object v0, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->a:Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;

    if-eqz v0, :cond_4

    .line 224
    invoke-interface {v0, p1}, Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;->onEnd(I)V

    goto :goto_1

    .line 226
    :cond_2
    iget-object p1, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->a:Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;

    if-eqz p1, :cond_4

    .line 228
    const-string v0, "The composite video is stored to the local exception"

    const/4 v1, -0x8

    invoke-interface {p1, v0, v1}, Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;->onFailed(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 232
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onEnd catch: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 233
    iget-object v0, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->a:Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;

    if-eqz v0, :cond_4

    .line 234
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x7

    invoke-interface {v0, p1, v1}, Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;->onFailed(Ljava/lang/String;I)V

    goto :goto_1

    .line 239
    :cond_3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Command execution failed with rc=%d and the output below."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 241
    iget-object v0, p0, Lcn/sharesdk/framework/loopshare/watermark/c$2;->a:Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;

    if-eqz v0, :cond_4

    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Async command execution failed with rc=%d."

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x6

    invoke-interface {v0, p1, v1}, Lcn/sharesdk/framework/loopshare/watermark/WaterMarkListener;->onFailed(Ljava/lang/String;I)V

    .line 247
    :cond_4
    :goto_1
    new-instance p1, Lcn/sharesdk/framework/loopshare/watermark/c$2$1;

    invoke-direct {p1, p0}, Lcn/sharesdk/framework/loopshare/watermark/c$2$1;-><init>(Lcn/sharesdk/framework/loopshare/watermark/c$2;)V

    .line 304
    invoke-static {p1}, Lcn/sharesdk/framework/loopshare/watermark/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method
