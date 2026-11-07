.class public final Lgbsdk/optional/applog/abif;
.super Ljava/lang/Object;
.source "AppLogEncryptUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0003J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\nH\u0003J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogEncryptUtils;",
        "",
        "()V",
        "TAG",
        "",
        "closeSafely",
        "",
        "closeable",
        "Ljava/io/Closeable;",
        "encrypt",
        "",
        "data",
        "transformStrToByte",
        "str",
        "optional_applog_impl_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect; = null

.field public static final b:Lgbsdk/optional/applog/abif;

.field private static final c:Ljava/lang/String; = "AppLogEncryptUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgbsdk/optional/applog/abif;

    invoke-direct {v0}, Lgbsdk/optional/applog/abif;-><init>()V

    sput-object v0, Lgbsdk/optional/applog/abif;->b:Lgbsdk/optional/applog/abif;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Ljava/io/Closeable;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/optional/applog/abif;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "220b343d9146c5070d000228768da718"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 62
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    check-cast p0, Ljava/lang/Throwable;

    const-string v0, "AppLogEncryptUtils"

    const-string v1, "safe close error"

    invoke-static {v0, v1, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final a(Ljava/lang/String;)[B
    .locals 6
    .annotation runtime Lcom/bytedance/ttgame/tob/common/host/framework/annotation/DexVmp;
        value = true
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/optional/applog/abif;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "fa750e2c53ae8ab1fd2d2d2e43da959f"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, [B

    return-object p0

    :cond_0
    const-string v0, "str"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 28
    :try_start_0
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getEncryptAndCompress()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "this as java.lang.String).getBytes(charset)"

    const-string v4, "UTF_8"

    if-eqz v1, :cond_1

    .line 29
    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    move-object v5, v0

    check-cast v5, Ljava/io/OutputStream;

    invoke-direct {v1, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :try_start_2
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v3, v1

    goto :goto_0

    .line 32
    :cond_1
    :try_start_3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    :try_start_4
    const-string v1, "AppLogEncryptUtils"

    const-string v2, "applog request compress error"

    .line 36
    invoke-static {v1, v2, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 38
    :goto_1
    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3}, Lgbsdk/optional/applog/abif;->a(Ljava/io/Closeable;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v0, "data"

    .line 41
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lgbsdk/optional/applog/abif;->a([B)[B

    move-result-object p0

    return-object p0

    :catchall_2
    move-exception p0

    .line 38
    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3}, Lgbsdk/optional/applog/abif;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static final a([B)[B
    .locals 5
    .annotation runtime Lcom/bytedance/ttgame/tob/common/host/framework/annotation/DexVmp;
        value = true
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/optional/applog/abif;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "a6ff771a436eca93465c289a9f364fad"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, [B

    return-object p0

    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    .line 47
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getEncryptAndCompress()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 49
    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->getEncryptor()Lcom/bytedance/mpaas/IEncryptor;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 50
    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getEncryptor()Lcom/bytedance/mpaas/IEncryptor;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, p0

    invoke-interface {v0, p0, v1}, Lcom/bytedance/mpaas/IEncryptor;->encrypt([BI)[B

    move-result-object v3

    goto :goto_1

    .line 52
    :cond_2
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/bytedance/applog/encryptor/EncryptorUtil;->encrypt([BI)[B

    move-result-object v3

    :cond_3
    :goto_1
    return-object v3

    :cond_4
    return-object p0
.end method
