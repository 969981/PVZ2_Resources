.class public Lcn/sharesdk/douyin/Douyin;
.super Lcn/sharesdk/framework/Platform;
.source "Douyin.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Douyin"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Lcn/sharesdk/douyin/b;

.field private f:Lcn/sharesdk/douyin/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    .line 55
    invoke-static {}, Lcn/sharesdk/douyin/c;->a()Lcn/sharesdk/douyin/c;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douyin/Douyin;->f:Lcn/sharesdk/douyin/c;

    .line 56
    new-instance v0, Lcn/sharesdk/douyin/b;

    invoke-direct {v0, p0}, Lcn/sharesdk/douyin/b;-><init>(Lcn/sharesdk/framework/Platform;)V

    iput-object v0, p0, Lcn/sharesdk/douyin/Douyin;->e:Lcn/sharesdk/douyin/b;

    .line 57
    iget-object v1, p0, Lcn/sharesdk/douyin/Douyin;->f:Lcn/sharesdk/douyin/c;

    invoke-virtual {v1, v0}, Lcn/sharesdk/douyin/c;->a(Lcn/sharesdk/douyin/b;)V

    .line 58
    iget-object v0, p0, Lcn/sharesdk/douyin/Douyin;->f:Lcn/sharesdk/douyin/c;

    iget-object v1, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v1}, Lcn/sharesdk/douyin/c;->a(Lcn/sharesdk/framework/PlatformActionListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)I
    .locals 4

    const/4 v0, -0x1

    .line 436
    :try_start_0
    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    new-instance v1, Landroid/content/ComponentName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x80

    .line 437
    invoke-virtual {p3, v1, p1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 438
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez p1, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    const-string p2, "BD_PLATFORM_SDK_VERSION"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic a(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/sharesdk/douyin/Douyin;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method private a(ILjava/util/ArrayList;ZLjava/util/ArrayList;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 373
    new-instance v0, Lcn/sharesdk/douyin/a/j$a;

    invoke-direct {v0}, Lcn/sharesdk/douyin/a/j$a;-><init>()V

    if-eqz p2, :cond_0

    .line 375
    iput-object p2, v0, Lcn/sharesdk/douyin/a/j$a;->d:Ljava/util/ArrayList;

    :cond_0
    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 401
    :cond_1
    invoke-direct {p0, p5, p2}, Lcn/sharesdk/douyin/Douyin;->a(Landroid/app/Activity;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 402
    new-instance p1, Lcn/sharesdk/douyin/a/i;

    invoke-direct {p1}, Lcn/sharesdk/douyin/a/i;-><init>()V

    .line 403
    iput-object p4, p1, Lcn/sharesdk/douyin/a/i;->h:Ljava/util/ArrayList;

    .line 404
    new-instance p2, Lcn/sharesdk/douyin/a/g;

    invoke-direct {p2}, Lcn/sharesdk/douyin/a/g;-><init>()V

    .line 405
    iput-object p1, p2, Lcn/sharesdk/douyin/a/g;->a:Lcn/sharesdk/douyin/a/e;

    .line 406
    iput-object p2, v0, Lcn/sharesdk/douyin/a/j$a;->e:Lcn/sharesdk/douyin/a/g;

    goto :goto_0

    .line 381
    :cond_2
    new-instance p1, Lcn/sharesdk/douyin/a/f;

    invoke-direct {p1}, Lcn/sharesdk/douyin/a/f;-><init>()V

    .line 382
    iput-object p4, p1, Lcn/sharesdk/douyin/a/f;->h:Ljava/util/ArrayList;

    .line 383
    new-instance p2, Lcn/sharesdk/douyin/a/g;

    invoke-direct {p2}, Lcn/sharesdk/douyin/a/g;-><init>()V

    .line 384
    iput-object p1, p2, Lcn/sharesdk/douyin/a/g;->a:Lcn/sharesdk/douyin/a/e;

    .line 385
    iput-object p2, v0, Lcn/sharesdk/douyin/a/j$a;->e:Lcn/sharesdk/douyin/a/g;

    goto :goto_0

    .line 389
    :cond_3
    new-instance p1, Lcn/sharesdk/douyin/a/l;

    invoke-direct {p1}, Lcn/sharesdk/douyin/a/l;-><init>()V

    .line 390
    iput-object p4, p1, Lcn/sharesdk/douyin/a/l;->h:Ljava/util/ArrayList;

    .line 391
    new-instance p2, Lcn/sharesdk/douyin/a/g;

    invoke-direct {p2}, Lcn/sharesdk/douyin/a/g;-><init>()V

    .line 392
    iput-object p1, p2, Lcn/sharesdk/douyin/a/g;->a:Lcn/sharesdk/douyin/a/e;

    .line 393
    iput-object p2, v0, Lcn/sharesdk/douyin/a/j$a;->e:Lcn/sharesdk/douyin/a/g;

    const/16 p1, 0x8

    .line 395
    invoke-direct {p0, p5, p1}, Lcn/sharesdk/douyin/Douyin;->a(Landroid/app/Activity;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 396
    iput-boolean p3, v0, Lcn/sharesdk/douyin/a/j$a;->j:Z

    .line 410
    :cond_4
    :goto_0
    const-string p1, "cn.sharesdk.douyin.bdopen.DouYinHandlerActivity"

    iput-object p1, v0, Lcn/sharesdk/douyin/a/j$a;->i:Ljava/lang/String;

    .line 411
    invoke-direct {p0, v0, p5}, Lcn/sharesdk/douyin/Douyin;->a(Lcn/sharesdk/douyin/a/j$a;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/douyin/Douyin;ILjava/lang/Object;)V
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/douyin/Douyin;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/douyin/Douyin;Ljava/lang/Throwable;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    return-void
.end method

.method private a(Lcn/sharesdk/douyin/a/j$a;Landroid/app/Activity;)V
    .locals 4

    .line 448
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 449
    invoke-virtual {p1, v0}, Lcn/sharesdk/douyin/a/j$a;->a(Landroid/os/Bundle;)V

    .line 450
    const-string v1, "_aweme_open_sdk_params_client_key"

    iget-object v2, p0, Lcn/sharesdk/douyin/Douyin;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v1, "_aweme_open_sdk_params_caller_package"

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v1, "_aweme_open_sdk_params_caller_sdk_version"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v1, p1, Lcn/sharesdk/douyin/a/j$a;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".douyinapi.DouYinEntryActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_aweme_open_sdk_params_caller_local_entry"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_0
    iget-object p1, p1, Lcn/sharesdk/douyin/a/j$a;->h:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 458
    const-string v1, "_bytedance_params_extra"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 460
    :cond_1
    const-string p1, "_aweme_params_caller_open_sdk_name"

    const-string v1, "opensdk-china-external"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string p1, "_aweme_params_caller_open_sdk_version"

    const-string v1, "0.1.8.0"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 463
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.ss.android.ugc.aweme"

    const-string v3, "com.ss.android.ugc.aweme.share.SystemShareActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 464
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 465
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v0, 0x67

    .line 468
    :try_start_0
    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 470
    iget-object p2, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_2

    .line 471
    iget-object p2, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v0, 0x9

    invoke-interface {p2, p0, v0, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 4

    const/16 v0, 0x9

    .line 211
    :try_start_0
    const-string v1, "com.ss.android.ugc.aweme.share.SystemShareActivity"

    .line 212
    new-instance v2, Lcn/sharesdk/framework/utils/i;

    invoke-direct {v2}, Lcn/sharesdk/framework/utils/i;-><init>()V

    .line 213
    const-string v3, "com.ss.android.ugc.aweme"

    invoke-virtual {v2, v3, v1}, Lcn/sharesdk/framework/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_2

    .line 215
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p1, p3}, Lcn/sharesdk/framework/utils/i;->a(Ljava/lang/String;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 219
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "Share type is VIDEO, But FilePath is null"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, p1, v0}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    :cond_1
    return-void

    .line 225
    :cond_2
    invoke-virtual {v2, p2, p1}, Lcn/sharesdk/framework/utils/i;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/Platform;)V

    .line 227
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 228
    const-string v2, "ShareParams"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-interface {p3, p1, v0, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_3

    .line 232
    invoke-direct {p0, p1, v0}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    .line 234
    :cond_3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "Douyin share byPassShare catch "

    invoke-virtual {p2, p1, v0, p3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method

.method private a(Ljava/lang/Throwable;I)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {v0, p0, p2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;I)Z
    .locals 5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 419
    const-string v0, "share.SystemShareActivity"

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 421
    const-string v0, "openauthorize.AwemeAuthorizedActivity"

    goto :goto_0

    .line 420
    :cond_1
    const-string v0, ""

    .line 423
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 424
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.ss.android.ugc.aweme."

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.ss.android.ugc.aweme"

    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 426
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 428
    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v4, v0, p1}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)I

    move-result p1

    if-lt p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method static synthetic b(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/sharesdk/douyin/Douyin;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/sharesdk/douyin/Douyin;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic d(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/sharesdk/douyin/Douyin;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/douyin/c;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/sharesdk/douyin/Douyin;->f:Lcn/sharesdk/douyin/c;

    return-object p0
.end method

.method static synthetic f(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/sharesdk/douyin/Douyin;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic g(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic h(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic i(Lcn/sharesdk/douyin/Douyin;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .locals 3

    .line 179
    invoke-virtual {p0}, Lcn/sharesdk/douyin/Douyin;->isClientValid()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-nez v0, :cond_0

    if-ne p1, v2, :cond_0

    .line 180
    new-instance p2, Lcn/sharesdk/douyin/DouyinClientNotExistException;

    invoke-direct {p2}, Lcn/sharesdk/douyin/DouyinClientNotExistException;-><init>()V

    invoke-direct {p0, p2, p1}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v2, :cond_6

    .line 183
    invoke-virtual {p0}, Lcn/sharesdk/douyin/Douyin;->isAuthValid()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/douyin/Douyin;->isAuthValid()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 187
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 188
    iget-object p2, p0, Lcn/sharesdk/douyin/Douyin;->f:Lcn/sharesdk/douyin/c;

    invoke-virtual {p2, p1}, Lcn/sharesdk/douyin/c;->a(Ljava/lang/String;)V

    .line 190
    :cond_2
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->b:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 191
    iget-object p2, p0, Lcn/sharesdk/douyin/Douyin;->f:Lcn/sharesdk/douyin/c;

    invoke-virtual {p2, p1}, Lcn/sharesdk/douyin/c;->b(Ljava/lang/String;)V

    .line 193
    :cond_3
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 194
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->f:Lcn/sharesdk/douyin/c;

    iget-object p2, p0, Lcn/sharesdk/douyin/Douyin;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p2}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/sharesdk/douyin/c;->c(Ljava/lang/String;)V

    :cond_4
    return v0

    .line 198
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/douyin/Douyin;->innerAuthorize(ILjava/lang/Object;)V

    return v1

    :cond_6
    :goto_0
    return v0
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .locals 3

    .line 97
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Douyin start Auth with Appid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/sharesdk/douyin/Douyin;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AppSecret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/douyin/Douyin;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 98
    iget-object v0, p0, Lcn/sharesdk/douyin/Douyin;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 99
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getAuthActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "AuthActivity is null."

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, p1, v1}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/douyin/Douyin;->f:Lcn/sharesdk/douyin/c;

    iget-object v2, p0, Lcn/sharesdk/douyin/Douyin;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/douyin/c;->a(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcn/sharesdk/douyin/Douyin;->f:Lcn/sharesdk/douyin/c;

    iget-object v2, p0, Lcn/sharesdk/douyin/Douyin;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/sharesdk/douyin/c;->b(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcn/sharesdk/douyin/Douyin;->f:Lcn/sharesdk/douyin/c;

    invoke-virtual {v1, p1}, Lcn/sharesdk/douyin/c;->a([Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->f:Lcn/sharesdk/douyin/c;

    new-instance v1, Lcn/sharesdk/douyin/Douyin$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/douyin/Douyin$1;-><init>(Lcn/sharesdk/douyin/Douyin;)V

    .line 149
    invoke-virtual {p0}, Lcn/sharesdk/douyin/Douyin;->isSSODisable()Z

    move-result v2

    .line 108
    invoke-virtual {p1, v0, v1, v2}, Lcn/sharesdk/douyin/c;->a(Landroid/app/Activity;Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_2

    .line 152
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "douyin appkey is null."

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, p1, v1}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 578
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 579
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, p3}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 13

    .line 244
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Douyin start Share with Appid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/sharesdk/douyin/Douyin;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AppSecret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/douyin/Douyin;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 245
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Douyin ShareParams:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 247
    iget-object v0, p0, Lcn/sharesdk/douyin/Douyin;->e:Lcn/sharesdk/douyin/b;

    iget-object v1, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/douyin/b;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 249
    iget-boolean v0, p0, Lcn/sharesdk/douyin/Douyin;->d:Z

    const/16 v1, 0x9

    if-eqz v0, :cond_1

    .line 250
    iget-boolean v0, p0, Lcn/sharesdk/douyin/Douyin;->c:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Douyin bypassApproval "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 252
    iget-object v0, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-direct {p0, p0, p1, v0}, Lcn/sharesdk/douyin/Douyin;->a(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto/16 :goto_9

    .line 254
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "Set share bypassApproval but no client or ShareByAppClient is false"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-direct {p0, p1, v1}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    .line 256
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto/16 :goto_9

    .line 259
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/douyin/Douyin;->a:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 260
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_2

    .line 262
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "must be set activity"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-direct {p0, p1, v1}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    .line 264
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcn/sharesdk/douyin/Douyin;->isClientValid()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 270
    :cond_3
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v0

    .line 271
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getHashtags()[Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getDouyinShareToPublish()Z

    move-result v6

    if-eqz v3, :cond_4

    .line 274
    array-length v4, v3

    if-lez v4, :cond_4

    .line 275
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 276
    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-object v5, v4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    move-object v5, v3

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x3

    .line 278
    const-string v7, "com.ss.android.ugc.aweme"

    const-string v9, ".cn.sharesdk.ShareSDKFileProvider"

    if-eq v0, v3, :cond_11

    const/4 v3, 0x6

    if-eq v0, v3, :cond_a

    const/16 v3, 0x17

    if-eq v0, v3, :cond_5

    .line 356
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "Only share pictures and videos"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0, p1, v1}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    goto/16 :goto_9

    .line 333
    :cond_5
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getDYMixFileArray()[Ljava/lang/String;

    move-result-object p1

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_9

    .line 336
    array-length v3, p1

    if-nez v3, :cond_6

    goto :goto_3

    .line 340
    :cond_6
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_8

    aget-object v3, p1, v2

    .line 341
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 343
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 343
    invoke-static {v3, v11, v10}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 346
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v7, v3, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 347
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 349
    :cond_7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const-string v10, "douyin share mix file is not exist"

    invoke-virtual {v3, v10}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    const/4 v4, 0x2

    move-object v3, p0

    move-object v7, v0

    .line 352
    invoke-direct/range {v3 .. v8}, Lcn/sharesdk/douyin/Douyin;->a(ILjava/util/ArrayList;ZLjava/util/ArrayList;Landroid/app/Activity;)V

    goto/16 :goto_9

    .line 337
    :cond_9
    :goto_3
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "mixFixArray size is 0"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, p1, v1}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    goto/16 :goto_9

    .line 303
    :cond_a
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getVideoPathArray()[Ljava/lang/String;

    move-result-object p1

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_10

    .line 306
    array-length v3, p1

    if-nez v3, :cond_b

    goto/16 :goto_6

    :cond_b
    if-eqz v6, :cond_c

    .line 309
    array-length v3, p1

    const/4 v10, 0x1

    if-le v3, v10, :cond_c

    .line 311
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "shareToPublish is true ,but VideoPathArray must equals 1"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0, p1, v1}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    goto/16 :goto_9

    .line 313
    :cond_c
    array-length v3, p1

    const/16 v10, 0xc

    if-le v3, v10, :cond_d

    .line 314
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "VideoPathArray size must be less than 12"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-direct {p0, p1, v1}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    goto/16 :goto_9

    .line 317
    :cond_d
    array-length v1, p1

    :goto_4
    if-ge v2, v1, :cond_f

    aget-object v3, p1, v2

    .line 318
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 320
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 320
    invoke-static {v3, v11, v10}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 323
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v7, v3, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 324
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 326
    :cond_e
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const-string v10, "douyin share video file is not exist"

    invoke-virtual {v3, v10}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    const/4 v4, 0x0

    move-object v3, p0

    move-object v7, v0

    .line 329
    invoke-direct/range {v3 .. v8}, Lcn/sharesdk/douyin/Douyin;->a(ILjava/util/ArrayList;ZLjava/util/ArrayList;Landroid/app/Activity;)V

    goto/16 :goto_9

    .line 307
    :cond_10
    :goto_6
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "VideoPathArray size is 0"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0, p1, v1}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    goto/16 :goto_9

    .line 280
    :cond_11
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object p1

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_14

    .line 283
    array-length v3, p1

    if-lez v3, :cond_14

    .line 284
    array-length v1, p1

    :goto_7
    if-ge v2, v1, :cond_13

    aget-object v3, p1, v2

    .line 285
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 287
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 287
    invoke-static {v3, v11, v10}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 290
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v7, v3, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 291
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 293
    :cond_12
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const-string v10, "douyin share image file is not exist"

    invoke-virtual {v3, v10}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    const/4 v4, 0x1

    move-object v3, p0

    move-object v7, v0

    .line 296
    invoke-direct/range {v3 .. v8}, Lcn/sharesdk/douyin/Douyin;->a(ILjava/util/ArrayList;ZLjava/util/ArrayList;Landroid/app/Activity;)V

    goto :goto_9

    .line 298
    :cond_14
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "ImageArray size is 0"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-direct {p0, p1, v1}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    goto :goto_9

    .line 362
    :cond_15
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "douyin AppKey is null"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0, p1, v1}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    :goto_9
    return-void
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/b/b/f$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform$ShareParams;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/sharesdk/framework/b/b/f$a;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected follow(Ljava/lang/String;)V
    .locals 1

    .line 478
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 479
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v0, 0x6

    invoke-interface {p1, p0, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected getBilaterals(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getFollowers(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getFollowings(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .locals 0

    .line 549
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 550
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x2

    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcn/sharesdk/douyin/Douyin;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformId()I
    .locals 1

    const/16 v0, 0x3b

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasShareCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .locals 1

    .line 63
    const-string p1, "AppKey"

    invoke-virtual {p0, p1}, Lcn/sharesdk/douyin/Douyin;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/douyin/Douyin;->a:Ljava/lang/String;

    .line 64
    const-string p1, "AppSecret"

    invoke-virtual {p0, p1}, Lcn/sharesdk/douyin/Douyin;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/douyin/Douyin;->b:Ljava/lang/String;

    .line 65
    const-string p1, "ShareByAppClient"

    invoke-virtual {p0, p1}, Lcn/sharesdk/douyin/Douyin;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/sharesdk/douyin/Douyin;->c:Z

    .line 66
    const-string p1, "BypassApproval"

    invoke-virtual {p0, p1}, Lcn/sharesdk/douyin/Douyin;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/sharesdk/douyin/Douyin;->d:Z

    return-void
.end method

.method public isClientValid()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/sharesdk/douyin/Douyin;->f:Lcn/sharesdk/douyin/c;

    invoke-virtual {v0}, Lcn/sharesdk/douyin/c;->b()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .locals 2

    .line 85
    const-string v0, "app_key"

    const-string v1, "AppKey"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/douyin/Douyin;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douyin/Douyin;->a:Ljava/lang/String;

    .line 86
    const-string v0, "app_secret"

    const-string v1, "AppSecret"

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/douyin/Douyin;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douyin/Douyin;->b:Ljava/lang/String;

    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .locals 0

    .line 484
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 485
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 p2, 0x7

    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .locals 12

    .line 497
    const-string p1, "avatar"

    const-string v0, "nickname"

    const-string v1, "union_id"

    .line 0
    const-string v2, " error_code "

    const/16 v3, 0x8

    .line 497
    :try_start_0
    iget-object v4, p0, Lcn/sharesdk/douyin/Douyin;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v4}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 498
    iget-object v5, p0, Lcn/sharesdk/douyin/Douyin;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v5}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 499
    iget-object v6, p0, Lcn/sharesdk/douyin/Douyin;->f:Lcn/sharesdk/douyin/c;

    invoke-virtual {v6, v4, v5}, Lcn/sharesdk/douyin/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    if-nez v4, :cond_1

    .line 501
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    .line 502
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, " request userinfo is error"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-direct {p0, p1, v3}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    :cond_0
    return-void

    .line 507
    :cond_1
    const-string v5, "message"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 508
    const-string v6, "error"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "data"

    if-eqz v6, :cond_2

    .line 509
    :try_start_1
    iget-object v6, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v6, :cond_2

    .line 510
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 511
    const-string v8, "error_code"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 512
    const-string v9, "description"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 513
    const-string v10, "captcha"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 515
    new-instance v10, Ljava/lang/Throwable;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " description "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " captcha "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 518
    invoke-direct {p0, v10, v3}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    .line 522
    :cond_2
    const-string v2, "success"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 523
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 524
    const-string v5, "open_id"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 525
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 526
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 527
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 529
    iget-object v8, p0, Lcn/sharesdk/douyin/Douyin;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v8, v5}, Lcn/sharesdk/framework/PlatformDb;->putUserId(Ljava/lang/String;)V

    .line 530
    iget-object v5, p0, Lcn/sharesdk/douyin/Douyin;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v5, v1, v6}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcn/sharesdk/douyin/Douyin;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v1, v0, v7}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcn/sharesdk/douyin/Douyin;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v0, p1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_3
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_4

    .line 536
    iget-object p1, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, v3, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 540
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 541
    iget-object v0, p0, Lcn/sharesdk/douyin/Douyin;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_4

    .line 542
    invoke-direct {p0, p1, v3}, Lcn/sharesdk/douyin/Douyin;->a(Ljava/lang/Throwable;I)V

    :cond_4
    :goto_0
    return-void
.end method
