.class public Lcom/bytedance/apm/common/utility/ToolUtils;
.super Ljava/lang/Object;
.source "ToolUtils.java"


# static fields
.field private static sCurrentProcessName:Ljava/lang/String; = null

.field private static sIsHmOs:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurProcessNameFromProc()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 60
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/cmdline"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "iso-8859-1"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v3

    if-lez v3, :cond_0

    int-to-char v3, v3

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    invoke-static {v1}, Lcom/bytedance/apm/common/utility/io/IOUtils;->close(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-object v1, v0

    :catchall_1
    invoke-static {v1}, Lcom/bytedance/apm/common/utility/io/IOUtils;->close(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static getCurrentProcessName()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/bytedance/apm/common/utility/ToolUtils;->sCurrentProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    sget-object v0, Lcom/bytedance/apm/common/utility/ToolUtils;->sCurrentProcessName:Ljava/lang/String;

    return-object v0

    .line 22
    :cond_0
    invoke-static {}, Lcom/bytedance/apm/common/utility/ToolUtils;->getCurrentProcessNameByApplication()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/apm/common/utility/ToolUtils;->sCurrentProcessName:Ljava/lang/String;

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    sget-object v0, Lcom/bytedance/apm/common/utility/ToolUtils;->sCurrentProcessName:Ljava/lang/String;

    return-object v0

    .line 26
    :cond_1
    invoke-static {}, Lcom/bytedance/apm/common/utility/ToolUtils;->getCurrentProcessNameByActivityThread()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/apm/common/utility/ToolUtils;->sCurrentProcessName:Ljava/lang/String;

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28
    sget-object v0, Lcom/bytedance/apm/common/utility/ToolUtils;->sCurrentProcessName:Ljava/lang/String;

    return-object v0

    .line 30
    :cond_2
    invoke-static {}, Lcom/bytedance/apm/common/utility/ToolUtils;->getCurProcessNameFromProc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/apm/common/utility/ToolUtils;->sCurrentProcessName:Ljava/lang/String;

    return-object v0
.end method

.method private static getCurrentProcessNameByActivityThread()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 50
    invoke-static {v0}, Lcom/bytedance/apm/common/utility/reflect/Reflect;->on(Ljava/lang/String;)Lcom/bytedance/apm/common/utility/reflect/Reflect;

    move-result-object v0

    const-string v1, "currentProcessName"

    invoke-virtual {v0, v1}, Lcom/bytedance/apm/common/utility/reflect/Reflect;->call(Ljava/lang/String;)Lcom/bytedance/apm/common/utility/reflect/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/apm/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static getCurrentProcessNameByApplication()Ljava/lang/String;
    .locals 2

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 39
    :try_start_0
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static isHarmonyOs()Z
    .locals 4

    .line 80
    sget v0, Lcom/bytedance/apm/common/utility/ToolUtils;->sIsHmOs:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    :try_start_0
    const-string v0, "ohos.utils.system.SystemCapability"

    .line 84
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    sput v2, Lcom/bytedance/apm/common/utility/ToolUtils;->sIsHmOs:I

    goto :goto_0

    .line 87
    :cond_2
    sput v1, Lcom/bytedance/apm/common/utility/ToolUtils;->sIsHmOs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    sput v1, Lcom/bytedance/apm/common/utility/ToolUtils;->sIsHmOs:I

    .line 92
    :goto_0
    sget v0, Lcom/bytedance/apm/common/utility/ToolUtils;->sIsHmOs:I

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
