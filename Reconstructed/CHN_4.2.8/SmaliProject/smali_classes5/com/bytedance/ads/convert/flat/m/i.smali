.class public final Lcom/bytedance/ads/convert/flat/m/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ads/convert/flat/k/c;


# instance fields
.field public a:Lcom/bytedance/ads/convert/flat/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/ads/convert/flat/n/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/ads/convert/flat/m/i$a;

    invoke-direct {v0, p0}, Lcom/bytedance/ads/convert/flat/m/i$a;-><init>(Lcom/bytedance/ads/convert/flat/m/i;)V

    iput-object v0, p0, Lcom/bytedance/ads/convert/flat/m/i;->a:Lcom/bytedance/ads/convert/flat/n/c;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/bytedance/ads/convert/flat/k/c$a;
    .locals 7

    const-string v0, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "oaid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :cond_1
    :try_start_1
    new-instance v1, Lcom/bytedance/ads/convert/flat/k/c$a;

    invoke-direct {v1}, Lcom/bytedance/ads/convert/flat/k/c$a;-><init>()V

    .line 1
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v2, p1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "value"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2
    :goto_0
    iput-object v2, v1, Lcom/bytedance/ads/convert/flat/k/c$a;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v0, p1

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p1

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method public b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/m/i;->a:Lcom/bytedance/ads/convert/flat/n/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/bytedance/ads/convert/flat/n/c;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
