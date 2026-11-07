.class Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;
.super Ljava/lang/Object;


# static fields
.field public static final SERVICE_TYPE_AUTH:I = 0x1

.field public static final SERVICE_TYPE_LOGIN:I = 0x2

.field protected static volatile a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;


# instance fields
.field private b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

.field private c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

.field private d:Lcom/mobile/auth/gatewayauth/manager/b;

.field private e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

.field private f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

.field private g:Lcom/mobile/auth/gatewayauth/manager/d;

.field private h:Lcom/mobile/auth/gatewayauth/manager/e;

.field private i:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private j:Lcom/mobile/auth/o/a;

.field private k:Ljava/lang/String;

.field private final l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

.field private volatile m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pns-2.14.24-LogOnlineStandardCuumRelease_alijtca_plus"

    invoke-static {v0}, Lcom/ali/security/MinosSecurityLoad_16dba14f261cfe105b990854ef30de5f;->SLoad(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/compat/a;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/manager/compat/a;-><init>()V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/nirvana/tools/core/ComponentSdkCore;->register(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/SystemManager;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-direct {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/d;->a()Lcom/mobile/auth/o/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    invoke-direct {v0, p1, v1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;-><init>(Landroid/content/Context;Lcom/mobile/auth/o/a;)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-direct {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;-><init>(Lcom/mobile/auth/gatewayauth/manager/d;Lcom/mobile/auth/gatewayauth/manager/SystemManager;)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    new-instance v1, Lcom/mobile/auth/gatewayauth/manager/b;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-direct {v1, p1, v0, v2}, Lcom/mobile/auth/gatewayauth/manager/b;-><init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/manager/d;)V

    iput-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d:Lcom/mobile/auth/gatewayauth/manager/b;

    new-instance p1, Lcom/mobile/auth/gatewayauth/manager/e;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-direct {p1, v0, v1}, Lcom/mobile/auth/gatewayauth/manager/e;-><init>(Lcom/mobile/auth/gatewayauth/manager/SystemManager;Lcom/mobile/auth/gatewayauth/manager/d;)V

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->h:Lcom/mobile/auth/gatewayauth/manager/e;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/d;->a(Lcom/mobile/auth/gatewayauth/manager/e;)V

    new-instance p1, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d:Lcom/mobile/auth/gatewayauth/manager/b;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->h:Lcom/mobile/auth/gatewayauth/manager/e;

    iget-object v6, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;-><init>(Lcom/mobile/auth/gatewayauth/manager/b;Lcom/mobile/auth/gatewayauth/manager/SystemManager;Lcom/mobile/auth/gatewayauth/manager/d;Lcom/mobile/auth/gatewayauth/manager/e;Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;)V

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    invoke-static {}, Lcom/nirvana/tools/core/ExecutorManager;->getInstance()Lcom/nirvana/tools/core/ExecutorManager;

    move-result-object p1

    new-instance v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$1;

    invoke-direct {v0, p0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$1;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)V

    invoke-virtual {p1, v0}, Lcom/nirvana/tools/core/ExecutorManager;->scheduleFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/RunnableScheduledFuture;

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->e()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c(Landroid/content/Context;)Z

    move-result p1

    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->getInstance()Lcom/mobile/auth/gatewayauth/manager/FeatureManager;

    move-result-object v0

    const-string v1, "enableReduceNetworkAccess"

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "false"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f()Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->i:Ljava/util/concurrent/Future;

    :cond_1
    invoke-static {}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e()Z

    invoke-static {}, Lcom/nirvana/tools/logger/UaidTracker;->getInstance()Lcom/nirvana/tools/logger/UaidTracker;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/EncryptUtils;->getSecret5()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/EncryptUtils;->getSecret6()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/EncryptUtils;->getSecret5()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/EncryptUtils;->getSecret6()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x26

    const/16 v4, 0x36

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/EncryptUtils;->getSecret6()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x46

    const/16 v5, 0x4c

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/EncryptUtils;->getSecret6()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x56

    const/16 v5, 0x5c

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/nirvana/tools/logger/UaidTracker;->setKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;ILcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZLcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->justGetToken(ILcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZLcom/mobile/auth/gatewayauth/TokenResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;JLcom/mobile/auth/gatewayauth/PreLoginResultListener;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->justPreVerify(JLcom/mobile/auth/gatewayauth/PreLoginResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;JLcom/mobile/auth/gatewayauth/PreLoginResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZZ)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->justPreLogin(JLcom/mobile/auth/gatewayauth/PreLoginResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;JLcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->justGetLoginToken(JLcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Landroid/content/Context;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p8}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;ZZLjava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    .locals 13

    move-object v12, p0

    :try_start_0
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/d;->h()V

    invoke-virtual/range {p7 .. p7}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;Z)V
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/nirvana/tools/core/ExecutorManager;->getInstance()Lcom/nirvana/tools/core/ExecutorManager;

    move-result-object v0

    new-instance v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$28;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move v4, p2

    move-object v5, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$28;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;ZLjava/lang/String;Z)V

    invoke-virtual {v0, v7}, Lcom/nirvana/tools/core/ExecutorManager;->scheduleFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/nirvana/tools/core/ExecutorManager;->getInstance()Lcom/nirvana/tools/core/ExecutorManager;

    move-result-object v0

    new-instance v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$27;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$27;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;ZLcom/mobile/auth/gatewayauth/TokenResultListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/core/ExecutorManager;->postMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(ZZLjava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 0

    if-eqz p6, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p4, p6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p5, :cond_2

    const-string p4, "sdk.get.lifebody.verifytoken"

    invoke-virtual {p5}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->getAction()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0, p3, p1, p5, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return p1
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lcom/nirvana/tools/core/ExecutorManager;->getInstance()Lcom/nirvana/tools/core/ExecutorManager;

    move-result-object v10

    new-instance v11, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$29;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p3

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$29;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Ljava/lang/String;ZLjava/lang/String;JJ)V

    invoke-virtual {v10, v11}, Lcom/nirvana/tools/core/ExecutorManager;->scheduleFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return v0
.end method

.method private a(ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)Z
    .locals 14

    move-object v12, p0

    const-string v0, "-10008"

    const/4 v13, 0x0

    :try_start_0
    iget-object v1, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/d;->h()V

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v1, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v2, "GetLoginToken from cache is null!"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    if-eqz p1, :cond_1

    move-object/from16 v8, p6

    invoke-virtual {v8, v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAuthSdkCode(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "-10008"

    const-string v5, "\u672a\u77e5\u5f02\u5e38"

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p6

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p7

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v13

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v13

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return v13
.end method

.method private a(ZLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Ljava/lang/String;)Z
    .locals 14

    move-object v12, p0

    const/4 v13, 0x0

    :try_start_0
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/d;->i()V

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v1, "GetVerifyToken from cache is null!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "-10008"

    const-string v5, "\u672a\u77e5\u5f02\u5e38"

    const-string v0, "-10008"

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p3

    move-object/from16 v11, p7

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v13

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v13

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return v13
.end method

.method static synthetic b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/b;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d:Lcom/mobile/auth/gatewayauth/manager/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p8}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V
    .locals 13

    move-object v12, p0

    :try_start_0
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/d;->i()V

    invoke-virtual/range {p7 .. p7}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/network/UTSharedPreferencesHelper;->readAuthSDKPrivateKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v2, "local pritekey is empty"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/network/RequestState;->getInstance()Lcom/mobile/auth/gatewayauth/network/RequestState;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mobile/auth/gatewayauth/network/RequestState;->setUseRequest(Z)V

    invoke-static {}, Lcom/nirvana/tools/core/ExecutorManager;->getInstance()Lcom/nirvana/tools/core/ExecutorManager;

    move-result-object v1

    new-instance v2, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$12;

    invoke-direct {v2, p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$12;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/nirvana/tools/core/ExecutorManager;->scheduleFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/RunnableScheduledFuture;

    return v0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/security/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$23;

    invoke-direct {v2, p0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$23;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)V

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/nirvana/tools/jsoner/JSONUtils;->fromJson(Lorg/json/JSONObject;Lcom/nirvana/tools/jsoner/JsonType;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v2, "parse local privatekey is empty"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/network/RequestState;->getInstance()Lcom/mobile/auth/gatewayauth/network/RequestState;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mobile/auth/gatewayauth/network/RequestState;->setUseRequest(Z)V

    invoke-static {}, Lcom/nirvana/tools/core/ExecutorManager;->getInstance()Lcom/nirvana/tools/core/ExecutorManager;

    move-result-object v1

    new-instance v2, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;

    invoke-direct {v2, p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$30;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/nirvana/tools/core/ExecutorManager;->scheduleFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/RunnableScheduledFuture;

    return v0

    :cond_1
    invoke-static {}, Lcom/mobile/auth/gatewayauth/network/RequestState;->getInstance()Lcom/mobile/auth/gatewayauth/network/RequestState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mobile/auth/gatewayauth/network/RequestState;->setKeyRespone(Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;)V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/network/RequestState;->getInstance()Lcom/mobile/auth/gatewayauth/network/RequestState;

    move-result-object v2

    const/16 v4, 0x1e

    invoke-virtual {v2, v4}, Lcom/mobile/auth/gatewayauth/network/RequestState;->checkTokenValied(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v4, "local privatekey expired not enough"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;->getExpiredTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/mobile/auth/gatewayauth/network/RequestState;->getInstance()Lcom/mobile/auth/gatewayauth/network/RequestState;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/mobile/auth/gatewayauth/network/RequestState;->setUseRequest(Z)V

    invoke-static {}, Lcom/nirvana/tools/core/ExecutorManager;->getInstance()Lcom/nirvana/tools/core/ExecutorManager;

    move-result-object v6

    new-instance v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$31;

    invoke-direct {v7, p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$31;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Lcom/nirvana/tools/core/ExecutorManager;->scheduleFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/RunnableScheduledFuture;

    sub-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v2, "local privatekey has expired"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :cond_3
    return v3

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v2, "parse local privatekey error"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/network/RequestState;->getInstance()Lcom/mobile/auth/gatewayauth/network/RequestState;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mobile/auth/gatewayauth/network/RequestState;->setUseRequest(Z)V

    invoke-static {}, Lcom/nirvana/tools/core/ExecutorManager;->getInstance()Lcom/nirvana/tools/core/ExecutorManager;

    move-result-object v1

    new-instance v2, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$32;

    invoke-direct {v2, p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$32;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/nirvana/tools/core/ExecutorManager;->scheduleFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return v0
.end method

.method static synthetic c(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private c(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/network/UTSharedPreferencesHelper;->readAuthSDKPrivateKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/security/a;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$33;

    invoke-direct {v1, p0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$33;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)V

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/nirvana/tools/jsoner/JSONUtils;->fromJson(Lorg/json/JSONObject;Lcom/nirvana/tools/jsoner/JsonType;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/mobile/auth/gatewayauth/network/RequestState;->getInstance()Lcom/mobile/auth/gatewayauth/network/RequestState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mobile/auth/gatewayauth/network/RequestState;->setKeyRespone(Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;)V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/network/RequestState;->getInstance()Lcom/mobile/auth/gatewayauth/network/RequestState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mobile/auth/gatewayauth/network/RequestState;->checkTokenValied(I)Z

    move-result p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v1, "parse local privatekey error"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return v0
.end method

.method static synthetic d(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/d;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mobile/auth/gatewayauth/network/RequestUtil;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/w/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/w/e;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mobile/auth/w/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/mobile/auth/w/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$34;

    invoke-direct {v0, p0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$34;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)V

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/nirvana/tools/jsoner/JSONUtils;->fromJson(Lorg/json/JSONObject;Lcom/nirvana/tools/jsoner/JsonType;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobile/auth/gatewayauth/network/PrivateRespone;

    const-string v1, "OK"

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/network/PrivateRespone;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/network/PrivateRespone;->getData()Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;->getExpiredTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/security/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mobile/auth/gatewayauth/network/UTSharedPreferencesHelper;->saveAuthSDKPrivateKey(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/network/RequestState;->getInstance()Lcom/mobile/auth/gatewayauth/network/RequestState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mobile/auth/gatewayauth/network/RequestState;->setKeyRespone(Lcom/mobile/auth/gatewayauth/network/PrivateKeyRespone;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static e()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.nirvana.tools.logger.UaidTracker"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :catch_0
    return v0
.end method

.method static synthetic f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private f()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/nirvana/tools/core/ExecutorManager;->getInstance()Lcom/nirvana/tools/core/ExecutorManager;

    move-result-object v0

    new-instance v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$35;

    invoke-direct {v1, p0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$35;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)V

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/core/ExecutorManager;->scheduleFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method static synthetic g(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/e;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->h:Lcom/mobile/auth/gatewayauth/manager/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/TokenResultListener;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    const-class v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-direct {v1, p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;-><init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V

    sput-object v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->setAuthListener(Lcom/mobile/auth/gatewayauth/TokenResultListener;)V

    sget-object p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :try_start_3
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object p1

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "2.14.24"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method static synthetic h(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Ljava/util/concurrent/Future;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->i:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private native justGetLoginPhone(Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;ILcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZLcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobile/auth/gatewayauth/model/MonitorStruct;",
            "Ljava/lang/String;",
            "I",
            "Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;",
            "Z",
            "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
            "Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;",
            "Lcom/mobile/auth/gatewayauth/manager/base/b;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation
.end method

.method private justGetLoginPhoneWhenUserControllVendorKey(Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;ILcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZLcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobile/auth/gatewayauth/model/MonitorStruct;",
            "Ljava/lang/String;",
            "I",
            "Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;",
            "Z",
            "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
            "Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;",
            "Lcom/mobile/auth/gatewayauth/manager/base/b;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v6, p6

    move-object/from16 v15, p7

    :try_start_0
    invoke-interface/range {p4 .. p4}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->getApiLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setApiLevel(Ljava/lang/String;)V

    const-string v1, "timeout"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->putApiParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v14, p8

    invoke-virtual {v0, v14}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setRequestId(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v1, v11}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAction(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setStartTime(J)V

    invoke-virtual/range {p1 .. p2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setVendorKey(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setUrgency(I)V

    iget-object v1, v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/mobile/auth/gatewayauth/utils/d;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setNetworkType(Ljava/lang/String;)V

    if-gtz p3, :cond_0

    const/16 v1, 0x1388

    goto :goto_0

    :cond_0
    move/from16 v1, p3

    :goto_0
    int-to-long v9, v1

    new-instance v3, Lcom/mobile/auth/gatewayauth/c;

    new-instance v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$19;

    invoke-direct {v1, v7, v6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$19;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;)V

    invoke-direct {v3, v9, v10, v1}, Lcom/mobile/auth/gatewayauth/c;-><init>(JLjava/lang/Runnable;)V

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/c;->a()V

    iget-object v1, v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->h:Lcom/mobile/auth/gatewayauth/manager/e;

    invoke-virtual {v1, v11}, Lcom/mobile/auth/gatewayauth/manager/e;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "; errorMsg = "

    const-string v4, "justGetLoginPhone errorCode = "

    if-nez v1, :cond_2

    :try_start_1
    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/c;->d()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "\u65e0\u6cd5\u5224\u8fd0\u8425\u5546"

    if-eqz v0, :cond_1

    :try_start_2
    const-string v0, "-10007"

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/base/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/b;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onError(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v3, "600009"

    filled-new-array {v4, v3, v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/b;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/c;->d()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "\u7cfb\u7edf\u7ef4\u62a4\uff0c\u529f\u80fd\u4e0d\u53ef\u7528"

    const-string v3, "-10009"

    if-eqz v0, :cond_3

    :try_start_3
    invoke-static {v3, v1}, Lcom/mobile/auth/gatewayauth/manager/base/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/b;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onError(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    filled-new-array {v4, v3, v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v1, v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    const/4 v12, 0x0

    if-nez p5, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2, v11}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->getSimCacheKey(ZLjava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;

    move-result-object v13

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/f;->a()Lcom/mobile/auth/gatewayauth/utils/f;

    move-result-object v1

    const-string v2, "cacheKey"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v15, v2, v4, v5}, Lcom/mobile/auth/gatewayauth/utils/f;->a(Ljava/lang/String;Ljava/lang/String;J)V

    if-eqz p5, :cond_7

    iget-object v1, v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/c;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "600017"

    const-string v1, "AppID Secret\u89e3\u6790\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/base/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/b;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onError(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v1, "justGetLoginPhone SceneCode = null"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    return-void

    :cond_7
    iput-object v11, v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->k:Ljava/lang/String;

    iget-object v1, v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->h:Lcom/mobile/auth/gatewayauth/manager/e;

    invoke-virtual {v1, v11}, Lcom/mobile/auth/gatewayauth/manager/e;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Lcom/mobile/auth/gatewayauth/manager/a;->a(J)V

    iget-object v5, v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    new-instance v16, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$20;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object v0, v5

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$20;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/c;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;)V

    iget-object v1, v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    if-nez p5, :cond_8

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v1, v8}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Z)Ljava/lang/String;

    move-result-object v1

    move-object v8, v0

    move-object/from16 v11, p2

    move-object/from16 v12, v16

    move/from16 v14, p9

    move-object v15, v1

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    invoke-virtual/range {v8 .. v17}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->updateMask(JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private native justGetLoginToken(JLcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V
.end method

.method private native justGetToken(ILcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZLcom/mobile/auth/gatewayauth/TokenResultListener;)V
.end method

.method private justPreLogin(JLcom/mobile/auth/gatewayauth/PreLoginResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZZ)V
    .locals 27

    move-object/from16 v10, p0

    move-object/from16 v0, p3

    :try_start_0
    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/d;->j()Ljava/lang/String;

    move-result-object v15

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/d;->f()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    const-wide/16 v1, 0x1388

    move-wide v12, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v12, p1

    :goto_0
    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iget-object v2, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v1, v11}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-direct {v9}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;-><init>()V

    invoke-interface/range {p4 .. p4}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->getApiLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setApiLevel(Ljava/lang/String;)V

    const-string v1, "timeout"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->putApiParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setRequestId(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setStartTime(J)V

    invoke-virtual {v9, v11}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setVendorKey(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v1, v11}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAction(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setVendorSubKey(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v9, v7}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setUrgency(I)V

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/mobile/auth/gatewayauth/utils/d;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setNetworkType(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string v2, "-10008"

    const-string v3, "PreLoginResultListener is null"

    const-string v0, "-10008"

    const-string v1, "PreLoginResultListener is null"

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v5, v11

    move-object/from16 v7, p4

    move-object v8, v9

    move-object v9, v15

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V

    iget-object v0, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v1, "accelerateLoginPage errorMsg = PreLoginResultListener is null"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v6, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$24;

    invoke-direct {v6, v10, v0, v8}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$24;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/PreLoginResultListener;Ljava/lang/String;)V

    new-instance v0, Lcom/mobile/auth/gatewayauth/c;

    new-instance v5, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$25;

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v11

    move-object v4, v6

    move-object/from16 v16, v14

    move-object v14, v5

    move-object/from16 v5, p4

    move-object/from16 v17, v6

    move-object v6, v9

    const/16 v18, 0x1

    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$25;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V

    invoke-direct {v0, v12, v13, v14}, Lcom/mobile/auth/gatewayauth/c;-><init>(JLjava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/c;->a()V

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    const/4 v14, 0x0

    move-object/from16 v7, p4

    invoke-virtual {v1, v7, v14, v11}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->a(Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZLjava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v20, 0x5

    const-string v21, "; action = "

    const/16 v22, 0x4

    const/16 v23, 0x3

    const/16 v24, 0x2

    const/4 v6, 0x6

    const-string v5, "; errorMsg = "

    const-string v4, "justPreLogin errorCode = "

    if-eqz v19, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/c;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {v19 .. v19}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v19 .. v19}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    move-object v12, v4

    move-object v4, v0

    move-object v0, v5

    move-object v5, v11

    const/4 v11, 0x6

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    move-object v8, v9

    move-object/from16 v25, v9

    move-object v9, v15

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    new-array v2, v11, [Ljava/lang/String;

    aput-object v12, v2, v14

    invoke-virtual/range {v19 .. v19}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v18

    aput-object v0, v2, v24

    invoke-virtual/range {v19 .. v19}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v23

    aput-object v21, v2, v22

    invoke-virtual/range {v25 .. v25}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->getAction()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v20

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    return-void

    :cond_2
    move-object v6, v5

    move-object/from16 v25, v9

    const/4 v9, 0x6

    move-object v5, v4

    if-eqz p5, :cond_4

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v2, "justGetToken SceneCode = null"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/c;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, "600017"

    const-string v3, "AppID Secret\u89e3\u6790\u5931\u8d25"

    const-string v0, "600017"

    const-string v1, "AppID Secret\u89e3\u6790\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object v5, v8

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    move-object/from16 v8, v25

    move-object v9, v15

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->h:Lcom/mobile/auth/gatewayauth/manager/e;

    invoke-virtual {v1, v11}, Lcom/mobile/auth/gatewayauth/manager/e;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/c;->d()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, "\u65e0\u6cd5\u5224\u8fd0\u8425\u5546"

    const-string v13, "600009"

    if-eqz v0, :cond_5

    :try_start_2
    const-string v2, "600009"

    const-string v3, "\u65e0\u6cd5\u5224\u8fd0\u8425\u5546"

    invoke-static {v13, v12}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object v0, v5

    move-object v5, v11

    move-object v11, v6

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    move-object/from16 v8, v25

    move-object v9, v15

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v0, v5

    move-object v11, v6

    :goto_1
    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    filled-new-array {v0, v13, v11, v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    return-void

    :cond_6
    move-object/from16 v26, v5

    move-object/from16 v19, v6

    iget-object v2, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/manager/b;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/c;->d()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v12, "\u7cfb\u7edf\u7ef4\u62a4\uff0c\u529f\u80fd\u4e0d\u53ef\u7528"

    const-string v13, "-10009"

    if-eqz v0, :cond_7

    :try_start_3
    const-string v2, "-10009"

    const-string v3, "\u7cfb\u7edf\u7ef4\u62a4\uff0c\u529f\u80fd\u4e0d\u53ef\u7528"

    invoke-static {v13, v12}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object v5, v11

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    move-object/from16 v8, v25

    const/4 v0, 0x6

    move-object v9, v15

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 v0, 0x6

    :goto_2
    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v26, v0, v14

    aput-object v13, v0, v18

    aput-object v19, v0, v24

    aput-object v12, v0, v23

    aput-object v21, v0, v22

    invoke-virtual/range {v25 .. v25}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->getAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v20

    invoke-virtual {v1, v0}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    return-void

    :cond_8
    if-eqz p6, :cond_a

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/c;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v2, "600026"

    const-string v3, "\u6388\u6743\u9875\u5df2\u52a0\u8f7d\u65f6\u4e0d\u5141\u8bb8\u8c03\u7528\u52a0\u901f\u6216\u9884\u53d6\u53f7\u63a5\u53e3"

    const-string v0, "600026"

    const-string v1, "\u6388\u6743\u9875\u5df2\u52a0\u8f7d\u65f6\u4e0d\u5141\u8bb8\u8c03\u7528\u52a0\u901f\u6216\u9884\u53d6\u53f7\u63a5\u53e3"

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object v5, v11

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    move-object/from16 v8, v25

    move-object v9, v15

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V

    :cond_9
    iget-object v0, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v1, "Auth page has been showing!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {v1, v12, v13}, Lcom/mobile/auth/gatewayauth/manager/a;->a(J)V

    iget-object v9, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    new-instance v19, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$26;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object v3, v0

    move-object/from16 v4, v25

    move-object/from16 v5, p4

    move-object v6, v8

    move-object/from16 v7, v17

    move-object v8, v11

    move-object v0, v9

    move-object v9, v15

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$26;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/c;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    if-nez p5, :cond_b

    const/4 v7, 0x1

    goto :goto_3

    :cond_b
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v1, v7, v11}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->getSimCacheKey(ZLjava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;

    move-result-object v1

    const/16 v17, 0x6

    iget-object v2, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    if-nez p5, :cond_c

    const/4 v7, 0x1

    goto :goto_4

    :cond_c
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v2, v7}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Z)Ljava/lang/String;

    move-result-object v18

    move-object v2, v11

    move-object v11, v0

    move-object/from16 v0, v16

    move-object v14, v2

    move-object v2, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v0

    invoke-virtual/range {v11 .. v20}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->updateMask(JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method private justPreVerify(JLcom/mobile/auth/gatewayauth/PreLoginResultListener;)V
    .locals 25

    move-object/from16 v10, p0

    move-object/from16 v0, p3

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    const-wide/16 v1, 0x1388

    move-wide v12, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v12, p1

    :goto_0
    :try_start_0
    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/d;->j()Ljava/lang/String;

    move-result-object v9

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/d;->g()Ljava/lang/String;

    move-result-object v15

    new-instance v11, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-direct {v11}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;-><init>()V

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    invoke-interface {v1}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->getApiLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setApiLevel(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iget-object v2, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v1, v14}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "timeout"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->putApiParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setRequestId(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setStartTime(J)V

    invoke-virtual {v11, v14}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setVendorKey(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v1, v14}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAction(Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setVendorSubKey(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v11, v8}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setUrgency(I)V

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/mobile/auth/gatewayauth/utils/d;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setNetworkType(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string v2, "-10008"

    const-string v3, "PreLoginResultListener is null"

    const-string v0, "-10008"

    const-string v1, "PreLoginResultListener is null"

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    iget-object v7, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    move-object v5, v14

    move-object v8, v11

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V

    iget-object v0, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v1, "accelerateVerify errorMsg = PreLoginResultListener is null"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v6, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$14;

    invoke-direct {v6, v10, v0, v7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$14;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/PreLoginResultListener;Ljava/lang/String;)V

    new-instance v0, Lcom/mobile/auth/gatewayauth/c;

    new-instance v5, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$15;

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v14

    move-object v4, v6

    move-object v8, v5

    move-object v5, v11

    move-object/from16 v16, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$15;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V

    invoke-direct {v0, v12, v13, v8}, Lcom/mobile/auth/gatewayauth/c;-><init>(JLjava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/c;->a()V

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iget-object v2, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v14}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->a(Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZLjava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v18, 0x5

    const-string v19, "; action = "

    const/16 v20, 0x4

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/4 v6, 0x6

    const-string v5, "; errorMsg = "

    const-string v4, "justPreVerify errorCode = "

    if-eqz v17, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/c;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    move-object v12, v4

    move-object v4, v0

    move-object v0, v5

    move-object v5, v14

    const/4 v13, 0x6

    move-object/from16 v6, v16

    const/4 v14, 0x0

    const/16 v23, 0x1

    move-object v8, v11

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v12, v4

    move-object v0, v5

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/16 v23, 0x1

    :goto_1
    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    new-array v2, v13, [Ljava/lang/String;

    aput-object v12, v2, v14

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v23

    aput-object v0, v2, v22

    invoke-virtual/range {v17 .. v17}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v21

    aput-object v19, v2, v20

    invoke-virtual {v11}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->getAction()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v18

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    return-void

    :cond_3
    move-object v6, v5

    const/4 v8, 0x6

    const/16 v23, 0x1

    move-object v5, v4

    const/4 v4, 0x0

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->h:Lcom/mobile/auth/gatewayauth/manager/e;

    invoke-virtual {v1, v14}, Lcom/mobile/auth/gatewayauth/manager/e;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/c;->d()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, "\u65e0\u6cd5\u5224\u8fd0\u8425\u5546"

    const-string v13, "600009"

    if-eqz v0, :cond_4

    :try_start_2
    const-string v2, "600009"

    const-string v3, "\u65e0\u6cd5\u5224\u8fd0\u8425\u5546"

    invoke-static {v13, v12}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    move-object v0, v5

    move-object v5, v14

    move-object v14, v6

    move-object/from16 v6, v16

    move-object v8, v11

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v0, v5

    move-object v14, v6

    :goto_2
    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    filled-new-array {v0, v13, v14, v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    return-void

    :cond_5
    move-object/from16 v24, v5

    move-object/from16 v17, v6

    iget-object v2, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d:Lcom/mobile/auth/gatewayauth/manager/b;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/manager/b;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/c;->d()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v12, "\u7cfb\u7edf\u7ef4\u62a4\uff0c\u529f\u80fd\u4e0d\u53ef\u7528"

    const-string v13, "-10009"

    if-eqz v0, :cond_6

    :try_start_3
    const-string v2, "-10009"

    const-string v3, "\u7cfb\u7edf\u7ef4\u62a4\uff0c\u529f\u80fd\u4e0d\u53ef\u7528"

    invoke-static {v13, v12}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    const/4 v15, 0x0

    move-object v4, v0

    move-object v5, v14

    move-object/from16 v6, v16

    const/4 v0, 0x6

    move-object v8, v11

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/4 v0, 0x6

    const/4 v15, 0x0

    :goto_3
    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v24, v0, v15

    aput-object v13, v0, v23

    aput-object v17, v0, v22

    aput-object v12, v0, v21

    aput-object v19, v0, v20

    invoke-virtual {v11}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->getAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v18

    invoke-virtual {v1, v0}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    return-void

    :cond_7
    const/4 v8, 0x0

    iget-object v2, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v2, "justPreVerify SceneCode = null"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/c;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v2, "600017"

    const-string v3, "AppID Secret\u89e3\u6790\u5931\u8d25"

    const-string v0, "600017"

    const-string v1, "AppID Secret\u89e3\u6790\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    move-object v5, v7

    move-object/from16 v6, v16

    move-object v7, v0

    move-object v8, v11

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    invoke-virtual {v1, v12, v13}, Lcom/mobile/auth/gatewayauth/manager/a;->a(J)V

    iget-object v6, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    new-instance v17, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$16;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v11

    move-object v5, v7

    move-object v0, v6

    move-object/from16 v6, v16

    move-object v7, v14

    const/4 v11, 0x0

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$16;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/c;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v1, v11, v14}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->getSimCacheKey(ZLjava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;

    move-result-object v16

    invoke-static {v14}, Lcom/mobile/auth/gatewayauth/manager/c;->a(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v3, v11}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Z)Ljava/lang/String;

    move-result-object v19

    move-object v11, v0

    move-object v0, v15

    move-object/from16 v15, v17

    move-wide/from16 v17, v1

    move-object/from16 v20, v9

    move-object/from16 v21, v0

    invoke-virtual/range {v11 .. v21}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->b(JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/RequestCallback;Lcom/mobile/auth/gatewayauth/manager/base/CacheKey;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method


# virtual methods
.method protected a()Lcom/mobile/auth/gatewayauth/manager/SystemManager;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "unknown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x5080a7d9

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x5a9b9ec

    if-eq v2, v3, :cond_2

    const v3, 0x347d2738

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "cm_zyhl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "cu_xw"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "ct_sjl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    :cond_4
    :goto_0
    if-eqz v0, :cond_9

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_5

    return-object v1

    :cond_5
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->f()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "ctcc_1"

    return-object p1

    :cond_6
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->f()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getSupplierSdkType()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "cucc_1"

    return-object p1

    :cond_8
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getSupplierSdkType()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object p1

    if-nez p1, :cond_a

    const-string p1, "cmcc_1"

    return-object p1

    :cond_a
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getSupplierSdkType()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method a(JLcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V
    .locals 9

    :try_start_0
    invoke-static {}, Lcom/nirvana/tools/core/ExecutorManager;->getInstance()Lcom/nirvana/tools/core/ExecutorManager;

    move-result-object v0

    new-instance v8, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$5;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$5;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/TokenResultListener;JLcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;)V

    invoke-virtual {v0, v8}, Lcom/nirvana/tools/core/ExecutorManager;->scheduleFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 7

    if-nez p5, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "8000"

    const-string v1, "\u83b7\u53d6token\u6210\u529f"

    invoke-interface {p4, v0, v1, p2}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->setToken(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    invoke-virtual {p3}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->getRequestId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->setRequestId(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/f;->a()Lcom/mobile/auth/gatewayauth/utils/f;

    move-result-object p4

    invoke-virtual {p3}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/mobile/auth/gatewayauth/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setPerformanceTrace(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAccessCode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAuthSdkCode(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->toJsonString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    .locals 8

    move-object v0, p7

    move-object/from16 v1, p10

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    move-object/from16 v5, p9

    :try_start_0
    invoke-interface {v5, p3, p4, p6}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/f;->a()Lcom/mobile/auth/gatewayauth/utils/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mobile/auth/gatewayauth/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p7, v3}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setPerformanceTrace(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p7, v3}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setAuthSdkCode(Ljava/lang/String;)V

    invoke-virtual {p7}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->getCarrierFailedResultData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->setCarrierFailedResultData(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2, v1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->toJsonString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p5

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public accelerateLoginPage(ILcom/mobile/auth/gatewayauth/PreLoginResultListener;Z)V
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/nirvana/tools/core/ExecutorManager;->getInstance()Lcom/nirvana/tools/core/ExecutorManager;

    move-result-object v0

    new-instance v7, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$10;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    move-object v1, v7

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$10;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/TokenResultListener;ILcom/mobile/auth/gatewayauth/PreLoginResultListener;Z)V

    invoke-virtual {v0, v7}, Lcom/nirvana/tools/core/ExecutorManager;->scheduleFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public accelerateVerify(ILcom/mobile/auth/gatewayauth/PreLoginResultListener;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$11;

    invoke-direct {v0, p0, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$11;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/PreLoginResultListener;)V

    invoke-static {}, Lcom/nirvana/tools/core/ExecutorManager;->getInstance()Lcom/nirvana/tools/core/ExecutorManager;

    move-result-object v1

    new-instance v2, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$13;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$13;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/TokenResultListener;ILcom/mobile/auth/gatewayauth/PreLoginResultListener;)V

    invoke-virtual {v1, v2}, Lcom/nirvana/tools/core/ExecutorManager;->scheduleFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected b()Lcom/mobile/auth/gatewayauth/manager/d;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->m:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected c()Lcom/mobile/auth/o/a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public checkEnvAvailable(ILcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/nirvana/tools/core/ExecutorManager;->getInstance()Lcom/nirvana/tools/core/ExecutorManager;

    move-result-object v0

    new-instance v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;ILcom/mobile/auth/gatewayauth/TokenResultListener;)V

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/core/ExecutorManager;->scheduleFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public checkEnvAvailable()Z
    .locals 21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v12, p0

    const-string v13, "; msg = "

    const-string v14, "checkEnvAvailable code = "

    :try_start_0
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iget-object v1, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/d;->j()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/4 v10, 0x4

    const/4 v9, 0x1

    :try_start_1
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iget-object v2, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    invoke-virtual {v0, v2, v9, v7}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->a(Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZLjava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v18, :cond_1

    if-eqz v18, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v1, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    const/16 v20, 0x1

    move-object v9, v0

    const/4 v15, 0x4

    move-object/from16 v10, v19

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    new-array v1, v15, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v20

    aput-object v13, v1, v17

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v15, 0x4

    const/16 v20, 0x1

    :try_start_3
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    const-string v1, "600017"

    const-string v2, "AppID Secret\u89e3\u6790\u5931\u8d25"

    invoke-interface {v0, v1, v2, v7}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v18

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v1, "checkEnvAvailable failed! Has no sceneCode!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v18, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    new-array v1, v15, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v20

    aput-object v13, v1, v17

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_1
    const/4 v1, 0x0

    return v1

    :cond_3
    :try_start_5
    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->h:Lcom/mobile/auth/gatewayauth/manager/e;

    invoke-virtual {v0, v7}, Lcom/mobile/auth/gatewayauth/manager/e;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    const-string v1, "600009"

    const-string v2, "\u65e0\u6cd5\u5224\u8fd0\u8425\u5546"

    invoke-interface {v0, v1, v2, v7}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v18

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v1, "checkEnvAvailable failed! Unsupported Vendor!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v18, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    new-array v1, v15, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v20

    aput-object v13, v1, v17

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    :goto_2
    const/4 v1, 0x0

    return v1

    :cond_5
    if-eqz v18, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    iget-object v0, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    new-array v1, v15, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v20

    aput-object v13, v1, v17

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_3
    return v20

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v1, v18

    goto :goto_5

    :catchall_1
    move-exception v0

    const/4 v15, 0x4

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v18, v1

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v15, 0x4

    const/16 v20, 0x1

    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    const-string v3, "600010"

    invoke-static {v0}, Lcom/nirvana/tools/core/ExecutorManager;->getErrorInfoFromException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0, v7}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    iget-object v1, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    new-array v2, v15, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v20

    aput-object v13, v2, v17

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v16

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_6
    const/4 v1, 0x0

    return v1

    :catchall_2
    move-exception v0

    goto :goto_4

    :goto_7
    if-eqz v18, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    iget-object v1, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    new-array v2, v15, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v20

    aput-object v13, v2, v17

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v16

    invoke-virtual {v1, v2}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    :goto_8
    throw v0

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const/4 v1, 0x0

    return v1

    :catchall_4
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v0

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return v1
.end method

.method public clearPreInfo()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f:Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/TokenMaskManager;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getCurrentCarrierName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->d()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getLoginMaskPhone(ILjava/lang/String;Lcom/mobile/auth/gatewayauth/OnLoginPhoneListener;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 13

    move-object v11, p0

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;-><init>()V

    iget-object v1, v11, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/d;->f()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setStartTime(J)V

    iget-object v8, v11, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    new-instance v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move/from16 v4, p4

    move-object v5, v0

    move-object/from16 v6, p6

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/OnLoginPhoneListener;)V

    const/4 v12, 0x6

    move-object v1, p0

    move-object v2, v0

    move-object v3, p2

    move v4, p1

    move-object v5, v8

    move/from16 v6, p5

    move-object v7, v10

    move-object/from16 v8, p6

    move v10, v12

    invoke-direct/range {v1 .. v10}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->justGetLoginPhone(Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;ILcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZLcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p6

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getLoginMaskPhoneWhenUserControllVendorKey(ILjava/lang/String;Lcom/mobile/auth/gatewayauth/OnLoginPhoneListener;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 13

    move-object v11, p0

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;-><init>()V

    iget-object v1, v11, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/d;->f()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->setStartTime(J)V

    iget-object v8, v11, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->l:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    new-instance v10, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$18;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move/from16 v4, p4

    move-object v5, v0

    move-object/from16 v6, p6

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$18;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/OnLoginPhoneListener;)V

    const/4 v12, 0x6

    move-object v1, p0

    move-object v2, v0

    move-object v3, p2

    move v4, p1

    move-object v5, v8

    move/from16 v6, p5

    move-object v7, v10

    move-object/from16 v8, p6

    move v10, v12

    invoke-direct/range {v1 .. v10}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->justGetLoginPhoneWhenUserControllVendorKey(Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;ILcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZLcom/mobile/auth/gatewayauth/manager/RequestCallback;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p6

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getReporter()Lcom/mobile/auth/gatewayauth/PnsReporter;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/d;->b()Lcom/mobile/auth/gatewayauth/PnsReporter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getVerifyToken(ILcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/nirvana/tools/core/ExecutorManager;->getInstance()Lcom/nirvana/tools/core/ExecutorManager;

    move-result-object v0

    new-instance v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$4;

    invoke-direct {v1, p0, p2, p1, p2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$4;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Lcom/mobile/auth/gatewayauth/TokenResultListener;ILcom/mobile/auth/gatewayauth/TokenResultListener;)V

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/core/ExecutorManager;->scheduleFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public prohibitUseUtdid()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/d;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setAuthListener(Lcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setAuthSDKInfo(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "setAuthSDKInfo secretInfo = "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->setLocalVendorSdkInfo(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->h:Lcom/mobile/auth/gatewayauth/manager/e;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {p1, v0, v3, v2}, Lcom/mobile/auth/gatewayauth/manager/e;->a(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;ZZ)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    const-string v0, "VendorSdkFactor update local VendorConfig failed!"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->e()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/mobile/auth/gatewayauth/network/RequestState;->getInstance()Lcom/mobile/auth/gatewayauth/network/RequestState;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/mobile/auth/gatewayauth/network/RequestState;->checkTokenValied(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/mobile/auth/gatewayauth/network/RequestState;->getInstance()Lcom/mobile/auth/gatewayauth/network/RequestState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/network/RequestState;->isUseRequest()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/mobile/auth/gatewayauth/network/RequestState;->getInstance()Lcom/mobile/auth/gatewayauth/network/RequestState;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/mobile/auth/gatewayauth/network/RequestState;->checkTokenValied(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/nirvana/tools/core/ExecutorManager;->getInstance()Lcom/nirvana/tools/core/ExecutorManager;

    move-result-object p1

    new-instance v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$2;

    invoke-direct {v0, p0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$2;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)V

    invoke-virtual {p1, v0}, Lcom/nirvana/tools/core/ExecutorManager;->scheduleFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/RunnableScheduledFuture;

    :cond_2
    return-void

    :cond_3
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j:Lcom/mobile/auth/o/a;

    invoke-virtual {p1}, Lcom/mobile/auth/o/a;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
