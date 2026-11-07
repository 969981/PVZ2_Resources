.class Lcom/tencent/open/utils/AsynLoadImg$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/utils/AsynLoadImg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/utils/AsynLoadImg;


# direct methods
.method constructor <init>(Lcom/tencent/open/utils/AsynLoadImg;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/tencent/open/utils/AsynLoadImg$2;->a:Lcom/tencent/open/utils/AsynLoadImg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 151
    const-string v0, "saveFileRunnable:"

    const-string v1, "AsynLoadImg"

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/tencent/open/utils/AsynLoadImg$2;->a:Lcom/tencent/open/utils/AsynLoadImg;

    invoke-static {v0}, Lcom/tencent/open/utils/AsynLoadImg;->b(Lcom/tencent/open/utils/AsynLoadImg;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/utils/Util;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "share_qq_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/utils/AsynLoadImg;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    iget-object v4, p0, Lcom/tencent/open/utils/AsynLoadImg$2;->a:Lcom/tencent/open/utils/AsynLoadImg;

    invoke-static {v4}, Lcom/tencent/open/utils/AsynLoadImg;->c(Lcom/tencent/open/utils/AsynLoadImg;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 159
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 160
    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 161
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "file exists: time:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/tencent/open/utils/AsynLoadImg$2;->a:Lcom/tencent/open/utils/AsynLoadImg;

    invoke-static {v5}, Lcom/tencent/open/utils/AsynLoadImg;->d(Lcom/tencent/open/utils/AsynLoadImg;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 165
    :cond_0
    iget-object v3, p0, Lcom/tencent/open/utils/AsynLoadImg$2;->a:Lcom/tencent/open/utils/AsynLoadImg;

    invoke-static {v3}, Lcom/tencent/open/utils/AsynLoadImg;->b(Lcom/tencent/open/utils/AsynLoadImg;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/AsynLoadImg;->getbitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 167
    iget-object v6, p0, Lcom/tencent/open/utils/AsynLoadImg$2;->a:Lcom/tencent/open/utils/AsynLoadImg;

    invoke-virtual {v6, v3, v0}, Lcom/tencent/open/utils/AsynLoadImg;->saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 169
    :cond_1
    const-string v0, "saveFileRunnable:get bmp fail---"

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    :goto_0
    if-eqz v0, :cond_2

    .line 172
    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 173
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 175
    iput v0, v4, Landroid/os/Message;->arg1:I

    .line 177
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "file not exists: download time:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/tencent/open/utils/AsynLoadImg$2;->a:Lcom/tencent/open/utils/AsynLoadImg;

    invoke-static {v5}, Lcom/tencent/open/utils/AsynLoadImg;->d(Lcom/tencent/open/utils/AsynLoadImg;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_2
    iget-object v0, p0, Lcom/tencent/open/utils/AsynLoadImg$2;->a:Lcom/tencent/open/utils/AsynLoadImg;

    invoke-static {v0}, Lcom/tencent/open/utils/AsynLoadImg;->c(Lcom/tencent/open/utils/AsynLoadImg;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
