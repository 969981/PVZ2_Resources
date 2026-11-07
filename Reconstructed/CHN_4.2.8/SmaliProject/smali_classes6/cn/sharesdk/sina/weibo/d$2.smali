.class Lcn/sharesdk/sina/weibo/d$2;
.super Ljava/lang/Object;
.source "SinaWeiboOfficialAuth.java"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WbAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/d;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/d;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/d$2;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 130
    invoke-static {}, Lcn/sharesdk/sina/weibo/b;->a()Lcn/sharesdk/sina/weibo/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/b;->a(I)V

    .line 131
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d$2;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/d;->b(Lcn/sharesdk/sina/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 132
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d$2;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/d;->finish()V

    return-void
.end method

.method public onComplete(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 3

    .line 105
    invoke-static {}, Lcn/sharesdk/sina/weibo/b;->a()Lcn/sharesdk/sina/weibo/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/b;->a(I)V

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    const-string v1, "access_token"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getExpiresTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expires_in"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "refresh_token"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "username"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/d$2;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/d;->b(Lcn/sharesdk/sina/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    .line 114
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/d$2;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-virtual {p1}, Lcn/sharesdk/sina/weibo/d;->finish()V

    return-void
.end method

.method public onError(Lcom/sina/weibo/sdk/common/UiError;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/d$2;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/d;->b(Lcn/sharesdk/sina/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/sharesdk/sina/weibo/d;->a(Lcn/sharesdk/sina/weibo/d;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 125
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/d$2;->a:Lcn/sharesdk/sina/weibo/d;

    invoke-virtual {p1}, Lcn/sharesdk/sina/weibo/d;->finish()V

    return-void
.end method
