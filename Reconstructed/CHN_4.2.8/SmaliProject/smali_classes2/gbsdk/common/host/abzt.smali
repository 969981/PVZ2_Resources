.class public final Lgbsdk/common/host/abzt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lgbsdk/common/host/abzt;->a:Z

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    .line 44
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZeusScanRunnable listPluginDownloadDir, dir = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Zeus/init_zeus"

    invoke-static {v1, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lgbsdk/common/host/abzt$1;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abzt$1;-><init>(Lgbsdk/common/host/abzt;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 30
    iget-boolean v0, p0, Lgbsdk/common/host/abzt;->a:Z

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lgbsdk/common/host/abxw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, v0}, Lgbsdk/common/host/abzt;->a(Ljava/io/File;)V

    .line 34
    :cond_0
    invoke-static {}, Lgbsdk/common/host/abxw;->y()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lgbsdk/common/host/abzt;->a(Ljava/io/File;)V

    :cond_1
    return-void
.end method
