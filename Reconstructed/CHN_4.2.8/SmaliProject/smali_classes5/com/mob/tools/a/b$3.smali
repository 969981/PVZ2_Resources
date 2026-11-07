.class Lcom/mob/tools/a/b$3;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/b;->a(Lcom/mob/tools/utils/ReflectHelper$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/ReflectHelper$a;

.field final synthetic b:Lcom/mob/tools/a/b;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/b;Lcom/mob/tools/utils/ReflectHelper$a;)V
    .locals 0

    .line 2218
    iput-object p1, p0, Lcom/mob/tools/a/b$3;->b:Lcom/mob/tools/a/b;

    iput-object p2, p0, Lcom/mob/tools/a/b$3;->a:Lcom/mob/tools/utils/ReflectHelper$a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 2220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2221
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2222
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2224
    :cond_0
    iget-object p2, p0, Lcom/mob/tools/a/b$3;->a:Lcom/mob/tools/utils/ReflectHelper$a;

    if-eqz p2, :cond_1

    .line 2225
    invoke-interface {p2, v0}, Lcom/mob/tools/utils/ReflectHelper$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2228
    :cond_1
    :try_start_0
    const-string p2, "0181cbcjcg!hPeecdef1ch*cgfc8hRcf\'h(cd*ih4cg"

    invoke-static {p2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
