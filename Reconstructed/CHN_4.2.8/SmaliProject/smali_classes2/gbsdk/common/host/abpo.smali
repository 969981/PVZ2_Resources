.class public abstract Lgbsdk/common/host/abpo;
.super Ljava/lang/Object;
.source "PatchDownload.java"


# instance fields
.field private path:Ljava/lang/String;

.field public wJ:I

.field private wK:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lgbsdk/common/host/abpo;->wJ:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 30
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    iput-object p4, p0, Lgbsdk/common/host/abpo;->path:Ljava/lang/String;

    .line 34
    iget v0, p0, Lgbsdk/common/host/abpo;->wJ:I

    if-nez v0, :cond_2

    .line 35
    new-instance v0, Lorg/json/JSONArray;

    const-string v1, "UTF-8"

    invoke-static {p3, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgbsdk/common/host/abpo;->wK:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-nez p3, :cond_2

    :cond_1
    return-void

    .line 40
    :cond_2
    new-instance p3, Losdk/okhttp3/Request$Builder;

    invoke-direct {p3}, Losdk/okhttp3/Request$Builder;-><init>()V

    iget-object v0, p0, Lgbsdk/common/host/abpo;->wK:Lorg/json/JSONArray;

    iget v1, p0, Lgbsdk/common/host/abpo;->wJ:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Losdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Losdk/okhttp3/Request$Builder;

    move-result-object p3

    invoke-virtual {p3}, Losdk/okhttp3/Request$Builder;->build()Losdk/okhttp3/Request;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lgbsdk/common/host/abpo;->dd()Losdk/okhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3, p3}, Losdk/okhttp3/OkHttpClient;->newCall(Losdk/okhttp3/Request;)Losdk/okhttp3/Call;

    move-result-object p3

    invoke-interface {p3}, Losdk/okhttp3/Call;->execute()Losdk/okhttp3/Response;

    move-result-object p3

    .line 46
    invoke-virtual {p3}, Losdk/okhttp3/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 47
    invoke-virtual {p3}, Losdk/okhttp3/Response;->body()Losdk/okhttp3/ResponseBody;

    move-result-object p3

    invoke-virtual {p3}, Losdk/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 50
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 52
    :cond_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v3, 0x1000

    :try_start_2
    new-array v3, v3, [B

    .line 55
    :goto_0
    invoke-virtual {p3, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 56
    invoke-virtual {v4, v3, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 59
    invoke-static {v1, p1, p2, v2}, Lgbsdk/common/host/abrt;->b(ZLjava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v4

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto :goto_3

    :catch_0
    move-exception v3

    move-object v2, v4

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    .line 61
    :cond_5
    :try_start_3
    iget v3, p0, Lgbsdk/common/host/abpo;->wJ:I

    add-int/2addr v3, v1

    iput v3, p0, Lgbsdk/common/host/abpo;->wJ:I

    .line 62
    iget-object v3, p0, Lgbsdk/common/host/abpo;->wK:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    iget v4, p0, Lgbsdk/common/host/abpo;->wJ:I

    if-le v3, v4, :cond_6

    .line 63
    iget-object p3, p0, Lgbsdk/common/host/abpo;->wK:Lorg/json/JSONArray;

    iget v3, p0, Lgbsdk/common/host/abpo;->wJ:I

    invoke-virtual {p3, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lgbsdk/common/host/abpo;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object p3, v2

    goto :goto_2

    .line 65
    :cond_6
    invoke-virtual {p3}, Losdk/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p1, p2, p3}, Lgbsdk/common/host/abrt;->b(ZLjava/lang/String;ILjava/lang/String;)V

    .line 66
    new-instance p3, Ljava/lang/Exception;

    const-string v3, "network error"

    invoke-direct {p3, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    move-object p3, v2

    goto :goto_3

    :catch_2
    move-exception v3

    move-object p3, v2

    .line 71
    :goto_1
    :try_start_4
    iget v4, p0, Lgbsdk/common/host/abpo;->wJ:I

    add-int/2addr v4, v1

    iput v4, p0, Lgbsdk/common/host/abpo;->wJ:I

    .line 72
    iget-object v1, p0, Lgbsdk/common/host/abpo;->wK:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget v4, p0, Lgbsdk/common/host/abpo;->wJ:I

    if-le v1, v4, :cond_7

    .line 73
    iget-object v0, p0, Lgbsdk/common/host/abpo;->wK:Lorg/json/JSONArray;

    iget v1, p0, Lgbsdk/common/host/abpo;->wJ:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lgbsdk/common/host/abpo;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 79
    :goto_2
    invoke-static {v2}, Lgbsdk/common/host/aboz;->close(Ljava/io/Closeable;)V

    .line 80
    invoke-static {p3}, Lgbsdk/common/host/aboz;->close(Ljava/io/Closeable;)V

    return-void

    .line 75
    :cond_7
    :try_start_5
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p1, p2, p4}, Lgbsdk/common/host/abrt;->b(ZLjava/lang/String;ILjava/lang/String;)V

    .line 76
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 79
    :goto_3
    invoke-static {v2}, Lgbsdk/common/host/aboz;->close(Ljava/io/Closeable;)V

    .line 80
    invoke-static {p3}, Lgbsdk/common/host/aboz;->close(Ljava/io/Closeable;)V

    throw p1
.end method

.method protected abstract dd()Losdk/okhttp3/OkHttpClient;
.end method
