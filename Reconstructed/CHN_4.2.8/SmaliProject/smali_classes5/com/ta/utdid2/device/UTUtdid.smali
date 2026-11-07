.class public Lcom/ta/utdid2/device/UTUtdid;
.super Ljava/lang/Object;
.source "UTUtdid.java"


# static fields
.field private static final CREATE_LOCK:Ljava/lang/Object;

.field private static final HMAC_KEY:Ljava/lang/String; = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

.field private static final S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

.field private static final S_GLOBAL_PERSISTENT_CONFIG_KEY:Ljava/lang/String; = "Alvin2"

.field private static final S_LOCAL_STORAGE_KEY:Ljava/lang/String; = "ContextData"

.field private static final S_LOCAL_STORAGE_NAME:Ljava/lang/String; = ".DataStorage"

.field static final UM_SETTINGS_STORAGE:Ljava/lang/String; = "dxCRMxhQkdGePGnp"

.field static final UM_SETTINGS_STORAGE_NEW:Ljava/lang/String; = "mqBRboGZkQPcAkyk"

.field private static s_umutdid:Lcom/ta/utdid2/device/UTUtdid;


# instance fields
.field private mCBDomain:Ljava/lang/String;

.field private mCBKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

.field private mUtdid:Ljava/lang/String;

.field private mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->CREATE_LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".UTSystemConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    const-string v1, "xx_utdid_key"

    .line 32
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    const-string v1, "xx_utdid_domain"

    .line 33
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBDomain:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 39
    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v0, "[^0-9a-zA-Z=/+]+"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPattern:Ljava/util/regex/Pattern;

    .line 46
    iput-object p1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    sget-object v3, Lcom/ta/utdid2/device/UTUtdid;->S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

    const-string v4, "Alvin2"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 50
    new-instance v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v9, ".DataStorage"

    const-string v10, "ContextData"

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 52
    new-instance p1, Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-direct {p1}, Lcom/ta/utdid2/device/UTUtdidHelper;-><init>()V

    iput-object p1, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "K_%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    new-array p1, p1, [Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBDomain:Ljava/lang/String;

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "D_%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBDomain:Ljava/lang/String;

    return-void
.end method

