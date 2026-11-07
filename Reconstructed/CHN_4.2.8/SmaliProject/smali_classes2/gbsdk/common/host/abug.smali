.class public final Lgbsdk/common/host/abug;
.super Ljava/lang/Object;
.source "DebugModeManager.kt"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0016\u001a\u00020\tH\u0002J\u0012\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u001cH\u0002J\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fJ\u0008\u0010!\u001a\u00020\tH\u0002J\u000e\u0010\"\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u000eJ\u0008\u0010$\u001a\u00020\tH\u0002J\u0008\u0010%\u001a\u00020\tH\u0002J\u0008\u0010&\u001a\u00020\tH\u0002J\u0006\u0010\'\u001a\u00020\u0018J\u0014\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0010*\u001a\u0004\u0018\u00010\u001cH\u0002J\u0018\u0010+\u001a\u00020\t2\u0006\u0010,\u001a\u00020)2\u0006\u0010*\u001a\u00020\u001cH\u0002J\u0010\u0010-\u001a\u00020\u00182\u0006\u0010.\u001a\u00020\tH\u0002J\u0008\u0010/\u001a\u00020\u0018H\u0002J\u0008\u00100\u001a\u00020\u0018H\u0002J\u0008\u00101\u001a\u00020\u0018H\u0002J\u0008\u00102\u001a\u00020\u0018H\u0002J\u0018\u00103\u001a\u00020\u00182\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000207H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u00068"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/main/debug/DebugModeManager;",
        "Ljava/lang/Thread$UncaughtExceptionHandler;",
        "()V",
        "DEBUG_MODE_PREFS",
        "",
        "DEVTOOLS_API",
        "LAST_CRASH_HAPPENED",
        "TAG",
        "devtools",
        "",
        "Ljava/lang/Boolean;",
        "hasInited",
        "hasPrepared",
        "mContext",
        "Landroid/content/Context;",
        "mDefaultHandler",
        "mHandler",
        "Landroid/os/Handler;",
        "getMHandler",
        "()Landroid/os/Handler;",
        "mHandler$delegate",
        "Lkotlin/Lazy;",
        "canLoadDevToolsService",
        "closeSafety",
        "",
        "closeable",
        "Ljava/io/Closeable;",
        "getCrashCacheDir",
        "Ljava/io/File;",
        "getCrashCacheFile",
        "getCrashCaches",
        "",
        "Lcom/bytedance/ttgame/tob/common/host/main/debug/DebugModeInfo;",
        "hasDevTools",
        "init",
        "context",
        "isLastCrashHappened",
        "isNeedShowDebugModeTips",
        "isStartDebug",
        "prepare",
        "readObject",
        "Ljava/io/Serializable;",
        "file",
        "saveObject",
        "ser",
        "setLastCrashHappened",
        "happened",
        "showDebugModeActivity",
        "showWarningDialog",
        "startApiDebug",
        "startCrashDebug",
        "uncaughtException",
        "thread",
        "Ljava/lang/Thread;",
        "throwable",
        "",
        "ch_main_tobRelease"
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
.field private static final TAG:Ljava/lang/String; = "DebugModeManager"

.field public static final aBT:Lgbsdk/common/host/abug;

.field private static final aBU:Ljava/lang/String; = "debug_mode_prefs"

.field private static final aBV:Ljava/lang/String; = "last_crash_happened"

.field private static final aBW:Ljava/lang/String; = "com.bytedance.ttgame.tob.optional.devtools.api.IDevToolsService"

.field private static aBX:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static final aBY:Lkotlin/Lazy;

.field private static aBZ:Z

.field private static aCa:Z

