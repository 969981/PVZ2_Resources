.class public Lcom/mobile/auth/gatewayauth/manager/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

.field private b:Lcom/mobile/auth/gatewayauth/manager/a;

.field private c:Lcom/mobile/auth/gatewayauth/manager/a;

.field private d:Lcom/mobile/auth/gatewayauth/manager/a;

.field private e:Lcom/mobile/auth/gatewayauth/manager/a;

.field private f:Lcom/mobile/auth/gatewayauth/manager/d;

.field private volatile g:Z


# direct methods
.method public constructor <init>(Lcom/mobile/auth/gatewayauth/manager/SystemManager;Lcom/mobile/auth/gatewayauth/manager/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/manager/e;->g:Z

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->a:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/e;->f:Lcom/mobile/auth/gatewayauth/manager/d;

    new-instance p2, Lcom/mobile/auth/q/d;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->e()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/e;->f:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-direct {p2, p1, v0}, Lcom/mobile/auth/q/d;-><init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/d;)V

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/e;->b:Lcom/mobile/auth/gatewayauth/manager/a;

    new-instance p1, Lcom/mobile/auth/s/a;

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/e;->a:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->e()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/e;->f:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-direct {p1, p2, v0}, Lcom/mobile/auth/s/a;-><init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/d;)V

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->c:Lcom/mobile/auth/gatewayauth/manager/a;

    new-instance p1, Lcom/mobile/auth/r/a;

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/e;->a:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {p2}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->e()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/e;->f:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-direct {p1, p2, v0}, Lcom/mobile/auth/r/a;-><init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/d;)V

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->d:Lcom/mobile/auth/gatewayauth/manager/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a;
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "cm_zyhl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "cm_ntyd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "cu_xw"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "ct_sjl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    return-object v1

    :cond_1
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->e:Lcom/mobile/auth/gatewayauth/manager/a;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->d:Lcom/mobile/auth/gatewayauth/manager/a;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->c:Lcom/mobile/auth/gatewayauth/manager/a;

    return-object p1

    :cond_4
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->b:Lcom/mobile/auth/gatewayauth/manager/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5080a7d9 -> :sswitch_3
        0x5a9b9ec -> :sswitch_2
        0x3477a206 -> :sswitch_1
        0x347d2738 -> :sswitch_0
    .end sparse-switch
.end method

.method public a()Z
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/manager/e;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return v1
.end method

