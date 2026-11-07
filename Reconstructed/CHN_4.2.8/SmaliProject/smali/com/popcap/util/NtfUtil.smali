.class public Lcom/popcap/util/NtfUtil;
.super Ljava/lang/Object;
.source "NtfUtil.java"


# static fields
.field public static Url:Ljava/lang/String;

.field public static mLock:Ljava/util/concurrent/locks/Lock;

.field public static mPcpService:Lcom/popcap/util/PopCapDaemonService;

.field public static popcapLog:Lcom/popcap/log/IPcpLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/popcap/util/NtfUtil;->mLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetDateStr(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetImei()Ljava/lang/String;
    .locals 2

    .line 78
    sget-object v0, Lcom/popcap/util/NtfUtil;->mPcpService:Lcom/popcap/util/PopCapDaemonService;

    .line 79
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/popcap/util/PopCapDaemonService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLocalFlag(Ljava/lang/String;)Z
    .locals 3

    .line 150
    sget-object v0, Lcom/popcap/util/NtfUtil;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 151
    sget-object v0, Lcom/popcap/util/NtfUtil;->mPcpService:Lcom/popcap/util/PopCapDaemonService;

    const-string v1, "PushService"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/popcap/util/PopCapDaemonService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 154
    sget-object v0, Lcom/popcap/util/NtfUtil;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p0
.end method

.method public static GetLocalInt(Ljava/lang/String;)I
    .locals 3

    .line 160
    sget-object v0, Lcom/popcap/util/NtfUtil;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 161
    sget-object v0, Lcom/popcap/util/NtfUtil;->mPcpService:Lcom/popcap/util/PopCapDaemonService;

    .line 162
    const-string v1, "PushService"

    const/4 v2, 0x0

    .line 161
    invoke-virtual {v0, v1, v2}, Lcom/popcap/util/PopCapDaemonService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, -0x1

    .line 163
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 164
    sget-object v0, Lcom/popcap/util/NtfUtil;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p0
.end method

.method public static GetLocalString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 139
    sget-object v0, Lcom/popcap/util/NtfUtil;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 140
    sget-object v0, Lcom/popcap/util/NtfUtil;->mPcpService:Lcom/popcap/util/PopCapDaemonService;

    .line 141
    const-string v1, "PushService"

    const/4 v2, 0x0

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/popcap/util/PopCapDaemonService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    const-string v1, "none"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 143
    sget-object v0, Lcom/popcap/util/NtfUtil;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0
.end method

.method public static GetLocalTime()Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 111
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetPCPService()Lcom/popcap/util/PopCapDaemonService;
    .locals 1

    .line 31
    sget-object v0, Lcom/popcap/util/NtfUtil;->mPcpService:Lcom/popcap/util/PopCapDaemonService;

    return-object v0
.end method

.method public static GetPakcName()Ljava/lang/String;
    .locals 1

    .line 169
    sget-object v0, Lcom/popcap/util/NtfUtil;->mPcpService:Lcom/popcap/util/PopCapDaemonService;

    invoke-virtual {v0}, Lcom/popcap/util/PopCapDaemonService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetUUId()Ljava/lang/String;
    .locals 8

    .line 91
    sget-object v0, Lcom/popcap/util/NtfUtil;->mPcpService:Lcom/popcap/util/PopCapDaemonService;

    .line 92
    invoke-virtual {v0}, Lcom/popcap/util/PopCapDaemonService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    sget-object v3, Lcom/popcap/util/NtfUtil;->mPcpService:Lcom/popcap/util/PopCapDaemonService;

    invoke-virtual {v3}, Lcom/popcap/util/PopCapDaemonService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 100
    const-string v4, "android_id"

    .line 98
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    new-instance v3, Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v4, v2

    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v1, v1

    const/16 v6, 0x20

    shl-long/2addr v1, v6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v6, v0

    or-long v0, v1, v6

    .line 102
    invoke-direct {v3, v4, v5, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    .line 104
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetUserlastOpt()Ljava/lang/String;
    .locals 3

    .line 117
    sget-object v0, Lcom/popcap/util/NtfUtil;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 118
    sget-object v0, Lcom/popcap/util/NtfUtil;->mPcpService:Lcom/popcap/util/PopCapDaemonService;

    .line 119
    const-string v1, "PushService"

    const/4 v2, 0x0

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/popcap/util/PopCapDaemonService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    const-string v1, "ulstOpt"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/popcap/util/NtfUtil;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method public static GetWifiMac()Ljava/lang/String;
    .locals 2

    .line 68
    sget-object v0, Lcom/popcap/util/NtfUtil;->mPcpService:Lcom/popcap/util/PopCapDaemonService;

    .line 69
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/popcap/util/PopCapDaemonService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 70
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetImei()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SaveDatalocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 48
    sget-object v0, Lcom/popcap/util/NtfUtil;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 49
    sget-object v0, Lcom/popcap/util/NtfUtil;->mPcpService:Lcom/popcap/util/PopCapDaemonService;

    .line 50
    const-string v1, "PushService"

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/popcap/util/PopCapDaemonService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    sget-object p0, Lcom/popcap/util/NtfUtil;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public static SaveLocalInt(Ljava/lang/String;I)V
    .locals 3

    .line 58
    sget-object v0, Lcom/popcap/util/NtfUtil;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 59
    sget-object v0, Lcom/popcap/util/NtfUtil;->mPcpService:Lcom/popcap/util/PopCapDaemonService;

    .line 60
    const-string v1, "PushService"

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/popcap/util/PopCapDaemonService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    sget-object p0, Lcom/popcap/util/NtfUtil;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public static SaveLogServer(Ljava/lang/String;)V
    .locals 1

    .line 85
    sget-object v0, Lcom/popcap/util/NtfUtil;->popcapLog:Lcom/popcap/log/IPcpLog;

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-interface {v0, p0}, Lcom/popcap/log/IPcpLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static SaveUserLastOpt()V
    .locals 4

    .line 126
    sget-object v0, Lcom/popcap/util/NtfUtil;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 127
    sget-object v0, Lcom/popcap/util/NtfUtil;->mPcpService:Lcom/popcap/util/PopCapDaemonService;

    .line 128
    const-string v1, "PushService"

    const/4 v2, 0x0

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/popcap/util/PopCapDaemonService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 131
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 133
    const-string v2, "ulstOpt"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    sget-object v0, Lcom/popcap/util/NtfUtil;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public static SetPCPService(Lcom/popcap/util/PopCapDaemonService;)V
    .locals 0

    .line 36
    sput-object p0, Lcom/popcap/util/NtfUtil;->mPcpService:Lcom/popcap/util/PopCapDaemonService;

    return-void
.end method

.method public static SetVerion(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 27
    new-instance p0, Lcom/popcap/log/DebugLog;

    invoke-direct {p0}, Lcom/popcap/log/DebugLog;-><init>()V

    sput-object p0, Lcom/popcap/util/NtfUtil;->popcapLog:Lcom/popcap/log/IPcpLog;

    :cond_0
    return-void
.end method