.method private static _calcHmac([B)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "HmacSHA1"

    .line 434
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 435
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 436
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 437
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    const/4 v0, 0x2

    .line 438
    invoke-static {p0, v0}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final _generateUtdid()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    .line 400
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 403
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v2

    .line 404
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 405
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 406
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v1, 0x3

    .line 407
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 408
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    :goto_0
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v1

    .line 416
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v1

    .line 417
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 419
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/ta/utdid2/device/UTUtdid;->_calcHmac([B)Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v1

    .line 421
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 422
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J
    .locals 4

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getUtdid()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getCreateTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getImsi()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getImei()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s%s%s%s%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 84
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/zip/Adler32;->update([B)V

    .line 86
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getUtdidFromTaoPPC()Ljava/lang/String;
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v0, :cond_0

    const-string v1, "UTDID"

    .line 229
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v1, v0}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;
    .locals 2

    if-eqz p0, :cond_1

    .line 59
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    if-nez v0, :cond_1

    .line 60
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->CREATE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/ta/utdid2/device/UTUtdid;

    invoke-direct {v1, p0}, Lcom/ta/utdid2/device/UTUtdid;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 67
    :cond_1
    :goto_0
    sget-object p0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    return-object p0
.end method

.method private isValidUTDID(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "\n"

    .line 249
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v1, 0x18

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 253
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method private saveUtdidToLocalStorage(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    :cond_0
    return-void
.end method

.method private saveUtdidToNewSettings(Ljava/lang/String;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 171
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\n"

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v0, 0x18

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 176
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method private saveUtdidToSettings(Ljava/lang/String;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->syncUTDIDToSettings(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private saveUtdidToTaoPPC(Ljava/lang/String;)V
    .locals 10

    .line 101
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\n"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 105
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_5

    .line 106
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v0, :cond_5

    const-string v1, "UTDID"

    .line 107
    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v3, "EI"

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 112
    :cond_1
    iget-object v4, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v5, "SI"

    invoke-virtual {v4, v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-static {v4}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 114
    iget-object v4, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 116
    :cond_2
    iget-object v6, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string v7, "DID"

    invoke-virtual {v6, v7}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-static {v6}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v6, v2

    :cond_3
    if-eqz v0, :cond_4

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 122
    :cond_4
    new-instance v0, Lcom/ta/utdid2/device/Device;

    invoke-direct {v0}, Lcom/ta/utdid2/device/Device;-><init>()V

    .line 123
    invoke-virtual {v0, v2}, Lcom/ta/utdid2/device/Device;->setImei(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v4}, Lcom/ta/utdid2/device/Device;->setImsi(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p1}, Lcom/ta/utdid2/device/Device;->setUtdid(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, v6}, Lcom/ta/utdid2/device/Device;->setDeviceId(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/ta/utdid2/device/Device;->setCreateTimestamp(J)V

    .line 129
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v2, v1, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v0}, Lcom/ta/utdid2/device/Device;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v0}, Lcom/ta/utdid2/device/Device;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v0}, Lcom/ta/utdid2/device/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v7, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v0}, Lcom/ta/utdid2/device/Device;->getCreateTimestamp()J

    move-result-wide v1

    const-string v3, "timestamp"

    invoke-virtual {p1, v3, v1, v2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putLong(Ljava/lang/String;J)V

    .line 134
    iget-object p1, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-static {v0}, Lcom/ta/utdid2/device/UTUtdid;->getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J

    move-result-wide v0

    const-string v2, "S"

    invoke-virtual {p1, v2, v0, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putLong(Ljava/lang/String;J)V

    .line 135
    iget-object p1, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    :cond_5
    return-void
.end method

.method private syncUTDIDToSettings(Ljava/lang/String;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 275
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 278
    monitor-exit p0

    return-object v0

    .line 281
    :cond_1
    :try_start_2
    new-instance v0, Lcom/ta/utdid2/device/UTUtdidHelper2;

    invoke-direct {v0}, Lcom/ta/utdid2/device/UTUtdidHelper2;-><init>()V

    const/4 v1, 0x0

    .line 287
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dxCRMxhQkdGePGnp"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 291
    invoke-virtual {v0, v2}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePackWithBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 294
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToNewSettings(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    monitor-exit p0

    return-object v3

    .line 298
    :cond_2
    :try_start_3
    invoke-virtual {v0, v2}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 300
    iget-object v4, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-static {v3}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 303
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dxCRMxhQkdGePGnp"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    :cond_3
    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v3, v2}, Lcom/ta/utdid2/device/UTUtdidHelper;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 312
    iput-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    .line 314
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 316
    invoke-direct {p0, v2}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToNewSettings(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    const/4 v1, 0x1

    .line 328
    :cond_5
    :try_start_4
    invoke-direct {p0}, Lcom/ta/utdid2/device/UTUtdid;->getUtdidFromTaoPPC()Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-direct {p0, v2}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 330
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_6

    .line 333
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V

    .line 336
    :cond_6
    invoke-direct {p0, v2}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToNewSettings(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    .line 339
    iput-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 340
    monitor-exit p0

    return-object v2

    .line 344
    :cond_7
    :try_start_5
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 346
    invoke-virtual {v0, v2}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 348
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/device/UTUtdidHelper;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    :cond_8
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 351
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v2, v0}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 353
    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 356
    invoke-direct {p0, v2}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V

    .line 359
    :cond_9
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 368
    :cond_a
    :try_start_6
    invoke-direct {p0}, Lcom/ta/utdid2/device/UTUtdid;->_generateUtdid()[B

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v2, 0x2

    .line 371
    invoke-static {v0, v2}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    .line 372
    invoke-direct {p0, v2}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v2, v0}, Lcom/ta/utdid2/device/UTUtdidHelper;->pack([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    if-eqz v1, :cond_b

    .line 378
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V

    .line 381
    :cond_b
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    .line 383
    :cond_c
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 386
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_d
    const/4 v0, 0x0

    .line 388
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
