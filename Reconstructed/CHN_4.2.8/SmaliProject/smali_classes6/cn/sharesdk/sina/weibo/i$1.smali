.class Lcn/sharesdk/sina/weibo/i$1;
.super Ljava/lang/Object;
.source "Weibo.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/i;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
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

    .line 381
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/i$1;->c:Lcn/sharesdk/sina/weibo/i;

    iput-object p2, p0, Lcn/sharesdk/sina/weibo/i$1;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iput-object p3, p0, Lcn/sharesdk/sina/weibo/i$1;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 397
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/i$1;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/i$1;->c:Lcn/sharesdk/sina/weibo/i;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/i;->c(Lcn/sharesdk/sina/weibo/i;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3

    .line 389
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/i$1;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 390
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 391
    const-string v0, "ShareParams"

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/i$1;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/i$1;->a:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/i$1;->c:Lcn/sharesdk/sina/weibo/i;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/i;->b(Lcn/sharesdk/sina/weibo/i;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 383
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/i$1;->a:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/i$1;->c:Lcn/sharesdk/sina/weibo/i;

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/i;->a(Lcn/sharesdk/sina/weibo/i;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