.field private static aCb:Ljava/lang/Boolean;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgbsdk/common/host/abug;

    invoke-direct {v0}, Lgbsdk/common/host/abug;-><init>()V

    sput-object v0, Lgbsdk/common/host/abug;->aBT:Lgbsdk/common/host/abug;

    .line 35
    sget-object v0, Lgbsdk/common/host/abug$ab;->aCc:Lgbsdk/common/host/abug$ab;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abug;->aBY:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final J(Ljava/io/File;)Ljava/io/Serializable;
    .locals 6

    const-string v0, "DebugModeManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "7b00cd3c0742661f7cb398f26bdfc2a7"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/io/Serializable;

    return-object p1

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 235
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    .line 241
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 242
    :try_start_1
    new-instance v3, Ljava/io/ObjectInputStream;

    move-object v4, v2

    check-cast v4, Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    check-cast v4, Ljava/io/Serializable;

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type java.io.Serializable"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v3, v1

    goto :goto_0

    :catch_3
    move-exception v4

    move-object v3, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_4

    :catch_4
    move-exception p1

    move-object v2, v1

    move-object v3, v2

    .line 251
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object v4, v1

    check-cast v4, Ljava/io/Serializable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 254
    :goto_1
    check-cast v3, Ljava/io/Closeable;

    invoke-direct {p0, v3}, Lgbsdk/common/host/abug;->closeSafety(Ljava/io/Closeable;)V

    .line 255
    check-cast v2, Ljava/io/Closeable;

    invoke-direct {p0, v2}, Lgbsdk/common/host/abug;->closeSafety(Ljava/io/Closeable;)V

    goto :goto_3

    :catch_5
    move-exception v4

    move-object v2, v1

    move-object v3, v2

    .line 245
    :goto_2
    :try_start_4
    instance-of v5, v4, Ljava/io/InvalidClassException;

    if-eqz v5, :cond_3

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 248
    :cond_3
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object v4, v1

    check-cast v4, Ljava/io/Serializable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :goto_3
    return-object v4

    :catchall_2
    move-exception p1

    move-object v1, v3

    .line 254
    :goto_4
    check-cast v1, Ljava/io/Closeable;

    invoke-direct {p0, v1}, Lgbsdk/common/host/abug;->closeSafety(Ljava/io/Closeable;)V

    .line 255
    check-cast v2, Ljava/io/Closeable;

    invoke-direct {p0, v2}, Lgbsdk/common/host/abug;->closeSafety(Ljava/io/Closeable;)V

    throw p1

    :cond_4
    :goto_5
    return-object v1
.end method

