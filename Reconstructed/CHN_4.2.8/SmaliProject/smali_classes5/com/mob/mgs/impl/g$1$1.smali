.class Lcom/mob/mgs/impl/g$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/g$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mob/mgs/impl/g$1;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/g$1;Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/mob/mgs/impl/g$1$1;->b:Lcom/mob/mgs/impl/g$1;

    iput-object p2, p0, Lcom/mob/mgs/impl/g$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 122
    :try_start_0
    const-string p1, "com.mob.pushsdk.MobPush"

    invoke-static {p1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    const-string v0, "addGuardMessage"

    iget-object v1, p0, Lcom/mob/mgs/impl/g$1$1;->a:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 125
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
