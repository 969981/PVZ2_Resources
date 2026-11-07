.class final Lct/m;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lct/j;


# direct methods
.method constructor <init>(Lct/j;)V
    .locals 0

    iput-object p1, p0, Lct/m;->a:Lct/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-static {}, Lct/ax;->b()V

    iget-object p1, p0, Lct/m;->a:Lct/j;

    invoke-virtual {p1}, Lct/j;->b()V

    return-void
.end method
