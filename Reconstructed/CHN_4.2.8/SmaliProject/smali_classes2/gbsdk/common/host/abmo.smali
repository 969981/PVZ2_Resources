.class public final Lgbsdk/common/host/abmo;
.super Ljava/lang/Object;
.source "LogLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abmo$ab;,
        Lgbsdk/common/host/abmo$ac;
    }
.end annotation


# static fields
.field private static b:Z

.field private static uZ:Lgbsdk/common/host/abmo$ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lgbsdk/common/host/abmo$ab;

    invoke-direct {v0}, Lgbsdk/common/host/abmo$ab;-><init>()V

    sput-object v0, Lgbsdk/common/host/abmo;->uZ:Lgbsdk/common/host/abmo$ac;

    return-void
.end method

.method public static a(Lgbsdk/common/host/abmo$ac;)V
    .locals 1

    .line 32
    sget-boolean v0, Lgbsdk/common/host/abmo;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 36
    sput-object p0, Lgbsdk/common/host/abmo;->uZ:Lgbsdk/common/host/abmo$ac;

    :cond_1
    const/4 p0, 0x1

    .line 38
    sput-boolean p0, Lgbsdk/common/host/abmo;->b:Z

    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 1

    .line 42
    sget-object v0, Lgbsdk/common/host/abmo;->uZ:Lgbsdk/common/host/abmo$ac;

    invoke-interface {v0, p0}, Lgbsdk/common/host/abmo$ac;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static q(Ljava/lang/String;)[B
    .locals 1

    if-eqz p0, :cond_0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "UTF-8"

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
