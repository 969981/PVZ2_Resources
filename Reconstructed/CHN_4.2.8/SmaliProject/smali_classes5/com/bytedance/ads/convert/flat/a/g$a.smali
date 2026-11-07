.class public final Lcom/bytedance/ads/convert/flat/a/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ads/convert/flat/c/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ads/convert/flat/a/g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/ads/convert/flat/a/g;

.field public final synthetic b:Lcom/bytedance/ads/convert/flat/a/a;


# direct methods
.method public constructor <init>(Lcom/bytedance/ads/convert/flat/a/g;Lcom/bytedance/ads/convert/flat/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/a/g$a;->a:Lcom/bytedance/ads/convert/flat/a/g;

    iput-object p2, p0, Lcom/bytedance/ads/convert/flat/a/g$a;->b:Lcom/bytedance/ads/convert/flat/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Network;)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/a/g$a;->b:Lcom/bytedance/ads/convert/flat/a/a;

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/a/g$a;->a:Lcom/bytedance/ads/convert/flat/a/g;

    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/a/g;->a:Landroid/content/Context;

    monitor-enter v0

    const-string v2, "context"

    .line 1
    :try_start_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/bytedance/ads/convert/flat/a/a;->d:Lcom/bytedance/ads/convert/flat/a/e;

    .line 2
    iget-boolean v2, v2, Lcom/bytedance/ads/convert/flat/a/e;->a:Z

    if-nez v2, :cond_0

    .line 3
    new-instance p1, Lcom/bytedance/ads/convert/flat/a/i;

    const-string v1, "101128"

    invoke-direct {p1, v1}, Lcom/bytedance/ads/convert/flat/a/i;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    goto/16 :goto_2

    .line 4
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    .line 5
    iget-object v2, v2, Lcom/bytedance/ads/convert/flat/a/i;->b:Ljava/lang/String;

    const-string v3, "-11128"

    .line 6
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sp_name_bd_convert_uid_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "context.getSharedPrefere\u2026t\", Context.MODE_PRIVATE)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/flat/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "uid_time"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v7

    .line 8
    iget-wide v6, v0, Lcom/bytedance/ads/convert/flat/a/a;->a:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/flat/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "uid_carrier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    iget-object v5, v0, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    .line 11
    iget-object v5, v5, Lcom/bytedance/ads/convert/flat/a/i;->c:Ljava/lang/String;

    .line 12
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/flat/a/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "uid_vendor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    iget-object v6, v0, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    .line 14
    iget-object v6, v6, Lcom/bytedance/ads/convert/flat/a/i;->d:Ljava/lang/String;

    .line 15
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/flat/a/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "uid_errCode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 16
    iget-object v7, v0, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    .line 17
    iget-object v7, v7, Lcom/bytedance/ads/convert/flat/a/i;->b:Ljava/lang/String;

    .line 18
    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/flat/a/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "uid_token"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 19
    iget-object v8, v0, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    .line 20
    iget-object v8, v8, Lcom/bytedance/ads/convert/flat/a/i;->a:Ljava/lang/String;

    .line 21
    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/flat/a/a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "uid_province"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 22
    iget-object v9, v0, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    .line 23
    iget-object v9, v9, Lcom/bytedance/ads/convert/flat/a/i;->f:Ljava/lang/String;

    .line 24
    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    iget-object v8, v0, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    .line 26
    iput-object v7, v8, Lcom/bytedance/ads/convert/flat/a/i;->a:Ljava/lang/String;

    iput-object v6, v8, Lcom/bytedance/ads/convert/flat/a/i;->b:Ljava/lang/String;

    iput-object v5, v8, Lcom/bytedance/ads/convert/flat/a/i;->d:Ljava/lang/String;

    iput-object v4, v8, Lcom/bytedance/ads/convert/flat/a/i;->c:Ljava/lang/String;

    iput v3, v8, Lcom/bytedance/ads/convert/flat/a/i;->e:I

    iput-object v2, v8, Lcom/bytedance/ads/convert/flat/a/i;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v8, Lcom/bytedance/ads/convert/flat/a/i;->g:J

    .line 27
    :cond_1
    iget-object v2, v0, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    .line 28
    iget-wide v2, v2, Lcom/bytedance/ads/convert/flat/a/i;->g:J

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 30
    iget-wide v2, v0, Lcom/bytedance/ads/convert/flat/a/a;->a:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_2

    goto :goto_0

    .line 31
    :cond_2
    iget-object v2, v0, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    .line 32
    iget-object v2, v2, Lcom/bytedance/ads/convert/flat/a/i;->a:Ljava/lang/String;

    .line 33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 34
    iget-object p1, v0, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    goto :goto_1

    .line 35
    :cond_3
    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/ads/convert/flat/a/a;->b(Landroid/content/Context;Landroid/net/Network;)Lcom/bytedance/ads/convert/flat/a/i;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit v0

    .line 36
    :goto_2
    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/a/g$a;->a:Lcom/bytedance/ads/convert/flat/a/g;

    iget-object v0, v0, Lcom/bytedance/ads/convert/flat/a/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/ads/convert/flat/c/c;->a(Landroid/content/Context;)Lcom/bytedance/ads/convert/flat/c/c;

    move-result-object v0

    monitor-enter v0

    .line 37
    :try_start_2
    iget-object v1, v0, Lcom/bytedance/ads/convert/flat/c/c;->b:Landroid/net/ConnectivityManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    :try_start_3
    iget-object v2, v0, Lcom/bytedance/ads/convert/flat/c/c;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_6

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_6
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bytedance/ads/convert/flat/c/c;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v1, v0, Lcom/bytedance/ads/convert/flat/c/c;->c:Landroid/net/Network;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :goto_3
    monitor-exit v0

    .line 38
    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/a/g$a;->a:Lcom/bytedance/ads/convert/flat/a/g;

    iget-object v0, v0, Lcom/bytedance/ads/convert/flat/a/g;->b:Lcom/bytedance/ads/convert/flat/b/a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/bytedance/ads/convert/flat/b/a;->a(Lcom/bytedance/ads/convert/flat/a/i;)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method
