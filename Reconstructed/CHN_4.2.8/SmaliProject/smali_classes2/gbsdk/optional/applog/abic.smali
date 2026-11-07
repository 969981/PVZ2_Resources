.class public Lgbsdk/optional/applog/abic;
.super Ljava/lang/Object;
.source "ApplogNetworkClient.java"

# interfaces
.implements Lcom/bytedance/applog/network/INetworkClient;


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect; = null

.field private static final b:Ljava/lang/String; = "https://toblog.ctobsnssdk.com/"

.field private static final c:Ljava/lang/String; = "ApplogNetworkClient"

.field private static final d:Ljava/lang/String; = "Content-Type"

.field private static final e:Ljava/lang/String; = "text/plain;charset=utf-8"


# instance fields
.field private final f:Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofitService;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofitService;

    const-string v1, "https://toblog.ctobsnssdk.com/"

    .line 38
    invoke-interface {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofitService;->getRetrofit(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abic;->f:Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/optional/applog/abic;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "da2535825a60970acbe4b62ed8c02967"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v0, ""

    if-eqz p1, :cond_3

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/retrofit2/client/Header;

    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private a(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/optional/applog/abic;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d12d2780ec29bc71f72723958308921d"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 220
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 221
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 222
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 223
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    new-instance v2, Lcom/bytedance/retrofit2/client/Header;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/optional/applog/abic;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8dc2a3b4dfcf6cd9a92790f22e967ceb"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 162
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApplogNetworkClient"

    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/bytedance/retrofit2/mime/TypedInput;)[B
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/optional/applog/abic;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a8363bb6608b17d520085bab4fb41422"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    return-object p1

    :cond_0
    const-string v0, "ApplogNetworkClient"

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :try_start_0
    const-string p1, "typedInput is null"

    .line 139
    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 153
    invoke-direct {p0, v2}, Lgbsdk/optional/applog/abic;->a(Ljava/io/Closeable;)V

    .line 154
    invoke-direct {p0, v2}, Lgbsdk/optional/applog/abic;->a(Ljava/io/Closeable;)V

    return-object v2

    .line 142
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/bytedance/retrofit2/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 143
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v4, 0x400

    :try_start_3
    new-array v4, v4, [B

    .line 146
    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 147
    invoke-virtual {v3, v4, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    invoke-direct {p0, p1}, Lgbsdk/optional/applog/abic;->a(Ljava/io/Closeable;)V

    .line 154
    invoke-direct {p0, v3}, Lgbsdk/optional/applog/abic;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v2

    :goto_1
    move-object v2, p1

    move-object p1, v0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v3, v2

    :goto_2
    move-object v7, v1

    move-object v1, p1

    move-object p1, v7

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v3, v2

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v2

    move-object v3, v1

    :goto_3
    :try_start_4
    const-string v4, "typed input to byte array error"

    .line 151
    invoke-static {v0, v4, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 153
    invoke-direct {p0, v1}, Lgbsdk/optional/applog/abic;->a(Ljava/io/Closeable;)V

    .line 154
    invoke-direct {p0, v3}, Lgbsdk/optional/applog/abic;->a(Ljava/io/Closeable;)V

    return-object v2

    :catchall_3
    move-exception p1

    move-object v2, v1

    .line 153
    :goto_4
    invoke-direct {p0, v2}, Lgbsdk/optional/applog/abic;->a(Ljava/io/Closeable;)V

    .line 154
    invoke-direct {p0, v3}, Lgbsdk/optional/applog/abic;->a(Ljava/io/Closeable;)V

    .line 155
    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/optional/applog/abic;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "5d7b922b30ca6a25cceb6ba269d87b0b"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    return-object p1

    .line 48
    :cond_0
    :try_start_0
    iget-object v0, p0, Lgbsdk/optional/applog/abic;->f:Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;

    const-class v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/TTHttpApi;

    invoke-interface {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/TTHttpApi;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p2

    .line 49
    invoke-interface/range {v1 .. v6}, Lcom/bytedance/ttgame/tob/common/host/framework/network/TTHttpApi;->get(ZLjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;)Lcom/bytedance/retrofit2/Call;

    move-result-object p1

    .line 50
    invoke-interface {p1}, Lcom/bytedance/retrofit2/Call;->execute()Lcom/bytedance/retrofit2/SsResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/SsResponse;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "ApplogNetworkClient"

    const-string v0, "request getString error"

    .line 52
    invoke-static {p2, v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/optional/applog/abic;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "5bbfe338267a33fd1ebf08e7c332509f"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    return-object p1

    .line 64
    :cond_0
    :try_start_0
    iget-object v0, p0, Lgbsdk/optional/applog/abic;->f:Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;

    const-class v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/TTHttpApi;

    invoke-interface {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/TTHttpApi;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p2

    .line 65
    invoke-interface/range {v1 .. v6}, Lcom/bytedance/ttgame/tob/common/host/framework/network/TTHttpApi;->getTypedInput(ZLjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;)Lcom/bytedance/retrofit2/Call;

    move-result-object p1

    .line 66
    invoke-interface {p1}, Lcom/bytedance/retrofit2/Call;->execute()Lcom/bytedance/retrofit2/SsResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/SsResponse;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/retrofit2/mime/TypedInput;

    .line 67
    invoke-direct {p0, p1}, Lgbsdk/optional/applog/abic;->a(Lcom/bytedance/retrofit2/mime/TypedInput;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "ApplogNetworkClient"

    const-string v0, "request getStream error"

    .line 69
    invoke-static {p2, v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/util/List;[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;[B)[B"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    sget-object v2, Lgbsdk/optional/applog/abic;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a77e75dbcda3cb39d7ca0b7e8ad82d37"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    return-object p1

    .line 102
    :cond_0
    :try_start_0
    iget-object v0, p0, Lgbsdk/optional/applog/abic;->f:Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;

    const-class v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/TTHttpApi;

    invoke-interface {v0, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/TTHttpApi;

    .line 103
    invoke-direct {p0, p2}, Lgbsdk/optional/applog/abic;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 104
    new-instance v3, Lcom/bytedance/retrofit2/mime/TypedByteArray;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "text/plain;charset=utf-8"

    :cond_1
    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v3, v2, p3, v1}, Lcom/bytedance/retrofit2/mime/TypedByteArray;-><init>(Ljava/lang/String;[B[Ljava/lang/String;)V

    .line 105
    invoke-interface {v0, p1, v3, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/network/TTHttpApi;->doPost(Ljava/lang/String;Lcom/bytedance/retrofit2/mime/TypedOutput;Ljava/util/List;)Lcom/bytedance/retrofit2/Call;

    move-result-object p1

    .line 106
    invoke-interface {p1}, Lcom/bytedance/retrofit2/Call;->execute()Lcom/bytedance/retrofit2/SsResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/SsResponse;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/retrofit2/mime/TypedInput;

    .line 107
    invoke-direct {p0, p1}, Lgbsdk/optional/applog/abic;->a(Lcom/bytedance/retrofit2/mime/TypedInput;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApplogNetworkClient"

    invoke-static {p2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;[B)[B"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    sget-object v2, Lgbsdk/optional/applog/abic;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8fe3b10360cf26819bcb5e2e66afea17"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    return-object p1

    .line 83
    :cond_0
    :try_start_0
    iget-object v0, p0, Lgbsdk/optional/applog/abic;->f:Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;

    const-class v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/TTHttpApi;

    invoke-interface {v0, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/TTHttpApi;

    .line 84
    invoke-direct {p0, p2}, Lgbsdk/optional/applog/abic;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 85
    new-instance v3, Lcom/bytedance/retrofit2/mime/TypedByteArray;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "text/plain;charset=utf-8"

    :cond_1
    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v3, v2, p3, v1}, Lcom/bytedance/retrofit2/mime/TypedByteArray;-><init>(Ljava/lang/String;[B[Ljava/lang/String;)V

    .line 86
    invoke-interface {v0, p1, p2, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/network/TTHttpApi;->doPost(Ljava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/mime/TypedOutput;)Lcom/bytedance/retrofit2/Call;

    move-result-object p1

    .line 87
    invoke-interface {p1}, Lcom/bytedance/retrofit2/Call;->execute()Lcom/bytedance/retrofit2/SsResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/SsResponse;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;BZI)[B"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const/4 v3, 0x3

    aput-object p4, v0, v3

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, p5}, Ljava/lang/Byte;-><init>(B)V

    const/4 v4, 0x4

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, p6}, Ljava/lang/Byte;-><init>(B)V

    const/4 v4, 0x5

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p7}, Ljava/lang/Integer;-><init>(I)V

    const/4 p7, 0x6

    aput-object v3, v0, p7

    sget-object p7, Lgbsdk/optional/applog/abic;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e5ba437808459d4628ae4438f9e80bdb"

    invoke-static {v0, p0, p7, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p7

    if-eqz p7, :cond_0

    iget-object p1, p7, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    return-object p1

    :cond_0
    const/4 p7, 0x0

    if-eqz p3, :cond_2

    .line 187
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p6, :cond_1

    .line 190
    invoke-static {p3}, Lgbsdk/optional/applog/abif;->a(Ljava/lang/String;)[B

    move-result-object p3

    goto :goto_0

    .line 192
    :cond_1
    sget-object p6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, p7

    .line 197
    :goto_0
    invoke-direct {p0, p4}, Lgbsdk/optional/applog/abic;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object p4

    if-nez p1, :cond_4

    if-nez p5, :cond_3

    .line 201
    invoke-direct {p0, p2, p4}, Lgbsdk/optional/applog/abic;->a(Ljava/lang/String;Ljava/util/List;)[B

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p5, v1, :cond_6

    .line 203
    invoke-direct {p0, p2, p4}, Lgbsdk/optional/applog/abic;->b(Ljava/lang/String;Ljava/util/List;)[B

    move-result-object p1

    return-object p1

    :cond_4
    if-ne p1, v1, :cond_6

    if-nez p5, :cond_5

    .line 207
    invoke-virtual {p0, p2, p4, p3}, Lgbsdk/optional/applog/abic;->a(Ljava/lang/String;Ljava/util/List;[B)[B

    move-result-object p1

    return-object p1

    :cond_5
    if-ne p5, v1, :cond_6

    .line 209
    invoke-direct {p0, p2, p4, p3}, Lgbsdk/optional/applog/abic;->b(Ljava/lang/String;Ljava/util/List;[B)[B

    move-result-object p1

    return-object p1

    :cond_6
    return-object p7
.end method
