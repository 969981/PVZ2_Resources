.class public final Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;
.super Ljava/lang/Object;
.source "DeviceIdentifier.java"


# static fields
.field private static volatile androidId:Ljava/lang/String;

.field private static volatile clientId:Ljava/lang/String;

.field private static volatile guid:Ljava/lang/String;

.field private static volatile imei:Ljava/lang/String;

.field private static volatile oaid:Ljava/lang/String;

.field private static volatile pseudoId:Ljava/lang/String;

.field private static volatile registered:Z

.field private static volatile widevineId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    sput-object p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    return-object p0
.end method

.method public static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->androidId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 115
    const-class v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-object v1, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->androidId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 117
    invoke-static {p0}, Lcom/github/gzuliyujiang/oaid/DeviceID;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->androidId:Ljava/lang/String;

    .line 119
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 121
    :cond_1
    :goto_0
    sget-object p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->androidId:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    .line 122
    sput-object p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->androidId:Ljava/lang/String;

    .line 124
    :cond_2
    sget-object p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->androidId:Ljava/lang/String;

    return-object p0
.end method

.method public static getClientId()Ljava/lang/String;
    .locals 2

    .line 59
    sget-object v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-class v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {}, Lcom/github/gzuliyujiang/oaid/DeviceID;->getClientIdMD5()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->clientId:Ljava/lang/String;

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 66
    :cond_1
    :goto_0
    sget-object v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->clientId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    .line 67
    sput-object v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->clientId:Ljava/lang/String;

    .line 69
    :cond_2
    sget-object v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public static getGUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->guid:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 157
    const-class v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;

    monitor-enter v0

    .line 158
    :try_start_0
    sget-object v1, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->guid:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 159
    invoke-static {p0}, Lcom/github/gzuliyujiang/oaid/DeviceID;->getGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->guid:Ljava/lang/String;

    .line 161
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 163
    :cond_1
    :goto_0
    sget-object p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->guid:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    .line 164
    sput-object p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->guid:Ljava/lang/String;

    .line 166
    :cond_2
    sget-object p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->guid:Ljava/lang/String;

    return-object p0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->imei:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 74
    const-class v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->imei:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 76
    invoke-static {p0}, Lcom/github/gzuliyujiang/oaid/DeviceID;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->imei:Ljava/lang/String;

    .line 78
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 80
    :cond_1
    :goto_0
    sget-object p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->imei:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    .line 81
    sput-object p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->imei:Ljava/lang/String;

    .line 83
    :cond_2
    sget-object p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->imei:Ljava/lang/String;

    return-object p0
.end method

.method public static getOAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    const-class v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-static {}, Lcom/github/gzuliyujiang/oaid/DeviceID;->getOAID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    .line 91
    sget-object v1, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    new-instance v1, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier$1;

    invoke-direct {v1}, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier$1;-><init>()V

    invoke-static {p0, v1}, Lcom/github/gzuliyujiang/oaid/DeviceID;->getOAID(Landroid/content/Context;Lcom/github/gzuliyujiang/oaid/IGetter;)V

    .line 105
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 107
    :cond_2
    :goto_0
    sget-object p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    if-nez p0, :cond_3

    const-string p0, ""

    .line 108
    sput-object p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    .line 110
    :cond_3
    sget-object p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->oaid:Ljava/lang/String;

    return-object p0
.end method

.method public static getPseudoID()Ljava/lang/String;
    .locals 2

    .line 142
    sget-object v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->pseudoId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 143
    const-class v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;

    monitor-enter v0

    .line 144
    :try_start_0
    sget-object v1, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->pseudoId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 145
    invoke-static {}, Lcom/github/gzuliyujiang/oaid/DeviceID;->getPseudoID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->pseudoId:Ljava/lang/String;

    .line 147
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 149
    :cond_1
    :goto_0
    sget-object v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->pseudoId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    .line 150
    sput-object v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->pseudoId:Ljava/lang/String;

    .line 152
    :cond_2
    sget-object v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->pseudoId:Ljava/lang/String;

    return-object v0
.end method

.method public static getWidevineID()Ljava/lang/String;
    .locals 2

    .line 128
    sget-object v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->widevineId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 129
    const-class v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->widevineId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 131
    invoke-static {}, Lcom/github/gzuliyujiang/oaid/DeviceID;->getWidevineID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->widevineId:Ljava/lang/String;

    .line 133
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 135
    :cond_1
    :goto_0
    sget-object v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->widevineId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    .line 136
    sput-object v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->widevineId:Ljava/lang/String;

    .line 138
    :cond_2
    sget-object v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->widevineId:Ljava/lang/String;

    return-object v0
.end method

.method public static register(Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, v0}, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->register(Landroid/app/Application;Lcom/github/gzuliyujiang/oaid/IRegisterCallback;)V

    return-void
.end method

.method public static register(Landroid/app/Application;Lcom/github/gzuliyujiang/oaid/IRegisterCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "application",
            "callback"
        }
    .end annotation

    .line 47
    sget-boolean v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->registered:Z

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    const-class v0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-boolean v1, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->registered:Z

    if-nez v1, :cond_1

    .line 52
    invoke-static {p0, p1}, Lcom/github/gzuliyujiang/oaid/DeviceID;->register(Landroid/app/Application;Lcom/github/gzuliyujiang/oaid/IRegisterCallback;)V

    const/4 p0, 0x1

    .line 53
    sput-boolean p0, Lcom/github/gzuliyujiang/oaid/DeviceIdentifier;->registered:Z

    .line 55
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
