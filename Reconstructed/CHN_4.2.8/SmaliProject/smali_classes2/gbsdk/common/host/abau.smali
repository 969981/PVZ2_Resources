.class public Lgbsdk/common/host/abau;
.super Ljava/lang/Object;
.source "DeprecatedFileCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final synthetic bR:Lgbsdk/common/host/abat;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/abat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgbsdk/common/host/abau;->bR:Lgbsdk/common/host/abat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abau;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a99292176172a9d47087b935aef54703"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget-object v2, p0, Lgbsdk/common/host/abau;->bR:Lgbsdk/common/host/abat;

    .line 2
    iget-object v2, v2, Lgbsdk/common/host/abat;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x6

    const-string v3, "openudid"

    const-string v4, "clientudid"

    const-string v5, "serial_number"

    const-string v6, "sim_serial_number"

    const-string v7, "udid"

    const-string v8, "device_id"

    .line 4
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    .line 12
    aget-object v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    iget-object v6, p0, Lgbsdk/common/host/abau;->bR:Lgbsdk/common/host/abat;

    iget-object v7, p0, Lgbsdk/common/host/abau;->bR:Lgbsdk/common/host/abat;

    .line 15
    iget-object v7, v7, Lgbsdk/common/host/abat;->a:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 17
    invoke-virtual {v6, v7, v5}, Lgbsdk/common/host/abat;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 18
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    :cond_2
    return-void
.end method
