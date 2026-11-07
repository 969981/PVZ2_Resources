.class public Lcom/mobile/auth/gatewayauth/utils/ReflectionUtils;
.super Ljava/lang/Object;


# static fields
.field private static volatile sApplication:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pns-2.14.24-LogOnlineStandardCuumRelease_alijtca_plus"

    invoke-static {v0}, Lcom/ali/security/MinosSecurityLoad_16dba14f261cfe105b990854ef30de5f;->SLoad(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/mobile/auth/gatewayauth/utils/ReflectionUtils;->sApplication:Landroid/app/Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getActivity()Landroid/app/Activity;
.end method

.method public static native getApplication()Landroid/app/Application;
.end method
