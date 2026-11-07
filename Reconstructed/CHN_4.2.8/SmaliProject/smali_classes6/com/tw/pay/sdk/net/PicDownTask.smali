.class public Lcom/tw/pay/sdk/net/PicDownTask;
.super Landroid/os/AsyncTask;
.source "PicDownTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private imageView2:Landroid/widget/ImageView;

.field private imgView:Landroid/widget/ImageView;

.field private picPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tw/pay/sdk/net/PicDownTask;->imgView:Landroid/widget/ImageView;

    .line 23
    iput-object p3, p0, Lcom/tw/pay/sdk/net/PicDownTask;->picPath:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/tw/pay/sdk/net/PicDownTask;->imageView2:Landroid/widget/ImageView;

    return-void
.end method

.method private dowloadSmallPic(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 38
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u037c\u01ac\ufffd\ufffd\u05b7:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v0, 0x1388

    .line 41
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v0, "GET"

    .line 42
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 44
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 45
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/pay/sdk/net/PicDownTask;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 57
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/tw/pay/sdk/net/PicDownTask;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 30
    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/tw/pay/sdk/net/PicDownTask;->dowloadSmallPic(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/pay/sdk/net/PicDownTask;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tw/pay/sdk/net/PicDownTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/tw/pay/sdk/net/PicDownTask;->imgView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/tw/pay/sdk/net/PicDownTask;->imageView2:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/tw/pay/sdk/net/PicDownTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
