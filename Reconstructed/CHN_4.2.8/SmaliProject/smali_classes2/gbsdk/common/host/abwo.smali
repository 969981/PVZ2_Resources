.class public Lgbsdk/common/host/abwo;
.super Ljava/lang/Object;
.source "CdnCacheVerifyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abwo$ab;,
        Lgbsdk/common/host/abwo$ac;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CDN_CACHE_VERIFY"

.field public static final aJP:Ljava/lang/String; = "ttnet_response_verify_enabled"

.field public static final aJQ:Ljava/lang/String; = "ttnet_response_verify"

.field private static final aJR:Ljava/lang/String; = "X-TT-VERIFY-ID"

.field public static final aJS:I = -0x1

.field public static final aJT:I = 0x1

.field public static final aJU:I = 0x2

.field public static final aJV:I = 0x3

.field public static volatile aJW:Z

.field private static aJX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/abwo$ac;",
            ">;"
        }
    .end annotation
.end field

.field private static aJY:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static aJZ:Ljava/util/concurrent/locks/Lock;

.field private static aKa:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lgbsdk/common/host/abwo;->aJX:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lgbsdk/common/host/abwo;->aJY:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abwo;->aJZ:Ljava/util/concurrent/locks/Lock;

    .line 56
    sget-object v0, Lgbsdk/common/host/abwo;->aJY:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abwo;->aKa:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static I(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abwo$ac;",
            ">;)V"
        }
    .end annotation

    .line 262
    :try_start_0
    sget-object v0, Lgbsdk/common/host/abwo;->aKa:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 263
    sput-object p0, Lgbsdk/common/host/abwo;->aJX:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    sget-object p0, Lgbsdk/common/host/abwo;->aKa:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lgbsdk/common/host/abwo;->aKa:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static N(Lorg/json/JSONObject;)Lgbsdk/common/host/abwo$ab;
    .locals 2

    const-string v0, "ttnet_response_verify_enabled"

    const/4 v1, -0x1

    .line 215
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ttnet_response_verify"

    .line 216
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 219
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 221
    :goto_0
    invoke-static {v0, p0}, Lgbsdk/common/host/abwo;->a(ILorg/json/JSONArray;)V

    .line 223
    new-instance p0, Lgbsdk/common/host/abwo$ab;

    invoke-direct {p0}, Lgbsdk/common/host/abwo$ab;-><init>()V

    .line 224
    iput v0, p0, Lgbsdk/common/host/abwo$ab;->aKb:I

    .line 225
    iput-object v1, p0, Lgbsdk/common/host/abwo$ab;->aKc:Ljava/lang/String;

    return-object p0
.end method