.method public declared-synchronized a(Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;ZZ)Z
    .locals 9

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(I)Lcom/mobile/auth/gatewayauth/model/VendorConfig;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(I)Lcom/mobile/auth/gatewayauth/model/VendorConfig;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(I)Lcom/mobile/auth/gatewayauth/model/VendorConfig;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/e;->b:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/manager/a;->c()V

    const-string v2, "cmcc_1"

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getSupplierSdkType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->g:Z

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/e;->b:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast v2, Lcom/mobile/auth/q/d;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getChannelCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/mobile/auth/q/d;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/e;->b:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast v2, Lcom/mobile/auth/q/d;

    invoke-virtual {v2, v1}, Lcom/mobile/auth/q/d;->b(Z)V

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/mobile/auth/gatewayauth/manager/e;->b:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast v7, Lcom/mobile/auth/q/d;

    invoke-virtual {v7}, Lcom/mobile/auth/q/d;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/e;->b:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppSecret()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/mobile/auth/gatewayauth/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v6}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a(Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;)V

    :goto_0
    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/e;->a()Lcom/mobile/auth/gatewayauth/utils/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mobile/auth/gatewayauth/utils/e;->f(Z)V

    goto/16 :goto_1

    :cond_1
    const-string v2, "cmcc_bjyd"

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getSupplierSdkType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/e;->b:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/manager/a;->c()V

    new-instance v2, Lcom/mobile/auth/q/d;

    iget-object v7, p0, Lcom/mobile/auth/gatewayauth/manager/e;->a:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->e()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/mobile/auth/gatewayauth/manager/e;->f:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-direct {v2, v7, v8}, Lcom/mobile/auth/q/d;-><init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/d;)V

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/e;->b:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppSecret()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/mobile/auth/gatewayauth/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/e;->b:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast v2, Lcom/mobile/auth/q/d;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getChannelCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/mobile/auth/q/d;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/e;->b:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast v2, Lcom/mobile/auth/q/d;

    invoke-virtual {v2, v0}, Lcom/mobile/auth/q/d;->b(Z)V

    goto/16 :goto_1

    :cond_2
    const-string v2, "cmcc_ntyd"

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getSupplierSdkType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/mobile/auth/t/a;

    iget-object v7, p0, Lcom/mobile/auth/gatewayauth/manager/e;->a:Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->e()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/mobile/auth/gatewayauth/manager/e;->f:Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-direct {v2, v7, v8}, Lcom/mobile/auth/t/a;-><init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/d;)V

    iput-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/e;->e:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppSecret()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/mobile/auth/gatewayauth/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "===="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/e;->e:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast v2, Lcom/mobile/auth/t/a;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->d()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getChannelCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/mobile/auth/t/a;->a(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/mobile/auth/gatewayauth/manager/e;->g:Z

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/e;->a()Lcom/mobile/auth/gatewayauth/utils/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mobile/auth/gatewayauth/utils/e;->f(Z)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/mobile/auth/gatewayauth/manager/e;->b:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->getVendorAccessId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->getVendorAccessSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Lcom/mobile/auth/gatewayauth/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/e;->b:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast v2, Lcom/mobile/auth/q/d;

    invoke-virtual {v2, v1}, Lcom/mobile/auth/q/d;->b(Z)V

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/e;->b:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast v2, Lcom/mobile/auth/q/d;

    const-string v7, ""

    invoke-virtual {v2, v7}, Lcom/mobile/auth/q/d;->a(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->g:Z

    :cond_4
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v3, :cond_a

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    if-eqz v7, :cond_9

    const-string v7, "cucc_1"

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getSupplierSdkType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/mobile/auth/gatewayauth/manager/e;->c:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast v7, Lcom/mobile/auth/s/a;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getChannelCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mobile/auth/s/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->getVendorAccessId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1, v6}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b(Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;)V

    goto/16 :goto_4

    :cond_6
    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/e;->c:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppSecret()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/mobile/auth/gatewayauth/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/e;->c:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast v3, Lcom/mobile/auth/s/a;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getChannelCode()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v3, v7}, Lcom/mobile/auth/s/a;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v7, "cucc_2"

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getSupplierSdkType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/e;->c:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppSecret()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/mobile/auth/gatewayauth/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/e;->c:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast v3, Lcom/mobile/auth/s/a;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->e()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getChannelCode()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_8
    iget-object v7, p0, Lcom/mobile/auth/gatewayauth/manager/e;->c:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->getVendorAccessId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->getVendorAccessSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v8, v3}, Lcom/mobile/auth/gatewayauth/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/e;->c:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast v3, Lcom/mobile/auth/s/a;

    const-string v7, ""

    goto :goto_3

    :cond_9
    iget-object v7, p0, Lcom/mobile/auth/gatewayauth/manager/e;->c:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->getVendorAccessId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->getVendorAccessSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v8, v3}, Lcom/mobile/auth/gatewayauth/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/e;->c:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast v3, Lcom/mobile/auth/s/a;

    const-string v7, ""

    goto :goto_3

    :goto_4
    add-int/lit8 v2, v2, 0x1

    :cond_a
    if-eqz v5, :cond_f

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->f()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v3

    if-eqz v3, :cond_e

    const-string v3, "ctcc_1"

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->f()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getSupplierSdkType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/e;->d:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast v3, Lcom/mobile/auth/r/a;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->f()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getChannelCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/mobile/auth/r/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->f()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->getVendorAccessId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p1, v6}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->c(Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;)V

    goto/16 :goto_7

    :cond_b
    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/e;->d:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->f()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->f()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppSecret()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/mobile/auth/gatewayauth/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/e;->d:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast v3, Lcom/mobile/auth/r/a;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->f()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getChannelCode()Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-virtual {v3, p1}, Lcom/mobile/auth/r/a;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    const-string v3, "ctcc_2"

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->f()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getSupplierSdkType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/e;->d:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->f()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->f()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getAppSecret()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/mobile/auth/gatewayauth/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/e;->d:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast v3, Lcom/mobile/auth/r/a;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->f()Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/network/DispatchInfoItem;->getChannelCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_d
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->d:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->getVendorAccessId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->getVendorAccessSecret()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lcom/mobile/auth/gatewayauth/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->d:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast p1, Lcom/mobile/auth/r/a;

    const-string v3, ""

    :goto_6
    invoke-virtual {p1, v3}, Lcom/mobile/auth/r/a;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->d:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->getVendorAccessId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/model/VendorConfig;->getVendorAccessSecret()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lcom/mobile/auth/gatewayauth/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->d:Lcom/mobile/auth/gatewayauth/manager/a;

    check-cast p1, Lcom/mobile/auth/r/a;

    const-string v3, ""

    goto :goto_6

    :goto_7
    add-int/lit8 v2, v2, 0x1

    :cond_f
    if-eqz p2, :cond_11

    if-eqz p3, :cond_10

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/e;->a()Lcom/mobile/auth/gatewayauth/utils/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mobile/auth/gatewayauth/utils/e;->b(Z)V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/e;->a()Lcom/mobile/auth/gatewayauth/utils/e;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mobile/auth/gatewayauth/utils/e;->c(Z)V

    goto :goto_8

    :cond_10
    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/e;->a()Lcom/mobile/auth/gatewayauth/utils/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mobile/auth/gatewayauth/utils/e;->e(Z)V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/e;->a()Lcom/mobile/auth/gatewayauth/utils/e;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mobile/auth/gatewayauth/utils/e;->d(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_11
    :goto_8
    if-lt v2, v4, :cond_12

    goto :goto_9

    :cond_12
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return v1

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mobile/auth/gatewayauth/manager/a;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->b:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->c:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->d:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/e;->e:Lcom/mobile/auth/gatewayauth/manager/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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
