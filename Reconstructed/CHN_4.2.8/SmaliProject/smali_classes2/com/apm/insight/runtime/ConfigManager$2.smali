.class public final Lcom/apm/insight/runtime/ConfigManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/runtime/ConfigManager;->updateDid(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/runtime/ConfigManager$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lgbsdk/common/host/abge;->ah()Lcom/apm/insight/runtime/u;

    move-result-object v0

    iget-object v1, p0, Lcom/apm/insight/runtime/ConfigManager$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/u;->a(Ljava/lang/String;)V

    invoke-static {}, Lgbsdk/common/host/abek;->F()V

    return-void
.end method
