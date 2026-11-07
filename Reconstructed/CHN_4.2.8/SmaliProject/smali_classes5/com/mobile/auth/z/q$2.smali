.class final Lcom/mobile/auth/z/q$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/z/q;->a(Landroid/content/Context;Lcom/mobile/auth/z/q$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/z/q;


# direct methods
.method constructor <init>(Lcom/mobile/auth/z/q;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/z/q$2;->a:Lcom/mobile/auth/z/q;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/z/q$2;->a:Lcom/mobile/auth/z/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mobile/auth/z/q;->a(Lcom/mobile/auth/z/q;ZLandroid/net/Network;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
