.class public Lcom/mobile/auth/gatewayauth/utils/AESUtils;
.super Ljava/lang/Object;


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES"

.field private static final CipherMode:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final TRANSFORMATION:Ljava/lang/String; = "AES/CTR/NoPadding"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pns-2.14.24-LogOnlineStandardCuumRelease_alijtca_plus"

    invoke-static {v0}, Lcom/ali/security/MinosSecurityLoad_16dba14f261cfe105b990854ef30de5f;->SLoad(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native createIV(Ljava/lang/String;)Ljavax/crypto/spec/IvParameterSpec;
.end method

.method private static native createKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
.end method

.method public static native decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native decryptBase642Byte(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public static native decryptBase642String(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native decryptByOpeator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native decryptByte2Byte([BLjava/lang/String;Ljava/lang/String;)[B
.end method

.method public static native decryptByte2String([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native decryptString2Byte(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "0000000000000000"

    invoke-static {p0, p1, v1}, Lcom/mobile/auth/gatewayauth/utils/AESUtils;->encryptString2Base64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/utils/j;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :goto_0
    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static native encryptByte2Base64([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native encryptByte2Byte([BLjava/lang/String;Ljava/lang/String;)[B
.end method

.method public static native encryptByte2String([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native encryptString2Base64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native encryptString2Byte(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public static native encryptString2String(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
