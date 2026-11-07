.class public Lcom/mobile/auth/gatewayauth/utils/security/CheckHook;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pns-2.14.24-LogOnlineStandardCuumRelease_alijtca_plus"

    invoke-static {v0}, Lcom/ali/security/MinosSecurityLoad_16dba14f261cfe105b990854ef30de5f;->SLoad(Ljava/lang/String;)V

    const/4 v0, -0x1

    sput v0, Lcom/mobile/auth/gatewayauth/utils/security/CheckHook;->a:I

    sput v0, Lcom/mobile/auth/gatewayauth/utils/security/CheckHook;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synchronized native isHookByJar()Z
.end method

.method public static synchronized native isHookByStack()Z
.end method
