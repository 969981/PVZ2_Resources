.class public Lcn/sharesdk/framework/authorize/g;
.super Lcn/sharesdk/framework/authorize/a;
.source "WebAuthorizeActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcn/sharesdk/framework/authorize/ResizeLayout$OnResizeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/authorize/g$a;
    }
.end annotation


# instance fields
.field protected b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

.field private d:Lcn/sharesdk/framework/authorize/RegisterView;

.field private e:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcn/sharesdk/framework/authorize/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/authorize/g;)Landroid/app/Activity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/sharesdk/framework/authorize/g;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lcn/sharesdk/framework/authorize/g;)Landroid/app/Activity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/sharesdk/framework/authorize/g;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private c()Lcn/sharesdk/framework/authorize/AuthorizeAdapter;
    .locals 4

    const/4 v0, 0x0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/framework/authorize/g;->activity:Landroid/app/Activity;

    .line 64
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 65
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "AuthorizeAdapter"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 72
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "Adapter"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 73
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 80
    instance-of v2, v1, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-nez v2, :cond_3

    return-object v0

    .line 84
    :cond_3
    check-cast v1, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_4
    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 86
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public OnResize(IIII)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onResize(IIII)V

    :cond_0
    return-void
.end method

.method public a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/sharesdk/framework/authorize/g;->b:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-void
.end method

.method protected b()Lcn/sharesdk/framework/authorize/RegisterView;
    .locals 4

    .line 131
    new-instance v0, Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/authorize/RegisterView;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/framework/authorize/g$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/framework/authorize/g$1;-><init>(Lcn/sharesdk/framework/authorize/g;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    .line 154
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    .line 155
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 156
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 158
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, 0x0

    .line 160
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 162
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 163
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 166
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 167
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 168
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 172
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1, p0}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/g;)Lcn/sharesdk/framework/authorize/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 174
    :cond_0
    const-string v2, ""

    .line 177
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "GooglePlusAuthorizeWebviewClient"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 178
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "GooglePlus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "YoutubeAuthorizeWebviewClient"

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mozilla/5.0 (Linux; Android 5.1; m2 note Build/LMY47D) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/40.0.2214.127 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Mobile Safari/537.36"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    iget-object v3, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 187
    :cond_4
    iget-object v2, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 188
    new-instance v1, Lcn/sharesdk/framework/authorize/g$2;

    invoke-direct {v1, p0}, Lcn/sharesdk/framework/authorize/g$2;-><init>(Lcn/sharesdk/framework/authorize/g;)V

    .line 212
    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/g$2;->start()V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 219
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    const-string v2, ")"

    if-ne v0, v1, :cond_1

    .line 220
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network error (platform: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/g;->finish()V

    .line 229
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Authorize URL is empty (platform: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate()V
    .locals 10

    const-string v0, "ssdk_"

    .line 93
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/g;->b()Lcn/sharesdk/framework/authorize/RegisterView;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/framework/authorize/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    .line 95
    invoke-virtual {v1, p0}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Lcn/sharesdk/framework/authorize/ResizeLayout$OnResizeListener;)V

    .line 96
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v2, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v2}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->isNotitle()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/authorize/RegisterView;->a(Z)V

    .line 97
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    iget-object v2, p0, Lcn/sharesdk/framework/authorize/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v2}, Lcn/sharesdk/framework/authorize/RegisterView;->d()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setBodyView(Landroid/widget/RelativeLayout;)V

    .line 98
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    iget-object v2, p0, Lcn/sharesdk/framework/authorize/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v2}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setWebView(Landroid/webkit/WebView;)V

    .line 99
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setTitleView(Lcn/sharesdk/framework/TitleLayout;)V

    .line 101
    iget-object v2, p0, Lcn/sharesdk/framework/authorize/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v2}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    .line 102
    iget-object v3, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    iget-object v4, p0, Lcn/sharesdk/framework/authorize/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v4}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getPlatform()Lcn/sharesdk/framework/Platform;

    move-result-object v4

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setPlatformName(Ljava/lang/String;)V

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/g;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 105
    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 109
    :try_start_1
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/g;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ssdk_weibo_oauth_regiseter"

    .line 108
    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 110
    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 112
    :catchall_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onCreate()V

    .line 118
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->isPopUpAnimationDisable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x226

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 123
    new-instance v1, Lcn/sharesdk/framework/authorize/g$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/sharesdk/framework/authorize/g$a;-><init>(Lcn/sharesdk/framework/authorize/g$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 124
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/authorize/RegisterView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/framework/authorize/g;->disableScreenCapture()Z

    .line 127
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onDestroy()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 316
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    :cond_1
    return-void
.end method

.method public onFinish()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onFinish()Z

    move-result v0

    return v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 302
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 304
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 306
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 308
    :cond_2
    invoke-super {p0}, Lcn/sharesdk/framework/authorize/a;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 252
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 256
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 257
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/g;->a:Lcn/sharesdk/framework/authorize/AuthorizeHelper;

    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeHelper;->getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 259
    invoke-interface {v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    .line 262
    :cond_2
    invoke-super {p0, p1, p2}, Lcn/sharesdk/framework/authorize/a;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onPause()V

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onRestart()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onStop()V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcn/sharesdk/framework/authorize/a;->setActivity(Landroid/app/Activity;)V

    .line 52
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcn/sharesdk/framework/authorize/g;->c()Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-direct {v0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    .line 58
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/g;->c:Lcn/sharesdk/framework/authorize/AuthorizeAdapter;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->setActivity(Landroid/app/Activity;)V

    return-void
.end method
