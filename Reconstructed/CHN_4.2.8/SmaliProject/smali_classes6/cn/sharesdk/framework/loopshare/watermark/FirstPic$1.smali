.class final Lcn/sharesdk/framework/loopshare/watermark/FirstPic$1;
.super Ljava/lang/Thread;
.source "FirstPic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/loopshare/watermark/FirstPic;->a(Landroid/content/Context;Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcn/sharesdk/framework/loopshare/watermark/FirstPic$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/sharesdk/framework/loopshare/watermark/FirstPic$1;->b:Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 142
    const-string v0, "ShareSDK"

    .line 0
    const-string v1, "pairPath: "

    const-string v2, " The path of the first picture in the album is: "

    .line 142
    :try_start_0
    invoke-static {}, Lcn/sharesdk/framework/loopshare/watermark/e;->b()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcn/sharesdk/framework/loopshare/watermark/e;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v3, p0, Lcn/sharesdk/framework/loopshare/watermark/FirstPic$1;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/sharesdk/framework/loopshare/watermark/FirstPic;->b(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_1

    .line 143
    :cond_1
    :goto_0
    iget-object v3, p0, Lcn/sharesdk/framework/loopshare/watermark/FirstPic$1;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/sharesdk/framework/loopshare/watermark/FirstPic;->a(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v3

    :goto_1
    const/4 v4, -0x1

    if-eqz v3, :cond_4

    .line 148
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 150
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 151
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 152
    iget-object v2, p0, Lcn/sharesdk/framework/loopshare/watermark/FirstPic$1;->a:Landroid/content/Context;

    iget-object v4, p0, Lcn/sharesdk/framework/loopshare/watermark/FirstPic$1;->b:Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;

    invoke-static {v2, v3, v4}, Lcn/sharesdk/framework/loopshare/watermark/FirstPic;->a(Landroid/content/Context;Ljava/lang/String;Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;)V

    goto :goto_2

    .line 153
    :cond_2
    iget-object v2, p0, Lcn/sharesdk/framework/loopshare/watermark/FirstPic$1;->b:Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;

    if-eqz v2, :cond_3

    .line 155
    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "Failed to read album image"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5, v4}, Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;->onFailed(Ljava/lang/Throwable;I)V

    .line 158
    :cond_3
    :goto_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_3

    .line 159
    :cond_4
    iget-object v1, p0, Lcn/sharesdk/framework/loopshare/watermark/FirstPic$1;->b:Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;

    if-eqz v1, :cond_5

    .line 161
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Failed to read screenshot album picture, please check if there is any picture"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v4}, Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;->onFailed(Ljava/lang/Throwable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 166
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parse QR code exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 167
    iget-object v0, p0, Lcn/sharesdk/framework/loopshare/watermark/FirstPic$1;->b:Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;

    if-eqz v0, :cond_5

    const/4 v2, -0x3

    .line 168
    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/loopshare/watermark/ReadQrImageListener;->onFailed(Ljava/lang/Throwable;I)V

    :cond_5
    :goto_3
    return-void
.end method
