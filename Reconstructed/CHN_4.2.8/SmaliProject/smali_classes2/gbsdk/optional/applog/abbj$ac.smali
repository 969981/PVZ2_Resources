.class public Lgbsdk/optional/applog/abbj$ac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/abbz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abbj;->e()V
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

    iput-object p1, p0, Lgbsdk/optional/applog/abbj$ac;->a:Lgbsdk/optional/applog/abbj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lgbsdk/optional/applog/abbj$ac;->a:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 2
    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/optional/applog/abbj$ac;->a:Lgbsdk/optional/applog/abbj;

    .line 3
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    .line 4
    invoke-virtual {v0}, Lgbsdk/optional/applog/abfy;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "oaid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lgbsdk/optional/applog/abbj$ac;->a:Lgbsdk/optional/applog/abbj;

    .line 5
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->j:Landroid/os/Handler;

    const/16 v1, 0x11

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
