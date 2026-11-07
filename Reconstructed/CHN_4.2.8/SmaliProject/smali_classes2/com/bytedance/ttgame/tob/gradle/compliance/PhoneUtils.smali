.class public Lcom/bytedance/ttgame/tob/gradle/compliance/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# static fields
.field private static volatile sDeviceId:Ljava/lang/String;

.field private static volatile sDeviceIdRequested:Z

.field private static volatile sSubscriberId:Ljava/lang/String;

.field private static volatile sSubscriberIdRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 16
    sget-boolean v0, Lcom/bytedance/ttgame/tob/gradle/compliance/PhoneUtils;->sDeviceIdRequested:Z

    if-eqz v0, :cond_0

    .line 17
    sget-object p0, Lcom/bytedance/ttgame/tob/gradle/compliance/PhoneUtils;->sDeviceId:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 19
    sput-boolean v0, Lcom/bytedance/ttgame/tob/gradle/compliance/PhoneUtils;->sDeviceIdRequested:Z

    :try_start_0
    const-string v0, "phone"

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 22
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/ttgame/tob/gradle/compliance/PhoneUtils;->sDeviceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "PhoneUtils"

    const-string v1, "Failed to get device id"

    .line 27
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/ttgame/tob/gradle/compliance/PhoneUtils;->sDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public static getSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 33
    sget-boolean v0, Lcom/bytedance/ttgame/tob/gradle/compliance/PhoneUtils;->sSubscriberIdRequested:Z

    if-eqz v0, :cond_0

    .line 34
    sget-object p0, Lcom/bytedance/ttgame/tob/gradle/compliance/PhoneUtils;->sSubscriberId:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 36
    sput-boolean v0, Lcom/bytedance/ttgame/tob/gradle/compliance/PhoneUtils;->sSubscriberIdRequested:Z

    :try_start_0
    const-string v0, "phone"

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 39
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/ttgame/tob/gradle/compliance/PhoneUtils;->sSubscriberId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "PhoneUtils"

    const-string v1, "Failed to get subscribe id"

    .line 44
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/ttgame/tob/gradle/compliance/PhoneUtils;->sSubscriberId:Ljava/lang/String;

    return-object p0
.end method
