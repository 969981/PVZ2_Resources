.class public Lgbsdk/optional/applog/abbj$ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abbj;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgbsdk/optional/applog/abbj;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abbj;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abbj$ab;->a:Lgbsdk/optional/applog/abbj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appId"

    :try_start_0
    iget-object v2, p0, Lgbsdk/optional/applog/abbj$ab;->a:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "isMainProcess"

    :try_start_1
    iget-object v2, p0, Lgbsdk/optional/applog/abbj$ab;->a:Lgbsdk/optional/applog/abbj;

    .line 4
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    .line 5
    invoke-virtual {v2}, Lgbsdk/optional/applog/abfl;->f()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method
