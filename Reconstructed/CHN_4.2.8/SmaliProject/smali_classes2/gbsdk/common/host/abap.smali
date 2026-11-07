.class public Lgbsdk/common/host/abap;
.super Ljava/lang/Object;
.source "EventsSenderUtils.java"


# static fields
.field public static bW:Lgbsdk/common/host/abdp;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "can\'t find event verify, should compile with ET"

    const-string v1, "com.bytedance.applog.et_verify.EventVerify"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "inst"

    const/4 v4, 0x0

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v3, v1, Lgbsdk/common/host/abdp;

    if-eqz v3, :cond_0

    .line 5
    check-cast v1, Lgbsdk/common/host/abdp;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 14
    invoke-static {v0, v2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    throw v1

    :catch_0
    move-object v1, v2

    .line 17
    :goto_1
    invoke-static {v0, v2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :goto_2
    sput-object v1, Lgbsdk/common/host/abap;->bW:Lgbsdk/common/host/abdp;

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "1e63cb505e0030cf37ca31fde24574d1"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lgbsdk/common/host/abap;->bW:Lgbsdk/common/host/abdp;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p0, p1}, Lgbsdk/common/host/abdp;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_1
    return-void
.end method

.method public static a()Z
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "443bf3b7cfbf552632dd44b45847f4da"

    invoke-static {v1, v3, v2, v4, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    sget-object v1, Lgbsdk/common/host/abap;->bW:Lgbsdk/common/host/abdp;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Lgbsdk/common/host/abdp;->a()Z

    move-result v0

    :cond_1
    return v0
.end method
