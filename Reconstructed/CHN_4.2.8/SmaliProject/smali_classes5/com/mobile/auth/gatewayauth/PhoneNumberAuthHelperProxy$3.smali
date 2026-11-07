.class Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;
.super Lcom/mobile/auth/gatewayauth/utils/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->checkEnvAvailable(ILcom/mobile/auth/gatewayauth/TokenResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

.field final synthetic c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;ILcom/mobile/auth/gatewayauth/TokenResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    iput p2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->a:I

    iput-object p3, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/utils/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "AppID Secret\u89e3\u6790\u5931\u8d25"

    const-string v2, "600017"

    const-string v3, "false"

    const-string v4, "enableReduceNetworkAccess"

    :try_start_0
    iget-object v5, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v5}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    move-result-object v5

    iget-object v6, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v6}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->d(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mobile/auth/gatewayauth/manager/d;->j()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v15, 0x2

    const/4 v14, 0x1

    :try_start_1
    iget v7, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->a:I

    if-eq v7, v14, :cond_3

    iget v7, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->a:I

    if-eq v7, v15, :cond_3

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v0

    const-string v2, "600025"

    const-string v7, "\u53c2\u6570\u9519\u8bef"

    invoke-interface {v0, v2, v7, v5}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->getInstance()Lcom/mobile/auth/gatewayauth/manager/FeatureManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/o/a;->c()V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v7, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v16

    move-object v13, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v7 .. v17}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    return-void

    :cond_3
    :try_start_3
    iget-object v7, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    move-result-object v7

    iget-object v8, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v8}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v8

    invoke-virtual {v7, v8, v14, v5}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->a(Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;ZLjava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v8, "; errorMsg = "

    const-string v9, "checkEnvAvailable errorCode = "

    if-eqz v7, :cond_7

    :try_start_4
    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    aput-object v9, v2, v19

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v14

    aput-object v8, v2, v15

    const/4 v8, 0x3

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    invoke-virtual {v0, v2}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->getInstance()Lcom/mobile/auth/gatewayauth/manager/FeatureManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/o/a;->c()V

    :cond_5
    if-eqz v7, :cond_6

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v2, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v16

    move-object v7, v0

    move-object v13, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v7 .. v17}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v18, v7

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v18, v7

    goto/16 :goto_7

    :cond_7
    :try_start_6
    iget-object v7, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;->a()Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v7

    invoke-interface {v7, v2, v0, v5}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v18

    iget-object v7, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v7}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v7

    filled-new-array {v9, v2, v8, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->getInstance()Lcom/mobile/auth/gatewayauth/manager/FeatureManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/o/a;->c()V

    :cond_9
    if-eqz v18, :cond_a

    iget-object v7, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v16

    move-object v13, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v7 .. v17}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_a
    return-void

    :cond_b
    :try_start_8
    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->g(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/e;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/mobile/auth/gatewayauth/manager/e;->a(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/manager/a;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v0

    const-string v2, "600009"

    const-string v7, "\u65e0\u6cd5\u5224\u8fd0\u8425\u5546"

    invoke-interface {v0, v2, v7, v5}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v18

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    const-string v2, "checkEnvAvailable failed! Unsupported Vendor!"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->getInstance()Lcom/mobile/auth/gatewayauth/manager/FeatureManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/o/a;->c()V

    :cond_d
    if-eqz v18, :cond_e

    iget-object v7, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v16

    move-object v13, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v7 .. v17}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_e
    return-void

    :cond_f
    :try_start_a
    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->h(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->h(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_10
    iget v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->a:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const-string v2, "\u7cfb\u7edf\u7ef4\u62a4\uff0c\u529f\u80fd\u4e0d\u53ef\u7528"

    const-string v7, "600013"

    if-ne v0, v14, :cond_14

    :try_start_b
    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/b;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v0

    invoke-interface {v0, v7, v2, v5}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v18

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    filled-new-array {v9, v7, v8, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->getInstance()Lcom/mobile/auth/gatewayauth/manager/FeatureManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_4

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/o/a;->c()V

    :cond_12
    if-eqz v18, :cond_13

    iget-object v7, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v16

    move-object v13, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v7 .. v17}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_13
    return-void

    :cond_14
    :try_start_d
    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/b;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v0

    invoke-interface {v0, v7, v2, v5}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v18

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    filled-new-array {v9, v7, v8, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->getInstance()Lcom/mobile/auth/gatewayauth/manager/FeatureManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_5

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/o/a;->c()V

    :cond_16
    if-eqz v18, :cond_17

    iget-object v7, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v16

    move-object v13, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v7 .. v17}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_17
    return-void

    :cond_18
    :try_start_f
    iget-object v7, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "600024"

    const-string v11, "\u7ec8\u7aef\u652f\u6301\u8ba4\u8bc1"

    const-string v12, ""

    const/4 v0, 0x0

    iget-object v2, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v13, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v13}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v16
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object v13, v5

    const/16 v20, 0x1

    move-object v14, v0

    move-object v15, v2

    move-object/from16 v17, v6

    :try_start_10
    invoke-virtual/range {v7 .. v17}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->getInstance()Lcom/mobile/auth/gatewayauth/manager/FeatureManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_6

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/o/a;->c()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/16 :goto_c

    :catch_1
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    :goto_7
    const/16 v20, 0x1

    :goto_8
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v2

    const-string v7, "600010"

    invoke-static {v0}, Lcom/nirvana/tools/core/ExecutorManager;->getErrorInfoFromException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v7, v0, v5}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v18

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v7, "checkEnvAvailable exception:"

    aput-object v7, v2, v19

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->toJsonString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v20

    invoke-virtual {v0, v2}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :try_start_13
    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->getInstance()Lcom/mobile/auth/gatewayauth/manager/FeatureManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_9

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_9
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/o/a;->c()V

    :cond_1b
    if-eqz v18, :cond_1f

    iget-object v7, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v0, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v16

    move-object v13, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v7 .. v17}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    goto :goto_c

    :goto_a
    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->getInstance()Lcom/mobile/auth/gatewayauth/manager/FeatureManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1c

    goto :goto_b

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->f(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/o/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/o/a;->c()V

    :cond_1d
    if-eqz v18, :cond_1e

    iget-object v7, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v2, v1, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$3;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->e(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v16

    move-object v13, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v7 .. v17}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    :cond_1e
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_14
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_c
    return-void
.end method
