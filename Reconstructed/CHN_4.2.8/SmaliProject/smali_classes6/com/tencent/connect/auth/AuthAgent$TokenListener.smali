.class Lcom/tencent/connect/auth/AuthAgent$TokenListener;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/AuthAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TokenListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/auth/AuthAgent;

.field private final b:Lcom/tencent/tauth/IUiListener;

.field private final c:Z

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/AuthAgent;Landroid/content/Context;Lcom/tencent/tauth/IUiListener;ZZ)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthAgent$TokenListener;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p2, p0, Lcom/tencent/connect/auth/AuthAgent$TokenListener;->d:Landroid/content/Context;

    .line 110
    iput-object p3, p0, Lcom/tencent/connect/auth/AuthAgent$TokenListener;->b:Lcom/tencent/tauth/IUiListener;

    .line 111
    iput-boolean p4, p0, Lcom/tencent/connect/auth/AuthAgent$TokenListener;->c:Z

    .line 112
    const-string p1, "openSDK_LOG.AuthAgent"

    const-string p2, "OpenUi, TokenListener()"

    invoke-static {p1, p2}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 170
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "OpenUi, TokenListener() onCancel"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$TokenListener;->b:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 172
    invoke-static {}, Lcom/tencent/open/a/f;->b()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 7

    .line 117
    const-string v0, "pf"

    const-string v1, "OpenUi, TokenListener() onComplete error"

    const-string v2, "OpenUi, TokenListener() onComplete"

    const-string v3, "openSDK_LOG.AuthAgent"

    invoke-static {v3, v2}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    check-cast p1, Lorg/json/JSONObject;

    .line 120
    :try_start_0
    const-string v2, "access_token"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    const-string v4, "expires_in"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    const-string v5, "openid"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_0

    .line 123
    iget-object v6, p0, Lcom/tencent/connect/auth/AuthAgent$TokenListener;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v6}, Lcom/tencent/connect/auth/AuthAgent;->a(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    .line 130
    iget-object v6, p0, Lcom/tencent/connect/auth/AuthAgent$TokenListener;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v6}, Lcom/tencent/connect/auth/AuthAgent;->b(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v6

    invoke-virtual {v6, v2, v4}, Lcom/tencent/connect/auth/QQToken;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthAgent$TokenListener;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v2}, Lcom/tencent/connect/auth/AuthAgent;->c(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/tencent/connect/auth/QQToken;->setOpenId(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthAgent$TokenListener;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/connect/auth/AuthAgent$TokenListener;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v4}, Lcom/tencent/connect/auth/AuthAgent;->d(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/connect/a/a;->d(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    .line 137
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    .line 140
    :try_start_1
    iget-object v4, p0, Lcom/tencent/connect/auth/AuthAgent$TokenListener;->d:Landroid/content/Context;

    const-string v5, "pfStore"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 142
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 144
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    invoke-static {v3, v1, v0}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/connect/auth/AuthAgent$TokenListener;->c:Z

    if-eqz v0, :cond_2

    .line 150
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 153
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 154
    invoke-static {v3, v1, v0}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$TokenListener;->b:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    .line 157
    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent$TokenListener;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/AuthAgent;->releaseResource()V

    .line 158
    invoke-static {}, Lcom/tencent/open/a/f;->b()V

    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 2

    .line 163
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "OpenUi, TokenListener() onError"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$TokenListener;->b:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 165
    invoke-static {}, Lcom/tencent/open/a/f;->b()V

    return-void
.end method