.method private static a(ILorg/json/JSONArray;)V
    .locals 4

    const/4 v0, 0x0

    if-lez p0, :cond_3

    .line 235
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 237
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 239
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 241
    new-instance v3, Lgbsdk/common/host/abwo$ac;

    invoke-direct {v3}, Lgbsdk/common/host/abwo$ac;-><init>()V

    .line 242
    invoke-virtual {v3, v2}, Lgbsdk/common/host/abwo$ac;->cG(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_1
    invoke-static {p0}, Lgbsdk/common/host/abwo;->I(Ljava/util/List;)V

    :cond_2
    const/4 p0, 0x1

    .line 250
    sput-boolean p0, Lgbsdk/common/host/abwo;->aJW:Z

    goto :goto_1

    .line 252
    :cond_3
    sput-boolean v0, Lgbsdk/common/host/abwo;->aJW:Z

    :goto_1
    return-void
.end method

.method public static a(Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/retrofit2/client/Response;Lcom/bytedance/ttnet/http/HttpRequestInfo;)V
    .locals 1

    .line 109
    sget-boolean v0, Lgbsdk/common/host/abwo;->aJW:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "CDN_CACHE_VERIFY"

    const-string p1, "Req info is null"

    .line 114
    invoke-static {p0, p1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 118
    :cond_1
    invoke-static {p0, p1, p2}, Lgbsdk/common/host/abwo;->b(Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/retrofit2/client/Response;Lcom/bytedance/ttnet/http/HttpRequestInfo;)V

    return-void
.end method

.method public static b(Landroid/content/SharedPreferences;)V
    .locals 3

    const-string v0, "ttnet_response_verify_enabled"

    const/4 v1, -0x1

    .line 196
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ttnet_response_verify"

    const-string v2, ""

    .line 197
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 199
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    .line 206
    :goto_0
    invoke-static {v0, v1}, Lgbsdk/common/host/abwo;->a(ILorg/json/JSONArray;)V

    return-void
.end method

.method private static b(Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/retrofit2/client/Response;Lcom/bytedance/ttnet/http/HttpRequestInfo;)V
    .locals 4

    const-string v0, "X-TT-VERIFY-ID"

    .line 161
    invoke-virtual {p0, v0}, Lcom/bytedance/retrofit2/client/Request;->getFirstHeader(Ljava/lang/String;)Lcom/bytedance/retrofit2/client/Header;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 163
    :goto_0
    invoke-virtual {p1, v0}, Lcom/bytedance/retrofit2/client/Response;->getFirstHeader(Ljava/lang/String;)Lcom/bytedance/retrofit2/client/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v1, :cond_6

    const/4 v0, 0x3

    const-string v3, "CDN_CACHE_VERIFY"

    if-nez v2, :cond_2

    const/4 p1, 0x1

    .line 167
    iput p1, p2, Lcom/bytedance/ttnet/http/HttpRequestInfo;->cdnVerifyValue:I

    const-string p1, "Cdn cache verify accessible"

    .line 168
    invoke-static {v3, p1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x2

    .line 170
    iput p1, p2, Lcom/bytedance/ttnet/http/HttpRequestInfo;->cdnVerifyValue:I

    const-string p1, "Cdn cache verify success"

    .line 171
    invoke-static {v3, p1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 173
    :cond_3
    iput v0, p2, Lcom/bytedance/ttnet/http/HttpRequestInfo;->cdnVerifyValue:I

    const-string v1, "Cdn cache verify fail"

    .line 174
    invoke-static {v3, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Response;->getBody()Lcom/bytedance/retrofit2/mime/TypedInput;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/retrofit2/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cdn cache verify stream close fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_1
    sget-object p1, Lgbsdk/common/host/abwq;->aKs:Lgbsdk/common/host/abwq$ab;

    if-eqz p1, :cond_4

    .line 186
    invoke-virtual {p0}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lgbsdk/common/host/abwq$ab;->a(Ljava/lang/String;Lcom/bytedance/ttnet/http/HttpRequestInfo;)V

    .line 189
    :cond_4
    iget p0, p2, Lcom/bytedance/ttnet/http/HttpRequestInfo;->cdnVerifyValue:I

    if-eq p0, v0, :cond_5

    goto :goto_2

    .line 190
    :cond_5
    new-instance p0, Lgbsdk/common/host/abkb;

    const-string p1, "Fail to verify cdn cache"

    invoke-direct {p0, p1}, Lgbsdk/common/host/abkb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    return-void
.end method

.method private static d(Ljava/net/URI;)Ljava/lang/String;
    .locals 0

    .line 134
    invoke-static {p0}, Lgbsdk/common/host/abwo;->e(Ljava/net/URI;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 135
    invoke-static {}, Lgbsdk/common/host/abwo;->hC()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Ljava/net/URI;)Z
    .locals 2

    .line 142
    :try_start_0
    sget-object v0, Lgbsdk/common/host/abwo;->aJZ:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 143
    sget-object v0, Lgbsdk/common/host/abwo;->aJX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abwo$ac;

    .line 144
    invoke-virtual {v1, p0}, Lgbsdk/common/host/abwo$ac;->f(Ljava/net/URI;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    .line 149
    sget-object v0, Lgbsdk/common/host/abwo;->aJZ:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p0

    :cond_1
    sget-object p0, Lgbsdk/common/host/abwo;->aJZ:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    sget-object v0, Lgbsdk/common/host/abwo;->aJZ:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static h(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;)V"
        }
    .end annotation

    .line 95
    sget-boolean v0, Lgbsdk/common/host/abwo;->aJW:Z

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-static {p0, p1}, Lgbsdk/common/host/abwo;->i(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static hC()Ljava/lang/String;
    .locals 1

    .line 156
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static i(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;)V"
        }
    .end annotation

    .line 123
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/frameworks/baselib/network/http/util/URIUtils;->safeCreateUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    .line 124
    invoke-static {p0}, Lgbsdk/common/host/abwo;->d(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/bytedance/retrofit2/client/Header;

    const-string v1, "X-TT-VERIFY-ID"

    invoke-direct {v0, v1, p0}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
