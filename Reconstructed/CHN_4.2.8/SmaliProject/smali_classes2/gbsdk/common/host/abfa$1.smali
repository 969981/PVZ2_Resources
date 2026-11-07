.class public Lgbsdk/common/host/abfa$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abfa;->b(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic fc:Lgbsdk/common/host/abfa;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abfa;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abfa$1;->fc:Lgbsdk/common/host/abfa;

    iput-object p2, p0, Lgbsdk/common/host/abfa$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lgbsdk/common/host/abfd;->y()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abfa$1;->a:Lorg/json/JSONObject;

    const-string v2, "upload_scene"

    const-string v3, "direct"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lgbsdk/common/host/abfa$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgbsdk/common/host/abfd;->o(Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abhs;

    return-void
.end method
