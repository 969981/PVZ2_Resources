.class public Lcn/sharesdk/douyin/c;
.super Ljava/lang/Object;
.source "DouyinImpl.java"

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeHelper;


# static fields
.field private static volatile a:Lcn/sharesdk/douyin/c;


# instance fields
.field private b:Lcn/sharesdk/douyin/b;

.field private c:Lcn/sharesdk/framework/Platform;

.field private d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private e:Lcn/sharesdk/framework/PlatformActionListener;

.field private f:Lcn/sharesdk/framework/Platform$ShareParams;

.field private g:Ljava/lang/String;

.field private h:Lcn/sharesdk/framework/a/b;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "com.ss.android.ugc.aweme"

    iput-object v0, p0, Lcn/sharesdk/douyin/c;->g:Ljava/lang/String;

    const/4 v0, 0x1

    .line 55
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_info"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/sharesdk/douyin/c;->l:[Ljava/lang/String;

    .line 58
    invoke-static {}, Lcn/sharesdk/framework/a/b;->a()Lcn/sharesdk/framework/a/b;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douyin/c;->h:Lcn/sharesdk/framework/a/b;

    .line 59
    invoke-virtual {p0, v0}, Lcn/sharesdk/douyin/c;->a(Lcn/sharesdk/framework/a/b;)V

    return-void
.end method

