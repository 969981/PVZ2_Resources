.class public final Lcom/mobile/auth/z/p;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = true

.field public static b:Ljava/lang/String; = "MD5"

.field public static c:Ljava/lang/String; = "msv6.wosms.cn"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "6.1.3AR002B0319"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
