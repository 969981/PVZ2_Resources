.class Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;
.super Lcom/mobile/auth/gatewayauth/utils/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->getLoginToken(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->a:Landroid/content/Context;

    iput p3, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->b:I

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/utils/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->c(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/d;->b(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a()Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b()Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/d;->j()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/e;->a()Lcom/mobile/auth/gatewayauth/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/utils/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/e;->a()Lcom/mobile/auth/gatewayauth/utils/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/utils/e;->a(Z)V

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    move-result-object v2

    iget v3, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->b:I

    new-instance v5, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2$1;

    invoke-direct {v5, p0, v8, v12}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2$1;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v4, v8

    move-object v8, v12

    invoke-virtual/range {v2 .. v8}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->getLoginMaskPhone(ILjava/lang/String;Lcom/mobile/auth/gatewayauth/OnLoginPhoneListener;ZZLjava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "-10001"

    const-string v6, "\u6388\u6743\u9875\u5df2\u5b58\u5728\uff0c\u4e0d\u80fd\u518d\u6b21\u62c9\u8d77"

    const-string v7, ""

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->d(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/TokenResultListener;

    move-result-object v10

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$2;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v11

    invoke-virtual/range {v2 .. v12}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