.method public static a()Lcn/sharesdk/douyin/c;
    .locals 3

    .line 87
    const-class v0, Lcn/sharesdk/douyin/c;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcn/sharesdk/douyin/c;->a:Lcn/sharesdk/douyin/c;

    if-nez v1, :cond_1

    .line 89
    const-class v1, Lcn/sharesdk/douyin/c;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    sget-object v2, Lcn/sharesdk/douyin/c;->a:Lcn/sharesdk/douyin/c;

    if-nez v2, :cond_0

    .line 91
    new-instance v2, Lcn/sharesdk/douyin/c;

    invoke-direct {v2}, Lcn/sharesdk/douyin/c;-><init>()V

    sput-object v2, Lcn/sharesdk/douyin/c;->a:Lcn/sharesdk/douyin/c;

    .line 93
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 95
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    sget-object v0, Lcn/sharesdk/douyin/c;->a:Lcn/sharesdk/douyin/c;

    return-object v0

    :catchall_1
    move-exception v1

    .line 95
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method static synthetic a(Lcn/sharesdk/douyin/c;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/sharesdk/douyin/c;->i:Ljava/lang/String;

    return-object p0
.end method

.method private a([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 413
    array-length v1, p1

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/sharesdk/douyin/c;->a([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 420
    :cond_0
    const-string v0, ""

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    sub-int v1, p4, p3

    if-gtz v1, :cond_2

    return-object v0

    .line 431
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 433
    aget-object v1, p1, p3

    if-eqz v1, :cond_3

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p4, :cond_4

    .line 438
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    aget-object v1, p1, p3

    if-eqz v1, :cond_3

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 444
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/app/Activity;Lcn/sharesdk/douyin/a/b$a;)V
    .locals 4

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    invoke-virtual {p2, v0}, Lcn/sharesdk/douyin/a/b$a;->a(Landroid/os/Bundle;)V

    .line 176
    const-string v1, "_bytedance_params_client_key"

    iget-object v2, p0, Lcn/sharesdk/douyin/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "_bytedance_params_type_caller_package"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object p2, p2, Lcn/sharesdk/douyin/a/b$a;->i:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ".douyinapi.DouYinEntryActivity"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "_bytedance_params_from_entry"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    const-string p2, "_aweme_params_caller_open_sdk_name"

    const-string v1, "opensdk-china-external"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string p2, "_aweme_params_caller_open_sdk_version"

    const-string v1, "0.1.8.0"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 184
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.ss.android.ugc.aweme"

    const-string v3, "com.ss.android.ugc.aweme.openauthorize.AwemeAuthorizedActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x64

    .line 187
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 189
    iget-object p2, p0, Lcn/sharesdk/douyin/c;->e:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_1

    .line 190
    iget-object p2, p0, Lcn/sharesdk/douyin/c;->e:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v0, p0, Lcn/sharesdk/douyin/c;->b:Lcn/sharesdk/douyin/b;

    invoke-virtual {v0}, Lcn/sharesdk/douyin/b;->a()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcn/sharesdk/douyin/a/d;)V
    .locals 7

    .line 232
    invoke-virtual {p1}, Lcn/sharesdk/douyin/a/d;->a()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "errorMsg:"

    const-string v3, "errorCode :"

    const/4 v4, 0x1

    if-ne v0, v1, :cond_3

    .line 233
    move-object v0, p1

    check-cast v0, Lcn/sharesdk/douyin/a/j$b;

    .line 234
    iget v1, v0, Lcn/sharesdk/douyin/a/j$b;->d:I

    const/16 v5, 0x9

    if-nez v1, :cond_1

    .line 235
    iget-object v0, p0, Lcn/sharesdk/douyin/c;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    const-string v1, "ShareParams"

    iget-object v6, p0, Lcn/sharesdk/douyin/c;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v1, p0, Lcn/sharesdk/douyin/c;->e:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v6, p0, Lcn/sharesdk/douyin/c;->c:Lcn/sharesdk/framework/Platform;

    invoke-interface {v1, v6, v5, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/douyin/c;->e:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/douyin/c;->c:Lcn/sharesdk/framework/Platform;

    const/4 v6, 0x0

    invoke-interface {v0, v1, v5, v6}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {v0}, Lcn/sharesdk/douyin/a/j$b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    iget-object v0, p0, Lcn/sharesdk/douyin/c;->e:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/douyin/c;->c:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v1, v5}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_0

    .line 246
    :cond_2
    new-instance v1, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcn/sharesdk/douyin/a/j$b;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "errSubCode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcn/sharesdk/douyin/a/j$b;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcn/sharesdk/douyin/a/j$b;->e:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcn/sharesdk/douyin/c;->e:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v5, p0, Lcn/sharesdk/douyin/c;->c:Lcn/sharesdk/framework/Platform;

    invoke-interface {v0, v5, v4, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 252
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcn/sharesdk/douyin/a/d;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 253
    check-cast p1, Lcn/sharesdk/douyin/a/b$b;

    .line 254
    invoke-virtual {p1}, Lcn/sharesdk/douyin/a/b$b;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    iget-object p1, p1, Lcn/sharesdk/douyin/a/b$b;->a:Ljava/lang/String;

    .line 256
    invoke-direct {p0, p1}, Lcn/sharesdk/douyin/c;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_4
    invoke-virtual {p1}, Lcn/sharesdk/douyin/a/b$b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 258
    iget-object p1, p0, Lcn/sharesdk/douyin/c;->e:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v0, p0, Lcn/sharesdk/douyin/c;->c:Lcn/sharesdk/framework/Platform;

    invoke-interface {p1, v0, v4}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    goto :goto_1

    .line 261
    :cond_5
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcn/sharesdk/douyin/a/b$b;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcn/sharesdk/douyin/a/b$b;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lcn/sharesdk/douyin/c;->e:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/douyin/c;->c:Lcn/sharesdk/framework/Platform;

    invoke-interface {p1, v1, v4, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic b(Lcn/sharesdk/douyin/c;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/sharesdk/douyin/c;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcn/sharesdk/douyin/c;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/sharesdk/douyin/c;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .line 270
    new-instance v0, Lcn/sharesdk/douyin/c$1;

    invoke-direct {v0, p0, p1}, Lcn/sharesdk/douyin/c$1;-><init>(Lcn/sharesdk/douyin/c;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Lcn/sharesdk/douyin/c$1;->start()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_key"

    invoke-direct {v1, v2, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance p2, Lcom/mob/tools/network/KVPair;

    const-string v1, "client_secret"

    invoke-direct {p2, v1, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance p2, Lcom/mob/tools/network/KVPair;

    const-string p3, "code"

    invoke-direct {p2, p3, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string p2, "grant_type"

    const-string p3, "authorization_code"

    invoke-direct {p1, p2, p3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    const-string p1, "https://open.douyin.com/oauth/access_token/"

    .line 328
    :try_start_0
    iget-object p2, p0, Lcn/sharesdk/douyin/c;->h:Lcn/sharesdk/framework/a/b;

    const-string p3, "/oauth/access_token/"

    invoke-virtual {p0}, Lcn/sharesdk/douyin/c;->e()I

    move-result v1

    invoke-virtual {p2, p1, v0, p3, v1}, Lcn/sharesdk/framework/a/b;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "access_token"

    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance p1, Lcom/mob/tools/network/KVPair;

    const-string v1, "open_id"

    invoke-direct {p1, v1, p2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object p1, p0, Lcn/sharesdk/douyin/c;->h:Lcn/sharesdk/framework/a/b;

    const-string p2, "/oauth/userinfo/"

    invoke-virtual {p0}, Lcn/sharesdk/douyin/c;->e()I

    move-result v1

    const-string v2, "https://open.douyin.com/oauth/userinfo/"

    invoke-virtual {p1, v2, v0, p2, v1}, Lcn/sharesdk/framework/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 203
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/app/Activity;Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V
    .locals 1

    .line 160
    iput-object p2, p0, Lcn/sharesdk/douyin/c;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-nez p3, :cond_0

    .line 161
    invoke-virtual {p0}, Lcn/sharesdk/douyin/c;->b()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 163
    new-instance p2, Lcn/sharesdk/douyin/a/b$a;

    invoke-direct {p2}, Lcn/sharesdk/douyin/a/b$a;-><init>()V

    .line 164
    iget-object p3, p0, Lcn/sharesdk/douyin/c;->l:[Ljava/lang/String;

    const-string v0, ","

    invoke-direct {p0, p3, v0}, Lcn/sharesdk/douyin/c;->a([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcn/sharesdk/douyin/a/b$a;->d:Ljava/lang/String;

    .line 165
    const-string p3, "ww"

    iput-object p3, p2, Lcn/sharesdk/douyin/a/b$a;->a:Ljava/lang/String;

    .line 166
    const-string p3, "cn.sharesdk.douyin.bdopen.DouYinHandlerActivity"

    iput-object p3, p2, Lcn/sharesdk/douyin/a/b$a;->i:Ljava/lang/String;

    .line 167
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/douyin/c;->a(Landroid/app/Activity;Lcn/sharesdk/douyin/a/b$a;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0, p2}, Lcn/sharesdk/douyin/c;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 209
    const-string v0, "_bytedance_params_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const-string v0, "_aweme_open_sdk_params_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 213
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/douyin/c;->b:Lcn/sharesdk/douyin/b;

    invoke-virtual {v1}, Lcn/sharesdk/douyin/b;->a()Lcn/sharesdk/framework/Platform;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/douyin/c;->c:Lcn/sharesdk/framework/Platform;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Share Callback"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 224
    new-instance v0, Lcn/sharesdk/douyin/a/j$b;

    invoke-direct {v0, p1}, Lcn/sharesdk/douyin/a/j$b;-><init>(Landroid/os/Bundle;)V

    .line 225
    invoke-direct {p0, v0}, Lcn/sharesdk/douyin/c;->a(Lcn/sharesdk/douyin/a/d;)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "Auth Callback"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 218
    new-instance v0, Lcn/sharesdk/douyin/a/b$b;

    invoke-direct {v0, p1}, Lcn/sharesdk/douyin/a/b$b;-><init>(Landroid/os/Bundle;)V

    .line 219
    invoke-direct {p0, v0}, Lcn/sharesdk/douyin/c;->a(Lcn/sharesdk/douyin/a/d;)V

    :goto_0
    return-void
.end method

.method public a(Lcn/sharesdk/douyin/b;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcn/sharesdk/douyin/c;->b:Lcn/sharesdk/douyin/b;

    return-void
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcn/sharesdk/douyin/c;->e:Lcn/sharesdk/framework/PlatformActionListener;

    return-void
.end method

.method public a(Lcn/sharesdk/framework/a/b;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcn/sharesdk/douyin/c;->h:Lcn/sharesdk/framework/a/b;

    return-void
.end method

.method protected a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 1

    .line 337
    iput-object p1, p0, Lcn/sharesdk/douyin/c;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 338
    new-instance p1, Lcn/sharesdk/framework/authorize/g;

    invoke-direct {p1}, Lcn/sharesdk/framework/authorize/g;-><init>()V

    .line 339
    iget-object v0, p0, Lcn/sharesdk/douyin/c;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/authorize/g;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 340
    invoke-virtual {p1, p0}, Lcn/sharesdk/framework/authorize/g;->a(Lcn/sharesdk/framework/authorize/AuthorizeHelper;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcn/sharesdk/douyin/c;->i:Ljava/lang/String;

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 401
    array-length v0, p1

    if-lez v0, :cond_0

    .line 402
    iput-object p1, p0, Lcn/sharesdk/douyin/c;->l:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/sharesdk/douyin/c;->j:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/sharesdk/douyin/c;->g:Ljava/lang/String;

    invoke-static {v0}, Lcn/sharesdk/framework/utils/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/sharesdk/douyin/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcn/sharesdk/douyin/c;->k:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/sharesdk/douyin/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected e()I
    .locals 1

    const/16 v0, 0x3b

    return v0
.end method

.method public getAuthorizeListener()Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 1

    .line 357
    iget-object v0, p0, Lcn/sharesdk/douyin/c;->d:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-object v0
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .locals 4

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "response_type"

    const-string v3, "code"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "scope"

    const-string v3, "user_info"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "from"

    const-string v3, "opensdk"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "client_key"

    invoke-virtual {p0}, Lcn/sharesdk/douyin/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "state"

    const-string v3, "test"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "redirect_uri"

    const-string v3, "https://open.douyin.com/oauth/authorize/callback/"

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://open.douyin.com/platform/oauth/connect/?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->encodeUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizeWebviewClient(Lcn/sharesdk/framework/authorize/g;)Lcn/sharesdk/framework/authorize/c;
    .locals 1

    .line 352
    new-instance v0, Lcn/sharesdk/douyin/a;

    invoke-direct {v0, p1}, Lcn/sharesdk/douyin/a;-><init>(Lcn/sharesdk/framework/authorize/g;)V

    return-object v0
.end method

.method public getPlatform()Lcn/sharesdk/framework/Platform;
    .locals 1

    .line 346
    iget-object v0, p0, Lcn/sharesdk/douyin/c;->b:Lcn/sharesdk/douyin/b;

    invoke-virtual {v0}, Lcn/sharesdk/douyin/b;->a()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/douyin/c;->c:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSSOListener()Lcn/sharesdk/framework/authorize/SSOListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSSOProcessor(Lcn/sharesdk/framework/authorize/d;)Lcn/sharesdk/framework/authorize/e;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
