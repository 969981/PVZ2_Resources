.class public final Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;
.super Ljava/lang/Object;
.source "SettingsJsonParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J+\u0010\u000b\u001a\u0004\u0018\u0001H\u000c\"\u0004\u0008\u0000\u0010\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007\u00a2\u0006\u0002\u0010\u0011R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;",
        "",
        "()V",
        "luffyDelegate",
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;",
        "getLuffyDelegate",
        "()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;",
        "luffyDelegate$delegate",
        "Lkotlin/Lazy;",
        "sGson",
        "Lcom/google/gson/Gson;",
        "parse",
        "T",
        "clazz",
        "Ljava/lang/Class;",
        "settingsName",
        "",
        "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;",
        "ch_framework_tobRelease"
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
.field public static final INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static final luffyDelegate$delegate:Lkotlin/Lazy;

.field private static final sGson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;

    .line 16
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;->sGson:Lcom/google/gson/Gson;

    .line 18
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser$luffyDelegate$2;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser$luffyDelegate$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;->luffyDelegate$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getLuffyDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "0a9b02698d45f195a4ba3e9e5901dc5d"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    return-object v0

    .line 18
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;->luffyDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    return-object v0
.end method

.method public static final parse(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "SettingsJsonParser"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "6400e3de311db376dda95c484b07fc3e"

    invoke-static {v1, v4, v3, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Object;

    return-object p0

    :cond_0
    const-string v1, "clazz"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "settingsName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    :try_start_0
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;

    invoke-direct {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;->getLuffyDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/LuffyDelegate;->optJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object p1, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const-string v1, "parse setting exception"

    .line 32
    invoke-static {v0, v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 36
    check-cast p0, Ljava/lang/Throwable;

    const-string p1, "new instance exception"

    invoke-static {v0, p1, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4
.end method