.method private final a(Ljava/io/Serializable;Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v3, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "ce682896ef730e33e4e1db1e73ef547e"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 214
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 215
    :try_start_1
    new-instance p2, Ljava/io/ObjectOutputStream;

    move-object v4, v3

    check-cast v4, Ljava/io/OutputStream;

    invoke-direct {p2, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 216
    :try_start_2
    invoke-virtual {p2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p2}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    check-cast p2, Ljava/io/Closeable;

    invoke-direct {p0, p2}, Lgbsdk/common/host/abug;->closeSafety(Ljava/io/Closeable;)V

    .line 224
    check-cast v3, Ljava/io/Closeable;

    invoke-direct {p0, v3}, Lgbsdk/common/host/abug;->closeSafety(Ljava/io/Closeable;)V

    const/4 v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p2

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v0

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v3, v0

    :goto_0
    :try_start_3
    const-string p2, "DebugModeManager"

    .line 220
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 223
    check-cast v0, Ljava/io/Closeable;

    invoke-direct {p0, v0}, Lgbsdk/common/host/abug;->closeSafety(Ljava/io/Closeable;)V

    .line 224
    check-cast v3, Ljava/io/Closeable;

    invoke-direct {p0, v3}, Lgbsdk/common/host/abug;->closeSafety(Ljava/io/Closeable;)V

    :goto_1
    return v1

    :catchall_2
    move-exception p1

    .line 223
    :goto_2
    check-cast v0, Ljava/io/Closeable;

    invoke-direct {p0, v0}, Lgbsdk/common/host/abug;->closeSafety(Ljava/io/Closeable;)V

    .line 224
    check-cast v3, Ljava/io/Closeable;

    invoke-direct {p0, v3}, Lgbsdk/common/host/abug;->closeSafety(Ljava/io/Closeable;)V

    throw p1
.end method

.method private static final b(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    sget-object v1, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const-string v3, "012d2d9933fa5958d64e1a094d0c18aa"

    invoke-static {v0, v2, v1, p1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 113
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    :cond_1
    return-void
.end method

.method private static final c(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    sget-object v1, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const-string v3, "e47134a6cb0a2b5fe03d69b0aaae8696"

    invoke-static {v0, v2, v1, p1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 117
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    .line 118
    :cond_1
    sget-object p0, Lgbsdk/common/host/abug;->aBT:Lgbsdk/common/host/abug;

    invoke-direct {p0}, Lgbsdk/common/host/abug;->fJ()V

    return-void
.end method

.method private final closeSafety(Ljava/io/Closeable;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "9d9de7bd596188fc59b177d23def23a2"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 261
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 263
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DebugModeManager"

    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final e(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "ea45e3435aa89afa5539478512997186"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "$thread"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lgbsdk/common/host/abug;->aBX:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private final fA()Landroid/os/Handler;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e7dacb3e9bc8190f030422d4489c0b1a"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    return-object v0

    .line 35
    :cond_0
    sget-object v0, Lgbsdk/common/host/abug;->aBY:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private final fB()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b876634b93dcf10ce2c24e47362470e2"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 46
    :cond_0
    sget-object v0, Lgbsdk/common/host/abug;->aCb:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 49
    :cond_1
    invoke-direct {p0}, Lgbsdk/common/host/abug;->fC()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abug;->aCb:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final fC()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1d0810d86c1bc51e031a720826f04511"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "com.bytedance.ttgame.tob.optional.devtools.api.IDevToolsService"

    .line 55
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 56
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.Class<com.bytedance.ttgame.tob.framework.service.annotation.IService>"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    const-string v2, "DebugModeManager"

    const-string v3, "not found devtools"

    .line 58
    invoke-static {v2, v3, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private final fD()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "bc42260ba4ce79456db61dbd0b3f9c39"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 66
    :cond_0
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->debugMode:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lgbsdk/common/host/abug;->fB()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private final fE()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6eecc1652a435a0f079bdd0848449510"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 72
    :cond_0
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->debugMode:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lgbsdk/common/host/abug;->fB()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private final fG()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "99bf5fb74ca8969721df6aedb37be125"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abug;->fD()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofitService;

    .line 88
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofitService;

    sget-object v1, Lgbsdk/common/host/-$$Lambda$abug$S6en5lyKb2n7qgphYVBwRl85aDs;->INSTANCE:Lgbsdk/common/host/-$$Lambda$abug$S6en5lyKb2n7qgphYVBwRl85aDs;

    invoke-interface {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/IRetrofitService;->addInterceptor(Lcom/bytedance/ttgame/tob/common/host/framework/callback/IFactory;)V

    :cond_1
    return-void
.end method

.method private final fH()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "da2b5cc98c9291fc0d219ec4d9abf4b8"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abug;->fE()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lgbsdk/common/host/abug;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Debug Mode"

    .line 109
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "debug_mode_remind_message"

    const-string v3, "string"

    .line 110
    invoke-static {v2, v3}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v0, "\u77e5\u9053\u4e86"

    .line 112
    check-cast v0, Ljava/lang/CharSequence;

    sget-object v2, Lgbsdk/common/host/-$$Lambda$abug$kWiRdLQcGtHoTiamkHQKelaUcbw;->INSTANCE:Lgbsdk/common/host/-$$Lambda$abug$kWiRdLQcGtHoTiamkHQKelaUcbw;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-direct {p0}, Lgbsdk/common/host/abug;->fD()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u67e5\u770b\u4e0a\u4e00\u6b21\u5d29\u6e83\u6808"

    .line 116
    check-cast v0, Ljava/lang/CharSequence;

    sget-object v2, Lgbsdk/common/host/-$$Lambda$abug$7LDYge_uJFEWkphJV31WEiXfafE;->INSTANCE:Lgbsdk/common/host/-$$Lambda$abug$7LDYge_uJFEWkphJV31WEiXfafE;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    return-void
.end method

.method private final fI()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "848e12a7097cd79c3b7f495a3640bc05"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abug;->fD()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    sput-object v1, Lgbsdk/common/host/abug;->aBX:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 129
    move-object v1, p0

    check-cast v1, Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 131
    :cond_1
    invoke-direct {p0}, Lgbsdk/common/host/abug;->fK()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    sget-object v1, Lgbsdk/common/host/abug;->mContext:Landroid/content/Context;

    const-string v2, "debug_mdoe_showing_recent_crash_message"

    const-string v3, "string"

    invoke-static {v2, v3}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    invoke-direct {p0}, Lgbsdk/common/host/abug;->fJ()V

    :cond_2
    return-void
.end method

.method private final fJ()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f4d838626254b495a8508829a2c5cc0b"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-direct {p0, v0}, Lgbsdk/common/host/abug;->z(Z)V

    .line 140
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgbsdk/common/host/abug;->mContext:Landroid/content/Context;

    const-class v2, Lcom/bytedance/ttgame/tob/common/host/main/debug/DebugModeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    sget-object v1, Lgbsdk/common/host/abug;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private final fK()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8138fbf1152534414f25ed1057c731c8"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 161
    :cond_0
    sget-object v1, Lgbsdk/common/host/abug;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    const-string v2, "debug_mode_prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "last_crash_happened"

    .line 162
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_1
    return v0
.end method

.method private final fL()Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a9ba98da4d821d0e8189e526a107ffd6"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    return-object v0

    .line 173
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lgbsdk/common/host/abug;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "crash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    return-object v0
.end method

.method private final fM()Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "16b475c99a98a0af83233f4494581237"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    return-object v0

    .line 181
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Date().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lgbsdk/common/host/abug;->fL()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static final fO()Lcom/bytedance/retrofit2/intercept/Interceptor;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "23d71e068a7420f0bd79363e7fb10dcd"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/retrofit2/intercept/Interceptor;

    return-object v0

    .line 88
    :cond_0
    new-instance v0, Lgbsdk/common/host/abud;

    invoke-direct {v0}, Lgbsdk/common/host/abud;-><init>()V

    check-cast v0, Lcom/bytedance/retrofit2/intercept/Interceptor;

    return-object v0
.end method

.method private static final fP()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "c73d69bec98cfdb64af36ee85fcfc991"

    invoke-static {v1, v3, v2, v4, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 155
    :cond_0
    sget-object v1, Lgbsdk/common/host/abug;->mContext:Landroid/content/Context;

    const-string v2, "debug_mode_record_crash_information"

    const-string v3, "string"

    invoke-static {v2, v3}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$7LDYge_uJFEWkphJV31WEiXfafE(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lgbsdk/common/host/abug;->c(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$973KJJGsZ_TyKGJIqVOI1wBTCIA()V
    .locals 0

    invoke-static {}, Lgbsdk/common/host/abug;->fP()V

    return-void
.end method

.method public static synthetic lambda$S6en5lyKb2n7qgphYVBwRl85aDs()Lcom/bytedance/retrofit2/intercept/Interceptor;
    .locals 1

    invoke-static {}, Lgbsdk/common/host/abug;->fO()Lcom/bytedance/retrofit2/intercept/Interceptor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$cuR0qf3NskM8qv7j5Sd7X-as8x4(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lgbsdk/common/host/abug;->e(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$kWiRdLQcGtHoTiamkHQKelaUcbw(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lgbsdk/common/host/abug;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final z(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e35df416036e9261f6cfad613c502642"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    sget-object v0, Lgbsdk/common/host/abug;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v1, "debug_mode_prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v1, "last_crash_happened"

    .line 168
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_2
    if-eqz v0, :cond_3

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final fF()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "120336887b51a8f2dd13a46e08c90788"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    sget-boolean v0, Lgbsdk/common/host/abug;->aBZ:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 80
    sput-boolean v0, Lgbsdk/common/host/abug;->aBZ:Z

    .line 82
    invoke-direct {p0}, Lgbsdk/common/host/abug;->fG()V

    return-void
.end method

.method public final fN()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abue;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d42b1b22bb1c9b64863075a527714db3"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 186
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abug;->fL()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    if-nez v1, :cond_1

    return-object v2

    .line 191
    :cond_1
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    .line 192
    invoke-direct {p0, v4}, Lgbsdk/common/host/abug;->J(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v5

    .line 193
    instance-of v6, v5, Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    .line 194
    new-instance v6, Lgbsdk/common/host/abue;

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-direct {v6, v5, v7, v8}, Lgbsdk/common/host/abue;-><init>(Ljava/lang/Throwable;J)V

    .line 195
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_3
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method public final init(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "6cba331798385227ecf620def352bb8d"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-boolean v1, Lgbsdk/common/host/abug;->aCa:Z

    if-eqz v1, :cond_1

    return-void

    .line 97
    :cond_1
    sput-boolean v0, Lgbsdk/common/host/abug;->aCa:Z

    .line 99
    sput-object p1, Lgbsdk/common/host/abug;->mContext:Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Lgbsdk/common/host/abug;->fH()V

    .line 103
    invoke-direct {p0}, Lgbsdk/common/host/abug;->fI()V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v3, Lgbsdk/common/host/abug;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "1d9ecb370cc9bf6bbf70362424082e12"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DebugModeManager"

    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object v0, p2

    check-cast v0, Ljava/io/Serializable;

    invoke-direct {p0}, Lgbsdk/common/host/abug;->fM()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lgbsdk/common/host/abug;->a(Ljava/io/Serializable;Ljava/io/File;)Z

    .line 152
    invoke-direct {p0, v2}, Lgbsdk/common/host/abug;->z(Z)V

    .line 154
    invoke-direct {p0}, Lgbsdk/common/host/abug;->fA()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lgbsdk/common/host/-$$Lambda$abug$973KJJGsZ_TyKGJIqVOI1wBTCIA;->INSTANCE:Lgbsdk/common/host/-$$Lambda$abug$973KJJGsZ_TyKGJIqVOI1wBTCIA;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    invoke-direct {p0}, Lgbsdk/common/host/abug;->fA()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lgbsdk/common/host/-$$Lambda$abug$cuR0qf3NskM8qv7j5Sd7X-as8x4;

    invoke-direct {v1, p1, p2}, Lgbsdk/common/host/-$$Lambda$abug$cuR0qf3NskM8qv7j5Sd7X-as8x4;-><init>(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const-wide/16 p1, 0x7d0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
