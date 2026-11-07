.class public Lgbsdk/optional/applog/abbt$ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abbt;->a(Lorg/json/JSONObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lgbsdk/optional/applog/abbt;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abbt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abbt$ab;->g:Lgbsdk/optional/applog/abbt;

    iput-object p2, p0, Lgbsdk/optional/applog/abbt$ab;->a:Ljava/lang/String;

    iput-object p3, p0, Lgbsdk/optional/applog/abbt$ab;->b:Ljava/lang/String;

    iput-object p4, p0, Lgbsdk/optional/applog/abbt$ab;->c:Ljava/lang/String;

    iput-object p5, p0, Lgbsdk/optional/applog/abbt$ab;->d:Ljava/lang/String;

    iput-object p6, p0, Lgbsdk/optional/applog/abbt$ab;->e:Ljava/lang/String;

    iput-object p7, p0, Lgbsdk/optional/applog/abbt$ab;->f:Ljava/lang/String;

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
    iget-object v2, p0, Lgbsdk/optional/applog/abbt$ab;->g:Lgbsdk/optional/applog/abbt;

    iget-object v2, v2, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "did"

    :try_start_1
    iget-object v2, p0, Lgbsdk/optional/applog/abbt$ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "installId"

    :try_start_2
    iget-object v2, p0, Lgbsdk/optional/applog/abbt$ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "ssid"

    :try_start_3
    iget-object v2, p0, Lgbsdk/optional/applog/abbt$ab;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v1, "bdDid"

    :try_start_4
    iget-object v2, p0, Lgbsdk/optional/applog/abbt$ab;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v1, "uuid"

    :try_start_5
    iget-object v2, p0, Lgbsdk/optional/applog/abbt$ab;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v1, "uuidType"

    :try_start_6
    iget-object v2, p0, Lgbsdk/optional/applog/abbt$ab;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    return-object v0
.end method
