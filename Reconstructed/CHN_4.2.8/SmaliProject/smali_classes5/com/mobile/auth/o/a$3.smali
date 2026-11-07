.class Lcom/mobile/auth/o/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/gatewayauth/model/ConfigRule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

.field final synthetic b:Lcom/mobile/auth/o/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/o/a;Lcom/mobile/auth/gatewayauth/model/ConfigRule;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    iput-object p2, p0, Lcom/mobile/auth/o/a$3;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "true"

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/o/a$3;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/mobile/auth/o/a$3;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getSls()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {}, Lcom/nirvana/tools/logger/model/ACMLimitConfig;->newACMLimitConfig()Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/o/a$3;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getSls()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getIs_limited()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;->isLimited(Z)Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/o/a$3;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getSls()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_count()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;->limitCount(I)Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/o/a$3;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getSls()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;->limitHours(I)Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirvana/tools/logger/model/ACMLimitConfig$Builder;->build()Lcom/nirvana/tools/logger/model/ACMLimitConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/o/a$3;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getDowngradeInfoList()Lcom/mobile/auth/gatewayauth/model/DowngradeInfoList;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v2, v4}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/o/a;Z)Z

    iget-object v2, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v2}, Lcom/mobile/auth/o/a;->b(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMMonitor;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/nirvana/tools/logger/UaidTracker;->getInstance()Lcom/nirvana/tools/logger/UaidTracker;

    move-result-object v2

    :goto_0
    invoke-virtual {v2, v4}, Lcom/nirvana/tools/logger/UaidTracker;->setEnable(Z)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/DowngradeInfoList;->getDowngradeInfo()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v5, v4}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/o/a;Z)Z

    iget-object v5, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v5}, Lcom/mobile/auth/o/a;->b(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMMonitor;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/nirvana/tools/logger/UaidTracker;->getInstance()Lcom/nirvana/tools/logger/UaidTracker;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/nirvana/tools/logger/UaidTracker;->setEnable(Z)V

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mobile/auth/gatewayauth/model/DowngradeConfig;

    const-string v6, "is_network_test_opened"

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/model/DowngradeConfig;->getDowngrade_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/model/DowngradeConfig;->isDowngrade()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v6, v3}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/o/a;Z)Z

    :cond_5
    const-string v6, "is_uaid_tracker_opened"

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/model/DowngradeConfig;->getDowngrade_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/model/DowngradeConfig;->isDowngrade()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v5}, Lcom/mobile/auth/o/a;->b(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMMonitor;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/nirvana/tools/logger/UaidTracker;->getInstance()Lcom/nirvana/tools/logger/UaidTracker;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/nirvana/tools/logger/UaidTracker;->setEnable(Z)V

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v2, v4}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/o/a;Z)Z

    iget-object v2, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v2}, Lcom/mobile/auth/o/a;->b(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMMonitor;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/nirvana/tools/logger/UaidTracker;->getInstance()Lcom/nirvana/tools/logger/UaidTracker;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v2}, Lcom/mobile/auth/o/a;->b(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMMonitor;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/mobile/auth/o/a$3;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getIs_sls_demoted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/mobile/auth/o/a$3;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getIs_demoted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v0, v4}, Lcom/mobile/auth/o/a;->b(Lcom/mobile/auth/o/a;Z)Z

    goto :goto_5

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v0, v3}, Lcom/mobile/auth/o/a;->b(Lcom/mobile/auth/o/a;Z)Z

    :goto_5
    iget-object v0, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->d(Lcom/mobile/auth/o/a;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->b(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMMonitor;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nirvana/tools/logger/ACMMonitor;->setUploadEnabled(Z)V

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->b(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMMonitor;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nirvana/tools/logger/ACMMonitor;->setUploadEnabled(Z)V

    :goto_6
    iget-object v0, p0, Lcom/mobile/auth/o/a$3;->b:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->b(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/logger/ACMMonitor;->setLimitConfig(Lcom/nirvana/tools/logger/model/ACMLimitConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :cond_b
    :goto_7
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_c
    :goto_8
    return-void
.end method
