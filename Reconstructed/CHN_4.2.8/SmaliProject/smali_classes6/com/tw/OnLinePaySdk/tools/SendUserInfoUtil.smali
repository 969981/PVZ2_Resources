.class public Lcom/tw/OnLinePaySdk/tools/SendUserInfoUtil;
.super Ljava/lang/Object;
.source "SendUserInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CheckRoleInfo(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)Z
    .locals 3

    const-string p1, "03"

    if-eqz p2, :cond_1

    const-string v0, "roleName"

    .line 23
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "roleId"

    .line 24
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "roleLevel"

    .line 25
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    const-string p2, "01"

    .line 28
    invoke-static {p2, p3}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->sendUserInfoCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    goto :goto_1

    .line 30
    :cond_0
    invoke-static {p1, p3}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->sendUserInfoCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p1, p3}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->sendUserInfoCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public SendUserInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "partyName"

    const-string v1, "partyId"

    const-string v2, "balance"

    const-string v3, "vipLevel"

    const-string v4, "serverName"

    const-string v5, "serverId"

    const-string v6, "roleLevel"

    const-string v7, "roleName"

    const-string v8, "roleId"

    .line 41
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "userId"

    .line 42
    invoke-virtual {v9, v10, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "appId"

    .line 43
    invoke-virtual {v9, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "channelId"

    .line 44
    invoke-static {}, Lcom/tw/OnLinePaySdk/bean/AppSetBean;->getChannelId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v9, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "appName"

    .line 45
    invoke-static {p1}, Lcom/tw/OnLinePaySdk/tools/Tools;->getProgramName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v9, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v9, v8, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v9, v7, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v9, v6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v9, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v9, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v9, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v9, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v9, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v9, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    new-instance p2, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;

    new-instance p3, Lcom/tw/OnLinePaySdk/tools/SendUserInfoUtil$1;

    invoke-direct {p3, p0}, Lcom/tw/OnLinePaySdk/tools/SendUserInfoUtil$1;-><init>(Lcom/tw/OnLinePaySdk/tools/SendUserInfoUtil;)V

    invoke-direct {p2, p1, p3, v9}, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;-><init>(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/MyCallBack;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Integer;

    const/4 p3, 0x0

    const/high16 p4, 0x7f020000

    .line 61
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p1, p3

    invoke-virtual {p2, p1}, Lcom/tw/OnLinePaySdk/net/HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
