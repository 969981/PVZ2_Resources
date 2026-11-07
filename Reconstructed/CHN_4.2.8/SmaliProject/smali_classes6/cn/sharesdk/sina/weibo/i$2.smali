.class Lcn/sharesdk/sina/weibo/i$2;
.super Ljava/lang/Object;
.source "Weibo.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/i;->b(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic b:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic c:Lcn/sharesdk/sina/weibo/i;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/i;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/i$2;->c:Lcn/sharesdk/sina/weibo/i;

    iput-object p2, p0, Lcn/sharesdk/sina/weibo/i$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iput-object p3, p0, Lcn/sharesdk/sina/weibo/i$2;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 461
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/i$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 462
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/i$2;->c:Lcn/sharesdk/sina/weibo/i;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/i;->j(Lcn/sharesdk/sina/weibo/i;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4

    .line 437
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/i$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 438
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 439
    const-string v1, "ShareParams"

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/i$2;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/i$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/i$2;->c:Lcn/sharesdk/sina/weibo/i;

    invoke-static {v2}, Lcn/sharesdk/sina/weibo/i;->e(Lcn/sharesdk/sina/weibo/i;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    const/16 v3, 0x9

    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 444
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    const-string v2, "expire_in"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 448
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/i$2;->c:Lcn/sharesdk/sina/weibo/i;

    invoke-static {v2, v1}, Lcn/sharesdk/sina/weibo/i;->a(Lcn/sharesdk/sina/weibo/i;Ljava/lang/String;)Ljava/lang/String;

    .line 449
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/i$2;->c:Lcn/sharesdk/sina/weibo/i;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/i;->g(Lcn/sharesdk/sina/weibo/i;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/i$2;->c:Lcn/sharesdk/sina/weibo/i;

    invoke-static {v2}, Lcn/sharesdk/sina/weibo/i;->f(Lcn/sharesdk/sina/weibo/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    .line 451
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/i$2;->c:Lcn/sharesdk/sina/weibo/i;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/i;->h(Lcn/sharesdk/sina/weibo/i;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 453
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 454
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/i$2;->c:Lcn/sharesdk/sina/weibo/i;

    invoke-static {p1}, Lcn/sharesdk/sina/weibo/i;->i(Lcn/sharesdk/sina/weibo/i;)Lcn/sharesdk/framework/Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 431
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/i$2;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 432
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/i$2;->c:Lcn/sharesdk/sina/weibo/i;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/i;->d(Lcn/sharesdk/sina/weibo/i;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
