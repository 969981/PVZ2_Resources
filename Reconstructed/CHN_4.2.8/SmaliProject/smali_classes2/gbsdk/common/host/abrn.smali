.class public Lgbsdk/common/host/abrn;
.super Ljava/lang/Object;
.source "ApkChannelUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abrn$ab;,
        Lgbsdk/common/host/abrn$ac;
    }
.end annotation


# static fields
.field private static BY:Ljava/lang/String; = null

.field private static CA:Ljava/lang/String; = null

.field private static CB:Ljava/lang/String; = null

.field private static CC:Ljava/lang/String; = null

.field public static Ca:Ljava/lang/String; = null

.field private static final Ce:Ljava/lang/String; = "meta_umeng_channel"

.field private static final Cf:Ljava/lang/String; = "ticket"

.field private static final Cg:Ljava/lang/String; = "extra"

.field private static final Ch:Ljava/lang/String; = "unsec_extra_info"

.field private static final Ci:Ljava/lang/String; = "union_extra_info"

.field private static final Cj:Ljava/lang/String; = "sec_extra_info"

.field private static final Ck:Ljava/lang/String; = "sec_extra_info"

.field private static final Cl:Ljava/lang/String; = "{}"

.field private static final Cm:Ljava/lang/String; = "click_id"

.field private static final Cn:Ljava/lang/String; = "click_id_nature"

.field private static final Co:Ljava/lang/String; = "outer_extra"

.field private static final Cp:Ljava/lang/String; = "is_data_check"

.field private static final Cq:I = 0x1

.field public static final Cr:I = 0x1

.field public static final Cs:I = 0x2

.field public static final Ct:I = 0x3

.field public static final Cu:I = 0x4

.field public static final Cv:I = 0x5

.field public static Cw:Z = false

.field private static Cx:Lgbsdk/common/host/abrn$ac; = null

.field private static Cy:Ljava/lang/Integer; = null

.field private static Cz:Ljava/lang/String; = null

.field public static final ERROR_UNKNOWN:I = 0x6

