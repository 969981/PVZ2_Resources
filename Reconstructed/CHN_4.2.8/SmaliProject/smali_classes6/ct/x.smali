.class public final Lct/x;
.super Ljava/lang/Object;


# static fields
.field private static a:Lct/w;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized a()Lct/w;
    .locals 2

    const-class v0, Lct/x;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lct/x;->a:Lct/w;

    if-nez v1, :cond_0

    new-instance v1, Lct/w;

    invoke-direct {v1}, Lct/w;-><init>()V

    sput-object v1, Lct/x;->a:Lct/w;

    :cond_0
    sget-object v1, Lct/x;->a:Lct/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
