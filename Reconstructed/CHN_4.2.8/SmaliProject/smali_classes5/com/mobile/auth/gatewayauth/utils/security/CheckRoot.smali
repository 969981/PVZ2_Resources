.class public Lcom/mobile/auth/gatewayauth/utils/security/CheckRoot;
.super Ljava/lang/Object;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pns-2.14.24-LogOnlineStandardCuumRelease_alijtca_plus"

    invoke-static {v0}, Lcom/ali/security/MinosSecurityLoad_16dba14f261cfe105b990854ef30de5f;->SLoad(Ljava/lang/String;)V

    const-string v0, "CheckRoot"

    sput-object v0, Lcom/mobile/auth/gatewayauth/utils/security/CheckRoot;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native checkDeviceDebuggable()Z
.end method

.method private static native checkRootPathSU()Z
.end method

.method private static native checkSuperuserApk()Z
.end method

.method public static native isDeviceRooted()Ljava/lang/String;
.end method
