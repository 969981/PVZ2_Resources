.class public Lgbsdk/optional/applog/aben;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public volatile a:Lgbsdk/optional/applog/abfp;

.field public b:Landroid/accounts/Account;

.field public c:Lgbsdk/optional/applog/abge;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lgbsdk/optional/applog/abfl;)Lgbsdk/optional/applog/abfp;
    .locals 3

    iget-object v0, p0, Lgbsdk/optional/applog/aben;->a:Lgbsdk/optional/applog/abfp;

    if-nez v0, :cond_3

    const-class v0, Lgbsdk/optional/applog/aben;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgbsdk/optional/applog/aben;->a:Lgbsdk/optional/applog/abfp;

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, p0, Lgbsdk/optional/applog/aben;->c:Lgbsdk/optional/applog/abge;

    if-nez v1, :cond_0

    new-instance v1, Lgbsdk/optional/applog/abge;

    invoke-direct {v1, p1, p2}, Lgbsdk/optional/applog/abge;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;)V

    iput-object v1, p0, Lgbsdk/optional/applog/aben;->c:Lgbsdk/optional/applog/abge;

    :cond_0
    iget-object v1, p0, Lgbsdk/optional/applog/aben;->a:Lgbsdk/optional/applog/abfp;

    if-nez v1, :cond_2

    new-instance v1, Lgbsdk/optional/applog/abfp;

    iget-object v2, p0, Lgbsdk/optional/applog/aben;->c:Lgbsdk/optional/applog/abge;

    invoke-direct {v1, p1, p2, p3, v2}, Lgbsdk/optional/applog/abfp;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lgbsdk/optional/applog/abfl;Lgbsdk/optional/applog/abge;)V

    iput-object v1, p0, Lgbsdk/optional/applog/aben;->a:Lgbsdk/optional/applog/abfp;

    iget-object p1, p0, Lgbsdk/optional/applog/aben;->b:Landroid/accounts/Account;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lgbsdk/optional/applog/aben;->a:Lgbsdk/optional/applog/abfp;

    iget-object p2, p0, Lgbsdk/optional/applog/aben;->b:Landroid/accounts/Account;

    invoke-virtual {p1, p2}, Lgbsdk/optional/applog/abfp;->a(Landroid/accounts/Account;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lgbsdk/optional/applog/aben;->a:Lgbsdk/optional/applog/abfp;

    return-object p1
.end method
