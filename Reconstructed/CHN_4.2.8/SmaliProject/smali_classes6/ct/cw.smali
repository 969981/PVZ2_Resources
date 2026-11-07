.class public final Lct/cw;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field private static a:Lct/cw;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 8

    const-string v0, "gps"

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 112
    :cond_0
    invoke-static {p0}, Lct/cw;->b(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "wifi"

    .line 115
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_2

    .line 119
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :try_start_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-le v6, v7, :cond_1

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    const/4 v5, 0x0

    :catch_1
    const/4 v4, 0x0

    :goto_0
    :try_start_2
    const-string v6, "location"

    .line 134
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    if-eqz p0, :cond_4

    .line 137
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    .line 139
    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_3

    move v3, v6

    goto :goto_1

    .line 144
    :cond_3
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move p0, v3

    move v3, v6

    goto :goto_2

    :catch_2
    :cond_4
    :goto_1
    const/4 p0, 0x0

    :goto_2
    xor-int/lit8 v0, v1, 0x1

    if-nez v5, :cond_5

    or-int/lit8 v0, v0, 0x2

    :cond_5
    if-nez v3, :cond_6

    or-int/lit8 v0, v0, 0x4

    :cond_6
    if-nez v4, :cond_7

    or-int/lit8 v0, v0, 0x8

    :cond_7
    if-nez p0, :cond_8

    or-int/lit8 v0, v0, 0x10

    :cond_8
    return v0
.end method

.method public static a()Lct/cw;
    .locals 1

    .line 20
    sget-object v0, Lct/cw;->a:Lct/cw;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lct/cw;

    invoke-direct {v0}, Lct/cw;-><init>()V

    sput-object v0, Lct/cw;->a:Lct/cw;

    .line 23
    :cond_0
    sget-object v0, Lct/cw;->a:Lct/cw;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    .line 177
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    return v0

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method
