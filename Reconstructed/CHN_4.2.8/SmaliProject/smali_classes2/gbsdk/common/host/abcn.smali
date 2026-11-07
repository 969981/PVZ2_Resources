.class public final Lgbsdk/common/host/abcn;
.super Ljava/lang/Object;
.source "OaidVivoImpl.java"

# interfaces
.implements Lgbsdk/common/host/abdv;


# static fields
.field public static final ch:Lgbsdk/common/host/abdj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/common/host/abdj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgbsdk/common/host/abcn$ab;

    invoke-direct {v0}, Lgbsdk/common/host/abcn$ab;-><init>()V

    sput-object v0, Lgbsdk/common/host/abcn;->ch:Lgbsdk/common/host/abdj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abcn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "d33e0430b90484183d86e02660ed51b4"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 29
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p1
.end method

.method public static a()Z
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abcn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "c0c6d1c6ac7c836a7aec3e8b4f8dae70"

    invoke-static {v1, v3, v2, v4, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lgbsdk/common/host/abcn;->ch:Lgbsdk/common/host/abdj;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lgbsdk/common/host/abdj;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object p1, Lgbsdk/common/host/abcn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "6d8c4a71f4caac786f0c88193dccf899"

    invoke-static {v0, p0, p1, v1, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 1
    :cond_0
    sget-object p1, Lgbsdk/common/host/abcn;->ch:Lgbsdk/common/host/abdj;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgbsdk/common/host/abdj;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public i(Landroid/content/Context;)Lgbsdk/common/host/abdv$ab;
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abcn;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "cdcc5ad78cdebb0ce015b592cc71942f"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lgbsdk/common/host/abdv$ab;

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lgbsdk/common/host/abdv$ab;

    invoke-direct {v0}, Lgbsdk/common/host/abdv$ab;-><init>()V

    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    .line 3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    .line 18
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 19
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "value"

    .line 20
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    invoke-static {p1}, Lgbsdk/common/host/abdh;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object p1, v1

    :goto_1
    :try_start_2
    const-string v3, ""

    .line 26
    invoke-static {v3, v2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 27
    invoke-static {p1}, Lgbsdk/common/host/abdh;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-static {p1}, Lgbsdk/common/host/abdh;->a(Ljava/io/Closeable;)V

    throw v0

    .line 28
    :cond_2
    :goto_2
    iput-object v1, v0, Lgbsdk/common/host/abdv$ab;->a:Ljava/lang/String;

    return-object v0
.end method
