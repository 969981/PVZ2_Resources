.class public Lcn/sharesdk/sina/weibo/d;
.super Lcom/mob/tools/FakeActivity;
.source "SinaWeiboOfficialAuth.java"


# instance fields
.field private a:Lcom/sina/weibo/sdk/openapi/IWBAPI;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcn/sharesdk/framework/authorize/AuthorizeListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/d;->b:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/d;->c:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcn/sharesdk/sina/weibo/d;->d:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcn/sharesdk/sina/weibo/d;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-void
.end method

.method private a()V
    .locals 3

    .line 98
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "SinaWeiboOfficialAuth loginManager"

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->a:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/d;->activity:Landroid/app/Activity;

    new-instance v2, Lcn/sharesdk/sina/weibo/d$2;

    invoke-direct {v2, p0}, Lcn/sharesdk/sina/weibo/d$2;-><init>(Lcn/sharesdk/sina/weibo/d;)V

    invoke-interface {v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->authorizeClient(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WbAuthListener;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_1

    .line 137
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "SinaWeibo SDK init failed"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/d;->finish()V

    :goto_0
    return-void
.end method

.method private a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 4

    .line 144
    new-instance v0, Lcn/sharesdk/sina/weibo/g;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/d;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/d;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcn/sharesdk/sina/weibo/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 145
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/sina/weibo/g;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 146
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const-string v0, "SinaWeibo SDK Web showWebAuthActivity "

    invoke-virtual {p1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/d;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/d;->a()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/d;Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/d;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/d;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/d;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 193
    invoke-super {p0, p1, p2, p3}, Lcom/mob/tools/FakeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 194
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->a:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/d;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->authorizeCallback(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 197
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const-string p2, "SinaWeiboOfficialAuth onActivityResult"

    invoke-virtual {p1, p2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 40
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "SinaWeiboOfficialAuth onCreate "

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    .line 43
    :try_start_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/d;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/d;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 48
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SinaWeiboOfficialAuth onCreate exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/d;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 51
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "SinaWeibo SDK init failed"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/d;->finish()V

    .line 58
    :goto_0
    :try_start_1
    new-instance v0, Lcom/sina/weibo/sdk/auth/AuthInfo;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/d;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/d;->c:Ljava/lang/String;

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/d;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/d;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sina/weibo/sdk/openapi/WBAPIFactory;->createWBAPI(Landroid/content/Context;)Lcom/sina/weibo/sdk/openapi/IWBAPI;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/sina/weibo/d;->a:Lcom/sina/weibo/sdk/openapi/IWBAPI;

    .line 60
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/d;->activity:Landroid/app/Activity;

    new-instance v3, Lcn/sharesdk/sina/weibo/d$1;

    invoke-direct {v3, p0}, Lcn/sharesdk/sina/weibo/d$1;-><init>(Lcn/sharesdk/sina/weibo/d;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/sina/weibo/sdk/openapi/IWBAPI;->registerApp(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/openapi/SdkListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 77
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreate AuthInfo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "SinaWeiboOfficialAuth"

    invoke-virtual {v1, v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 82
    :goto_1
    :try_start_2
    sget-boolean v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->initFlag:Z

    if-eqz v0, :cond_1

    .line 83
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/d;->a()V

    .line 85
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "SinaWeiboOfficialAuth onCreate loginManager() "

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 87
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/d;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v1, :cond_2

    .line 88
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authorize catch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/d;->e:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v2, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 91
    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SinaWeiboOfficialAuth onCreate catch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/d;->finish()V

    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 220
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onDestroy()V

    .line 221
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "SinaWeiboOfficialAuth onDestroy"

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 208
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onPause()V

    .line 209
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "SinaWeiboOfficialAuth onPause"

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 202
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onResume()V

    .line 203
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "SinaWeiboOfficialAuth onResume"

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 214
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onStop()V

    .line 215
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "SinaWeiboOfficialAuth onStop"

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    return-void
.end method