.field private static final TAG:Ljava/lang/String; = "ApkChannelUtils"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;J)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "a7c3ec4d6cc48332d294b93672fe9c40"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 359
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "result"

    if-nez p0, :cond_1

    const-string v2, "success"

    goto :goto_0

    :cond_1
    const-string v2, "fail"

    .line 361
    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fail_status"

    .line 362
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "fail_msg"

    .line 363
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "duration"

    .line 364
    invoke-virtual {v0, p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :catch_0
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object p0

    const-string p1, "parse_channel_result"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->sendLog(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v3, 0x2

    aput-object p2, v0, v3

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p3, p4}, Ljava/lang/Long;-><init>(J)V

    const/4 v5, 0x3

    aput-object v4, v0, v5

    sget-object v4, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v5, 0x0

    const-string v6, "5996fabee1a2143a04f65cda0e3776ad"

    invoke-static {v0, v5, v4, v2, v6}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 334
    invoke-static {p2}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 336
    invoke-static {p0}, Lgbsdk/common/host/abrn;->an(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p0

    .line 337
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 338
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_1

    .line 345
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgbsdk/common/host/abrn;->bV(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x6

    const/4 v1, 0x6

    .line 350
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    const-string p0, ""

    .line 354
    :goto_1
    invoke-static {v1, p0, p3, p4}, Lgbsdk/common/host/abrn;->a(ILjava/lang/String;J)V

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[osdk_parse]sendParseResultEvent, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "|"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApkChannelUtils"

    invoke-static {p1, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ag(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "af2586296a6993582b0db534dc0b11e1"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 433
    :cond_0
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelFileProvider;->Cb:Ljava/lang/String;

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apk path from provider "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ApkChannelUtils"

    invoke-static {v4, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 437
    sget-object v2, Lgbsdk/common/host/abrn;->Cy:Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 438
    invoke-static {}, Lgbsdk/common/host/abqp;->dS()Lgbsdk/common/host/abqp;

    move-result-object v2

    iget-object v2, v2, Lgbsdk/common/host/abqp;->BC:Lgbsdk/common/host/abqp$ab;

    iget v2, v2, Lgbsdk/common/host/abqp$ab;->BD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lgbsdk/common/host/abrn;->Cy:Ljava/lang/Integer;

    .line 440
    :cond_1
    sget-object v2, Lgbsdk/common/host/abrn;->Cy:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v0, :cond_2

    .line 441
    invoke-static {p0}, Lgbsdk/common/host/abrn;->ap(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apk path from single process "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_2
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 446
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v3

    .line 450
    :cond_3
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    .line 452
    :catchall_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "apk path from application info "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method private static an(Landroid/content/Context;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "265344868d98456fc8e47c9b5c8fade9"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Landroid/util/Pair;

    return-object p0

    .line 385
    :cond_0
    :try_start_0
    invoke-static {p0}, Lgbsdk/common/host/abrn;->ao(Landroid/content/Context;)V
    :try_end_0
    .catch Lgbsdk/common/host/abrj; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 387
    invoke-virtual {p0}, Lgbsdk/common/host/abrj;->printStackTrace()V

    .line 388
    new-instance v0, Landroid/util/Pair;

    iget v1, p0, Lgbsdk/common/host/abrj;->CQ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lgbsdk/common/host/abrj;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static ao(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "b13a4a2058948639a027d066ced0383b"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    new-array v3, v1, [I

    .line 394
    fill-array-data v3, :array_0

    .line 399
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-static {p0}, Lgbsdk/common/host/abrn;->ag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v6, "r"

    invoke-direct {v5, p0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lgbsdk/common/host/abpl; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lgbsdk/common/host/abrj; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 400
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 401
    invoke-static {v4}, Lgbsdk/common/host/abou;->c(Ljava/nio/channels/FileChannel;)Lgbsdk/common/host/aboq;

    move-result-object p0

    iget-object p0, p0, Lgbsdk/common/host/aboq;->ye:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    .line 402
    invoke-static {p0}, Lgbsdk/common/host/abou;->a(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object p0

    .line 404
    aget v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 406
    :cond_1
    new-instance v0, Lgbsdk/common/host/abrj;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "existing block id"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lgbsdk/common/host/abrj;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lgbsdk/common/host/abpl; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lgbsdk/common/host/abrj; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 419
    :try_start_2
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 425
    :catch_0
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :catch_4
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v5, v4

    .line 415
    :goto_1
    :try_start_4
    new-instance v0, Lgbsdk/common/host/abrj;

    const/4 v1, 0x6

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lgbsdk/common/host/abrj;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_5
    move-exception p0

    move-object v5, v4

    .line 413
    :goto_2
    throw p0

    :catch_6
    move-exception p0

    move-object v5, v4

    .line 411
    :goto_3
    new-instance v0, Lgbsdk/common/host/abrj;

    invoke-virtual {p0}, Lgbsdk/common/host/abpl;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lgbsdk/common/host/abrj;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_7
    move-exception p0

    move-object v5, v4

    .line 409
    :goto_4
    new-instance v0, Lgbsdk/common/host/abrj;

    const/4 v1, 0x4

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lgbsdk/common/host/abrj;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz v4, :cond_4

    .line 419
    :try_start_5
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_5

    :catch_8
    nop

    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    .line 425
    :try_start_6
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 429
    :catch_9
    :cond_5
    throw p0

    :array_0
    .array-data 4
        -0x6699999a
        0x71777777
        0x71777778
    .end array-data
.end method

.method private static ap(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "31c43e44b71540662aa2b58a9180b6a5"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 459
    :cond_0
    invoke-static {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/ProcessUtils;->isInMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v3

    .line 462
    :cond_1
    sget-object v0, Lgbsdk/common/host/abrn;->Cx:Lgbsdk/common/host/abrn$ac;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lgbsdk/common/host/abrn$ac;->CG:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 463
    sget-object p0, Lgbsdk/common/host/abrn;->Cx:Lgbsdk/common/host/abrn$ac;

    iget-object p0, p0, Lgbsdk/common/host/abrn$ac;->CG:Ljava/lang/String;

    return-object p0

    .line 465
    :cond_2
    sget-object v0, Lgbsdk/common/host/abrn;->Cx:Lgbsdk/common/host/abrn$ac;

    if-eqz v0, :cond_3

    return-object v3

    .line 468
    :cond_3
    new-instance v0, Lgbsdk/common/host/abrn$ac;

    invoke-direct {v0, v3}, Lgbsdk/common/host/abrn$ac;-><init>(Lgbsdk/common/host/abrn$1;)V

    sput-object v0, Lgbsdk/common/host/abrn;->Cx:Lgbsdk/common/host/abrn$ac;

    .line 469
    new-instance v1, Lgbsdk/common/host/abrn$3;

    invoke-direct {v1}, Lgbsdk/common/host/abrn$3;-><init>()V

    invoke-virtual {v0, p0, v1}, Lgbsdk/common/host/abrn$ac;->bindService(Landroid/content/Context;Lgbsdk/common/host/abrn$ab;)V

    return-object v3
.end method

.method private static bV(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "1b8dc0f9f16f2d7be0d221ca68b6b696"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 373
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    return v2
.end method

.method private static bW(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "4567cf66607b8a51bf485da13894ba95"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 521
    :cond_0
    invoke-static {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    .line 524
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 525
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private static bX(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "24e82508dd5a11d4d6b7e528cfe087e4"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    return-object p0

    .line 583
    :cond_0
    invoke-static {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v3

    .line 587
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 589
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 590
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 591
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 592
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p0

    .line 598
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 596
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v3
.end method

.method public static ec()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "79fa55608c89f97ed52174923c28a64c"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 117
    :cond_0
    sget-object v0, Lgbsdk/common/host/abrn;->Cz:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    sget-object v0, Lgbsdk/common/host/abrn;->Cz:Ljava/lang/String;

    return-object v0

    .line 121
    :cond_1
    invoke-static {}, Lgbsdk/common/host/abrn;->ei()Ljava/lang/String;

    .line 123
    sget-object v0, Lgbsdk/common/host/abrn;->Cz:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-static {}, Lgbsdk/common/host/abqr;->dX()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abrn;->Cz:Ljava/lang/String;

    .line 127
    :cond_2
    sget-object v0, Lgbsdk/common/host/abrn;->Cz:Ljava/lang/String;

    return-object v0
.end method

.method public static ed()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "9b351a51f21cc1066b984134739cfc5a"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 131
    :cond_0
    sget-object v0, Lgbsdk/common/host/abrn;->BY:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    sget-object v0, Lgbsdk/common/host/abrn;->BY:Ljava/lang/String;

    return-object v0

    .line 135
    :cond_1
    invoke-static {}, Lgbsdk/common/host/abrn;->ei()Ljava/lang/String;

    .line 138
    sget-object v0, Lgbsdk/common/host/abrn;->BY:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-static {}, Lgbsdk/common/host/abqr;->dY()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abrn;->BY:Ljava/lang/String;

    .line 142
    :cond_2
    sget-object v0, Lgbsdk/common/host/abrn;->BY:Ljava/lang/String;

    return-object v0
.end method

.method public static ee()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "3890ef48634ddf2c8917554905d8d735"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 146
    :cond_0
    sget-object v0, Lgbsdk/common/host/abrn;->CA:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    sget-object v0, Lgbsdk/common/host/abrn;->CA:Ljava/lang/String;

    return-object v0

    .line 150
    :cond_1
    invoke-static {}, Lgbsdk/common/host/abrn;->ei()Ljava/lang/String;

    .line 152
    sget-object v0, Lgbsdk/common/host/abrn;->CA:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    invoke-static {}, Lgbsdk/common/host/abqr;->dZ()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abrn;->CA:Ljava/lang/String;

    .line 156
    :cond_2
    sget-object v0, Lgbsdk/common/host/abrn;->CA:Ljava/lang/String;

    return-object v0
.end method

.method public static ef()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "974882c4b80e84519fb11d96a510aca4"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 160
    :cond_0
    sget-object v0, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    sget-object v0, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    return-object v0

    .line 164
    :cond_1
    invoke-static {}, Lgbsdk/common/host/abrn;->ei()Ljava/lang/String;

    .line 167
    sget-object v0, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    invoke-static {}, Lgbsdk/common/host/abqr;->ea()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    .line 171
    :cond_2
    sget-object v0, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    return-object v0
.end method

.method public static eg()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "dae1c44876dc6964782cd773d160e321"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    .line 177
    invoke-static {}, Lgbsdk/common/host/abrn;->ed()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "extra"

    .line 182
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "unsec_extra_info"

    .line 184
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 190
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static eh()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "e3bddd3b21633fda65de1499c69f0696"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 198
    :cond_0
    sget-object v0, Lgbsdk/common/host/abrn;->CC:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    sget-object v0, Lgbsdk/common/host/abrn;->CC:Ljava/lang/String;

    return-object v0

    .line 202
    :cond_1
    invoke-static {}, Lgbsdk/common/host/abrn;->ed()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 206
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "extra"

    .line 207
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "sec_extra_info"

    .line 209
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abrn;->CC:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 212
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 216
    :cond_2
    :goto_0
    sget-object v0, Lgbsdk/common/host/abrn;->CC:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    return-object v0
.end method

.method private static ei()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "0dc3c73729688816ebf660e7bb5b198e"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    .line 244
    sget-boolean v1, Lgbsdk/common/host/abrn;->Cw:Z

    if-nez v1, :cond_9

    .line 245
    const-class v1, Lgbsdk/common/host/abrn;

    monitor-enter v1

    .line 246
    :try_start_0
    sget-boolean v2, Lgbsdk/common/host/abrn;->Cw:Z

    if-nez v2, :cond_8

    const-string v2, "ApkChannelUtils"

    const-string v3, "[osdk_parse]parseChannelFromApk"

    .line 247
    invoke-static {v2, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 249
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getAppContext()Landroid/content/Context;

    move-result-object v5

    .line 251
    new-instance v6, Lgbsdk/common/host/abrn$1;

    invoke-direct {v6}, Lgbsdk/common/host/abrn$1;-><init>()V

    invoke-static {v6}, Lgbsdk/common/host/aboo;->a(Lgbsdk/common/host/abon;)V

    .line 259
    invoke-static {v5}, Lgbsdk/common/host/aboo;->ad(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    .line 260
    invoke-static {v5}, Lgbsdk/common/host/aboo;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lgbsdk/common/host/abrn;->CA:Ljava/lang/String;

    .line 261
    invoke-static {v6}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 262
    sget-object v6, Lgbsdk/common/host/abrn;->CA:Ljava/lang/String;

    invoke-static {v6}, Lgbsdk/common/host/abqr;->bT(Ljava/lang/String;)V

    :cond_1
    const-string v6, "ApkChannelUtils"

    .line 264
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[osdk_parse]HumeSDK.getExtra: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", HumeSDK.getChannel: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lgbsdk/common/host/abrn;->CA:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v6, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    if-eqz v6, :cond_2

    const-string v6, "{}"

    .line 269
    sget-object v7, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "ApkChannelUtils"

    const-string v7, "[osdk_parse] attribution ex is a null json object"

    .line 270
    invoke-static {v6, v7}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, ""

    .line 271
    sput-object v6, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    .line 275
    :cond_2
    sget-object v6, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 276
    sget-object v6, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    .line 277
    invoke-static {v6}, Lgbsdk/common/host/abqr;->bU(Ljava/lang/String;)V

    const-string v6, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 282
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    sget-object v8, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "meta_umeng_channel"

    .line 283
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "union_extra_info"

    .line 285
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 286
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "meta_umeng_channel"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    .line 289
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    const-string v0, ""

    .line 292
    :cond_4
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 293
    sput-object v0, Lgbsdk/common/host/abrn;->Cz:Ljava/lang/String;

    .line 294
    invoke-static {v0}, Lgbsdk/common/host/abqr;->bR(Ljava/lang/String;)V

    .line 298
    :cond_5
    invoke-static {v6}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 299
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lgbsdk/common/host/abrn;->BY:Ljava/lang/String;

    goto :goto_1

    .line 301
    :cond_6
    sget-object v6, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    sput-object v6, Lgbsdk/common/host/abrn;->BY:Ljava/lang/String;

    .line 303
    :goto_1
    sget-object v6, Lgbsdk/common/host/abrn;->BY:Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 304
    sget-object v6, Lgbsdk/common/host/abrn;->BY:Ljava/lang/String;

    invoke-static {v6}, Lgbsdk/common/host/abqr;->bS(Ljava/lang/String;)V

    .line 309
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 311
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lgbsdk/common/host/abrn$2;

    invoke-direct {v3, v5, v0, v6, v7}, Lgbsdk/common/host/abrn$2;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string v2, "ApkChannelUtils"

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[osdk_parse]parseChannelFromApk end, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lgbsdk/common/host/abrn;->Cz:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lgbsdk/common/host/abrn;->CB:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sput-boolean v4, Lgbsdk/common/host/abrn;->Cw:Z

    .line 322
    :cond_8
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_9
    :goto_2
    return-object v0
.end method

.method public static getAdAttribution()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "4aedf37207526a5e09410623730701bc"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    return-object v0

    .line 482
    :cond_0
    invoke-static {}, Lgbsdk/common/host/abrn;->ef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abrn;->bX(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 483
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "union_extra_info"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 484
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    .line 486
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "extra"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 487
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_3
    return-object v0
.end method

.method public static getTicketId()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "e8b83e1a07c4474da458997ef390674d"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 220
    :cond_0
    sget-object v0, Lgbsdk/common/host/abrn;->CB:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    sget-object v0, Lgbsdk/common/host/abrn;->CB:Ljava/lang/String;

    return-object v0

    .line 224
    :cond_1
    invoke-static {}, Lgbsdk/common/host/abrn;->ed()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 227
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ticket"

    .line 228
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abrn;->CB:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 234
    :cond_2
    :goto_0
    sget-object v0, Lgbsdk/common/host/abrn;->CB:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    return-object v0
.end method

.method public static isDataCheck()Z
    .locals 8

    const-string v0, ""

    const-string v1, "ApkChannelUtils"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lgbsdk/common/host/abrn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "cb1bae2e8c6412529f0300317504a9f1"

    invoke-static {v3, v5, v4, v6, v7}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 496
    :cond_0
    invoke-static {}, Lgbsdk/common/host/abrn;->ef()Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-static {v3}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    .line 501
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "click_id"

    .line 502
    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "outer_extra"

    .line 503
    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 507
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_2
    if-eqz v5, :cond_3

    const-string v4, "is_data_check"

    .line 510
    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 512
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[osdk_parse]is data check, clickId: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", outExtra: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isDataCheck: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-static {v3}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3}, Lgbsdk/common/host/abrn;->bW(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_5

    :cond_4
    if-ne v4, v6, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    return v2

    :catch_0
    move-exception v0

    const-string v3, "[osdk_parse]is data check error!"

    .line 515
    invoke-static {v1, v3, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method
