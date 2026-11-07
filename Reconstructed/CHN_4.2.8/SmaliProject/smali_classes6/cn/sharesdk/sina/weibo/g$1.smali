.class Lcn/sharesdk/sina/weibo/g$1;
.super Ljava/lang/Object;
.source "SinaWeiboWebAuthOfficial.java"

# interfaces
.implements Lcom/sina/weibo/sdk/openapi/SdkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/g;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/g;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/g;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/g$1;->a:Lcn/sharesdk/sina/weibo/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g$1;->a:Lcn/sharesdk/sina/weibo/g;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/g;->b(Lcn/sharesdk/sina/weibo/g;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g$1;->a:Lcn/sharesdk/sina/weibo/g;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/g;->b(Lcn/sharesdk/sina/weibo/g;)Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 64
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WeiboInitFailure "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "SinaWeiboShareOfficial"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method public onInitSuccess()V
    .locals 1

    const/4 v0, 0x1

    .line 55
    sput-boolean v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->initFlag:Z

    .line 56
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/g$1;->a:Lcn/sharesdk/sina/weibo/g;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/g;->a(Lcn/sharesdk/sina/weibo/g;)V

    return-void
.end method
