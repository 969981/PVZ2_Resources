.class Lcn/sharesdk/douyin/Douyin$1;
.super Ljava/lang/Object;
.source "Douyin.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/douyin/Douyin;->doAuthorize([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/douyin/Douyin;


# direct methods
.method constructor <init>(Lcn/sharesdk/douyin/Douyin;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcn/sharesdk/douyin/Douyin$1;->a:Lcn/sharesdk/douyin/Douyin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcn/sharesdk/douyin/Douyin$1;->a:Lcn/sharesdk/douyin/Douyin;

    invoke-static {v0}, Lcn/sharesdk/douyin/Douyin;->h(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcn/sharesdk/douyin/Douyin$1;->a:Lcn/sharesdk/douyin/Douyin;

    invoke-static {v0}, Lcn/sharesdk/douyin/Douyin;->i(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/douyin/Douyin$1;->a:Lcn/sharesdk/douyin/Douyin;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 7

    .line 111
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    const-string v2, "refresh_token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    const-string v3, "open_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    const-string v4, "scope"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    iget-object v5, p0, Lcn/sharesdk/douyin/Douyin$1;->a:Lcn/sharesdk/douyin/Douyin;

    invoke-static {v5}, Lcn/sharesdk/douyin/Douyin;->a(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 120
    :try_start_0
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-wide/16 v5, 0x0

    .line 124
    :goto_0
    iget-object v1, p0, Lcn/sharesdk/douyin/Douyin$1;->a:Lcn/sharesdk/douyin/Douyin;

    invoke-static {v1}, Lcn/sharesdk/douyin/Douyin;->b(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    .line 125
    iget-object v1, p0, Lcn/sharesdk/douyin/Douyin$1;->a:Lcn/sharesdk/douyin/Douyin;

    invoke-static {v1}, Lcn/sharesdk/douyin/Douyin;->c(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    const-string v5, "refreshToken"

    invoke-virtual {v1, v5, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcn/sharesdk/douyin/Douyin$1;->a:Lcn/sharesdk/douyin/Douyin;

    invoke-static {v1}, Lcn/sharesdk/douyin/Douyin;->d(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1, v4, p1}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin$1;->a:Lcn/sharesdk/douyin/Douyin;

    invoke-static {p1}, Lcn/sharesdk/douyin/Douyin;->e(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/douyin/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/sharesdk/douyin/c;->c(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 131
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin$1;->a:Lcn/sharesdk/douyin/Douyin;

    invoke-static {p1}, Lcn/sharesdk/douyin/Douyin;->f(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin$1;->a:Lcn/sharesdk/douyin/Douyin;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/sharesdk/douyin/Douyin;->a(Lcn/sharesdk/douyin/Douyin;ILjava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcn/sharesdk/douyin/Douyin$1;->a:Lcn/sharesdk/douyin/Douyin;

    invoke-static {v0}, Lcn/sharesdk/douyin/Douyin;->g(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcn/sharesdk/douyin/Douyin$1;->a:Lcn/sharesdk/douyin/Douyin;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcn/sharesdk/douyin/Douyin;->a(Lcn/sharesdk/douyin/Douyin;Ljava/lang/Throwable;I)V

    :cond_0
    return-void
.end method
