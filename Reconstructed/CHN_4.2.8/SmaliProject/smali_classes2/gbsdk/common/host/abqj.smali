.class public Lgbsdk/common/host/abqj;
.super Ljava/lang/Object;
.source "AbiHelper.java"


# static fields
.field public static final xf:Ljava/lang/String; = "unknown_host_abi"

.field private static final xg:Ljava/lang/String; = "armeabi"

.field private static final xh:Ljava/lang/String; = "armeabi-v7a"

.field private static final xi:Ljava/lang/String; = "arm64-v8a"

.field private static final xj:Ljava/lang/String; = "x86"

.field private static final xk:Ljava/lang/String; = "x86_64"

.field public static final xl:I = 0x0

.field public static final xm:I = 0x1

.field public static final xn:I = 0x2

.field public static final xo:I = 0x3

.field public static final xp:I = -0x1

.field private static xq:Ljava/lang/String; = null

.field private static xr:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/app/Application;)Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lgbsdk/common/host/abqj;->xq:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 38
    invoke-static {p0}, Lgbsdk/common/host/abqj;->c(Landroid/app/Application;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lgbsdk/common/host/abqj;->xq:Ljava/lang/String;

    .line 40
    :cond_0
    sget-object p0, Lgbsdk/common/host/abqj;->xq:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Ljava/util/zip/ZipFile;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 79
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 81
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".so"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/"

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static c(Landroid/app/Application;)Ljava/lang/String;
    .locals 6

    const-string v0, "unknown_host_abi"

    .line 45
    :try_start_0
    invoke-static {}, Lgbsdk/common/host/abqd;->getHostAbi()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "unknown"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 51
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance p0, Ljava/util/zip/ZipFile;

    invoke-direct {p0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 53
    invoke-static {p0}, Lgbsdk/common/host/abqj;->b(Ljava/util/zip/ZipFile;)Ljava/util/Set;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 56
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt p0, v2, :cond_1

    .line 57
    sget-object p0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    .line 59
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v2, p0, v3

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, p0, v4

    .line 61
    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    aget-object p0, p0, v3

    return-object p0

    .line 64
    :cond_2
    array-length v2, p0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, p0, v3

    .line 65
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0

    :catchall_0
    move-exception p0

    const-string v1, "Frankie"

    const-string v2, "parseHostAbi failed"

    .line 71
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static d(Landroid/app/Application;)I
    .locals 2

    .line 90
    sget v0, Lgbsdk/common/host/abqj;->xr:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 91
    invoke-static {p0}, Lgbsdk/common/host/abqj;->e(Landroid/app/Application;)I

    move-result p0

    sput p0, Lgbsdk/common/host/abqj;->xr:I

    .line 93
    :cond_0
    sget p0, Lgbsdk/common/host/abqj;->xr:I

    return p0
.end method

.method private static d(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "armeabi"

    .line 118
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "armeabi-v7a"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "x86"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static e(Landroid/app/Application;)I
    .locals 3

    const/4 v0, -0x1

    .line 99
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 100
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    new-instance p0, Ljava/util/zip/ZipFile;

    invoke-direct {p0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 103
    invoke-static {p0}, Lgbsdk/common/host/abqj;->b(Ljava/util/zip/ZipFile;)Ljava/util/Set;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 105
    invoke-static {v1}, Lgbsdk/common/host/abqj;->d(Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x1

    .line 108
    :cond_0
    invoke-static {v1}, Lgbsdk/common/host/abqj;->e(Ljava/util/Set;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "Frankie"

    const-string v2, "parseHostApkAbiBits failed"

    .line 112
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v0
.end method

.method private static e(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "arm64-v8a"

    .line 122
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "x86_64"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
