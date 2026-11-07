.class Lcn/sharesdk/douyin/c$1;
.super Ljava/lang/Thread;
.source "DouyinImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/douyin/c;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/douyin/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/douyin/c;Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcn/sharesdk/douyin/c$1;->b:Lcn/sharesdk/douyin/c;

    iput-object p2, p0, Lcn/sharesdk/douyin/c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 273
    const-string v0, "scope"

    const-string v1, "open_id"

    const-string v2, "refresh_token"

    const-string v3, "expires_in"

    const-string v4, "access_token"

    .line 275
    :try_start_0
    iget-object v5, p0, Lcn/sharesdk/douyin/c$1;->b:Lcn/sharesdk/douyin/c;

    iget-object v6, p0, Lcn/sharesdk/douyin/c$1;->a:Ljava/lang/String;

    invoke-static {v5}, Lcn/sharesdk/douyin/c;->a(Lcn/sharesdk/douyin/c;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcn/sharesdk/douyin/c$1;->b:Lcn/sharesdk/douyin/c;

    invoke-static {v8}, Lcn/sharesdk/douyin/c;->b(Lcn/sharesdk/douyin/c;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcn/sharesdk/douyin/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    .line 277
    :try_start_1
    iget-object v6, p0, Lcn/sharesdk/douyin/c$1;->b:Lcn/sharesdk/douyin/c;

    invoke-static {v6}, Lcn/sharesdk/douyin/c;->c(Lcn/sharesdk/douyin/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 278
    iget-object v6, p0, Lcn/sharesdk/douyin/c$1;->b:Lcn/sharesdk/douyin/c;

    invoke-static {v6}, Lcn/sharesdk/douyin/c;->c(Lcn/sharesdk/douyin/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v6

    invoke-interface {v6, v5}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_1

    .line 282
    iget-object v6, p0, Lcn/sharesdk/douyin/c$1;->b:Lcn/sharesdk/douyin/c;

    invoke-static {v6}, Lcn/sharesdk/douyin/c;->c(Lcn/sharesdk/douyin/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 283
    iget-object v0, p0, Lcn/sharesdk/douyin/c$1;->b:Lcn/sharesdk/douyin/c;

    invoke-static {v0}, Lcn/sharesdk/douyin/c;->c(Lcn/sharesdk/douyin/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Authorize token is empty"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 287
    :cond_1
    new-instance v6, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v6}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v6, v5}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 288
    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 290
    const-string v7, "message"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 291
    const-string v7, "success"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v8, "error_code"

    if-eqz v7, :cond_2

    .line 292
    :try_start_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 293
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcn/sharesdk/douyin/c$1;->b:Lcn/sharesdk/douyin/c;

    invoke-static {v0}, Lcn/sharesdk/douyin/c;->c(Lcn/sharesdk/douyin/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    invoke-interface {v0, v5}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_1

    .line 301
    :cond_2
    const-string v0, "error"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    const-string v0, "description"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 304
    iget-object v2, p0, Lcn/sharesdk/douyin/c$1;->b:Lcn/sharesdk/douyin/c;

    invoke-static {v2}, Lcn/sharesdk/douyin/c;->c(Lcn/sharesdk/douyin/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " errorDesc "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 309
    iget-object v1, p0, Lcn/sharesdk/douyin/c$1;->b:Lcn/sharesdk/douyin/c;

    invoke-static {v1}, Lcn/sharesdk/douyin/c;->c(Lcn/sharesdk/douyin/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 310
    iget-object v1, p0, Lcn/sharesdk/douyin/c$1;->b:Lcn/sharesdk/douyin/c;

    invoke-static {v1}, Lcn/sharesdk/douyin/c;->c(Lcn/sharesdk/douyin/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
