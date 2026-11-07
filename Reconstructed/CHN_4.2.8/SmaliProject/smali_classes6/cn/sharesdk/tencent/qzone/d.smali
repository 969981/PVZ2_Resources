.class public Lcn/sharesdk/tencent/qzone/d;
.super Lcom/mob/tools/FakeActivity;
.source "ShareActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcn/sharesdk/framework/PlatformActionListener;

.field private d:Lcn/sharesdk/framework/authorize/RegisterView;

.field private e:Landroid/webkit/WebView;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/d;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/d;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/qzone/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b()Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;
    .locals 4

    const/4 v0, 0x0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    .line 74
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 75
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "QZoneWebShareAdapter"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 82
    instance-of v2, v1, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-nez v2, :cond_1

    return-object v0

    .line 86
    :cond_1
    check-cast v1, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_2
    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 88
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/tencent/qzone/d;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/sharesdk/tencent/qzone/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcn/sharesdk/tencent/qzone/d;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/qzone/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    .line 224
    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 225
    :goto_0
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_1

    .line 227
    iput-boolean v1, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    .line 228
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 229
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v4, "failed to parse callback uri: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    return-void

    .line 233
    :cond_1
    const-string v4, "action"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 234
    const-string v5, "share"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "shareToQzone"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 235
    iput-boolean v1, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    .line 236
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 237
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v4, "action error: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    return-void

    .line 241
    :cond_2
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 242
    const-string v5, "cancel"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 243
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 244
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, v3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    return-void

    .line 246
    :cond_3
    const-string v5, "complete"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 247
    iput-boolean v1, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    .line 248
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 249
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v4, "operation failed: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    return-void

    .line 253
    :cond_4
    const-string v4, "response"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 255
    iput-boolean v1, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    .line 256
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 257
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v4, "response empty"

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    return-void

    .line 261
    :cond_5
    iput-boolean v1, p0, Lcn/sharesdk/tencent/qzone/d;->g:Z

    .line 262
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 263
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {v0, v3, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    return-void
.end method

.method private c()V
    .locals 4

    .line 126
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 128
    const-string v1, "pkg_name"

    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 142
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 143
    invoke-interface {v1, v2, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 271
    :try_start_0
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 274
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 279
    :try_start_1
    invoke-virtual {p0, v0}, Lcn/sharesdk/tencent/qzone/d;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 281
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void
.end method

.method private d()V
    .locals 4

    .line 149
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->a()Lcn/sharesdk/framework/authorize/RegisterView;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_share_to_qzone"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 153
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 156
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 157
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/TitleLayout;->setVisibility(I)V

    .line 160
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->d()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->setBodyView(Landroid/widget/RelativeLayout;)V

    .line 161
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->setWebView(Landroid/webkit/WebView;)V

    .line 162
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v1}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->setTitleView(Lcn/sharesdk/framework/TitleLayout;)V

    .line 163
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onCreate()V

    .line 164
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 166
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 167
    const-string v1, "none"

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    .line 169
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    .line 170
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "failed to load webpage, network disconnected."

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->d:Lcn/sharesdk/framework/authorize/RegisterView;

    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Lcn/sharesdk/framework/authorize/RegisterView;
    .locals 5

    .line 178
    new-instance v0, Lcn/sharesdk/framework/authorize/RegisterView;

    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/sharesdk/framework/authorize/RegisterView;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/TitleLayout;->getChildCount()I

    move-result v1

    .line 180
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->c()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/TitleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcn/sharesdk/tencent/qzone/d$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/tencent/qzone/d$1;-><init>(Lcn/sharesdk/tencent/qzone/d;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-virtual {v0}, Lcn/sharesdk/framework/authorize/RegisterView;->b()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    .line 198
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 199
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 200
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 201
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 202
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 203
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 204
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    const-string v3, "database"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 207
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 208
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 209
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    new-instance v2, Lcn/sharesdk/tencent/qzone/d$2;

    invoke-direct {v2, p0}, Lcn/sharesdk/tencent/qzone/d$2;-><init>(Lcn/sharesdk/tencent/qzone/d;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tencent"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/d;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/d;->a:Ljava/lang/String;

    .line 48
    iput-boolean p2, p0, Lcn/sharesdk/tencent/qzone/d;->b:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 340
    invoke-virtual {p0}, Lcn/sharesdk/tencent/qzone/d;->finish()V

    return-void
.end method

.method public onCreate()V
    .locals 7

    const/4 v0, 0x0

    .line 96
    :try_start_0
    const-string v1, "cn.sharesdk.tencent.qq.ReceiveActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 97
    const-string v2, "setUriScheme"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 98
    iget-object v4, p0, Lcn/sharesdk/tencent/qzone/d;->f:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v2, "setPlatformActionListener"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcn/sharesdk/framework/PlatformActionListener;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-boolean v1, p0, Lcn/sharesdk/tencent/qzone/d;->b:Z

    if-eqz v1, :cond_0

    .line 102
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/d;->c()V

    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/d;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    :try_start_1
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->f:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->a(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/ReceiveActivity;->a(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 110
    iget-boolean v1, p0, Lcn/sharesdk/tencent/qzone/d;->b:Z

    if-eqz v1, :cond_1

    .line 111
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/d;->c()V

    goto :goto_0

    .line 113
    :cond_1
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/d;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 116
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/d;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 117
    iget-object v2, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v2, :cond_2

    const/16 v3, 0x9

    .line 118
    invoke-interface {v2, v0, v3, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 318
    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/d;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/d;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/d;->g:Z

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->c:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_2

    .line 325
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onDestroy()V

    :cond_2
    return-void
.end method

.method public onFinish()Z
    .locals 1

    .line 330
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onFinish()Z

    move-result v0

    return v0

    .line 333
    :cond_0
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onPause()V

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onRestart()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 306
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->onStop()V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/mob/tools/FakeActivity;->setActivity(Landroid/app/Activity;)V

    .line 62
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcn/sharesdk/tencent/qzone/d;->b()Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-direct {v0}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    .line 68
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/d;->i:Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;

    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qzone/QZoneWebShareAdapter;->setActivity(Landroid/app/Activity;)V

    return-void
.end method
